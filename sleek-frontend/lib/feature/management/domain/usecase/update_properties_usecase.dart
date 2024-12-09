 

import 'package:dartz/dartz.dart';
import 'package:propertymanagementsys/utils/usecase_typedefs.dart';

import 'package:repository/repository.dart';

class UpdatePropertiesUseUsecase implements Usecase<String, CreatePropertyRequest> {
  final PropertyRepository _repository;

  UpdatePropertiesUseUsecase(this._repository);

  @override
  Future<Either<FailedRequestModel,  String>> call([CreatePropertyRequest? request]) async {

    final res = await _repository.edit(request: request!);  
    return res;
  }
} 