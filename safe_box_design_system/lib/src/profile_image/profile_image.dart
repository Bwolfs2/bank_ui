import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  final String profileUrl;
  final String notificationCount;
  const ProfileImage({Key? key, required this.profileUrl, required this.notificationCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(profileUrl),
          radius: 20,
        ),
        Positioned(
          top: -4.5,
          left: -4.5,
          child: CircleAvatar(
            backgroundColor: Colors.red,
            radius: 9,
            child: Text(
              notificationCount,
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        )
      ],
    );
  }
}
