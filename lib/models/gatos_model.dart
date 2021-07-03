class GatosModel {
  int? id;
  String? url;
  String? webpurl;
  int? x;
  int? y;

  GatosModel({
    this.id,
    this.url,
    this.webpurl,
    this.x,
    this.y,
  });

  factory GatosModel.fromJsonMap(Map<String, dynamic> data) => GatosModel(
        id: data['id'],
        url: data['url'],
        webpurl: data['webpurl'],
        x: data['x'],
        y: data['y'],
      );
}
