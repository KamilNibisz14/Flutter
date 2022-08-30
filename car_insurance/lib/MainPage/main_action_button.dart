import 'package:flutter/material.dart';

class MainActionButton extends StatelessWidget {
  const MainActionButton({required this.text, required this.icon, required this.onTap});
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 120,
        width: 120,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(30)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 45,),
            SizedBox(height: 10,),
            Text(text, style: TextStyle(color: Colors.white, fontSize: 22),)
          ],
        ),
      ),
    );
  }
}
