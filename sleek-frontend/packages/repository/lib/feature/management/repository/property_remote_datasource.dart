import 'package:dartz/dartz.dart';
import 'package:networking/networking.dart';
import 'package:repository/feature/management/data/model/property.dart';
import 'package:repository/feature/management/data/model/request/requests.dart';



abstract class PropertyRemoteDataSource  implements BaseApi{
  Future<Either<FailedRequestModel, List<PropertyModel>>> get();
  Future<Either<FailedRequestModel, PropertyModel>> create({required CreatePropertyRequest request});
  Future<Either<FailedRequestModel, String>> edit({required CreatePropertyRequest request});
  Future<Either<FailedRequestModel, String>> delete({required int request});
}