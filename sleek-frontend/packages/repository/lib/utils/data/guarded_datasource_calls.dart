// import 'package:firebase_auth/firebase_auth.dart';

import 'package:repository/utils/error_helpers.dart';
import 'package:repository/utils/failures.dart';

/// Make an API call that internally handles exceptions. Throws a [NetworkFailure].
///
/// This is intended to always be used for ALL remoteDatasurce calls in the repository layer.
/// This means there'll be no need for API-related try-catch blocks in the repository layer.
///
/// The named [*Msg] params may be used to customise the error message depending
/// on the error type. For example, `notFoundMsg` can be set to "User not found",
/// which is descriptive enough to be sent to the Presentation layer for use in
/// a [UIError].
/// Also, you can set `anyMsg` to force all error messages no matter the type to
/// one custom message.
Future<T> guardedApiCall<T>(
  Function run, {
  String? anyMsg,
  String ?serverErrorMsg,
  String ?badRequestMsg,
  String? Function(ApiFailure)? getBadRequestMsg,
  String? notFoundMsg,
  String ?Function(ApiFailure)? getNotFoundMsg,
  String? unauthenticatedMsg,
  String? Function(ApiFailure)? getUnauthenticatedMsg,
  String? notPermittedMsg,
  String? Function(ApiFailure)? getNotPermittedMsg,
  String? validationFailedMsg,
  String? Function(ApiFailure)? getValidationFailedMsg,
  String? unknownMsg,
  String? Function(ApiFailure)? getfailureMsg,
}) async {
  try {
    final val = await run() as T;
    return val;
  } on ApiFailure catch (e, s) {
    throw getNetworkFailureFromApiFailure(
      e,
      s,
      anyMsg: anyMsg,
      serverErrorMsg: serverErrorMsg,
      badRequestMsg: getBadRequestMsg?.call(e) ?? badRequestMsg,
      notFoundMsg: getNotFoundMsg?.call(e) ?? notFoundMsg,
      unauthenticatedMsg: getUnauthenticatedMsg?.call(e) ?? unauthenticatedMsg,
      notPermittedMsg: getNotPermittedMsg?.call(e) ?? notPermittedMsg,
      validationFailedMsg: getValidationFailedMsg?.call(e) ?? validationFailedMsg,
      unknownMsg: unknownMsg,
      failureMsg: getfailureMsg?.call(e) ?? '',
    );
  }
  
  catch (e) {

    throw NetworkFailure(e.toString());
  }
}

// Future<T> guardedCacheAccess<T>(Function run) async {
//   try {
//     final val = await run() as T;
//     return val;
//   } on CacheFailure catch (_) { 
//     if (kDebugMode) debugPrint('Exception at Cache Access: ${_.message}');
//     rethrow;
//   } catch (_, s) {
//     throw getCacheFailureFromDBFailure(
//         DBFailure(AppStrings.dbExceptionMessage!), s);
//   }
// }
