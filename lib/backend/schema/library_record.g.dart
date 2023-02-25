// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LibraryRecord> _$libraryRecordSerializer =
    new _$LibraryRecordSerializer();

class _$LibraryRecordSerializer implements StructuredSerializer<LibraryRecord> {
  @override
  final Iterable<Type> types = const [LibraryRecord, _$LibraryRecord];
  @override
  final String wireName = 'LibraryRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, LibraryRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.libraryName;
    if (value != null) {
      result
        ..add('library_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
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
  LibraryRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LibraryRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'library_name':
          result.libraryName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
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

class _$LibraryRecord extends LibraryRecord {
  @override
  final String? libraryName;
  @override
  final String? address;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? confirmpassword;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LibraryRecord([void Function(LibraryRecordBuilder)? updates]) =>
      (new LibraryRecordBuilder()..update(updates))._build();

  _$LibraryRecord._(
      {this.libraryName,
      this.address,
      this.email,
      this.password,
      this.confirmpassword,
      this.ffRef})
      : super._();

  @override
  LibraryRecord rebuild(void Function(LibraryRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LibraryRecordBuilder toBuilder() => new LibraryRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LibraryRecord &&
        libraryName == other.libraryName &&
        address == other.address &&
        email == other.email &&
        password == other.password &&
        confirmpassword == other.confirmpassword &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, libraryName.hashCode), address.hashCode),
                    email.hashCode),
                password.hashCode),
            confirmpassword.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LibraryRecord')
          ..add('libraryName', libraryName)
          ..add('address', address)
          ..add('email', email)
          ..add('password', password)
          ..add('confirmpassword', confirmpassword)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LibraryRecordBuilder
    implements Builder<LibraryRecord, LibraryRecordBuilder> {
  _$LibraryRecord? _$v;

  String? _libraryName;
  String? get libraryName => _$this._libraryName;
  set libraryName(String? libraryName) => _$this._libraryName = libraryName;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

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

  LibraryRecordBuilder() {
    LibraryRecord._initializeBuilder(this);
  }

  LibraryRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _libraryName = $v.libraryName;
      _address = $v.address;
      _email = $v.email;
      _password = $v.password;
      _confirmpassword = $v.confirmpassword;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LibraryRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LibraryRecord;
  }

  @override
  void update(void Function(LibraryRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LibraryRecord build() => _build();

  _$LibraryRecord _build() {
    final _$result = _$v ??
        new _$LibraryRecord._(
            libraryName: libraryName,
            address: address,
            email: email,
            password: password,
            confirmpassword: confirmpassword,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
