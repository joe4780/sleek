import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:propertymanagementsys/feature/management/domain/usecase/add_properties_usecase.dart';
import 'package:propertymanagementsys/feature/management/domain/usecase/delete_properties_usecase.dart';
import 'package:propertymanagementsys/feature/management/domain/usecase/get_properties_usecase.dart';
import 'package:propertymanagementsys/feature/management/domain/usecase/update_properties_usecase.dart';
import 'package:repository/repository.dart';
import 'package:toastification/toastification.dart';

part 'property_state.dart';
part 'property_cubit.freezed.dart';
part 'property_cubit.g.dart';

class PropertyCubit extends Cubit<PropertyState> {

  final GetPropertiesUseUsecase _getPropertiesUseUsecase;
  final AddPropertiesUseUsecase _addPropertiesUseUsecase;
  final DeletePropertiesUseUsecase _deletePropertiesUseUsecase;
  final UpdatePropertiesUseUsecase _updatePropertiesUseUsecase;
    PropertyCubit(this._getPropertiesUseUsecase, this._addPropertiesUseUsecase, this._deletePropertiesUseUsecase, this._updatePropertiesUseUsecase) : super(
           const PropertyState.initial(
            payload: PropertyStatePayload(
              error: '',
              isLoading: false,
              properties: [],
              selectedProperty: null,
            ),
          ),
        );






  // get properties

  Future<void> getProperties() async {
    emit(
      const PropertyState.loading(
        payload: PropertyStatePayload(
          error: '',
          isLoading: true,
          properties: [],
          selectedProperty: null,
        ),
      ),
    );

    final res = await _getPropertiesUseUsecase();

    res.fold(
      (l) {
        emit(
          PropertyState.error(
            payload: PropertyStatePayload(
              error: "${l.message}",
              isLoading: false,
              properties: [],
            ),
          ),
        );
      },
      (r) {
        emit(
          PropertyState.loaded(
            payload: PropertyStatePayload(
              error: '',
              isLoading: false,
              properties: r,
              selectedProperty: null,
            ),
          ),
        );
      },
    );
  }
  
    // addProperty
  Future<void> addProperty(Map<String, dynamic> data) async {

    final request = CreatePropertyRequest.fromJson(data);
    emit(
        PropertyState.loading(
        payload: PropertyStatePayload(
          error: '',
          isLoading: true, properties: state.payload.properties,
        ),
      ),
    );

    final res = await _addPropertiesUseUsecase(request);

    res.fold(
      (l) {
        emit(
          PropertyState.error(
            payload: PropertyStatePayload(
              error: "${l.message}",
              isLoading: false,
              properties: state.payload.properties,
            ),
          ),
        );
      },
      (r) async{
        emit(
          PropertyState.loaded(
            payload: PropertyStatePayload(
              error: '',
              isLoading: false,
              properties: state.payload.properties..add(r),
            ),
          ),
        );
        toastification.show(
          title: const Text('Success'),
          description: const Text('Successfully added property'),
          type: ToastificationType.success,
        );
        await getProperties();
      },
    );
  }
    // updateProperty
  Future<void> update(Map<String, dynamic> data) async {

    final request = CreatePropertyRequest.fromJson(data);
    emit(
        PropertyState.loading(
        payload: PropertyStatePayload(
          error: '',
          isLoading: true, properties: state.payload.properties,
        ),
      ),
    );

    final res = await _updatePropertiesUseUsecase(request);

    res.fold(
      (l) {
        emit(
          PropertyState.error(
            payload: PropertyStatePayload(
              error: "${l.message}",
              isLoading: false,
              properties: state.payload.properties,
            ),
          ),
        );
      },
      (r) async{
        emit(
          PropertyState.loaded(
            payload: PropertyStatePayload(
              error: '',
              isLoading: false,
              properties: state.payload.properties,
            ),
          ),
        );
        toastification.show(
          title: const Text('Success'),
          description: const Text('Successfully updated property'),
          type: ToastificationType.success,
        );
        await getProperties();
      },
    );
  }

  // DeletePropertiesUseUsecase

  Future<void> deleteProperty(int id) async {
    emit(
      PropertyState.loading(
        payload: PropertyStatePayload(
          error: '',
          isLoading: true,
          properties: state.payload.properties,
        ),
      ),
    );

    final res = await _deletePropertiesUseUsecase(id);

    res.fold(
      (l) {
        emit(
          PropertyState.error(
            payload: PropertyStatePayload(
              error: "${l.message}",
              isLoading: false,
              properties: state.payload.properties,
            ),
          ),
        );
      },
      (r) async {
        emit(
          PropertyState.loaded(
            payload: PropertyStatePayload(
              error: '',
              isLoading: false,
              properties: state.payload.properties,
            ),
          ),
        );
        toastification.show(
          title: const Text('Success'),
          description: const Text('Successfully deleted property'),
          type: ToastificationType.success,
        );
      },
    );
  }
}
