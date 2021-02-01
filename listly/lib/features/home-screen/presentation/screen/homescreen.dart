import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:listly/core/utils/themes/appTextThemes.dart';
import 'package:listly/features/account/presentation/screens/account-screen.dart';
import 'package:listly/features/home-screen/presentation/bloc/homescreen_bloc.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays(
        [SystemUiOverlay.top, SystemUiOverlay.bottom]);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Listly",
          style: AppTextThemes.titleStyle,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<HomescreenBloc>().add(SwitchAddItem());
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
      body: BlocBuilder<HomescreenBloc, HomescreenState>(
        builder: (context, state) {
          if (state is HomescreenInitial) {
            return Container(
              child: Center(
                child: Text('Home'),
              ),
            );
          } else if (state is GroupSt) {
            return Container(
              child: Center(
                child: Text('Groups'),
              ),
            );
          } else if (state is AddItemSt) {
            return Container(
              child: Center(
                child: Text('Add Items State'),
              ),
            );
          } else if (state is HistorySt) {
            return Container(
              child: Center(
                child: Text('History'),
              ),
            );
          } else if (state is AccountSt) {
            return AccountScreen();
          } else {
            return Container();
          }
        },
      ),
    );
  }
}

//! For Refactoring the BottomAppBar

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Get.theme.primaryColor,
      notchMargin: 6,
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          IconButton(
            onPressed: () {
              context.read<HomescreenBloc>().add(SwitchHomeScreen());
            },
            icon: Icon(
              Icons.home,
              color: Get.theme.canvasColor,
            ),
          ),
          IconButton(
            onPressed: () {
              context.read<HomescreenBloc>().add(SwitchGroups());
            },
            icon: Icon(
              Icons.group,
              color: Get.theme.canvasColor,
            ),
          ),
          SizedBox(),
          IconButton(
            onPressed: () {
              context.read<HomescreenBloc>().add(SwitchHistory());
            },
            icon: Icon(
              Icons.bookmark,
              color: Get.theme.canvasColor,
            ),
          ),
          IconButton(
            onPressed: () {
              context.read<HomescreenBloc>().add(SwitchAccount());
            },
            icon: Icon(
              Icons.person,
              color: Get.theme.canvasColor,
            ),
          ),
        ],
      ),
    );
  }
}
