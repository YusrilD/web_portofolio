class Submenu {
  final int? id;
  final String? name;

  Submenu({
    this.id,
    this.name,
  });

  factory Submenu.fromJson(Map<String, dynamic> json) {
    return Submenu(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id ?? 0,
      'name': name ?? 'Unnamed Submenu',
    };
  }
}

class SocialMedia {
  final int? id;
  final String? name;
  final String? tooltip;
  final List<Submenu>? submenu;
  final String? imgUrl;

  SocialMedia({
    this.id,
    this.name,
    this.tooltip,
    this.submenu,
    this.imgUrl,
  });

  factory SocialMedia.fromJson(Map<String, dynamic> json) {
    var submenuList = json['submenu'] as List<dynamic>?;
    List<Submenu>? submenu = submenuList != null
        ? submenuList.map((item) => Submenu.fromJson(item)).toList()
        : [];

    return SocialMedia(
      id: json['id'] as int?,
      name: json['name'] as String?,
      tooltip: json['tooltip'] as String?,
      submenu: submenu,
      imgUrl: json['img_url'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id ?? 0,
      'name': name ?? 'Unnamed Menu',
      'tooltip': tooltip ?? 'No tooltip available',
      'submenu': submenu?.map((item) => item.toJson()).toList() ?? [],
      'img_url': imgUrl ?? '',
    };
  }
}
