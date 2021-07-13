import 'package:flutter/material.dart';
import 'package:portfolio_app/model/model.dart';
import 'package:portfolio_app/widget/software_skill.dart';
import 'package:portfolio_app/widget/work_experience.dart';

class PortfolioScreen extends StatelessWidget {
  final Model model;
  final List<Work> listOfWork;
  final List<Skill> listOfSkill;

  const PortfolioScreen({
    this.model,
    this.listOfWork,
    this.listOfSkill,
  });
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: height * 0.20,
              width: width,
              color: Color(0xff373D48),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    model.basics.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                  Text(
                    model.basics.label,
                    style: TextStyle(
                      color: Colors.white,
                      // fontSize: 26,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Phone : ',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                      children: [
                        TextSpan(
                            text: model.basics.phone,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Email : ',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                      children: [
                        TextSpan(
                            text: model.basics.email,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(model.basics.summary),
            ),
            WorkExperience(
              listOfWork: listOfWork,
            ),
            SoftwareSkill(
              listOfSkill: listOfSkill,
            )
          ],
        ),
      ),
    );
  }
}
