import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'logins_record.g.dart';

abstract class LoginsRecord
    implements Built<LoginsRecord, LoginsRecordBuilder> {
  static Serializer<LoginsRecord> get serializer => _$loginsRecordSerializer;

  String? get email;

  String? get password;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LoginsRecordBuilder builder) => builder
    ..email = ''
    ..password = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('logins');

  static Stream<LoginsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LoginsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LoginsRecord._();
  factory LoginsRecord([void Function(LoginsRecordBuilder) updates]) =
      _$LoginsRecord;

  static LoginsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLoginsRecordData({
  String? email,
  String? password,
}) {
  final firestoreData = serializers.toFirestore(
    LoginsRecord.serializer,
    LoginsRecord(
      (l) => l
        ..email = email
        ..password = password,
    ),
  );

  return firestoreData;
}
