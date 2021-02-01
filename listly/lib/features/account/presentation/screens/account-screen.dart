import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:listly/features/account/domain/repository/account_repository.dart';
import 'package:listly/features/account/presentation/controller/account-screen-controller.dart';
import 'package:listly/features/login/presentation/bloc/authentication_bloc.dart';

class AccountScreen extends StatelessWidget {
  AccountScreenController _controller = Get.put(AccountScreenController());
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RaisedButton(
            onPressed: () {
              _controller.changeTheme();
            },
            color: Get.theme.accentColor,
            textTheme: ButtonTextTheme.primary,
            child: Text("SWITCH THEME"),
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            onPressed: () async {
              final AccountRepository _repo = AccountRepository();
              await _repo.logout();
              BlocProvider.of<AuthenticationBloc>(context)
                  .add(ResetLoginState());
            },
            color: Colors.red,
            textTheme: ButtonTextTheme.primary,
            child: Text("LOGOUT"),
          ),
        ],
      ),
    );
  }
}
