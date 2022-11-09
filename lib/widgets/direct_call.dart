import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:contactapp/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DirectCallButton extends StatelessWidget {
const DirectCallButton({Key? key, required this.onTap, required this.text}) : super(key: key);

  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.61,
        height: MediaQuery.of(context).size.height * 0.061,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xFFFCA304),
        ),
        child: Row(
          children: [
           const Padding(
              padding:  EdgeInsets.only(left: 17),
              child:  Icon(
                Icons.call,
                size: 30,
                color: Colors.black,
              ),
            ),
            const SizedBox(width: 8),
            Text(
              text,
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.w700,
                fontSize: 15.sp,
                color:  Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
