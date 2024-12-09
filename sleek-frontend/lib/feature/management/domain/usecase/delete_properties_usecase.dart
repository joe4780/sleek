 

import 'package:dartz/dartz.dart';
import 'package:propertymanagementsys/utils/usecase_typedefs.dart';

import 'package:repository/repository.dart';

class DeletePropertiesUseUsecase implements Usecase<String, int> {
  final PropertyRepository _repository;

  DeletePropertiesUseUsecase(this._repository);

  @override
  Future<Either<FailedRequestModel,  String>> call([int? request]) async {

    final res = await _repository.delete(request: request!);  
    return res;
  }
} 