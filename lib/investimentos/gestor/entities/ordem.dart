import 'dart:collection';

import '../../ativos/entities/acao.dart';
import '../../ativos/entities/fii.dart';
import '../../util/util.dart';
import '../../configuracoes/config.dart' as config;



class Ordem{
   Acao _acao;
   int _quantidade;
   DateTime _dtHrRegistro;
   double _valorOrdem;
   double _valorCorretagem;
   double _emolumentos;
   TipoOrdem _tipoOrdem;


   Ordem (Acao acao, int qtd, TipoOrdem tipoOrdem){
     _acao = acao;
     _quantidade = qtd;
     _tipoOrdem = tipoOrdem;
     _dtHrRegistro = DateTime.now();
     _calcularPrecoOrdem();
     print('counter value : $this');
   }

   _calcularPrecoOrdem(){
      double txEmolumentos = config.properties.taxaEmolumentos;
     _valorCorretagem = config.properties.precoCorretagem;
     _emolumentos = (_acao.getPreco() * _quantidade) * txEmolumentos;
     _valorOrdem = _valorCorretagem + (_acao.getPreco() * _quantidade) + _emolumentos;
   }

   String printOrdem(){
     return "Valor total da ordem: R\$" + _valorOrdem.toString();
   }
}