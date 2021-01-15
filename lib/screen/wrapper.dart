import 'package:dapopatafood_app/model/user_model.dart';
import 'package:dapopatafood_app/screen/authentication/authenticate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _userAccess = Provider.of<CustomUser>(context);
    print('Provider user $_userAccess');

    if (_userAccess == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
