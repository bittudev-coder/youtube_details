import 'dart:convert';

class VideosModel {
  final String? videoId;
  final String? title;
  final String? thumbnail;
  final String? duration;
  final String? views;
  final String? published;

  VideosModel({
    this.videoId,
    this.title,
    this.thumbnail,
    this.duration,
    this.views,
    this.published,
  });

  factory VideosModel.fromJson(Map<String, dynamic> json) {
    return VideosModel(
      videoId: json['videoId'] as String?,
      title: json['title'] as String?,
      thumbnail: json['thumbnail'] as String?,
      duration: json['duration'] as String?,
      views: json['views'] as String?,
      published: json['published'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'videoId': videoId,
      'title': title,
      'thumbnail': thumbnail,
      'duration': duration,
      'views': views,
      'published': published,
    };
  }

  VideosModel copyWith({
    String? videoId,
    String? title,
    String? thumbnail,
    String? duration,
    String? views,
    String? published,
  }) {
    return VideosModel(
      videoId: videoId ?? this.videoId,
      title: title ?? this.title,
      thumbnail: thumbnail ?? this.thumbnail,
      duration: duration ?? this.duration,
      views: views ?? this.views,
      published: published ?? this.published,
    );
  }

  @override
  String toString() {
    return 'VideoModel(videoId: $videoId, title: $title)';
  }

  // Helper: parse list from JSON string
  static List<VideosModel> listFromJsonString(String jsonString) {
    final decoded = json.decode(jsonString);
    if (decoded is! List) return [];
    return decoded
        .map<VideosModel>(
          (e) => VideosModel.fromJson(e as Map<String, dynamic>),
        )
        .toList();
  }

  // Helper: encode list to JSON string
  static String listToJsonString(List<VideosModel> list) {
    final maps = list.map((e) => e.toJson()).toList();
    return json.encode(maps);
  }
}
