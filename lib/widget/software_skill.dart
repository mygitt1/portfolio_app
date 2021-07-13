import 'package:flutter/material.dart';
import 'package:portfolio_app/model/model.dart';

class SoftwareSkill extends StatelessWidget {
  final List<Skill> listOfSkill;

  const SoftwareSkill({this.listOfSkill});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Skills',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Divider(thickness: 2),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: listOfSkill
              .map((e) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      e.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ))
              .toList(),
        )
      ],
    );
  }
}
