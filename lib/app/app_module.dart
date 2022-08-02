import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/categoria/categoria_module.dart';
import 'package:flutter_modular_example/app/produto/produto_module.dart';
import 'package:flutter_modular_example/app/splash/splash_page.dart';

class AppModule extends Module {
//Dependecias
  @override
  List<Bind<Object>> get binds => [
        // Se não for usar tudo dessa instancia use o export no bind especifico
        // Bind.lazySingleton((i) => PrecoModel()),
      ];

  @override
  List<ModularRoute> get routes => [
        // ChildRoute('/', child: (context, args) => const SplashPage()),
        ChildRoute(Modular.initialRoute,
            child: (context, args) => const SplashPage()),
        ModuleRoute('/categoria', module: CategoriaModule()),
        ModuleRoute('/produto', module: ProdutoModule()),
      ];
}
