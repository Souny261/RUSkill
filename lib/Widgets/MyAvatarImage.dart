import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MyAvatarImage extends StatelessWidget {
  final String imageUrl;
  MyAvatarImage({this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) => Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
      placeholder: (context, url) => CircularProgressIndicator(),
      errorWidget: (context, url, error) => Icon(Icons.error),
    );
  }
}
