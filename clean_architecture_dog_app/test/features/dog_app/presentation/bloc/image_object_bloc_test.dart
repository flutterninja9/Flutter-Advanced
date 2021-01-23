import 'package:clean_architecture_dog_app/features/dog_app/domain/usecases/get_image_object.dart';
import 'package:clean_architecture_dog_app/features/dog_app/presentation/bloc/image_object_bloc.dart';
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

  group('GetObjectImage', () {});
}
