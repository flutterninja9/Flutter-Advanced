import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:domain_driven_design/domain/auth/i_auth_facade.dart';
import 'package:domain_driven_design/domain/core/errors.dart';
import 'package:domain_driven_design/injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.uniqueId.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get noteCollection => collection('notes');
}
