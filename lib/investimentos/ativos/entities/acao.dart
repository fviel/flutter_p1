
class Acao {
  String _ticker;
  double _preco;
  String _descricao;


  Acao(String ticker, double preco, String descricao) {
    _ticker = ticker;
    _preco = preco;
    _descricao = descricao;
  }

  double getPreco() {
    return _preco;
  }

  String getTicker() {
    return _ticker;
  }

  String getDescricao() {
    return _descricao;
  }

  setPreco(double preco) {
    _preco = preco;
  }

  setTicker(String ticker) {
    _ticker = ticker;
  }

  setDescricao(String desc) {
    _descricao = desc;
  }
}


  // // Named constructor that forwards to the default one.
  // Spacecraft.unlaunched(String name) : this(name, null);
  //
  // int get launchYear =>
  //     launchDate?.year; // read-only non-final property
  //
  // // Method.
  // void describe() {
  //   print('Spacecraft: $name');
  //   if (launchDate != null) {
  //     int years =
  //         DateTime.now().difference(launchDate).inDays ~/
  //             365;
  //     print('Launched: $launchYear ($years years ago)');
  //   } else {
  //     print('Unlaunched');
  //   }
  // }
