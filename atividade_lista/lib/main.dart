import 'package:atividade_lista/datasource/fruta_datasource.dart';
import 'package:atividade_lista/view/detalhes_fruta.dart';
import 'package:atividade_lista/view/lista_complexa.dart';
import 'package:atividade_lista/view/lista_simples.dart';
import 'package:atividade_lista/view/tela_listas.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final FrutaDatasource frutaDatasource = FrutaDatasource();

  @override
  void initState() {
    frutaDatasource.inicializarDados();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Listas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Flutter Listas', datasource: frutaDatasource),
      routes: <String, WidgetBuilder>{
        '/lista-simples': (BuildContext context) => const ListaSimples(),
        '/lista-complexa': (BuildContext context) => const ListaComplexa(),
        '/detalhes-fruta': (BuildContext context) => const DetalhesFruta(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  final FrutaDatasource datasource;
  const MyHomePage({required this.title, required this.datasource, Key? key})
      : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: TelaLista(widget.datasource),
    );
  }
}
