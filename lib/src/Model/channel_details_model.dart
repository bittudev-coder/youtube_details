class ChannelDetailsModel {
  final String? title;
  final String? profileImage;
  final String? meta;

  ChannelDetailsModel({this.title, this.profileImage, this.meta});

  factory ChannelDetailsModel.fromJson(Map<String, dynamic> json) {
    return ChannelDetailsModel(
      title: json['title'],
      profileImage: json['profile_image'],
      meta: json['meta'],
    );
  }

  Map<String, dynamic> toJson() {
    return {"title": title, "profile_image": profileImage, "meta": meta};
  }
}
