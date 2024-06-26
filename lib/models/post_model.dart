import 'package:groovio/models/user_model.dart';

enum PostType { image, video, audio }

class Post {
  final String id;
  final User user;
  final PostType type;
  final String caption;
  final String assetPath;

  Post({
    required this.id,
    required this.user,
    required this.type,
    required this.caption,
    required this.assetPath,
  });

  static List<Post> posts = [
    Post(
      id: '1',
      user: User.users[0],
      type: PostType.video,
      caption:
          'Embark on a journey where every moment is an adventure! 🌟 From breathtaking landscapes to heart-pounding thrills, life is the ultimate exploration.',
      assetPath: 'assets/videos/video_1.mp4',
    ),
    Post(
      id: '2',
      user: User.users[1],
      type: PostType.video,
      caption:
          'Embark on a journey where every moment is an adventure! 🌟 From breathtaking landscapes to heart-pounding thrills, life is the ultimate exploration.',
      assetPath: 'assets/videos/video_2.mp4',
    ),
    Post(
      id: '3',
      user: User.users[2],
      type: PostType.video,
      caption:
          'Embark on a journey where every moment is an adventure! 🌟 From breathtaking landscapes to heart-pounding thrills, life is the ultimate exploration.',
      assetPath: 'assets/videos/video_3.mp4',
    ),
    Post(
      id: '4',
      user: User.users[3],
      type: PostType.video,
      caption:
          'Embark on a journey where every moment is an adventure! 🌟 From breathtaking landscapes to heart-pounding thrills, life is the ultimate exploration.',
      assetPath: 'assets/videos/video_4.mp4',
    ),
    Post(
      id: '4',
      user: User.users[4],
      type: PostType.video,
      caption:
          'Embark on a journey where every moment is an adventure! 🌟 From breathtaking landscapes to heart-pounding thrills, life is the ultimate exploration.',
      assetPath: 'assets/videos/video_5.mp4',
    ),
  ];
}
