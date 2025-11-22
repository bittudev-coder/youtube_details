import 'package:youtube_details/youtube_details.dart';
import 'dart:convert';

Future<void> main() async {
  final yb = YouTubeDetails.getInstance;

  try {
    print("\n🔹 Fetching Channel Details...");
    final channel = await yb.fetchChannelDetails(channelId: 'byte_coding5339');
    print(jsonEncode(channel!.toJson()));

    print("\n🔹 Fetching All Videos...");
    final videos = await yb.fetchVideos(channelId: 'byte_coding5339');
    print(jsonEncode(videos.map((v) => v.toJson()).toList()));

    print("\n🔹 Fetching YouTube Shorts...");
    final shorts = await yb.fetchShorts(channelId: 'byte_coding5339');
    print(jsonEncode(shorts.map((p) => p.toJson()).toList()));

    print("\n🔹 Fetching YouTube Posts...");
    final posts = await yb.fetchPosts(channelId: 'byte_coding5339');
    print(jsonEncode(posts.map((p) => p.toJson()).toList()));

    print("\n🔹 Fetching Single Video Details...");
    final video = await yb.fetchVideoDetails(videoId: "yhCTP-81tZ0");
    if (video != null) {
      print(jsonEncode(video.toJson()));
    } else {
      print("❌ Video Not Found");
    }
  } catch (e) {
    print("\n❌ Error Occurred: $e");
  }
}
