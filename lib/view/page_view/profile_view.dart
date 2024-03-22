import 'package:flutter/material.dart';

import 'package:learn202/view/wigets/icon_wiget.dart';
import 'package:learn202/view/wigets/padding_widget.dart';

import '../Theme/mediaquery.dart';
import '../Theme/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    String avatarUrl = "https://i.pravatar.cc/10";
    const String name = "Cihan KARA";
    Color colors = Colors.red;
    // buraya mobix gelecek
    void denme() {}
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Profile"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: avatarImage(avatarUrl: avatarUrl),
          ),
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  PaddingWidgets.topBasicPading(),
                  const Text(
                    name,
                    style: AppTheme.headLineText,
                  ),
                  PaddingWidgets.topBasicPading(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconWigets.buildIconButton(
                              icons: Icon(Icons.settings),
                              onPressed: () {},
                              size: 40),
                          IconWigets.buildIconButton(
                              onPressed: () {},
                              icons: Icon(Icons.save_sharp),
                              size: 40),
                          IconWigets.buildIconButton(
                              onPressed: () {},
                              icons: Icon(Icons.edit),
                              size: 40),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Setting",
                            style:
                                AppTheme.mediumLineText(colors: Colors.black45),
                          ),
                          Text(
                            "Saved",
                            style:
                                AppTheme.mediumLineText(colors: Colors.black45),
                          ),
                          Text(
                            "Edit",
                            style:
                                AppTheme.mediumLineText(colors: Colors.black45),
                          )
                        ],
                      )
                    ],
                  ),
                  PaddingWidgets.topBasicPading2x(),
                  Expanded(
                    flex: 2,
                    child: ButtonColmn(colors: colors),
                  )
                ],
              ))
        ],
      ),
    );
  }
}

class ButtonColmn extends StatelessWidget {
  const ButtonColmn({
    super.key,
    required this.colors,
  });

  final Color colors;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
            height: 50,
            width: MediaQuerys.isSmallScreen(context)
                ? 450
                : MediaQuerys.isMediumScreen(context)
                    ? 600
                    : 1000,
            decoration: const BoxDecoration(
                border: Border(
              top: BorderSide(color: Colors.red, width: 2.5),
              left: BorderSide(color: Colors.red, width: 2.5),
              right: BorderSide(color: Colors.red, width: 2.5),
              bottom: BorderSide(color: Colors.red, width: 2.5),
            )),
            child: SizedBox(
              child: TextButton(
                  onPressed: () {},
                  child: Text("Hesabı Sil",
                      style: AppTheme.mediumLineText(colors: colors))),
            )),
      ],
    );
  }
}

class avatarImage extends StatelessWidget {
  const avatarImage({
    super.key,
    required this.avatarUrl,
  });

  final String avatarUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
        image:
            DecorationImage(image: NetworkImage(avatarUrl), fit: BoxFit.fill),
      ),
    );
  }
}
