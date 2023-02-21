import 'package:booktickets/screens/hotel_screen.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_style.dart';
import 'package:booktickets/widgets/double_text_widget.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 20), //đối xứng trái phải
            child: Column(
              children: [
                Gap(AppLayout.getHeight(40)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good morning", style: Styles.headLineStyle3),
                        const Gap(5),
                        Text("Book Tickets", style: Styles.headLineStyle),
                      ],
                    ),
                    Container(
                      height: AppLayout.getHeight(50),
                      width: AppLayout.getWidth(50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              fit: BoxFit.cover, //sử dụng fix ảnh k cân xứng
                              image: AssetImage("assets/images/img_1.png"))),

                      // child: Image.asset("assets/images/img_1.png")
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(25)),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12, vertical: 12), //vertical làm to viền
                  decoration: BoxDecoration(
                      //chỉnh thuộc tính viền
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(10)),
                      color: const Color(0xFFF4F6FD)),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search,
                        color: Color(0xFFBFC205),
                      ),
                      Text(
                        "Search",
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
                Gap(AppLayout.getHeight(40)),
                AppDoubleTextWidget(
                    bigText: "Upcoming Flights", smallText: "View all")
              ],
            ),
          ),
          Gap(AppLayout.getHeight(15)),
          /* chuyen dong qua thuoc tinh*/
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(right: AppLayout.getHeight(20)),
            // ignore: prefer_const_literals_to_create_immutables
            child: Row(
                children: ticketList
                    .map((tickets) => TicketView(ticket: tickets))
                    .toList()),
          )
          /**phần user */
          ,
          Gap(AppLayout.getHeight(15)),
          Container(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
              child: AppDoubleTextWidget(
                  bigText: "Hotels", smallText: "View all")),
          Gap(AppLayout.getHeight(15)),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: AppLayout.getHeight(20)),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: hotelList
                    .map((hotels) => HotelScreen(hotel: hotels))
                    .toList(),
              )),
        ],
      ),
    );
  }
}
