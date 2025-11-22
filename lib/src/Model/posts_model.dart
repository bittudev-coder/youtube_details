class PostsModel {
  final PostInfo postInfo;
  final String type; // text | image | video
  final Media? media;

  PostsModel({required this.postInfo, required this.type, this.media});

  factory PostsModel.fromJson(Map<String, dynamic> json) {
    return PostsModel(
      postInfo: PostInfo.fromJson(json['post_info']),
      type: json['type'],
      media: json['media'] != null ? Media.fromJson(json['media']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "post_info": postInfo.toJson(),
      "type": type,
      "media": media?.toJson(),
    };
  }
}

class PostInfo {
  final String id;
  final String author;
  final String authorChannelId;
  final String content;
  final String publishedTime;
  final String likes;
  final String comments;

  PostInfo({
    required this.id,
    required this.author,
    required this.authorChannelId,
    required this.content,
    required this.publishedTime,
    required this.likes,
    required this.comments,
  });

  factory PostInfo.fromJson(Map<String, dynamic> json) {
    return PostInfo(
      id: json['id'],
      author: json['author'],
      authorChannelId: json['author_channel_id'],
      content: json['content'],
      publishedTime: json['published_time'],
      likes: json['likes'],
      comments: json['comments'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "author": author,
      "author_channel_id": authorChannelId,
      "content": content,
      "published_time": publishedTime,
      "likes": likes,
      "comments": comments,
    };
  }
}

class Media {
  final String thumbnail;
  final String postUrl;

  Media({required this.thumbnail, required this.postUrl});

  factory Media.fromJson(Map<String, dynamic> json) {
    return Media(thumbnail: json['thumbnail'], postUrl: json['post_url']);
  }

  Map<String, dynamic> toJson() {
    return {"thumbnail": thumbnail, "post_url": postUrl};
  }
}
