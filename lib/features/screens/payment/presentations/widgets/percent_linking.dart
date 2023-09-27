import 'package:flutter/material.dart';

class PercentLinking extends StatefulWidget {
  const PercentLinking({super.key});

  @override
  State<PercentLinking> createState() => _PercentLinkingState();
}

class _PercentLinkingState extends State<PercentLinking> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey),
        ),
        child:  Row(
          children: [
            Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: const DecorationImage(
                      image: AssetImage(
                        "assets/png/img.png",
                      ),
                      fit: BoxFit.cover),
                )),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "Get 30% of linking\ne-Wallet ",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            const CircleAvatar(
              backgroundColor: Colors.black,
              radius: 13,
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 15,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
