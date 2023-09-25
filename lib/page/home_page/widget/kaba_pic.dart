import 'package:flutter/material.dart';

import '../../../style/image.dart';

class KabaPicTure extends StatelessWidget {
  const KabaPicTure({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
       padding:  EdgeInsets.only(top: 10.0),
       child: Center(
         child: Image(image: AssetImage(AppIcons.icMuseum),
           height: 200,
           width: 200,
           fit: BoxFit.cover,
         ),
       ),
     );
  }
}
