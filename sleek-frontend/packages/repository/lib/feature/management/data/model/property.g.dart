// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropertyModelImpl _$$PropertyModelImplFromJson(Map<String, dynamic> json) =>
    _$PropertyModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      type: json['type'] as String?,
      description: json['description'] as String?,
      price: json['price'] as String?,
      status: json['status'] as String?,
      image: json['image'] as String?,
      location: json['location'] as String?,
      contact: json['contact'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$PropertyModelImplToJson(_$PropertyModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'description': instance.description,
      'price': instance.price,
      'status': instance.status,
      'image': instance.image,
      'location': instance.location,
      'contact': instance.contact,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };

_$FailedRequestModelImpl _$$FailedRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FailedRequestModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ValidationData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FailedRequestModelImplToJson(
        _$FailedRequestModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$ValidationDataImpl _$$ValidationDataImplFromJson(Map<String, dynamic> json) =>
    _$ValidationDataImpl(
      propertyName: (json['propertyName'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      propertyType: (json['propertyType'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      propertyDescription: (json['propertyDescription'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      propertyPrice: (json['propertyPrice'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      propertyStatus: (json['propertyStatus'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      propertyLocation: (json['propertyLocation'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      propertyContact: (json['propertyContact'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ValidationDataImplToJson(
        _$ValidationDataImpl instance) =>
    <String, dynamic>{
      'propertyName': instance.propertyName,
      'propertyType': instance.propertyType,
      'propertyDescription': instance.propertyDescription,
      'propertyPrice': instance.propertyPrice,
      'propertyStatus': instance.propertyStatus,
      'propertyLocation': instance.propertyLocation,
      'propertyContact': instance.propertyContact,
    };
