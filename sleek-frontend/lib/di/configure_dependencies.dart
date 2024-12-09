



import 'package:propertymanagementsys/feature/management/domain/property_module_injector.dart';

import 'core_injector.dart';

void configureDependencies() {

  coreInjector().setup();
   propertyModuleInjector().setup();

}
