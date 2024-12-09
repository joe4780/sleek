 

import 'package:dartz/dartz.dart';
import 'package:propertymanagementsys/utils/usecase_typedefs.dart';

import 'package:repository/repository.dart';

class GetPropertiesUseUsecase implements Usecase<List<PropertyModel>, NoParams> {
  final PropertyRepository _repository;

  GetPropertiesUseUsecase(this._repository);

  @override
  Future<Either<FailedRequestModel,  List<PropertyModel>>> call([NoParams? request]) async {

    final res = await _repository.get();
    return res;
  }
} 