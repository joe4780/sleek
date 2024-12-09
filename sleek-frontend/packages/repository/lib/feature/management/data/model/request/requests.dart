
import 'package:freezed_annotation/freezed_annotation.dart';


part 'requests.freezed.dart';
part 'requests.g.dart';

@freezed
class CreatePropertyRequest with _$CreatePropertyRequest {
  factory CreatePropertyRequest({

    int? id_for_update,
    String? property_name,
    String? property_type,
    String? property_description,

    String? property_price,
    String? property_status,
    String? property_image,
    
    String? property_location,
    String? property_contact,


  }) = _CreatePropertyRequest;

  factory CreatePropertyRequest.fromJson(Map<String, dynamic> json) => _$CreatePropertyRequestFromJson(json);
} 