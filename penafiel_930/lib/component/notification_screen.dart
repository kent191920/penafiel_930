import 'package:flutter/material.dart';

class Newsfeedcomponent extends StatelessWidget {
  final String? username;
  final String? timeposted;
  final String? status;
  final String? numberoflikes;
  final String? numberofcomments;
  final String? numberofshares;

  const Newsfeedcomponent({
    super.key,
    this.username,
    this.timeposted,
    this.status,
    this.numberoflikes,
    this.numberofcomments,
    this.numberofshares,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: const CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: Text(username ?? "John Doe"),
            subtitle: Text(timeposted ?? "Just now"),
            trailing: const Icon(Icons.more_vert),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              status ?? "This is a sample status.",
              style: const TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(height: 15),
          Container(
            width: double.infinity,
            height: 330,
            decoration: const BoxDecoration(
              color: Colors.lightBlue,
            ),
            child: const Center(
              child: Icon(
                Icons.image,
                size: 80,
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.thumb_up_alt_outlined),
                const SizedBox(width: 5),
                Text(numberoflikes ?? "0"),
              ],
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.comment_outlined),
                const SizedBox(width: 5),
                Text(numberofcomments ?? "0"),
              ],
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.share_outlined),
                const SizedBox(width: 5),
                Text(numberofshares ?? "0"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
