import 'package:Note_Application/constants/route_names.dart';
import 'package:Note_Application/services/authentication_service.dart';
import 'package:Note_Application/services/navigation_service.dart';
import 'package:Note_Application/viewmodels/base_model.dart';

import '../locator.dart';

class StartUpViewModel extends BaseModel {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  final NavigationService _navigationService = locator<NavigationService>();

  Future handleStartUpLogic() async {
    var hasLoggedInUser = await _authenticationService.isUserLoggedIn();
    print('await');
    if (hasLoggedInUser) {
      print('loggied in');
      _navigationService.navigateToFinal(HomeViewRoute);
    } else {
      print('Not loggied in');
      _navigationService.navigateToFinal(LoginViewRoute);
    }
  }
}