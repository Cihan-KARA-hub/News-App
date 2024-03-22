import 'package:flutter/material.dart';

import 'package:learn202/view/Theme/mediaquery.dart';
import 'package:learn202/view/Theme/theme.dart';
import 'package:learn202/view/wigets/black_line.dart';
import 'package:learn202/view/wigets/padding_widget.dart';

import '../../model/news_view_Genaral_model.dart';

import '../core/link_launcher.dart';

class NewsView extends INewsModelView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          fetchAllGeneral();
          print(models.length.toString());
        },
      ),
      appBar: AppBar(
        title: const Text(
          'Gündem',
          style: AppTheme.headLineText,
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: models.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 7, right: 7),
                      child: Text(
                        models[index].title ?? "not found",
                        style: AppTheme.mediumLineText(colors: Colors.black),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          models[index].urlToImage ??
                              "https://picsum.photos/500",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          models[index].description ?? "not commed",
                          style: AppTheme.SmallLineText,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton.icon(
                            onPressed: () {
                              Launcher()
                                  .launchURL(models[index].url ?? " not found");
                            },
                            icon: Icon(Icons.link),
                            label: Text(
                              "Link",
                              style: AppTheme.mediumLineText(
                                  colors: Colors.black45),
                            )),
                        Container(
                          height: 40,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Colors.amberAccent,
                              border: Border(
                                  bottom: BorderSide(
                                      width: 5, color: Colors.black12))),
                          width: MediaQuerys.isSmallScreen(context)
                              ? 200
                              : MediaQuerys.isMediumScreen(context)
                                  ? 250
                                  : 350,
                          child: Center(
                            child: Text(
                              models[index].author ?? "not found",
                              style: AppTheme.SmallLineText,
                            ),
                          ),
                        ),
                        LikedIconButon()
                      ],
                    ),
                    PaddingWidgets.topBasicPading(),
                    BlackLine.blackLine(5, context)
                  ],
                ),
              ],
            );
          }),
    );
  }
}

class LikedIconButon extends StatelessWidget {
  const LikedIconButon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.blueAccent,
          border: Border.all(width: 2)),
      child: Center(
        child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.scuba_diving_outlined,
              size: 30,
            )),
      ),
    );
  }
}
