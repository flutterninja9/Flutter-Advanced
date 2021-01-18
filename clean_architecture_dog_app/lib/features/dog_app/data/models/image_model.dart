import 'package:clean_architecture_dog_app/features/dog_app/domain/enitities/image_object.dart';
import 'package:meta/meta.dart';

class ImageModel extends ImageObject {
  ImageModel({@required String imageUrl}) : super(imageURL: imageUrl);

  // defining the fromJson factory method
  factory ImageModel.fromJson(Map<String, dynamic> json) {
    return ImageModel(imageUrl: json["message"]);
  }

  //Implementation for toJson method
  Map<String, dynamic> toJson() {
    return {"message": imageURL};
  }
}
