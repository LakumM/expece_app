import 'package:flutter/material.dart';

class GetElevatedBtn extends StatelessWidget {
  String? btnName;
  VoidCallback onTap;
  GetElevatedBtn({required this.onTap, required this.btnName});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        btnName!,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 17),
      ),
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.pink.shade200,
        foregroundColor: Colors.white,
        shadowColor: Colors.blueGrey.shade200,
        elevation: 4,
      ),
    );
  }
}
