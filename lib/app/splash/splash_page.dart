import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                //Navigator.pushNamed(context, '/categoria');
                Modular.to.pushNamed('/categoria',
                    arguments: 'Categoria como argumentos');
              },
              child: const Text('Categoria Module'),
            ),
            TextButton(
              onPressed: () {
                //Navigator.pushNamed(context, '/categoria');
                Modular.to.pushNamed(
                  '/categoria/produto/Produto_de_Categoria/exemplo',
                );
              },
              child: const Text('Produto dentro do Categoria Module'),
            ),
            TextButton(
              onPressed: () {
                //Navigator.pushNamed(context, '/categoria');
                Modular.to.pushNamed('/produto/Produto_X/exemplo',
                    arguments: 'Categoria como argumentos');
              },
              child: const Text('Produto Module'),
            ),
            TextButton(
              onPressed: () {
                //Navigator.pushNamed(context, '/categoria');
                Modular.to.pushNamed('/produto/xyz?nome=Produto_XYZ',
                    arguments: 'Categoria como argumentos');
              },
              child: const Text('Produto Module Nav por query Params'),
            ),
          ],
        ),
      ),
    );
  }
}
