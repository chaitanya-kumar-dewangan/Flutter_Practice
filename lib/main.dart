import 'package:flutter/material.dart';

const url =
    'https://img.freepik.com/premium-vector/background-green-grass-with-butterfly_100121-132.jpg?w=740';
const description =
    '''A serene oasis in my pocket, mirroring the beauty of sunlit forests and calming waves. Its screen is a canvas for sunsets, stars, and the dance of leaves. With every touch, I feel connected to nature's rhythm. A window to explore the Earth's wonders from anywhere.''';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        //by default it is in left
        title: Text('Nature'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _imageSection(),
          _headerSection(),
          _navigationSection(),
          _bodySection(),
        ],
      ),
    );
  }

  Widget _bodySection() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        description,
        textAlign: TextAlign.justify,
      ),
    );
  }

  Widget _navigationSection() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Navigation_item(Icons.call, 'CALL'),
          Navigation_item(Icons.send, 'SEND'),
          Navigation_item(Icons.share, 'SHARE'),
        ],
      ),
    );
  }

  Column Navigation_item(IconData icon, String name) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 18,
        ),
        Text(
          name,
          style: TextStyle(color: Colors.blue, fontSize: 14),
        ),
      ],
    );
  }

  Widget _headerSection() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Oeschinen Lake Campground',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Kandersteg SwitezerLand'),
                  ),
                ]),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 18.0, right: 8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Text('41'),
                ],
              ),
            ),
          ]),
    );
  }

  Widget _imageSection() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.network(
          url,
          height: 300,
          width: double.infinity,
          fit: BoxFit.contain,
        ),
        Positioned.fill(
          child: Center(
            child: Text(
              'Hii this is chaitanya',
              style: TextStyle(fontSize: 18, color: Colors.white24),
            ),
          ),
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: Center(
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                color: Colors.white,
                size: 50,
              ),
            ),
          ),
        )
      ],
    );
  }
}
