import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

import '../services/firebase.dart';

class ServiceBox extends StatelessWidget {
  const ServiceBox({
    Key? key,
    required this.icon,
    required this.service,
  }) : super(key: key);

  final Icon icon;
  final String service;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        FlutterPhoneDirectCaller.callNumber(await getNum1());
      },
      child: Column(
        children: [
          Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xFFFCA304),
            ),
            child: icon,
          ),
          Text(
            service,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
