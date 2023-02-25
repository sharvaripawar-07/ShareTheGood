// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ngo_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NgoRecord> _$ngoRecordSerializer = new _$NgoRecordSerializer();

class _$NgoRecordSerializer implements StructuredSerializer<NgoRecord> {
  @override
  final Iterable<Type> types = const [NgoRecord, _$NgoRecord];
  @override
  final String wireName = 'NgoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, NgoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.gender;
    if (value != null) {
      result
        ..add('Gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.countofclothes;
    if (value != null) {
      result
        ..add('Countofclothes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.age;
    if (value != null) {
      result
        ..add('Age')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('Description')
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
  NgoRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NgoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Countofclothes':
          result.countofclothes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Age':
          result.age = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Description':
          result.description = serializers.deserialize(value,
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

class _$NgoRecord extends NgoRecord {
  @override
  final String? gender;
  @override
  final int? countofclothes;
  @override
  final int? age;
  @override
  final String? description;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NgoRecord([void Function(NgoRecordBuilder)? updates]) =>
      (new NgoRecordBuilder()..update(updates))._build();

  _$NgoRecord._(
      {this.gender,
      this.countofclothes,
      this.age,
      this.description,
      this.ffRef})
      : super._();

  @override
  NgoRecord rebuild(void Function(NgoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NgoRecordBuilder toBuilder() => new NgoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NgoRecord &&
        gender == other.gender &&
        countofclothes == other.countofclothes &&
        age == other.age &&
        description == other.description &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, gender.hashCode), countofclothes.hashCode),
                age.hashCode),
            description.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NgoRecord')
          ..add('gender', gender)
          ..add('countofclothes', countofclothes)
          ..add('age', age)
          ..add('description', description)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NgoRecordBuilder implements Builder<NgoRecord, NgoRecordBuilder> {
  _$NgoRecord? _$v;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  int? _countofclothes;
  int? get countofclothes => _$this._countofclothes;
  set countofclothes(int? countofclothes) =>
      _$this._countofclothes = countofclothes;

  int? _age;
  int? get age => _$this._age;
  set age(int? age) => _$this._age = age;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NgoRecordBuilder() {
    NgoRecord._initializeBuilder(this);
  }

  NgoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _gender = $v.gender;
      _countofclothes = $v.countofclothes;
      _age = $v.age;
      _description = $v.description;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NgoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NgoRecord;
  }

  @override
  void update(void Function(NgoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NgoRecord build() => _build();

  _$NgoRecord _build() {
    final _$result = _$v ??
        new _$NgoRecord._(
            gender: gender,
            countofclothes: countofclothes,
            age: age,
            description: description,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
