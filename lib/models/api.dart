/*
 * Outro tipo de chamada get aprendida por mio do site: "http://www.macoratti.net/19/09/flut_weblvw1.htm", onde de forma mais
 *simples foi explicada e feita a requisição, porem nesse não a o tratamento de request e response.
*/

import 'package:http/http.dart' as http;

const baseUrl = "http://192.168.0.9:8091";

class Api {
  static Future getProdutos() async {
    return await http.get(baseUrl + "/estoque");
  }
}

class ApiTipoItens {
  static Future getTipos() async {
    return await http.get(baseUrl + "/tiposItem");
  }
}

/*void save(AutoGenerated gerador) {
  http.post(
    baseUrl + "/estoque",
    headers: {'Content-type': 'application/json'},
  );
}
*/
