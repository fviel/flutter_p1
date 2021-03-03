import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'investimentos/ativos/entities/acao.dart';
import 'investimentos/gestor/entities/ordem.dart';
import 'investimentos/util/util.dart';

// Acao acao = new Acao("ITSA4", 11.42, "ITAU SA");
// Ordem ordem =  new Ordem(new Acao("ITSA4", 11.42, "ITAU SA"), 10, TipoOrdem.compra);

//MaterialApp é o wrapper
void main() => runApp(MaterialApp(
    //Estou retornando uma classe, que na verdade é um widget, com isso tenho o hotreload
    home: Home()));

/**
 * Minha classe principal, com meu código, que retorna um Widget pra home lá no método main();
 */
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return Container();
    return Scaffold(
      appBar: AppBar(
        title: Text('Olá Fernando'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Container(
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.all(30.0),
          color: Colors.grey[400],
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Fernando'),
                RaisedButton.icon(
                  onPressed: () {
                    print('você clicou');
                  },
                  icon: Icon(Icons.mail_outline),
                  label: Text('Clique aqui'),
                  color: Colors.lightBlue,
                ),
                Container(
                  color: Colors.cyan,
                  padding: EdgeInsets.all(30.0),
                  child: Text('Viel'),
                )
              ],
            ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.yellow[900],
      ),
    );
  }
}

/*
//Este widget é stateless, ou seja, ele nunca muda nada, o método uild dele é mais simples
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Funciona como um wrapper
    return MaterialApp(
      title: 'Demonstração Flutter',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Página inicial'),
    );
  }
}

//O que NÃO é alterável, armazeno aqui
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;



  //Nos widgets Stateless implemento o método Build
  //Nos widgets Statefull, implemento o 'createState()', e o meu estate é o desenhado. _MyHomePageState é o estado que eu vou criar
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//Método que descreve o meu estado
//O QUE É ALTERÁVEL, armazeno aqui
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  //String nome = "Fernando";

  void _incrementCounter() {
    //preciso chamar o setState, pra atualizar o estado do meu widget
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    //preciso chamar o setState, pra atualizar o estado do meu widget
    setState(() {
      _counter--;
    });
  }


//Build é renderizar tela, pois o estado altyerou
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text(widget.title),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You have pushed the button this many times:',
          ),
          Text(
            'quantidade ${_counter}',
            style: Theme
                .of(context)
                .textTheme
                .headline4,
          ),
        ],
      ),
    ),

    floatingActionButton: FloatingActionButton(
      onPressed: _decrementCounter,
      tooltip: 'Decrement',
      child: Icon(Icons.add),
    ),
  );
}}
*/
