import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:propertymanagementsys/di/configure_dependencies.dart';
import 'package:propertymanagementsys/feature/management/application/cubit/property_cubit.dart';
import 'package:propertymanagementsys/feature/management/presentation/management.dart';
import 'package:propertymanagementsys/platform/cubit_providers.dart';
import 'package:toastification/toastification.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();
  runApp(
    MultiBlocProvider(
      providers: providers,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    context.read<PropertyCubit>();
    return ToastificationWrapper(
      child: GetMaterialApp(
        title: 'Property Management System',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Management(),
      ),
    );
  }
}
