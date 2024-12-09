// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropertyStatePayloadImpl _$$PropertyStatePayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyStatePayloadImpl(
      error: json['error'] as String,
      isLoading: json['isLoading'] as bool,
      properties: (json['properties'] as List<dynamic>)
          .map((e) => PropertyModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectedProperty: json['selectedProperty'] == null
          ? null
          : PropertyModel.fromJson(
              json['selectedProperty'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PropertyStatePayloadImplToJson(
        _$PropertyStatePayloadImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'isLoading': instance.isLoading,
      'properties': instance.properties,
      'selectedProperty': instance.selectedProperty,
    };
