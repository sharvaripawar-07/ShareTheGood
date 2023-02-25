import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ngo_record.g.dart';

abstract class NgoRecord implements Built<NgoRecord, NgoRecordBuilder> {
  static Serializer<NgoRecord> get serializer => _$ngoRecordSerializer;

  @BuiltValueField(wireName: 'Gender')
  String? get gender;

  @BuiltValueField(wireName: 'Countofclothes')
  int? get countofclothes;

  @BuiltValueField(wireName: 'Age')
  int? get age;

  @BuiltValueField(wireName: 'Description')
  String? get description;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NgoRecordBuilder builder) => builder
    ..gender = ''
    ..countofclothes = 0
    ..age = 0
    ..description = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('NGO');

  static Stream<NgoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NgoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NgoRecord._();
  factory NgoRecord([void Function(NgoRecordBuilder) updates]) = _$NgoRecord;

  static NgoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNgoRecordData({
  String? gender,
  int? countofclothes,
  int? age,
  String? description,
}) {
  final firestoreData = serializers.toFirestore(
    NgoRecord.serializer,
    NgoRecord(
      (n) => n
        ..gender = gender
        ..countofclothes = countofclothes
        ..age = age
        ..description = description,
    ),
  );

  return firestoreData;
}
