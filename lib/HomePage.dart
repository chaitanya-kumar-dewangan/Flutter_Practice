import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';
const url =
    'https://img.freepik.com/premium-vector/background-green-grass-with-butterfly_100121-132.jpg?w=740';
const url1 ='https://media.istockphoto.com/id/183305309/photo/winter-reflections.jpg?s=1024x1024&w=is&k=20&c='
    '8zrrwJsJIgLy3rwkBRQ_dn5I7Cg7oVEhywFEDjix-o4=';

const url2='https://www.stockvault.net/data/2010/10/09/115310/preview16.jpg';

const url3='https://www.stockvault.net/data/2009/08/05/109731/preview16.jpg';

List<String> images = [url, url1, url2, url3];
int i=0;
const description =
'''A serene oasis in my pocket, mirroring the beauty of sunlit forests and calming waves. Its screen is a canvas for sunsets, stars, and the dance of leaves. With every touch, I feel connected to nature's rhythm. A window to explore the Earth's wonders from anywhere.''';


class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          images[i],
          height: 300,
          width: double.infinity,
          fit: BoxFit.contain,
        ),


        Positioned(
          right: 10,
          bottom: 10,
          child: ElevatedButton(onPressed: (){setState(() {
            if(i<images.length-1){
            i++;
            }else{
              i=0;
            }
          });}, child: Icon(Icons.arrow_forward))
        ),

        Positioned(
            left: 10,
            bottom: 10,
            child: ElevatedButton(onPressed: (){setState(() {
              if(i>0){
                i--;
              }else{
                i=images.length-1;
              }
            });}, child: Icon(Icons.arrow_back))
        ),

        // Positioned(
        //   right: 10,
        //   bottom: 10,
        //   child: Center(
        //     child: IconButton(
        //       onPressed: () {},
        //       icon: Icon(
        //         Icons.favorite,
        //         color: Colors.white,
        //         size: 50,
        //       ),
        //     ),
        //   ),
        // ),

      ],
    );
  }
}