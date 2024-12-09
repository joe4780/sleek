
class Failure {
  final String message;
  const Failure(this.message);

  @override
  String toString() => message;
}

class ApiFailure extends Failure {
  final ApiErrors errorCode;
  ApiFailure(this.errorCode, String message) : super(message);
}

class DBFailure extends Failure {
  DBFailure(String message) : super(message);
}

class NetworkFailure {
  final String message;
  NetworkFailure(this.message);
}

enum ApiErrors {
  serverError,
  badRequest,
  notFound,
  validationFailed,
  unauthenticated,
  notPermitted,
  unknown,
  noInternet,
  failure,
}

class CacheFailure {
  final String message;
  CacheFailure(this.message);
}

class UIError {
  final String message;
  const UIError(this.message);
}
