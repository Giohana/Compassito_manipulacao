import 'package:flutter/material.dart';
import 'package:manipulacao/http/webclient.dart';
import 'package:manipulacao/models/Inputar.dart';
import 'package:manipulacao/models/catalogoEdicao.dart';

void main() {
  runApp(CatalogoEdicao());
  findAll().then((gerador) => print("nova lista produtos: $gerador"));
  //rodando a pagina principal e tambem mostrando no terminal o json vindo da api
}

//teste feito inicialmente para se manipulr os itens, como se ele não for chamado não atrapalha, vou retira-lo apenas no final
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manipulação'),
      ),
      body: ListView(
        children: <Widget>[
          RaisedButton(
              child: Text('Incluir'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Inputar();
                }));
              }),
          RaisedButton(
              child: Text('Editar'),
              onPressed: () => debugPrint('pressionei o botão editar')),
        ],
      ),
    );
  }
}
