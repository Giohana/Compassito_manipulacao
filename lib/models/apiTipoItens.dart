class TipoItem {
  int id;
  String descricao;
  bool ativo;

  TipoItem({this.id, this.descricao, this.ativo});

  TipoItem.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    descricao = json['descricao'];
    ativo = json['ativo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['descricao'] = this.descricao;
    data['ativo'] = this.ativo;
    return data;
  }

  @override
  String toString() {
    return 'TipoItem {id: $id, descricao: $descricao, ativo: $ativo}';
  }
}
