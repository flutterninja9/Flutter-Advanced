import 'package:clean_architecture_dog_app/features/dog_app/presentation/bloc/image_object_bloc.dart';
import 'package:clean_architecture_dog_app/features/dog_app/presentation/widgets/laoding.dart';
import 'package:clean_architecture_dog_app/features/dog_app/presentation/widgets/loaded.dart';
import 'package:clean_architecture_dog_app/features/dog_app/presentation/widgets/showMessage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DogAppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dog App'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BlocProvider.of<ImageObjectBloc>(context)
              .dispatch(GetObjectForImage());
        },
        child: Icon(Icons.refresh),
      ),
      body: BlocBuilder<ImageObjectBloc, ImageObjectState>(
        builder: (context, state) {
          if (state is Loading) {
            return LoadingWidget();
          } else if (state is Failed) {
            return ShowMessage(
              message: state.errorMessage,
            );
          } else if (state is Loaded) {
            return DogImageWidget(
              imageObject: state.imageObject,
            );
          } else {
            return ShowMessage(
              message: 'Get Dog Images!',
            );
          }
        },
      ),
    );
  }
}
