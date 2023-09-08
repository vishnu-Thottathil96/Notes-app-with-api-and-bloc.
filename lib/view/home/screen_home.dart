import 'package:bloctodo/constants/space.dart';
import 'package:bloctodo/view/home/widgets/display_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Notes',
                      style: GoogleFonts.sacramento(
                          fontSize: 40, fontWeight: FontWeight.bold)),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.power_settings_new_rounded,
                      size: 35,
                    ),
                  )
                ],
              ),
              height10,
              Expanded(
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return const DisplayContainer();
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 10.h,
                    );
                  },
                  itemCount: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
