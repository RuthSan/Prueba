import 'package:dio/dio.dart';
import 'package:prueba/models/gatos_model.dart';

class GatosProvider {
  final _url = 'https://thatcopy.pw/catapi/';
  final _http = Dio();

  Future<List<GatosModel>> obtenergato(int pagina) async {
    List<GatosModel> _gatos = [];
    final response = await _http.get(_url, queryParameters: {'offset': pagina});
    List<dynamic> data = response.data['results'];
    for (int i = 0; i < data.length; i++) {
      final responseGato = await _http.get(data[i]['url']);
      _gatos.add(GatosModel.fromJsonMap(responseGato.data));
    }

    return _gatos;
  }
}
