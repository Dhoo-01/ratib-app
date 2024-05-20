import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ratib_app/resources/styles/provider_theme.dart';
import 'package:ratib_app/screen/widgets/banner_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 22.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              appbar(context),
              const SizedBox(
                  width: 20.0,
                  child:
                      Padding(padding: EdgeInsets.symmetric(vertical: 10.0))),
              const Text('Assalamualaikum',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  )),
              const SizedBox(height: 05.0),
              const Text('Ahlan Wa Sahlan 🙏',
                  style:
                      TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700)),
              const BannerWidget(),
            ]),
          ),
        ),
      ),
      // ? bikin feature terpisah yg nampilkan model
    );
  }
}

Column appbar(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                ClipRect(
                  child: Image.asset(
                    'assets/images/quran.png',
                    width: 28.0,
                  ),
                ),
                const SizedBox(width: 07.0),
                const Text(
                  'Ratib App',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
          InkWell(
            onTap: () {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
            borderRadius: BorderRadius.circular(10.0),
            child: const Icon(
              Icons.light_mode_sharp,
              size: 24.0,
            ),
          ),
        ],
      ),
    ],
  );
}
