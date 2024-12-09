import 'package:dio/dio.dart';
import 'package:networking/src/rest_client.dart';

class Api {

  static final _api = Api._internal();
  factory Api() {
    return _api;
  }
  Api._internal();

  // ignore: prefer_final_fields
  Dio _dioClient = RestClient().dio;

  Future<Response> getData({required String path}) async => await _dioClient.get(path);
  Future<Response> postData({required String path,  dynamic data}) async => await _dioClient.post(path, data: data);
  Future<Response> updateData({required String path, Map<String, dynamic>?  data}) async => await _dioClient.patch(path, data: data);
  Future<Response> put({required String path, Map<String, dynamic>?  data}) async => await _dioClient.put(path, data: data);
  Future<Response> deleteData({required String path, Map<String, dynamic>?  data}) async => await _dioClient.delete(path, data: data);
  Future<Response> upload({
    required String path,
    required String filePath,
    required bool isUpdate,
    required String fieldName,
    required Map<String, dynamic> data,
  }) async{
    if(isUpdate){
      if (filePath.isEmpty) {

        FormData formData = FormData.fromMap(data);
        return await _dioClient.put(path, data: formData, options: Options(contentType: 'multipart/form-data'));
      }else{
        MultipartFile file = await MultipartFile.fromFile(filePath);

        FormData formData = FormData.fromMap({
          fieldName: file,
          ...data,
        });

        return await _dioClient.put(path, data: formData, options: Options(contentType: 'multipart/form-data'));

      }
    }else{

      if (filePath.isEmpty) {

        FormData formData = FormData.fromMap(data);
        return await _dioClient.post(path, data: formData, options: Options(contentType: 'multipart/form-data'));
      }else{
        MultipartFile file = await MultipartFile.fromFile(filePath);

        FormData formData = FormData.fromMap({
          fieldName: file,
          ...data,
        });

        return await _dioClient.post(path, data: formData, options: Options(contentType: 'multipart/form-data'));

      }
    }
  }
  Future<Response> download({required String path, String? savePath}) async {
    savePath ??= DateTime.now().toString();
    return await _dioClient.download(path, savePath);
  }

}
