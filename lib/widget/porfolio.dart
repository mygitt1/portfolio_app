import 'package:flutter/material.dart';
import 'package:portfolio_app/model/model.dart';
import 'package:portfolio_app/screen/portfolio_screen.dart';
import 'package:portfolio_app/service/get_api.dart';

class Porfolio extends StatelessWidget {
  final GetApi getApi = GetApi();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FutureBuilder(
          future: getApi.getData(),
          builder: (context, snapshot) {
            Model data = snapshot.data;
            if (snapshot.data == null) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return PortfolioScreen(
              model: data,
              listOfWork: data.work,
              listOfSkill: data.skills,
            );
          },
        ),
      ),
    );
  }
}
