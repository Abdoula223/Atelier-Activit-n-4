import 'package:flutter/material.dart';

void main() {
  runApp(const MonAppli());
}

class MonAppli extends StatelessWidget {
  const MonAppli({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magazine',
      debugShowCheckedModeBanner: false,
      home: const PageAccueil(),
    );
  }
}

class PageAccueil extends StatelessWidget {
  const PageAccueil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Magazine Infos'),
        centerTitle: true,
        backgroundColor: const Color(0xFFE91E63), // Rose
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: const Image(
        image: AssetImage('assets/images/magazineInfo.jpg'),
        fit: BoxFit.cover,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFE91E63), // Rose
        onPressed: () {
          print('Tu as cliqué dessus');
        },
        child: const Text('Click'),
      ),
    );
  }
}