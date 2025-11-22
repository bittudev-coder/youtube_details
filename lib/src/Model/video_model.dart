class VideoModel {
  final String title;
  final String authorName;
  final String authorUrl;
  final String type;
  final int height;
  final int width;
  final String providerName;
  final String providerUrl;
  final int thumbnailHeight;
  final int thumbnailWidth;
  final String thumbnailUrl;
  final String html;

  VideoModel({
    required this.title,
    required this.authorName,
    required this.authorUrl,
    required this.type,
    required this.height,
    required this.width,
    required this.providerName,
    required this.providerUrl,
    required this.thumbnailHeight,
    required this.thumbnailWidth,
    required this.thumbnailUrl,
    required this.html,
  });

  factory VideoModel.fromJson(Map<String, dynamic> json) {
    return VideoModel(
      title: json['title'],
      authorName: json['author_name'],
      authorUrl: json['author_url'],
      type: json['type'],
      height: json['height'],
      width: json['width'],
      providerName: json['provider_name'],
      providerUrl: json['provider_url'],
      thumbnailHeight: json['thumbnail_height'],
      thumbnailWidth: json['thumbnail_width'],
      thumbnailUrl: json['thumbnail_url'],
      html: json['html'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "title": title,
      "author_name": authorName,
      "author_url": authorUrl,
      "type": type,
      "height": height,
      "width": width,
      "provider_name": providerName,
      "provider_url": providerUrl,
      "thumbnail_height": thumbnailHeight,
      "thumbnail_width": thumbnailWidth,
      "thumbnail_url": thumbnailUrl,
      "html": html,
    };
  }

  @override
  String toString() => "VideoModel(title: $title, author: $authorName)";
}
