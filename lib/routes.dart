import 'package:flutter/material.dart';
import 'package:swift/screens/splashscreen.dart';
import 'package:swift/views/b_swift_navigation_bar.dart';
import 'package:swift/views/chat_room_view.dart';
import 'package:swift/views/users_views/login_view.dart';
import 'package:swift/views/users_views/profile_view.dart';
import 'package:swift/views/users_views/register_view.dart';

var routes = {
  '/': (BuildContext context) => Splashscreen(),
  '/home': (BuildContext context) => BSwiftNavigationBar(),
  '/login': (BuildContext context) => LoginView(),
  '/register': (BuildContext context) => RegisterView(),
  '/profile': (BuildContext context) => ProfileView(),
  '/chat-room': (BuildContext context) => ChatRoomView(),
};
