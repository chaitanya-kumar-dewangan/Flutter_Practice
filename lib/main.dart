import 'package:flutter/material.dart';

const url =
    'https://img.freepik.com/premium-vector/background-green-grass-with-butterfly_100121-132.jpg?w=740';
const description =
    '''A serene oasis in my pocket, mirroring the beauty of sunlit forests and calming waves. Its screen is a canvas for sunsets, stars, and the dance of leaves. With every touch, I feel connected to nature's rhythm. A window to explore the Earth's wonders from anywhere.''';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
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
          Image.network(
            url,
            height: 300,
            width: double.infinity,
            fit: BoxFit.contain,
          ),
          Padding(
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
                    padding: const EdgeInsets.only(top: 18.0 ,right: 8.0),
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
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.blue,
                      size: 18,
                    ),
                    Text(
                      'CALL',
                      style: TextStyle(color: Colors.blue, fontSize: 14),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.send,
                      color: Colors.blue,
                      size: 18,
                    ),
                    Text(
                      'ROUTE',
                      style: TextStyle(color: Colors.blue, fontSize: 14),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.share,
                      color: Colors.blue,
                      size: 18,
                    ),
                    Text(
                      'SHARE',
                      style: TextStyle(color: Colors.blue, fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              description,
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    ),
  ));
}
