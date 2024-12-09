import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:repository/feature/management/data/datasource/property_endpoints.dart';
import 'package:repository/feature/management/data/model/property.dart';
import 'package:repository/feature/management/data/model/request/requests.dart';
import 'package:repository/feature/management/repository/property_remote_datasource.dart';
import 'package:networking/src/api/api.dart';


class PropertyRemoteDataSourceImplementation implements PropertyRemoteDataSource {
  
  @override
  Api api = Api();

  @override
  Future<Either<FailedRequestModel, List<PropertyModel>>> get() async {
    try {
      final res = await api.getData(path: PropertyEndpoints.property);

      final List<PropertyModel> res0 = <PropertyModel>[];

      for (var element in res.data['data']) {
        res0.add(PropertyModel.fromJson(element));
      }

      return right(res0);
    } on DioError catch (e) {
      if (e.response!.statusCode == 403) {
        return left(FailedRequestModel.fromJson(e.response!.data));
      } else {
        return left(FailedRequestModel.fromJson(e.response!.data));
      }
    } catch (e) {
      return left(
        FailedRequestModel.fromJson(
          {
            "success": false,
            "message": e.toString(),
          },
        ),
      );
    }
  }
  
  @override
  Future<Either<FailedRequestModel, PropertyModel>> create({required CreatePropertyRequest request})async{
     try {
      final res =await api.upload(
        fieldName: "property_image",
        filePath: request.property_image??'',
        path: PropertyEndpoints.create, data: request.toJson(),
        isUpdate: false
      );

      return right(res.data['message']); 
    } on DioError catch (e) {
      if (e.response!.statusCode == 403) {
        return left(FailedRequestModel.fromJson(e.response!.data));
      } else {
        return left(FailedRequestModel.fromJson(e.response!.data));
      }
    } catch (e) {
      return left(
        FailedRequestModel.fromJson(
          {
            "success": false,
            "message": e.toString(),
          },
        ),
      );
    }
  }
  
  @override
  Future<Either<FailedRequestModel, String>> delete({required int request}) async{
     try {
      await api.deleteData(path: PropertyEndpoints.delete(request), data: {});

      return right("Success");
    } on DioError catch (e) {
      if (e.response!.statusCode == 403) {
        return left(FailedRequestModel.fromJson(e.response!.data));
      } else {
        return left(FailedRequestModel.fromJson(e.response!.data));
      }
    } catch (e) {
      return left(
        FailedRequestModel.fromJson(
          {
            "success": false,
            "message": e.toString(),
          },
        ),
      );
    }

  }
  
  @override
  Future<Either<FailedRequestModel, String>> edit({required CreatePropertyRequest request})async{
     try {
       final res =await api.upload(
        fieldName: "property_image",
        filePath: request.property_image??'',
        path: PropertyEndpoints.edit(request.id_for_update!), data: request.toJson(),
        isUpdate: true
      );

      return right(res.data['message']); 
    } on DioError catch (e) {
      if (e.response!.statusCode == 403) {
        return left(FailedRequestModel.fromJson(e.response!.data));
      } else {
        return left(FailedRequestModel.fromJson(e.response!.data));
      }
    } catch (e) {
      return left(
        FailedRequestModel.fromJson(
          {
            "success": false,
            "message": e.toString(),
          },
        ),
      );
    }
  }
  
  
 }