import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../model/namoz_model.dart';
import '../../../style/app_color.dart';

class Monday extends StatefulWidget {
  const Monday({
    super.key,
    required this.namozModelDushanba,
    required this.namozModelSeshanba,
    required this.namozModelChorshanba,
    required this.namozModelPayshanba,
    required this.namozModelShanba,
    required this.namozModelJuma,
    required this.namozModelYakshanba,
  });

  final NamozModel? namozModelDushanba;
  final NamozModel? namozModelSeshanba;
  final NamozModel? namozModelChorshanba;
  final NamozModel? namozModelPayshanba;
  final NamozModel? namozModelJuma;
  final NamozModel? namozModelShanba;
  final NamozModel? namozModelYakshanba;

  @override
  State<Monday> createState() => _MondayState();
}

class _MondayState extends State<Monday> {
  ExpansionTileController controller1 = ExpansionTileController();
  ExpansionTileController controller2 = ExpansionTileController();
  ExpansionTileController controller3 = ExpansionTileController();
  ExpansionTileController controller4 = ExpansionTileController();
  ExpansionTileController controller5 = ExpansionTileController();
  ExpansionTileController controller6 = ExpansionTileController();
  ExpansionTileController controller7 = ExpansionTileController();

  bool is1TileExpansion = false;
  bool is2TileExpansion = false;
  bool is3TileExpansion = false;
  bool is4TileExpansion = false;
  bool is5TileExpansion = false;
  bool is6TileExpansion = false;
  bool is7TileExpansion = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: ExpansionTile(
            title: Text(
              widget.namozModelDushanba?.weekday ?? "",
              style: const TextStyle(
                color: AppColors.colorWhite,
                fontWeight: FontWeight.w700,
              ),
            ),
            backgroundColor: AppColors.colorGrey,
            collapsedBackgroundColor: AppColors.colorGrey,
            collapsedShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            controller: controller1,
            onExpansionChanged: (pressed) {
              setState(() {
                is1TileExpansion = pressed;
                if (is1TileExpansion) {
                  is2TileExpansion = false;
                  is3TileExpansion = false;
                  is4TileExpansion = false;
                  is5TileExpansion = false;
                  is6TileExpansion = false;
                  is7TileExpansion = false;
                  controller2.collapse();
                  controller3.collapse();
                  controller4.collapse();
                  controller5.collapse();
                  controller6.collapse();
                  controller7.collapse();
                }
              });
            },
            trailing: const SizedBox.shrink(),
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bomdod",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Quyosh",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Peshin",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Asr",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Shom",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Hufton",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.namozModelDushanba?.times?.tong_saharlik ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelDushanba?.times?.quyosh ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelDushanba?.times?.peshin ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelDushanba?.times?.asr ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelDushanba?.times?.shom_iftor ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelDushanba?.times?.hufton ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 3),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: ExpansionTile(
            title: Text(
              widget.namozModelSeshanba?.weekday ?? "",
              style: const TextStyle(
                color: AppColors.colorWhite,
                fontWeight: FontWeight.w700,
              ),
            ),
            backgroundColor: AppColors.colorGrey,
            collapsedBackgroundColor: AppColors.colorGrey,
            collapsedShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            controller: controller2,
            onExpansionChanged: (pressed) {
              setState(() {
                is2TileExpansion = pressed;
                if (is2TileExpansion) {
                  is1TileExpansion = false;
                  is3TileExpansion = false;
                  is4TileExpansion = false;
                  is5TileExpansion = false;
                  is6TileExpansion = false;
                  is7TileExpansion = false;
                  controller1.collapse();
                  controller3.collapse();
                  controller4.collapse();
                  controller5.collapse();
                  controller6.collapse();
                  controller7.collapse();
                }
              });
            },
            trailing: const SizedBox.shrink(),
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bomdod",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Quyosh",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Peshin",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Asr",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Shom",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Hufton",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.namozModelSeshanba?.times?.tong_saharlik ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelSeshanba?.times?.quyosh ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelSeshanba?.times?.peshin ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelSeshanba?.times?.asr ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelSeshanba?.times?.shom_iftor ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelSeshanba?.times?.hufton ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 3),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: ExpansionTile(
            title: Text(
              widget.namozModelChorshanba?.weekday ?? "",
              style: const TextStyle(
                color: AppColors.colorWhite,
                fontWeight: FontWeight.w700,
              ),
            ),
            backgroundColor: AppColors.colorGrey,
            collapsedBackgroundColor: AppColors.colorGrey,
            collapsedShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            controller: controller3,
            onExpansionChanged: (pressed) {
              setState(() {
                is3TileExpansion = pressed;
                if (is3TileExpansion) {
                  is1TileExpansion = false;
                  is2TileExpansion = false;
                  is4TileExpansion = false;
                  is5TileExpansion = false;
                  is6TileExpansion = false;
                  is7TileExpansion = false;
                  controller1.collapse();
                  controller2.collapse();
                  controller4.collapse();
                  controller5.collapse();
                  controller6.collapse();
                  controller7.collapse();
                }
              });
            },
            trailing: const SizedBox.shrink(),
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bomdod",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Quyosh",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Peshin",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Asr",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Shom",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Hufton",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          widget.namozModelChorshanba?.times?.tong_saharlik ??
                              "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelChorshanba?.times?.quyosh ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelChorshanba?.times?.peshin ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelChorshanba?.times?.asr ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelChorshanba?.times?.shom_iftor ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelChorshanba?.times?.hufton ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 3),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: ExpansionTile(
            title: Text(
              widget.namozModelPayshanba?.weekday ?? "",
              style: const TextStyle(
                color: AppColors.colorWhite,
                fontWeight: FontWeight.w700,
              ),
            ),
            backgroundColor: AppColors.colorGrey,
            collapsedBackgroundColor: AppColors.colorGrey,
            collapsedShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            controller: controller4,
            onExpansionChanged: (pressed) {
              setState(() {
                is4TileExpansion = pressed;
                if (is4TileExpansion) {
                  is1TileExpansion = false;
                  is2TileExpansion = false;
                  is3TileExpansion = false;
                  is5TileExpansion = false;
                  is6TileExpansion = false;
                  is7TileExpansion = false;
                  controller1.collapse();
                  controller2.collapse();
                  controller3.collapse();
                  controller5.collapse();
                  controller6.collapse();
                  controller7.collapse();
                }
              });
            },
            trailing: const SizedBox.shrink(),
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bomdod",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Quyosh",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Peshin",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Asr",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Shom",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Hufton",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          widget.namozModelPayshanba?.times?.tong_saharlik ??
                              "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelPayshanba?.times?.quyosh ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelPayshanba?.times?.quyosh ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelPayshanba?.times?.peshin ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelPayshanba?.times?.asr ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelPayshanba?.times?.shom_iftor ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelPayshanba?.times?.hufton ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 3),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: ExpansionTile(
            title: Text(
              widget.namozModelJuma?.weekday ?? "",
              style: const TextStyle(
                color: AppColors.colorWhite,
                fontWeight: FontWeight.w700,
              ),
            ),
            backgroundColor: AppColors.colorGrey,
            collapsedBackgroundColor: AppColors.colorGrey,
            collapsedShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            controller: controller5,
            onExpansionChanged: (pressed) {
              setState(() {
                is5TileExpansion = pressed;
                if (is5TileExpansion) {
                  is1TileExpansion = false;
                  is2TileExpansion = false;
                  is3TileExpansion = false;
                  is4TileExpansion = false;
                  is6TileExpansion = false;
                  is7TileExpansion = false;
                  controller1.collapse();
                  controller2.collapse();
                  controller3.collapse();
                  controller4.collapse();
                  controller6.collapse();
                  controller7.collapse();
                }
              });
            },
            trailing: const SizedBox.shrink(),
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bomdod",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Quyosh",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Peshin",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Asr",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Shom",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Hufton",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          widget.namozModelJuma?.times?.tong_saharlik ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelJuma?.times?.quyosh ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelJuma?.times?.peshin ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelJuma?.times?.asr ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelJuma?.times?.shom_iftor ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelJuma?.times?.hufton ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 3),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: ExpansionTile(
            title: Text(
              widget.namozModelShanba?.weekday ?? "",
              style: const TextStyle(
                color: AppColors.colorWhite,
                fontWeight: FontWeight.w700,
              ),
            ),
            backgroundColor: AppColors.colorGrey,
            collapsedBackgroundColor: AppColors.colorGrey,
            collapsedShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            controller: controller6,
            onExpansionChanged: (pressed) {
              setState(() {
                is6TileExpansion = pressed;
                if (is6TileExpansion) {
                  is1TileExpansion = false;
                  is2TileExpansion = false;
                  is3TileExpansion = false;
                  is4TileExpansion = false;
                  is5TileExpansion = false;
                  is7TileExpansion = false;
                  controller1.collapse();
                  controller2.collapse();
                  controller3.collapse();
                  controller4.collapse();
                  controller5.collapse();
                  controller7.collapse();
                }
              });
            },
            trailing: const SizedBox.shrink(),
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bomdod",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Quyosh",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Peshin",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Asr",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Shom",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Hufton",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.namozModelShanba?.times?.tong_saharlik ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelShanba?.times?.quyosh ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelShanba?.times?.peshin ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelShanba?.times?.asr ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelShanba?.times?.shom_iftor ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelShanba?.times?.hufton ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 3),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: ExpansionTile(
            title: Text(
              widget.namozModelYakshanba?.weekday ?? "",
              style: const TextStyle(
                color: AppColors.colorWhite,
                fontWeight: FontWeight.w700,
              ),
            ),
            backgroundColor: AppColors.colorGrey,
            collapsedBackgroundColor: AppColors.colorGrey,
            collapsedShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            controller: controller7,
            onExpansionChanged: (pressed) {
              setState(() {
                is7TileExpansion = pressed;
                if (is7TileExpansion) {
                  is1TileExpansion = false;
                  is2TileExpansion = false;
                  is3TileExpansion = false;
                  is4TileExpansion = false;
                  is5TileExpansion = false;
                  is6TileExpansion = false;
                  controller1.collapse();
                  controller2.collapse();
                  controller3.collapse();
                  controller4.collapse();
                  controller5.collapse();
                  controller6.collapse();
                }
              });
            },
            trailing: const SizedBox.shrink(),
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, bottom: 20.0, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bomdod",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Quyosh",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Peshin",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Asr",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Shom",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Hufton",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          widget.namozModelYakshanba?.times?.tong_saharlik ??
                              "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelYakshanba?.times?.quyosh ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelYakshanba?.times?.peshin ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelYakshanba?.times?.asr ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelYakshanba?.times?.shom_iftor ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.namozModelYakshanba?.times?.hufton ?? "",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
