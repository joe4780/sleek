import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:propertymanagementsys/feature/management/application/cubit/property_cubit.dart';
import 'package:propertymanagementsys/feature/management/domain/property_module_injector.dart';
import 'package:propertymanagementsys/feature/management/domain/usecase/add_properties_usecase.dart';
import 'package:propertymanagementsys/feature/management/domain/usecase/delete_properties_usecase.dart';
import 'package:propertymanagementsys/feature/management/domain/usecase/get_properties_usecase.dart';
import 'package:propertymanagementsys/feature/management/domain/usecase/update_properties_usecase.dart';

final providers = [
  BlocProvider<PropertyCubit>(
    create: (_) => PropertyCubit(
      PropertyModuleInjector.resolve<GetPropertiesUseUsecase>(),
      PropertyModuleInjector.resolve<AddPropertiesUseUsecase>(),
      PropertyModuleInjector.resolve<DeletePropertiesUseUsecase>(),
      PropertyModuleInjector.resolve<UpdatePropertiesUseUsecase>(),
    )..getProperties(),
  ),
];
