class ShortModel {
  final String? videoId;
  final String? title;
  final String? views;
  final String? thumbnail;
  final int? width;
  final int? height;
  final String? entityId;
  final String? accessibilityText;

  ShortModel({
    this.videoId,
    this.title,
    this.views,
    this.thumbnail,
    this.width,
    this.height,
    this.entityId,
    this.accessibilityText,
  });

  factory ShortModel.fromJson(Map<String, dynamic> json) => ShortModel(
        videoId: json["videoId"],
        title: json["title"],
        views: json["views"],
        thumbnail: json["thumbnail"],
        width: json["width"],
        height: json["height"],
        entityId: json["entityId"],
        accessibilityText: json["accessibilityText"],
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId,
        "title": title,
        "views": views,
        "thumbnail": thumbnail,
        "width": width,
        "height": height,
        "entityId": entityId,
        "accessibilityText": accessibilityText,
      };
}
