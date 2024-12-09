// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_module_injector.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$PropertyModuleInjector extends PropertyModuleInjector {
  @override
  void _configure() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerFactory<PropertyRemoteDataSource>(
          (c) => PropertyRemoteDataSourceImplementation())
      ..registerFactory<PropertyRepository>((c) =>
          PropertyRepositoryImplementation(c<PropertyRemoteDataSource>()))
      ..registerSingleton(
          (c) => GetPropertiesUseUsecase(c<PropertyRepository>()))
      ..registerSingleton(
          (c) => AddPropertiesUseUsecase(c<PropertyRepository>()))
      ..registerSingleton(
          (c) => DeletePropertiesUseUsecase(c<PropertyRepository>()))
      ..registerSingleton(
          (c) => UpdatePropertiesUseUsecase(c<PropertyRepository>()));
  }
}
