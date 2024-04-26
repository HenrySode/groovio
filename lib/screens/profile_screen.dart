// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:groovio/models/post_model.dart';
import 'package:groovio/models/user_model.dart';
import 'package:groovio/widgets/custom_video_player_preview.dart';

class ProfileScreen extends StatelessWidget {
  static const String routeName = '/profile';

  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    User? user = ModalRoute.of(context)!.settings.arguments as User?;
    user = user ??= User.users[0];

    List<Post> posts = Post.posts.where((post) {
      return post.user.id == user!.id;
    }).toList();
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          '@${user.username}',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _ProfileInformation(user: user),
            _ProfileContent(posts: posts),
          ],
        ),
      ),
    );
  }
}

class _ProfileContent extends StatelessWidget {
  final List<Post> posts;
  const _ProfileContent({
    super.key,
    required this.posts,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Column(
          children: [
            const TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(icon: Icon(Icons.grid_view_rounded)),
                Tab(icon: Icon(Icons.favorite)),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: TabBarView(
                children: [
                  //First Tab
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: posts.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3, childAspectRatio: 9 / 16),
                    itemBuilder: (context, index) {
                      return CustomVideoPlayerPreview(
                        post: posts[index],
                      );
                    },
                  ),

                  //Second Tab
                  const Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class _ProfileInformation extends StatelessWidget {
  final User user;
  const _ProfileInformation({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage(user.imagePath),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 75.0),
          child: Row(
            children: [
              _buildUserInfo(context, 'Following', '${user.followings}'),
              _buildUserInfo(context, 'Followers', '${user.followers}'),
              _buildUserInfo(context, 'Likes', '${user.likes}'),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF006E),
                  fixedSize: const Size(200, 50),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)))),
              child: Text(
                'Follow',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: const Size(50, 50),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)))),
              child: const Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
              ),
            ),
          ],
        )
      ],
    );
  }

  Expanded _buildUserInfo(
    BuildContext context,
    String type,
    String value,
  ) {
    return Expanded(
      child: Column(
        children: [
          Text(
            value,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
          ),
          const SizedBox(height: 5),
          Text(
            type,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
          ),
        ],
      ),
    );
  }
}
