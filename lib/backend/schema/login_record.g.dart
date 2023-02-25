// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoginRecord> _$loginRecordSerializer = new _$LoginRecordSerializer();

class _$LoginRecordSerializer implements StructuredSerializer<LoginRecord> {
  @override
  final Iterable<Type> types = const [LoginRecord, _$LoginRecord];
  @override
  final String wireName = 'LoginRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, LoginRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
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
  LoginRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoginRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
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

class _$LoginRecord extends LoginRecord {
  @override
  final String? email;
  @override
  final String? password;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LoginRecord([void Function(LoginRecordBuilder)? updates]) =>
      (new LoginRecordBuilder()..update(updates))._build();

  _$LoginRecord._({this.email, this.password, this.ffRef}) : super._();

  @override
  LoginRecord rebuild(void Function(LoginRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginRecordBuilder toBuilder() => new LoginRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginRecord &&
        email == other.email &&
        password == other.password &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, email.hashCode), password.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoginRecord')
          ..add('email', email)
          ..add('password', password)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LoginRecordBuilder implements Builder<LoginRecord, LoginRecordBuilder> {
  _$LoginRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LoginRecordBuilder() {
    LoginRecord._initializeBuilder(this);
  }

  LoginRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginRecord;
  }

  @override
  void update(void Function(LoginRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginRecord build() => _build();

  _$LoginRecord _build() {
    final _$result = _$v ??
        new _$LoginRecord._(email: email, password: password, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
