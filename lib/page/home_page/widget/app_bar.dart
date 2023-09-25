import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
 final String cityName;
  const CustomAppBar({required this.cityName,super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 22.0,right: 20.0,top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Text(
            cityName,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          IconButton(
            onPressed: () {},
            icon:  Icon(
              CupertinoIcons.search,
              size: 20,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
// Padding(
//   padding: const EdgeInsets.only(left: 10.0,right: 10.0,top: 20.0),
//   child: Center(
//     child: Image(image: AssetImage(AppIcons.icMuseum),
//       height: 200,
//       width: 200,
//       fit: BoxFit.cover,
//     ),
//   ),
// ),
