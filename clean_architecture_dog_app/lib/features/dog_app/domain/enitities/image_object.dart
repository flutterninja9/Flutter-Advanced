import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class ImageObject extends Equatable {
  String imageURL;
  ImageObject({@required this.imageURL}) : super([imageURL]);
}
