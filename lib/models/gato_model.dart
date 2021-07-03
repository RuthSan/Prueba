class Gatos {
  String? name;
  String? url;

  Gatos({
    this.name,
    this.url,
  });

  factory Gatos.fromMapJson(Map<String, dynamic> data) => Gatos(
        name: data['name'],
        url: data['url'],
      );
}
