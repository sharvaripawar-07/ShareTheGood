import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'giver_record.g.dart';

abstract class GiverRecord implements Built<GiverRecord, GiverRecordBuilder> {
  static Serializer<GiverRecord> get serializer => _$giverRecordSerializer;

  String? get password;

  String? get confirmpassword;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  String? get fullname;

  String? get email;

  String? get uid;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(GiverRecordBuilder builder) => builder
    ..password = ''
    ..confirmpassword = ''
    ..displayName = ''
    ..fullname = ''
    ..email = ''
    ..uid = ''
    ..photoUrl = ''
    ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('giver');

  static Stream<GiverRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<GiverRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  GiverRecord._();
  factory GiverRecord([void Function(GiverRecordBuilder) updates]) =
      _$GiverRecord;

  static GiverRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createGiverRecordData({
  String? password,
  String? confirmpassword,
  String? displayName,
  String? fullname,
  String? email,
  String? uid,
  String? photoUrl,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = serializers.toFirestore(
    GiverRecord.serializer,
    GiverRecord(
      (g) => g
        ..password = password
        ..confirmpassword = confirmpassword
        ..displayName = displayName
        ..fullname = fullname
        ..email = email
        ..uid = uid
        ..photoUrl = photoUrl
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber,
    ),
  );

  return firestoreData;
}
