import 'package:flutter/material.dart';
import 'package:spayce/modules/home/home_controller.dart';
import 'package:spayce/shared/themes/app_colors.dart';

import '../../shared/themes/app_text_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = HomeController();
  final pages = [Container(color: Colors.red), Container(color: Colors.orange)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(152),
        child: Container(
          height: 152,
          color: AppColors.primary,
          child: Center(
            child: ListTile(
              title: Text.rich(TextSpan(
                  text: "Olá, ",
                  style: TextStyles.titleRegular,
                  children: [
                    TextSpan(
                        text: "Lenoln!", style: TextStyles.titleBoldBackground)
                  ])),
              subtitle: Text(
                "Mantenha as suas contas em dia",
                style: TextStyles.captionShape,
              ),
              trailing: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
          ),
        ),
      ),
      body: pages[homeController.currentPage],


      bottomNavigationBar: SizedBox(
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  homeController.setPage(0);
                  setState(() {});
                },
                icon: const Icon(
                  Icons.home,
                  color: AppColors.primary,
                )),
            GestureDetector(
              onTap: () {
                print("clicou");
              },
              child: Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(5)),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_box_outlined,
                      color: AppColors.background,
                    )),
              ),
            ),
            IconButton(
                onPressed: () {
                  setState(() {});
                  homeController.setPage(1);
                },
                icon: const Icon(Icons.description_outlined,
                    color: AppColors.body)),
          ],
        ),
      ),
    );
  }
}
