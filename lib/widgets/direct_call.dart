import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:contactapp/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DirectCallButton extends StatelessWidget {
const DirectCallButton({Key? key, required this.onTap}) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height * 0.07,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: darkBlueColor,
        ),
        child: Row(
          children: [
           const Padding(
              padding:  EdgeInsets.only(left: 17),
              child:  Icon(
                Icons.call,
                size: 40,
                color: yellowColor,
              ),
            ),
            const SizedBox(width: 15,),
            Text(
              'Appelez Maintenant',
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.w500,
                fontSize: 18.sp,
                color: yellowColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
