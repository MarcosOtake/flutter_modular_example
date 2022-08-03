import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/categoria/categoria_page.dart';
import 'package:flutter_modular_example/app/categoria/model/categoria_controller.dart';
import 'package:flutter_modular_example/app/categoria/model/preco_model.dart';
import 'package:flutter_modular_example/app/categoria/model/x.dart';
import 'package:flutter_modular_example/app/produto/produto_module.dart';

class CategoriaModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.lazySingleton((i) => X(), export: true),
        Bind.lazySingleton((i) => PrecoModel(x: i()), export: true),
        Bind.lazySingleton(
          (i) => CategoriaController(
            //precoModel: i.get(),
            precoModel: i(),
          ),
          // export: true,
        ),
        // Bind(
        //   (i) => CategoriaController(),
        //   //Presisa da instancia de classe carregada mude  isLazy: p/ false
        //   isLazy: true,
        //   //Presisa de uma nova instancia de classe carregada
        //   //mude sSingleton: p/ false e isLazy: true,
        //   isSingleton: true,
        // ),

        //---- OU  use diretamente os construtores nomeados ---
        // Bind.lazySingleton((i) => CategoriaController()),
        // Bind.singleton((i) => CategoriaController()),
        // Bind.factory((i) => CategoriaController()),
        // Bind.instance(CategoriaController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => CategoriaPage(
            categoria: args.data,
          ),
        ),
        ModuleRoute('/produto', module: ProdutoModule())
      ];
}
