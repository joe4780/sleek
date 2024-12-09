part of 'property_cubit.dart';

@freezed
class PropertyState with _$PropertyState {
const factory PropertyState.initial({required PropertyStatePayload payload}) = _InitialPropertyState;
  const factory PropertyState.loading({required PropertyStatePayload payload}) = _LoadingPropertyState;
  const factory PropertyState.error({required PropertyStatePayload payload}) = _ErrorPropertyState;
  const factory PropertyState.loaded({required PropertyStatePayload payload}) = _LoadedPropertyState;
}

@freezed
abstract class PropertyStatePayload with _$PropertyStatePayload {
  const factory PropertyStatePayload({
    required String error,
    required bool isLoading, 
    required List<PropertyModel> properties,
    PropertyModel? selectedProperty,

  }) = _PropertyStatePayload;

  factory PropertyStatePayload.fromJson(Map<String, dynamic> json) => _$PropertyStatePayloadFromJson(json);
}

