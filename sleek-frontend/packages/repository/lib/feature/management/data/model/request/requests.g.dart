// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requests.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatePropertyRequestImpl _$$CreatePropertyRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreatePropertyRequestImpl(
      id_for_update: (json['id_for_update'] as num?)?.toInt(),
      property_name: json['property_name'] as String?,
      property_type: json['property_type'] as String?,
      property_description: json['property_description'] as String?,
      property_price: json['property_price'] as String?,
      property_status: json['property_status'] as String?,
      property_image: json['property_image'] as String?,
      property_location: json['property_location'] as String?,
      property_contact: json['property_contact'] as String?,
    );

Map<String, dynamic> _$$CreatePropertyRequestImplToJson(
        _$CreatePropertyRequestImpl instance) =>
    <String, dynamic>{
      'id_for_update': instance.id_for_update,
      'property_name': instance.property_name,
      'property_type': instance.property_type,
      'property_description': instance.property_description,
      'property_price': instance.property_price,
      'property_status': instance.property_status,
      'property_image': instance.property_image,
      'property_location': instance.property_location,
      'property_contact': instance.property_contact,
    };
