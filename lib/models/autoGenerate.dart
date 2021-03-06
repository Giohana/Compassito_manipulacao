/*
 * Classe que trata os itens em estoque vindo da api para um objeto dart.
*/
class AutoGenerated {
  //int id;
  String item;
  String tipoItem;
  int quantidadeReservado;
  int quantidadeDisponivel;
  int valor;
  bool ativo;

  AutoGenerated({
    //this.id,
    this.item,
    this.tipoItem,
    this.quantidadeReservado,
    this.quantidadeDisponivel,
    this.valor,
    this.ativo,
  });

  AutoGenerated.fromJson(Map<String, dynamic> json) {
    //id = json['id'];
    item = json['item'];
    tipoItem = json['tipoItem'];
    quantidadeReservado = json['quantidadeReservado'];
    quantidadeDisponivel = json['quantidadeDisponivel'];
    valor = json['valor'];
    ativo = json['ativo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    //data['id'] = this.id;
    data['item'] = this.item;
    data['tipoItem'] = this.tipoItem;
    data['quantidadeReservado'] = this.quantidadeReservado;
    data['quantidadeDisponivel'] = this.quantidadeDisponivel;
    data['valor'] = this.valor;
    data['ativo'] = this.ativo;
    return data;
  }

  @override
  String toString() {
    return 'IncluirConfirmar {item: $item, tipoItem: $tipoItem, quantidadeReservado: $quantidadeReservado, quantidadeDisponivel: $quantidadeDisponivel, valor: $valor, ativo $ativo}';
  }
}
