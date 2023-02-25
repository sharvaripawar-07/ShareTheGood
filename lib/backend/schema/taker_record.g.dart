// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taker_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TakerRecord> _$takerRecordSerializer = new _$TakerRecordSerializer();

class _$TakerRecordSerializer implements StructuredSerializer<TakerRecord> {
  @override
  final Iterable<Type> types = const [TakerRecord, _$TakerRecord];
  @override
  final String wireName = 'TakerRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TakerRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nGOname;
    if (value != null) {
      result
        ..add('NGOname')
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
  TakerRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TakerRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'NGOname':
          result.nGOname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'confirmpassword':
          result.confirmpassword = serializers.deserialize(value,
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

class _$TakerRecord extends TakerRecord {
  @override
  final String? nGOname;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? confirmpassword;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TakerRecord([void Function(TakerRecordBuilder)? updates]) =>
      (new TakerRecordBuilder()..update(updates))._build();

  _$TakerRecord._(
      {this.nGOname,
      this.email,
      this.password,
      this.confirmpassword,
      this.ffRef})
      : super._();

  @override
  TakerRecord rebuild(void Function(TakerRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TakerRecordBuilder toBuilder() => new TakerRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TakerRecord &&
        nGOname == other.nGOname &&
        email == other.email &&
        password == other.password &&
        confirmpassword == other.confirmpassword &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, nGOname.hashCode), email.hashCode),
                password.hashCode),
            confirmpassword.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TakerRecord')
          ..add('nGOname', nGOname)
          ..add('email', email)
          ..add('password', password)
          ..add('confirmpassword', confirmpassword)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TakerRecordBuilder implements Builder<TakerRecord, TakerRecordBuilder> {
  _$TakerRecord? _$v;

  String? _nGOname;
  String? get nGOname => _$this._nGOname;
  set nGOname(String? nGOname) => _$this._nGOname = nGOname;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _confirmpassword;
  String? get confirmpassword => _$this._confirmpassword;
  set confirmpassword(String? confirmpassword) =>
      _$this._confirmpassword = confirmpassword;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TakerRecordBuilder() {
    TakerRecord._initializeBuilder(this);
  }

  TakerRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nGOname = $v.nGOname;
      _email = $v.email;
      _password = $v.password;
      _confirmpassword = $v.confirmpassword;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TakerRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TakerRecord;
  }

  @override
  void update(void Function(TakerRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TakerRecord build() => _build();

  _$TakerRecord _build() {
    final _$result = _$v ??
        new _$TakerRecord._(
            nGOname: nGOname,
            email: email,
            password: password,
            confirmpassword: confirmpassword,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
