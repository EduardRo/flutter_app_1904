import 'package:flutter/material.dart';
import 'package:applrn1904/constants.dart';

import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          TitleAndPrice(title: "Angelica", country: "Russia", price: 440),
          SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                    child: Text('Angelica'),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                        primary: Colors.white,
                        onSurface: Colors.grey,
                        textStyle: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                        )),
                    onPressed: () {
                      print('Pressed');
                    }),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  child: Text("Description"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
