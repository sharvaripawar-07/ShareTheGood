import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'taker_record.g.dart';

abstract class TakerRecord implements Built<TakerRecord, TakerRecordBuilder> {
  static Serializer<TakerRecord> get serializer => _$takerRecordSerializer;

  @BuiltValueField(wireName: 'NGOname')
  String? get nGOname;

  String? get email;

  String? get password;

  String? get confirmpassword;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TakerRecordBuilder builder) => builder
    ..nGOname = ''
    ..email = ''
    ..password = ''
    ..confirmpassword = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Taker');

  static Stream<TakerRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TakerRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TakerRecord._();
  factory TakerRecord([void Function(TakerRecordBuilder) updates]) =
      _$TakerRecord;

  static TakerRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTakerRecordData({
  String? nGOname,
  String? email,
  String? password,
  String? confirmpassword,
}) {
  final firestoreData = serializers.toFirestore(
    TakerRecord.serializer,
    TakerRecord(
      (t) => t
        ..nGOname = nGOname
        ..email = email
        ..password = password
        ..confirmpassword = confirmpassword,
    ),
  );

  return firestoreData;
}
