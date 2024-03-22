import 'package:flutter/material.dart';
import 'package:learn202/model/views_controller/news_page_view.dart';

import 'package:learn202/view/Theme/mediaquery.dart';
import 'package:learn202/view/Theme/theme.dart';
import 'package:learn202/view/page_view/news_view.dart';

import '../../model/views_controller/news_page_bussines_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    const Color gridColor = AppTheme.gridBackColor;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Gündem",
            style: AppTheme.headLineText,
          ),
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(30),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewsPageBitcoin(
                      konu: "technology",
                    ),
                  ),
                );
              },
              hoverColor: const Color.fromARGB(255, 0, 0, 0),
              child: Container(
                width: MediaQuerys.isSmallScreen(context)
                    ? 450
                    : MediaQuerys.isMediumScreen(context)
                        ? 600
                        : 1000,
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black54, width: 4)),
                child: ClipRRect(
                  child: Image.asset(
                    "./assets/bitcoin.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewsPageBitcoin(
                      konu: "Entertainment",
                    ),
                  ),
                );
              },
              hoverColor: const Color.fromARGB(255, 0, 0, 0),
              child: Container(
                width: MediaQuerys.isSmallScreen(context)
                    ? 450
                    : MediaQuerys.isMediumScreen(context)
                        ? 600
                        : 1000,
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black54, width: 4)),
                child: ClipRRect(
                  child: Image.asset(
                    "./assets/words.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewsPageBitcoin(
                      konu: "spor",
                    ),
                  ),
                );
              },
              hoverColor: const Color.fromARGB(255, 0, 0, 0),
              child: Container(
                width: MediaQuerys.isSmallScreen(context)
                    ? 450
                    : MediaQuerys.isMediumScreen(context)
                        ? 600
                        : 1000,
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black54, width: 4)),
                child: ClipRRect(
                  child: Image.asset(
                    "./assets/spor.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewsPageBitcoin(
                      konu: "science",
                    ),
                  ),
                );
              },
              hoverColor: const Color.fromARGB(255, 0, 0, 0),
              child: Container(
                width: MediaQuerys.isSmallScreen(context)
                    ? 450
                    : MediaQuerys.isMediumScreen(context)
                        ? 600
                        : 1000,
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black54, width: 4)),
                child: ClipRRect(
                  child: Image.asset(
                    "./assets/bilim.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
