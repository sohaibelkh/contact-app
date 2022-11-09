import 'package:contactapp/constants/colors.dart';
import 'package:contactapp/services/firebase.dart';
import 'package:contactapp/widgets/direct_call.dart';
import 'package:contactapp/widgets/whatsapp_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/service_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: double.infinity,
      // width: 500,
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/back.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: MediaQuery.of(context).size.height * 0.24,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Container(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              ServiceBox(
                                icon: Icon(
                                  Icons.shopping_cart,
                                  color: Color(0xFF231F20),
                                  size: 40,
                                ),
                                service: 'تسوق',
                              ),
                              ServiceBox(
                                icon: Icon(
                                  Icons.local_pharmacy,
                                  color: Color(0xFF231F20),
                                  size: 40,
                                ),
                                service: 'صيدلية',
                              ),
                              ServiceBox(
                                icon: Icon(
                                  Icons.fact_check,
                                  color: Color(0xFF231F20),
                                  size: 40,
                                ),
                                service: 'الفواتير',
                              ),
                              ServiceBox(
                                icon: Icon(
                                  Icons.restaurant,
                                  color: Color(0xFF231F20),
                                  size: 40,
                                ),
                                service: 'مطاعم',
                              ),
                            ],
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.03),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              ServiceBox(
                                icon: Icon(
                                  Icons.bike_scooter,
                                  color: Color(0xFF231F20),
                                  size: 40,
                                ),
                                service: 'البضائع',
                              ),
                              ServiceBox(
                                icon: Icon(
                                  Icons.electric_rickshaw,
                                  color: Color(0xFF231F20),
                                  size: 40,
                                ),
                                service: 'إرساليات',
                              ),
                              ServiceBox(
                                icon: Icon(
                                  Icons.fact_check,
                                  color: Color(0xFF231F20),
                                  size: 40,
                                ),
                                service: 'التذاكر',
                              ),
                              ServiceBox(
                                icon: Icon(
                                  Icons.attach_money,
                                  color: Color(0xFF231F20),
                                  size: 40,
                                ),
                                service: 'الأبناك',
                              ),
                            ],
                          ),
                          const SizedBox(height: 25),
                          Text(
                            'بين يديك من 09:00 إلى 21:00 DAZE',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'توصيل جميع الطلبات بمدينة خنيفرة',
                            style: TextStyle(
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const SizedBox(height: 15),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 2,
                  color: Color(0xFF231F20),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                DirectCallButton(
                  text: 'Appelez Maintenant (1)',
                  onTap: () async {
                    FlutterPhoneDirectCaller.callNumber(await getNum1());
                  },
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                DirectCallButton(
                  text: 'Appelez Maintenant (2)',
                  onTap: (() async {
                    FlutterPhoneDirectCaller.callNumber(await getNum2());
                  }),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                const WhatsappButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
