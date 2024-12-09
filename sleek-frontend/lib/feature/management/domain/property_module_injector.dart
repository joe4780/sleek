import 'package:kiwi/kiwi.dart';
import 'package:propertymanagementsys/feature/management/domain/usecase/add_properties_usecase.dart';
import 'package:propertymanagementsys/feature/management/domain/usecase/delete_properties_usecase.dart';
import 'package:propertymanagementsys/feature/management/domain/usecase/get_properties_usecase.dart';
import 'package:propertymanagementsys/feature/management/domain/usecase/update_properties_usecase.dart';
import 'package:repository/repository.dart';



part 'property_module_injector.g.dart';

abstract class PropertyModuleInjector{
   static KiwiContainer? container;
    // ignore: always_specify_types
  static final resolve = container!.resolve;

  void setup() {
    container = KiwiContainer();
    _$PropertyModuleInjector()._configure();
  }
  
  @Register.factory(PropertyRemoteDataSource, from: PropertyRemoteDataSourceImplementation)
  @Register.factory(PropertyRepository, from: PropertyRepositoryImplementation)
  @Register.singleton(GetPropertiesUseUsecase)
  @Register.singleton(AddPropertiesUseUsecase)
  @Register.singleton(DeletePropertiesUseUsecase)
  @Register.singleton(UpdatePropertiesUseUsecase)

  
  void _configure(); // ignore: unused_element
}

PropertyModuleInjector propertyModuleInjector() => _$PropertyModuleInjector();