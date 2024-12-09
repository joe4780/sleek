
import 'package:freezed_annotation/freezed_annotation.dart';


part 'property.freezed.dart';
part 'property.g.dart';

@freezed
class PropertyModel with _$PropertyModel {
  factory PropertyModel({
    int? id,
    String ?name,
    String? type,
    String? description,
    String? price,
    String? status,
    String? image,
    String? location,
    String? contact,
    String? created_at,
    String? updated_at,
  }) = _PropertyModel;

  factory PropertyModel.fromJson(Map<String, dynamic> json) => _$PropertyModelFromJson(json);
}
@freezed
class FailedRequestModel with _$FailedRequestModel {
  factory FailedRequestModel({
    bool? success,
    String? message,
    ValidationData? data,

  }) = _FailedRequestModel;

  factory FailedRequestModel.fromJson(Map<String, dynamic> json) => _$FailedRequestModelFromJson(json);
}

@freezed
class ValidationData with _$ValidationData {
  const factory ValidationData({
    List<String> ? propertyName,
    List<String> ? propertyType,
    List<String> ? propertyDescription,
    List<String> ? propertyPrice,
    List<String> ? propertyStatus,
    List<String> ? propertyLocation,
    List<String> ? propertyContact,
  }) = _ValidationData;

  factory ValidationData.fromJson(Map<String, dynamic> json) => _$ValidationDataFromJson(json);
}
