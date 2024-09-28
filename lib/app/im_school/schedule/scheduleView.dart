// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:driving_license/utils/app_bars/main_appbar.dart';
import 'package:driving_license/utils/app_buttons/app_buttons.dart';
import 'package:driving_license/utils/app_colors/app_colors.dart';
import 'package:driving_license/utils/app_constants/text_strings.dart';
import 'package:driving_license/utils/app_text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

List<Map<String, String>> items = [
  {'text': 'Vehicle 1'},
  {'text': 'Vehicle 2'},
  {'text': 'Vehicle 3'},
  {'text': 'Vehicle 4'},
];

class Scheduleview extends StatelessWidget {
  const Scheduleview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: ConstantStrings.scheduleText,
          size: 16,
          onTap: () {
            Get.back();
          },
        ),
        backgroundColor: AppColors.white_color,
      ),
      backgroundColor: AppColors.white_color,
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.grey_color),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(15, 7, 15, 7),
                              child: Text(
                                items[index]['text']!,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    title: ConstantStrings.avaText,
                    fontWeight: FontWeight.w600,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: Row(
                        children: [
                          AppText(
                            title: 'Weekly',
                          ),
                          SizedBox(width: 5),
                          Icon(Icons.calendar_month_outlined),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              TableCalendar(
                headerVisible: false,
                daysOfWeekVisible: true,
                focusedDay: DateTime.now(),
                firstDay: DateTime.utc(2007, 6, 6),
                lastDay: DateTime.utc(2024, 10, 23),
                calendarStyle: CalendarStyle(
                    todayDecoration: BoxDecoration(
                        color: Color(0xffF33F41),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5))),
                headerStyle: HeaderStyle(
                  titleTextStyle: TextStyle(
                    fontFamily: 'main',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Color(0xffF33F41),
                  ),
                  formatButtonVisible: false,
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          title: 'From',
                          fontWeight: FontWeight.w600,
                        ),
                        SizedBox(height: 5),
                        Container(
                          height: 51,
                          width: 170,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: '00:00',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          title: 'To',
                          fontWeight: FontWeight.w600,
                        ),
                        SizedBox(height: 5),
                        Container(
                          height: 51,
                          width: 170,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: '00:00',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              AppButton(
                buttonName: ConstantStrings.saveText,
                onTap: () {},
              ),
              SizedBox(height: 25),
              AppText(
                title: ConstantStrings.weakSchText,
                fontWeight: FontWeight.w600,
                size: 16,
              ),
              SizedBox(height: 15),
              AppText(
                title: ConstantStrings.mondayText,
                fontWeight: FontWeight.w500,
                size: 16,
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: AppColors.grey_color),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(23, 13, 23, 13),
                      child: AppText(
                        title: '09:00 AM',
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: AppColors.primaryGradiantColor,
                      border: Border.all(color: AppColors.grey_color),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(23, 13, 23, 13),
                      child: AppText(
                        title: '12:00 PM',
                        color: AppColors.white_color,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: AppColors.grey_color),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(22, 18, 22, 18),
                      child: AppText(
                        title: '01:00 PM',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: AppColors.grey_color),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(23, 13, 23, 13),
                      child: AppText(
                        title: '09:00 AM',
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.greylightColor,
                      border: Border.all(color: AppColors.grey_color),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(23, 13, 23, 13),
                      child: AppText(
                        title: '12:00 PM',
                        color: AppColors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              AppText(
                title: ConstantStrings.mondayText,
                fontWeight: FontWeight.w500,
                size: 16,
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: AppColors.grey_color),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(23, 13, 23, 13),
                      child: AppText(
                        title: '09:00 AM',
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: AppColors.primaryGradiantColor,
                      border: Border.all(color: AppColors.grey_color),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(23, 13, 23, 13),
                      child: AppText(
                        title: '12:00 PM',
                        color: AppColors.white_color,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: AppColors.grey_color),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(22, 18, 22, 18),
                      child: AppText(
                        title: '01:00 PM',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: AppColors.grey_color),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(23, 13, 23, 13),
                      child: AppText(
                        title: '09:00 AM',
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.greylightColor,
                      border: Border.all(color: AppColors.grey_color),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(23, 13, 23, 13),
                      child: AppText(
                        title: '12:00 PM',
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: AppColors.grey_color),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(23, 13, 23, 13),
                      child: AppText(
                        title: '09:00 AM',
                        color: AppColors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              AppText(
                title: ConstantStrings.mondayText,
                fontWeight: FontWeight.w500,
                size: 16,
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: AppColors.grey_color),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(23, 13, 23, 13),
                      child: AppText(
                        title: '09:00 AM',
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: AppColors.primaryGradiantColor,
                      border: Border.all(color: AppColors.grey_color),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(23, 13, 23, 13),
                      child: AppText(
                        title: '12:00 PM',
                        color: AppColors.white_color,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: AppColors.grey_color),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(22, 18, 22, 18),
                      child: AppText(
                        title: '01:00 PM',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: AppColors.grey_color),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(23, 13, 23, 13),
                      child: AppText(
                        title: '09:00 AM',
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.greylightColor,
                      border: Border.all(color: AppColors.grey_color),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(23, 13, 23, 13),
                      child: AppText(
                        title: '12:00 PM',
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: AppColors.grey_color),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(23, 13, 23, 13),
                      child: AppText(
                        title: '09:00 AM',
                        color: AppColors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
