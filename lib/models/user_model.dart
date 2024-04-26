class User {
  final String id;
  final String username;
  final String imagePath;
  final int followers;
  final int followings;
  final int likes;

  User({
    required this.id,
    required this.username,
    required this.imagePath,
    required this.followers,
    required this.followings,
    required this.likes,
  });
  static List<User> users = [
    User(
      id: '1',
      username: 'Henry',
      imagePath: 'assets/images/image_1.jpeg',
      followers: 100,
      followings: 100,
      likes: 50,
    ),
    User(
      id: '2',
      username: 'Maliseli',
      imagePath: 'assets/images/image_2.jpeg',
      followers: 200,
      followings: 200,
      likes: 90,
    ),
    User(
      id: '3',
      username: 'Amara',
      imagePath: 'assets/images/image_3.jpeg',
      followers: 300,
      followings: 200,
      likes: 150,
    ),
    User(
      id: '4',
      username: 'Anyesi',
      imagePath: 'assets/images/image_4.jpeg',
      followers: 400,
      followings: 32,
      likes: 234,
    ),
    User(
      id: '5',
      username: 'Jacken',
      imagePath: 'assets/images/image_5.jpeg',
      followers: 702,
      followings: 562,
      likes: 297,
    ),
  ];
}
