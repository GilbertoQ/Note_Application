import 'package:Note_Application/viewmodels/startup_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/viewmodel_provider.dart';

class StartUpView extends StatelessWidget {
  const StartUpView({Key key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    print('builder');
    return ViewModelProvider<StartUpViewModel>.withConsumer(
      viewModel: StartUpViewModel(),
      onModelReady: (model) => model.handleStartUpLogic(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                width: 300,
                height: 100,
                child: Image.asset('assets/images/icon_large.png'),
              ),
              CircularProgressIndicator(
                strokeWidth: 3,
                valueColor: AlwaysStoppedAnimation(Color(0xff19c7c1)),
              )
            ],
          ),
        ),
      ),
    );
  }
}