import 'package:clean_architecture_dog_app/core/errors/error_model.dart';
import 'package:clean_architecture_dog_app/core/usecases/usecase.dart';
import 'package:clean_architecture_dog_app/features/dog_app/domain/enitities/image_object.dart';
import 'package:clean_architecture_dog_app/features/dog_app/domain/usecases/get_image_object.dart';
import 'package:clean_architecture_dog_app/features/dog_app/presentation/bloc/image_object_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockGetImageObject extends Mock implements GetImageObject {}

void main() {
  ImageObjectBloc bloc;
  MockGetImageObject getImageObject;

  setUp(() {
    getImageObject = MockGetImageObject();
    bloc = ImageObjectBloc(imageObject: getImageObject);
  });

  test('initial State of the bloc should be [Empty]', () async {
    expect(bloc.initialState, equals(Empty()));
  });

  group('GetObjectImage', () {
    final tImageObject =
        ImageObject(imageURL: 'https://dog.ceo/api/breeds/image/random');
    test('should get the data from the getImageObject use-case', () async {
      //arrange
      when(getImageObject(NoParams()))
          .thenAnswer((_) async => Right(tImageObject));
      //act
      bloc.dispatch(GetObjectForImage());
      await untilCalled(getImageObject(NoParams()));
      //assert
      verify(getImageObject(NoParams()));
    });
    test('should emit [Loading,Loaded] while calling the data resources',
        () async {
      //arrange
      when(getImageObject(NoParams()))
          .thenAnswer((_) async => Right(tImageObject));
      //assert
      expectLater(
          bloc.state,
          emitsInAnyOrder([
            Empty(),
            Loading(),
            Loaded(tImageObject),
          ]));
      //act
      bloc.dispatch(GetObjectForImage());
    });
    test(
        'should emit [Loading,ErrorModel] while calling the data resources is failed',
        () async {
      //arrange
      when(getImageObject(NoParams()))
          .thenAnswer((_) async => Left(ServerFailure()));
      //assert
      expectLater(
          bloc.state,
          emitsInAnyOrder([
            Empty(),
            Loading(),
            Failed(SERVER_FAILURE),
          ]));
      //act
      bloc.dispatch(GetObjectForImage());
    });
    test(
        'should emit [Loading,ErrorModel] while calling the data resources is failed',
        () async {
      //arrange
      when(getImageObject(NoParams()))
          .thenAnswer((_) async => Left(DeviceOfflineFailure()));
      //assert
      expectLater(
          bloc.state,
          emitsInAnyOrder([
            Empty(),
            Loading(),
            Failed(DEVICE_OFLLINE_FAILURE),
          ]));
      //act
      bloc.dispatch(GetObjectForImage());
    });
  });
}
