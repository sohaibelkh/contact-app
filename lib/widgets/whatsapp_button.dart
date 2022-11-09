import 'package:contactapp/constants/colors.dart';
import 'package:contactapp/services/firebase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class WhatsappButton extends StatelessWidget {
  const WhatsappButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void launchWhatsapp({@required number}) async {
      String url = 'whatsapp://send?phone=$number&text=Hi';
      await canLaunchUrl(Uri.parse(url))
          ? launchUrl(Uri.parse(url))
          : ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              backgroundColor: Colors.red,
              content: Text('There is no WhatsApp on your Device!')));
    }

    return GestureDetector(
      onTap: () async {
        launchWhatsapp(number: await getWtspNum());
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.61,
        height: MediaQuery.of(context).size.height * 0.061,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: greenColor,
        ),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 17),
              child: Icon(
                Icons.whatsapp,
                size: 30,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 8),
            Text(
              'Allez Sur Whatsapp',
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.w500,
                fontSize: 15.sp,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
