import 'package:flutter/material.dart';

class NewsFeedComponent extends StatelessWidget {
  final String? username;
  final String? timePosted;
  final String? status;
  final String? numberOfLikes;
  final String? numberOfComments;
  final String? numberOfShares;

  const NewsFeedComponent({
    Key? key,
    this.username,
    this.timePosted,
    this.status,
    this.numberOfLikes,
    this.numberOfComments,
    this.numberOfShares,
  }) : super(key: key);

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
            subtitle: Text(timePosted ?? "Just now"),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.thumb_up_alt_outlined),
                    const SizedBox(width: 5),
                    Text(numberOfLikes ?? "0"),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.comment_outlined),
                    const SizedBox(width: 5),
                    Text(numberOfComments ?? "0"),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.share_outlined),
                    const SizedBox(width: 5),
                    Text(numberOfShares ?? "0"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
