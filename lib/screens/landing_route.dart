import 'package:flutter/material.dart';
import 'package:flutter_artshop/screens/home_route.dart';
import 'package:flutter_artshop/screens/login_route.dart';
import 'package:flutter_artshop/widgets/my_video_background.dart';
import 'package:video_player/video_player.dart';

class LandingRoute extends StatelessWidget {
  const LandingRoute({super.key});

  static String name = "landing";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(
              Icons.palette,
              color: Colors.amber,
            ),
            onPressed: () {
              print('move');
            }),
        title: const Text(
          'Landing Page',
          textDirection: TextDirection.ltr,
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginRoute()))
                  },
              icon: const Icon(
                Icons.login,
                textDirection: TextDirection.ltr,
                semanticLabel: 'login',
              ))
        ],
      ),
      body: Stack(
        children: [
          const VideoBackground(),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeRoute()));
                  },
                  child: Text('ArtShop')))
        ],
      ),
    );
  }
}
