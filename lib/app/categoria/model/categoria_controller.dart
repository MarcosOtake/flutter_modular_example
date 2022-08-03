import 'package:flutter/rendering.dart';
import 'package:flutter_modular_example/app/categoria/model/preco_model.dart';

class CategoriaController {
  PrecoModel precoModel;
  CategoriaController({required this.precoModel}) {
    debugPrint('Categoria Controller $hashCode');
  }
}


// class CategoriaController implements Disposable {
//   PrecoModel precoModel;
//   CategoriaController({required this.precoModel}) {
//     debugPrint('Categoria Controller $hashCode');
//   }

//   @override
//   void dispose() {}
// }