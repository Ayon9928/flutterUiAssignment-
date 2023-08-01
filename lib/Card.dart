import 'package:flutter/material.dart';

class CustomeCard extends StatelessWidget {
  final String tittle;
  final String description;
  final String date;
  const CustomeCard(
      {super.key,
      required this.tittle,
      required this.description,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Container(
        padding: const EdgeInsets.all(10),
        color: const Color.fromRGBO(245, 248, 251, 1),
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    tittle,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ],
              ),
              Text(description),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    date,
                    style: const TextStyle(
                        color: Color.fromRGBO(30, 31, 32, 1),
                        fontSize: 12,
                        fontWeight: FontWeight.w100),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
