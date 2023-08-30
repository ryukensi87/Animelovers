import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoginRecord extends FirestoreRecord {
  LoginRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "Password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  void _initializeFields() {
    _username = snapshotData['Username'] as String?;
    _email = snapshotData['Email'] as String?;
    _password = snapshotData['Password'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Login');

  static Stream<LoginRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LoginRecord.fromSnapshot(s));

  static Future<LoginRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LoginRecord.fromSnapshot(s));

  static LoginRecord fromSnapshot(DocumentSnapshot snapshot) => LoginRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LoginRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LoginRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LoginRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LoginRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLoginRecordData({
  String? username,
  String? email,
  String? password,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Username': username,
      'Email': email,
      'Password': password,
    }.withoutNulls,
  );

  return firestoreData;
}

class LoginRecordDocumentEquality implements Equality<LoginRecord> {
  const LoginRecordDocumentEquality();

  @override
  bool equals(LoginRecord? e1, LoginRecord? e2) {
    return e1?.username == e2?.username &&
        e1?.email == e2?.email &&
        e1?.password == e2?.password;
  }

  @override
  int hash(LoginRecord? e) =>
      const ListEquality().hash([e?.username, e?.email, e?.password]);

  @override
  bool isValidKey(Object? o) => o is LoginRecord;
}
