import 'package:get/get.dart';
import 'package:prueba/models/gatos_model.dart';
import 'package:prueba/providers/gato_provider.dart';

class GatosState extends GetxController{
  List<GatosModel> gatos = [];
  final _gatosProvider = GatosProvider();
  int _pagina = 0;

  Future<void> obtenerGatos() async {
    final carsList = await _gatosProvider.obtenergato(_pagina);
    gatos.addAll(carsList);
    _pagina += 20;
    update();
  }
}
