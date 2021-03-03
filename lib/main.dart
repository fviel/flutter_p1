import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'investimentos/ativos/entities/acao.dart';
import 'investimentos/gestor/entities/ordem.dart';
import 'investimentos/util/util.dart';

// Acao acao = new Acao("ITSA4", 11.42, "ITAU SA");
// Ordem ordem =  new Ordem(new Acao("ITSA4", 11.42, "ITAU SA"), 10, TipoOrdem.compra);

//MaterialApp é o wrapper
void main() =>
    runApp(MaterialApp(
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
        body: Row(
          // mainAxisAlignment: MainAxisAlignment.end,
          // crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                flex: 3,
               child: Image.asset('assets/images/imagem3.jpg'),
                ),
              Expanded(
                flex:3,
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  color: Colors.amber,
                  child: Text('dois'),
                ),
              ),
              Expanded(
                flex:2,
                  child: Container(
                    padding: EdgeInsets.all(5.0),
                    color: Colors.cyan,
                    child: Text('um'),
                  ),
              ),
              Expanded(
                flex:1,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5.0),
                      color: Colors.yellow,
                      child: Text('três'),
                    ),
                  ],
                ),
              ),
            ]
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.yellow[900],
      ),
    );
  }
}
