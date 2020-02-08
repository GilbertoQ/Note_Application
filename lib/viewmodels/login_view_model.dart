import 'package:Note_Application/constants/route_names.dart';
import 'package:Note_Application/locator.dart';
import 'package:Note_Application/services/authentication_service.dart';
import 'package:Note_Application/services/dialog_service.dart';
import 'package:Note_Application/services/navigation_service.dart';
import 'package:flutter/cupertino.dart';

import 'base_model.dart';
class LoginViewModel extends BaseModel {

   final AuthenticationService _authenticationService = 
    locator<AuthenticationService>();
  final DialogService _dialogService = locator<DialogService>();
  final NavigationService _navigationService = locator<NavigationService>();


  Future login({
    @required String email,
    @required String password,
    })async{
      setBusy(true);

      var result = await _authenticationService.loginWithEmail(
        email: email,
        password: password,
      );
      setBusy(false);
      if(result is bool){
        if(result){
          _navigationService.navigateTo(HomeViewRoute);
        }else{
          await _dialogService.showDialog(
            title: 'Login Failure',
            description: 'General login failure. Please try again later',
          );

        }

      }else{
          await _dialogService.showDialog(
            title:  'Login Failure',
            description: result,
          );
        }
    }
    void navigateToSignUp(){
      _navigationService.navigateTo(SignUpViewRoute);
    }
    



}

