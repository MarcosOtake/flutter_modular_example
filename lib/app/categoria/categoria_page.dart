import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/categoria/model/categoria_controller.dart';

class CategoriaPage extends StatefulWidget {
  final String? categoria;

  const CategoriaPage({Key? key, this.categoria})
      :
        // categoria = Modular.args.data,
        super(key: key);

  @override
  State<CategoriaPage> createState() => _CategoriaPageState();
}

// Nesta data 02/agosto/2022 este tipo de implemnetação está depreciada
//class _CategoriaPageState extends ModularState<CategoriaPage, CategoriaController> {
class _CategoriaPageState extends State<CategoriaPage> {
  var controller = Modular.get<CategoriaController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categoria'),
      ),
      body: Center(
          child: Column(
        children: [
          Text(widget.categoria ?? 'Não teve envio de argumentos...'),
          TextButton(
              onPressed: () {
                debugPrint(" CONTROLLER  $controller");
              },
              child: const Text('GET Controller'))
        ],
      )),
    );
  }
}
