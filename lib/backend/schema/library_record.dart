import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'library_record.g.dart';

abstract class LibraryRecord
    implements Built<LibraryRecord, LibraryRecordBuilder> {
  static Serializer<LibraryRecord> get serializer => _$libraryRecordSerializer;

  @BuiltValueField(wireName: 'library_name')
  String? get libraryName;

  String? get address;

  String? get email;

  String? get password;

  String? get confirmpassword;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LibraryRecordBuilder builder) => builder
    ..libraryName = ''
    ..address = ''
    ..email = ''
    ..password = ''
    ..confirmpassword = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Library');

  static Stream<LibraryRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LibraryRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LibraryRecord._();
  factory LibraryRecord([void Function(LibraryRecordBuilder) updates]) =
      _$LibraryRecord;

  static LibraryRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLibraryRecordData({
  String? libraryName,
  String? address,
  String? email,
  String? password,
  String? confirmpassword,
}) {
  final firestoreData = serializers.toFirestore(
    LibraryRecord.serializer,
    LibraryRecord(
      (l) => l
        ..libraryName = libraryName
        ..address = address
        ..email = email
        ..password = password
        ..confirmpassword = confirmpassword,
    ),
  );

  return firestoreData;
}
