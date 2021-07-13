import 'package:flutter/material.dart';
import 'package:portfolio_app/model/model.dart';

class WorkExperience extends StatelessWidget {
  final List<Work> listOfWork;

  const WorkExperience({this.listOfWork});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Experience',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Divider(thickness: 2),
        Column(
          children: listOfWork
              .map((e) => Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          e.startDate.year.toString(),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              e.position,
                            ),
                            Text(e.company),
                          ],
                        ),
                      ),

                      // Text(e.position),
                      // Text(e.company),
                      // Text(e.location)
                    ],
                  ))
              .toList(),
        ),
      ],
    );
  }
}
