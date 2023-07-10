import 'package:flutter/material.dart';
import 'package:fotohub/screens/add_post_screen.dart';
import 'package:fotohub/screens/feed_screen.dart';
import 'package:fotohub/screens/search_screen.dart';
import 'package:fotohub/screens/profile_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

const webScreenSize = 600;

List<Widget> homeScreenItems = [
  const FeedScreen(),
  const SearchScreen(),
  const AddPostScreen(),
  //const Text('notifications'),
  ProfileScreen(
    uid: FirebaseAuth.instance.currentUser!.uid,
  ),
];