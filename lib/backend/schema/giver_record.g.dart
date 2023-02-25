// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'giver_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GiverRecord> _$giverRecordSerializer = new _$GiverRecordSerializer();

class _$GiverRecordSerializer implements StructuredSerializer<GiverRecord> {
  @override
  final Iterable<Type> types = const [GiverRecord, _$GiverRecord];
  @override
  final String wireName = 'GiverRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, GiverRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.confirmpassword;
    if (value != null) {
      result
        ..add('confirmpassword')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fullname;
    if (value != null) {
      result
        ..add('fullname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  GiverRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GiverRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'confirmpassword':
          result.confirmpassword = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fullname':
          result.fullname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$GiverRecord extends GiverRecord {
  @override
  final String? password;
  @override
  final String? confirmpassword;
  @override
  final String? displayName;
  @override
  final String? fullname;
  @override
  final String? email;
  @override
  final String? uid;
  @override
  final String? photoUrl;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$GiverRecord([void Function(GiverRecordBuilder)? updates]) =>
      (new GiverRecordBuilder()..update(updates))._build();

  _$GiverRecord._(
      {this.password,
      this.confirmpassword,
      this.displayName,
      this.fullname,
      this.email,
      this.uid,
      this.photoUrl,
      this.createdTime,
      this.phoneNumber,
      this.ffRef})
      : super._();

  @override
  GiverRecord rebuild(void Function(GiverRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GiverRecordBuilder toBuilder() => new GiverRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GiverRecord &&
        password == other.password &&
        confirmpassword == other.confirmpassword &&
        displayName == other.displayName &&
        fullname == other.fullname &&
        email == other.email &&
        uid == other.uid &&
        photoUrl == other.photoUrl &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, password.hashCode),
                                        confirmpassword.hashCode),
                                    displayName.hashCode),
                                fullname.hashCode),
                            email.hashCode),
                        uid.hashCode),
                    photoUrl.hashCode),
                createdTime.hashCode),
            phoneNumber.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GiverRecord')
          ..add('password', password)
          ..add('confirmpassword', confirmpassword)
          ..add('displayName', displayName)
          ..add('fullname', fullname)
          ..add('email', email)
          ..add('uid', uid)
          ..add('photoUrl', photoUrl)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class GiverRecordBuilder implements Builder<GiverRecord, GiverRecordBuilder> {
  _$GiverRecord? _$v;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _confirmpassword;
  String? get confirmpassword => _$this._confirmpassword;
  set confirmpassword(String? confirmpassword) =>
      _$this._confirmpassword = confirmpassword;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _fullname;
  String? get fullname => _$this._fullname;
  set fullname(String? fullname) => _$this._fullname = fullname;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  GiverRecordBuilder() {
    GiverRecord._initializeBuilder(this);
  }

  GiverRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _password = $v.password;
      _confirmpassword = $v.confirmpassword;
      _displayName = $v.displayName;
      _fullname = $v.fullname;
      _email = $v.email;
      _uid = $v.uid;
      _photoUrl = $v.photoUrl;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GiverRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GiverRecord;
  }

  @override
  void update(void Function(GiverRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GiverRecord build() => _build();

  _$GiverRecord _build() {
    final _$result = _$v ??
        new _$GiverRecord._(
            password: password,
            confirmpassword: confirmpassword,
            displayName: displayName,
            fullname: fullname,
            email: email,
            uid: uid,
            photoUrl: photoUrl,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
