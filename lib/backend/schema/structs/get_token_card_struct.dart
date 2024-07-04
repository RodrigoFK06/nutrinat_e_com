// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class GetTokenCardStruct extends FFFirebaseStruct {
  GetTokenCardStruct({
    String? id,
    String? publicKey,
    String? firstSixDigits,
    int? expirationMonth,
    int? expirationYear,
    String? lastFourDigits,
    String? status,
    String? dateCreated,
    String? dateLastUpdated,
    String? dateDue,
    bool? luhnValidation,
    bool? liveMode,
    bool? requireEsc,
    int? cardNumberLength,
    int? securityCodeLength,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _publicKey = publicKey,
        _firstSixDigits = firstSixDigits,
        _expirationMonth = expirationMonth,
        _expirationYear = expirationYear,
        _lastFourDigits = lastFourDigits,
        _status = status,
        _dateCreated = dateCreated,
        _dateLastUpdated = dateLastUpdated,
        _dateDue = dateDue,
        _luhnValidation = luhnValidation,
        _liveMode = liveMode,
        _requireEsc = requireEsc,
        _cardNumberLength = cardNumberLength,
        _securityCodeLength = securityCodeLength,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "public_key" field.
  String? _publicKey;
  String get publicKey => _publicKey ?? '';
  set publicKey(String? val) => _publicKey = val;

  bool hasPublicKey() => _publicKey != null;

  // "first_six_digits" field.
  String? _firstSixDigits;
  String get firstSixDigits => _firstSixDigits ?? '';
  set firstSixDigits(String? val) => _firstSixDigits = val;

  bool hasFirstSixDigits() => _firstSixDigits != null;

  // "expiration_month" field.
  int? _expirationMonth;
  int get expirationMonth => _expirationMonth ?? 0;
  set expirationMonth(int? val) => _expirationMonth = val;

  void incrementExpirationMonth(int amount) =>
      expirationMonth = expirationMonth + amount;

  bool hasExpirationMonth() => _expirationMonth != null;

  // "expiration_year" field.
  int? _expirationYear;
  int get expirationYear => _expirationYear ?? 0;
  set expirationYear(int? val) => _expirationYear = val;

  void incrementExpirationYear(int amount) =>
      expirationYear = expirationYear + amount;

  bool hasExpirationYear() => _expirationYear != null;

  // "last_four_digits" field.
  String? _lastFourDigits;
  String get lastFourDigits => _lastFourDigits ?? '';
  set lastFourDigits(String? val) => _lastFourDigits = val;

  bool hasLastFourDigits() => _lastFourDigits != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "date_created" field.
  String? _dateCreated;
  String get dateCreated => _dateCreated ?? '';
  set dateCreated(String? val) => _dateCreated = val;

  bool hasDateCreated() => _dateCreated != null;

  // "date_last_updated" field.
  String? _dateLastUpdated;
  String get dateLastUpdated => _dateLastUpdated ?? '';
  set dateLastUpdated(String? val) => _dateLastUpdated = val;

  bool hasDateLastUpdated() => _dateLastUpdated != null;

  // "date_due" field.
  String? _dateDue;
  String get dateDue => _dateDue ?? '';
  set dateDue(String? val) => _dateDue = val;

  bool hasDateDue() => _dateDue != null;

  // "luhn_validation" field.
  bool? _luhnValidation;
  bool get luhnValidation => _luhnValidation ?? false;
  set luhnValidation(bool? val) => _luhnValidation = val;

  bool hasLuhnValidation() => _luhnValidation != null;

  // "live_mode" field.
  bool? _liveMode;
  bool get liveMode => _liveMode ?? false;
  set liveMode(bool? val) => _liveMode = val;

  bool hasLiveMode() => _liveMode != null;

  // "require_esc" field.
  bool? _requireEsc;
  bool get requireEsc => _requireEsc ?? false;
  set requireEsc(bool? val) => _requireEsc = val;

  bool hasRequireEsc() => _requireEsc != null;

  // "card_number_length" field.
  int? _cardNumberLength;
  int get cardNumberLength => _cardNumberLength ?? 0;
  set cardNumberLength(int? val) => _cardNumberLength = val;

  void incrementCardNumberLength(int amount) =>
      cardNumberLength = cardNumberLength + amount;

  bool hasCardNumberLength() => _cardNumberLength != null;

  // "security_code_length" field.
  int? _securityCodeLength;
  int get securityCodeLength => _securityCodeLength ?? 0;
  set securityCodeLength(int? val) => _securityCodeLength = val;

  void incrementSecurityCodeLength(int amount) =>
      securityCodeLength = securityCodeLength + amount;

  bool hasSecurityCodeLength() => _securityCodeLength != null;

  static GetTokenCardStruct fromMap(Map<String, dynamic> data) =>
      GetTokenCardStruct(
        id: data['id'] as String?,
        publicKey: data['public_key'] as String?,
        firstSixDigits: data['first_six_digits'] as String?,
        expirationMonth: castToType<int>(data['expiration_month']),
        expirationYear: castToType<int>(data['expiration_year']),
        lastFourDigits: data['last_four_digits'] as String?,
        status: data['status'] as String?,
        dateCreated: data['date_created'] as String?,
        dateLastUpdated: data['date_last_updated'] as String?,
        dateDue: data['date_due'] as String?,
        luhnValidation: data['luhn_validation'] as bool?,
        liveMode: data['live_mode'] as bool?,
        requireEsc: data['require_esc'] as bool?,
        cardNumberLength: castToType<int>(data['card_number_length']),
        securityCodeLength: castToType<int>(data['security_code_length']),
      );

  static GetTokenCardStruct? maybeFromMap(dynamic data) => data is Map
      ? GetTokenCardStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'public_key': _publicKey,
        'first_six_digits': _firstSixDigits,
        'expiration_month': _expirationMonth,
        'expiration_year': _expirationYear,
        'last_four_digits': _lastFourDigits,
        'status': _status,
        'date_created': _dateCreated,
        'date_last_updated': _dateLastUpdated,
        'date_due': _dateDue,
        'luhn_validation': _luhnValidation,
        'live_mode': _liveMode,
        'require_esc': _requireEsc,
        'card_number_length': _cardNumberLength,
        'security_code_length': _securityCodeLength,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'public_key': serializeParam(
          _publicKey,
          ParamType.String,
        ),
        'first_six_digits': serializeParam(
          _firstSixDigits,
          ParamType.String,
        ),
        'expiration_month': serializeParam(
          _expirationMonth,
          ParamType.int,
        ),
        'expiration_year': serializeParam(
          _expirationYear,
          ParamType.int,
        ),
        'last_four_digits': serializeParam(
          _lastFourDigits,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'date_created': serializeParam(
          _dateCreated,
          ParamType.String,
        ),
        'date_last_updated': serializeParam(
          _dateLastUpdated,
          ParamType.String,
        ),
        'date_due': serializeParam(
          _dateDue,
          ParamType.String,
        ),
        'luhn_validation': serializeParam(
          _luhnValidation,
          ParamType.bool,
        ),
        'live_mode': serializeParam(
          _liveMode,
          ParamType.bool,
        ),
        'require_esc': serializeParam(
          _requireEsc,
          ParamType.bool,
        ),
        'card_number_length': serializeParam(
          _cardNumberLength,
          ParamType.int,
        ),
        'security_code_length': serializeParam(
          _securityCodeLength,
          ParamType.int,
        ),
      }.withoutNulls;

  static GetTokenCardStruct fromSerializableMap(Map<String, dynamic> data) =>
      GetTokenCardStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        publicKey: deserializeParam(
          data['public_key'],
          ParamType.String,
          false,
        ),
        firstSixDigits: deserializeParam(
          data['first_six_digits'],
          ParamType.String,
          false,
        ),
        expirationMonth: deserializeParam(
          data['expiration_month'],
          ParamType.int,
          false,
        ),
        expirationYear: deserializeParam(
          data['expiration_year'],
          ParamType.int,
          false,
        ),
        lastFourDigits: deserializeParam(
          data['last_four_digits'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        dateCreated: deserializeParam(
          data['date_created'],
          ParamType.String,
          false,
        ),
        dateLastUpdated: deserializeParam(
          data['date_last_updated'],
          ParamType.String,
          false,
        ),
        dateDue: deserializeParam(
          data['date_due'],
          ParamType.String,
          false,
        ),
        luhnValidation: deserializeParam(
          data['luhn_validation'],
          ParamType.bool,
          false,
        ),
        liveMode: deserializeParam(
          data['live_mode'],
          ParamType.bool,
          false,
        ),
        requireEsc: deserializeParam(
          data['require_esc'],
          ParamType.bool,
          false,
        ),
        cardNumberLength: deserializeParam(
          data['card_number_length'],
          ParamType.int,
          false,
        ),
        securityCodeLength: deserializeParam(
          data['security_code_length'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'GetTokenCardStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GetTokenCardStruct &&
        id == other.id &&
        publicKey == other.publicKey &&
        firstSixDigits == other.firstSixDigits &&
        expirationMonth == other.expirationMonth &&
        expirationYear == other.expirationYear &&
        lastFourDigits == other.lastFourDigits &&
        status == other.status &&
        dateCreated == other.dateCreated &&
        dateLastUpdated == other.dateLastUpdated &&
        dateDue == other.dateDue &&
        luhnValidation == other.luhnValidation &&
        liveMode == other.liveMode &&
        requireEsc == other.requireEsc &&
        cardNumberLength == other.cardNumberLength &&
        securityCodeLength == other.securityCodeLength;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        publicKey,
        firstSixDigits,
        expirationMonth,
        expirationYear,
        lastFourDigits,
        status,
        dateCreated,
        dateLastUpdated,
        dateDue,
        luhnValidation,
        liveMode,
        requireEsc,
        cardNumberLength,
        securityCodeLength
      ]);
}

GetTokenCardStruct createGetTokenCardStruct({
  String? id,
  String? publicKey,
  String? firstSixDigits,
  int? expirationMonth,
  int? expirationYear,
  String? lastFourDigits,
  String? status,
  String? dateCreated,
  String? dateLastUpdated,
  String? dateDue,
  bool? luhnValidation,
  bool? liveMode,
  bool? requireEsc,
  int? cardNumberLength,
  int? securityCodeLength,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    GetTokenCardStruct(
      id: id,
      publicKey: publicKey,
      firstSixDigits: firstSixDigits,
      expirationMonth: expirationMonth,
      expirationYear: expirationYear,
      lastFourDigits: lastFourDigits,
      status: status,
      dateCreated: dateCreated,
      dateLastUpdated: dateLastUpdated,
      dateDue: dateDue,
      luhnValidation: luhnValidation,
      liveMode: liveMode,
      requireEsc: requireEsc,
      cardNumberLength: cardNumberLength,
      securityCodeLength: securityCodeLength,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

GetTokenCardStruct? updateGetTokenCardStruct(
  GetTokenCardStruct? getTokenCard, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    getTokenCard
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addGetTokenCardStructData(
  Map<String, dynamic> firestoreData,
  GetTokenCardStruct? getTokenCard,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (getTokenCard == null) {
    return;
  }
  if (getTokenCard.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && getTokenCard.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final getTokenCardData =
      getGetTokenCardFirestoreData(getTokenCard, forFieldValue);
  final nestedData =
      getTokenCardData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = getTokenCard.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getGetTokenCardFirestoreData(
  GetTokenCardStruct? getTokenCard, [
  bool forFieldValue = false,
]) {
  if (getTokenCard == null) {
    return {};
  }
  final firestoreData = mapToFirestore(getTokenCard.toMap());

  // Add any Firestore field values
  getTokenCard.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getGetTokenCardListFirestoreData(
  List<GetTokenCardStruct>? getTokenCards,
) =>
    getTokenCards?.map((e) => getGetTokenCardFirestoreData(e, true)).toList() ??
    [];
