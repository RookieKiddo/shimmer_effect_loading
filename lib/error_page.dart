import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class ErrorMessage extends StatefulWidget {
  ErrorMessage({Key? key, required this.error}) : super(key: key);
  String error;
  @override
  State<ErrorMessage> createState() => _ErrorMessageState();
}

class _ErrorMessageState extends State<ErrorMessage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            "assets/images/error_message.png",
            width: 250,
            height: 250,
          ),
          const SizedBox(
            width: defaultPadding,
            height: defaultPadding,
          ),
          const Text(
            "Oh No!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          const SizedBox(
            width: defaultPadding,
            height: defaultPadding,
          ),
          Text(
            widget.error,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: Color.fromARGB(255, 109, 109, 109),
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
