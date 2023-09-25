import 'package:flutter/material.dart';
import 'package:prayer_timies/controller/main_controler.dart';
import 'package:prayer_timies/page/home_page/widget/kaba_pic.dart';

import 'widget/app_bar.dart';
import 'widget/monday.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late final MainController mainController;

  @override
  void initState() {
    super.initState();
  mainController = MainController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: mainController.getPrayDate(),
        builder: (context,snapshot){
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView(
              children: [
                Column(
                  children: [
                     CustomAppBar(
                       cityName: mainController.namozModelDushanba?.region ?? "",
                     ),
                   const  KabaPicTure(),
                   const SizedBox(height: 20,),
                    Monday(
                      namozModelDushanba: mainController.namozModelDushanba,
                      namozModelSeshanba: mainController.namozModelSeshanba,
                      namozModelChorshanba: mainController.namozModelChorshanba,
                      namozModelPayshanba: mainController.namozModelPayshanba,
                      namozModelJuma: mainController.namozModelJusm,
                      namozModelShanba: mainController.namozModelShanba,
                      namozModelYakshanba: mainController.namozModelYaxshanba,
                    ),
                  ],
                ),
              ],
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        }


      ),
    );
  }
}
