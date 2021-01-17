import 'package:clean_architecture_dog_app/core/usecases/usecase.dart';
import 'package:clean_architecture_dog_app/features/dog_app/domain/enitities/image_object.dart';
import 'package:clean_architecture_dog_app/features/dog_app/domain/repository/image_object_repository.dart';
import 'package:clean_architecture_dog_app/features/dog_app/domain/usecases/get_image_object.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockImageObjectRepository extends Mock implements ImageObjectRepository {}

void main() {
  GetImageObject useCase;
  MockImageObjectRepository mockImageObjectRepository;

  // Initial setup
  setUp(() {
    mockImageObjectRepository = MockImageObjectRepository();
    useCase = GetImageObject(mockImageObjectRepository);
  });

  // pre-decided i/o
  final imageObject = ImageObject(
      imageURL:
          "https://images.dog.ceo/breeds/terrier-scottish/n02097298_12063.jpg");

  // Code for actual testing
  test('should give us an imageURL from the Image object repository', () async {
    // arrange
    when(mockImageObjectRepository.getImageObject())
        .thenAnswer((_) async => Right(imageObject));
    //act
    final result = await useCase(NoParams());
    //assert
    expect(result, Right(imageObject));

    // For verifying
    verify(mockImageObjectRepository.getImageObject());
    verifyNoMoreInteractions(mockImageObjectRepository);
  });
}
