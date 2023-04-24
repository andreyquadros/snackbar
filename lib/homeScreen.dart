

import 'package:flutter/material.dart';
import 'package:snackbar_example/custom_snackbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
      ),
      body: Column(
        children: [
          Text('Testando Snackbars em Flutter'),
          ElevatedButton(onPressed: (){
            final snackBar = SnackBar(content: Text('SnackBar ativada com sucesso!'));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }, child: Text('Ativar Snackbar')),
          ElevatedButton(onPressed: (){
            final snackBarActions = SnackBar(
              action: SnackBarAction(onPressed: (){}, label: 'Desfazer',),
                content: Text('SnackBar ativada com sucesso!'));
            ScaffoldMessenger.of(context).showSnackBar(snackBarActions);
          }, child: Text('Ativar Snackbar Action')),
          ElevatedButton(onPressed: (){
            final snackBarActions = CustomSnackBar('Minha SnackBar customizada');
            ScaffoldMessenger.of(context).showSnackBar(snackBarActions);
          }, child: Text('Ativar Snackbar Custom')),
        ],
      ),
    );
  }
}
