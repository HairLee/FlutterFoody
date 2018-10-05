import 'package:flutter_app_test/utils/utils.dart';

class Actor {
  String character;
  String name;
  String profilePicture;
  int id;

  get profilePictureUrl =>
      getMediumPictureUrl((profilePicture != null ? profilePicture : ""));

  Actor.fromJson(Map jsonMap)
      : character = jsonMap['character'],
        name = jsonMap['name'],
        profilePicture = jsonMap['profile_path'],
        id = jsonMap['id'];
}
