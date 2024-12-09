import 'package:dartz/dartz.dart';
import 'package:repository/feature/management/data/model/property.dart';
import 'package:repository/feature/management/data/model/request/requests.dart';
import 'package:repository/feature/management/repository/property_remote_datasource.dart';
import 'package:repository/feature/management/repository/property_repository.dart';
import 'package:repository/utils/data/guarded_datasource_calls.dart';

class PropertyRepositoryImplementation implements PropertyRepository {
    final PropertyRemoteDataSource _remoteDatasource;

  PropertyRepositoryImplementation(this._remoteDatasource);

 
  @override
  Future<Either<FailedRequestModel, PropertyModel>> create({required CreatePropertyRequest request}) async {
    final res = await guardedApiCall<Either<FailedRequestModel,  PropertyModel>>(
      () => _remoteDatasource.create(request: request),
    );
    return res;
  }
  
  @override
  Future<Either<FailedRequestModel, String>> delete({required int request}) async {
    final res = await guardedApiCall<Either<FailedRequestModel,  String>>(
      () => _remoteDatasource.delete(request: request),
    );
    return res;
  }
  
  @override
  Future<Either<FailedRequestModel, String>> edit({required CreatePropertyRequest request}) async{
    final res = await guardedApiCall<Either<FailedRequestModel,  String>>(
      () => _remoteDatasource.edit(request: request),
    );
    return res;
  }
  
  @override
  Future<Either<FailedRequestModel, List<PropertyModel>>> get() async {
    final res = await guardedApiCall<Either<FailedRequestModel,  List<PropertyModel>>>(
      () => _remoteDatasource.get(),
    );
    return res;
  }
  

}