import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:booktickets/utils/app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs({super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(3.5),
        child: Row(
          children: [
            /*
                  airline ticket
                  */
            Container(
                width: size.width * .44,
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(AppLayout.getHeight(50))),
                    color: Colors.white),
                child: Center(child: Text(firstTab))),
            /*
                  hotel
                  */
            Container(
                width: size.width * .44,
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(AppLayout.getHeight(50))),
                    color: Colors.transparent),
                child: Center(child: Text(secondTab))),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
          color: Color(0xFFF4F6F0),
        ),
      ),
    );
  }
}
