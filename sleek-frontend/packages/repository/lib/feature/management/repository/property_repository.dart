import 'package:dartz/dartz.dart';
import 'package:repository/feature/management/data/model/property.dart';
import 'package:repository/feature/management/data/model/request/requests.dart';



abstract class PropertyRepository {
  Future<Either<FailedRequestModel, List<PropertyModel>>> get();
  Future<Either<FailedRequestModel, PropertyModel>> create({required CreatePropertyRequest request});
  Future<Either<FailedRequestModel, String>> edit({required CreatePropertyRequest request});
  Future<Either<FailedRequestModel, String>> delete({required int request});
}