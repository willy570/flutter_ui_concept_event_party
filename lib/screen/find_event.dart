import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../animation/fade_animation.dart';
import '../widget/make_item.dart';

class FindEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 248, 253, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/four.jpg'),
                      fit: BoxFit.cover)),
              child: Transform.translate(
                offset: const Offset(15, -15),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.white),
                      shape: BoxShape.circle,
                      color: Colors.yellow[800]),
                ),
              ),
            ),
          )
        ],
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              FadeAnimation(
                  1,
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          hintText: "Rechercher un évènement",
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  )),
              const SizedBox(
                height: 30,
              ),
              FadeAnimation(
                  1.2,
                  makeItem(
                      image:
                          'assets/images/resize-event-image-1637924085-fVUMY.jpeg',
                      date: 17)),
              const SizedBox(
                height: 20,
              ),
              FadeAnimation(
                  1.3,
                  makeItem(
                      image:
                          'assets/images/resize-event-image-1627397433-gZGwD.png',
                      date: 18)),
              const SizedBox(
                height: 20,
              ),
              FadeAnimation(
                  1.4,
                  makeItem(
                      image:
                          'assets/images/post-fb-fun-party-12000x2000-px-ok.jpg',
                      date: 19)),
              const SizedBox(
                height: 20,
              ),
              FadeAnimation(
                  1.5,
                  makeItem(
                      image: 'assets/images/EuxbjN0XIAIMu5h.jpg', date: 20)),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
