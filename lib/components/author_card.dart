// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'circle_image.dart';

import '../fooderlich_theme.dart';

class AuthorCard extends StatefulWidget {
  final String authorName;
  final String jobTitle;
  final ImageProvider? imageProvider;
  const AuthorCard({
    Key? key,
    required this.authorName,
    required this.jobTitle,
    this.imageProvider,
  }) : super(key: key);

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

bool _isFavorited = false;

class _AuthorCardState extends State<AuthorCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ImageCircle(
                imageProvider: widget.imageProvider,
                imageRadius: 28,
              ),
              const SizedBox(width: 9),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.authorName,
                    style: FooderlichTheme.lightTextTheme.headline2,
                  ),
                  Text(
                    widget.jobTitle,
                    style: FooderlichTheme.lightTextTheme.headline3,
                  ),
                ],
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              setState(() => _isFavorited = !_isFavorited);
              // const snackBar = SnackBar(content: Text('Pressed'));
              // ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            icon: Icon(
              _isFavorited ? Icons.favorite : Icons.favorite_border,
            ),
            iconSize: 30,
            color: Colors.pink.shade300,
          ),
        ],
      ),
    );
  }
}
