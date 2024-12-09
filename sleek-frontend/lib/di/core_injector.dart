
import 'package:kiwi/kiwi.dart';




part 'core_injector.g.dart';

abstract class CoreInjector {
  static KiwiContainer? container;
  // ignore: always_specify_types
  static final resolve = container!.resolve;

  void setup() {
    container = KiwiContainer();
    _$CoreInjector()._configure();
    
  }

  /// Add other injection here.
  // @Register.factory(NetworkService, from: NetworkServiceImpl)
  // @Register.singleton(FlutterSecureStorage)
  void _configure(); // ignore: unused_element
}

CoreInjector coreInjector() => _$CoreInjector();
