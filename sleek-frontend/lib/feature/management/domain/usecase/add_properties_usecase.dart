 

import 'package:dartz/dartz.dart';
import 'package:propertymanagementsys/utils/usecase_typedefs.dart';

import 'package:repository/repository.dart';

class AddPropertiesUseUsecase implements Usecase<PropertyModel, CreatePropertyRequest> {
  final PropertyRepository _repository;

  AddPropertiesUseUsecase(this._repository);

  @override
  Future<Either<FailedRequestModel,  PropertyModel>> call([CreatePropertyRequest? request]) async {

    final res = await _repository.create(request: request!);  
    return res;
  }
} 