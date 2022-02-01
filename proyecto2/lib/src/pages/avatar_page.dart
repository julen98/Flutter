import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar'),
        actions: [
          Container(
            padding: const EdgeInsets.all(2.0),
            child: const CircleAvatar(
              radius: 27.0,
              backgroundImage: NetworkImage(
                'https://noverbal.es/uploads/blog/FRENTE.jpg',
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10.0),
            child: const CircleAvatar(
              child: Text('RN'),
              backgroundColor: Colors.purple,
            ),
          )
        ],
      ),
      body: const Center(
        child: FadeInImage(
          image: NetworkImage('https://cope-cdnmed.agilecontent.com/resources/jpg/1/0/1603465773101.jpg'),
          placeholder: NetworkImage('https://cope-cdnmed.agilecontent.com/resources/jpg/1/0/1603465773101.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}