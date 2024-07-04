import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetTokenCardCall {
  static Future<ApiCallResponse> call({
    String? accessToken = '',
    String? publicKey = '',
    String? cardNumber = '',
    String? cardholderName = '',
    String? identificationType = '',
    String? identificationNumber = '',
    String? securityCode = '',
    int? cardExpirationMonth,
    int? cardExpirationYear,
  }) async {
    final ffApiRequestBody = '''
{
  "card_number": "$cardNumber",
  "cardholder": {
    "name": "$cardholderName",
    "identification": {
      "type": "$identificationType",
      "number": "$identificationNumber"
    }
  },
  "security_code": "$securityCode",
  "expiration_month": "$cardExpirationMonth",
  "expiration_year": "$cardExpirationYear"
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetTokenCard',
      apiUrl:
          'https://api.mercadopago.com/v1/card_tokens?public_key=$publicKey',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $accessToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? tokenCard(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? fourDigits(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.last_four_digits''',
      ));
  static String? typeId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cardholder.identification.type''',
      ));
  static String? numbId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cardholder.identification.number''',
      ));
}

class PayCardCall {
  static Future<ApiCallResponse> call({
    String? accessToken =
        'APP_USR-4841127657432332-060819-fb5ac35608a79a8a206777b0c183efd0-1848213391',
    double? transactionAmount,
    String? token = '',
    String? firstName = '',
    String? lastName = '',
    String? email = '',
    String? identificationType = '',
    String? identificationNumber = '',
    String? zipCode = '',
    String? streetName = '',
    String? streetNumber = '',
    String? neighborhood = '',
    String? city = '',
    String? federalUnit = '',
    String? description = '',
    String? idempotencyKey = '',
  }) async {
    final ffApiRequestBody = '''
{
  "transaction_amount": $transactionAmount,
  "token": "$token",
  "installments": 1,
  "payer": {
    "first_name": "$firstName",
    "last_name": "$lastName",
    "email": "$email",
    "type": "customer",
    "identification": {
      "type": "$identificationType",
      "number": "$identificationNumber"
    },
    "address": {
      "zip_code": "$zipCode",
      "street_name": "$streetName",
      "street_number": "$streetNumber",
      "neighborhood": "$neighborhood",
      "city": "$city",
      "federal_unit": "$federalUnit"
    }
  },
  "description": "$description"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'PayCard',
      apiUrl: 'https://api.mercadopago.com/v1/payments',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $accessToken',
        'Content-Type': 'application/json',
        'X-Idempotency-Key': '$idempotencyKey',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? idPay(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? dateCreated(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.date_created''',
      ));
  static String? dateApproved(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.date_approved''',
      ));
  static String? operationType(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.operation_type''',
      ));
  static String? payMethodId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.payment_method_id''',
      ));
  static String? payTypeId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.payment_type_id''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? currencyId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.currency_id''',
      ));
  static String? payerEmail(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.payer.email''',
      ));
  static String? payerId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.payer.identification.number''',
      ));
  static String? payerIdType(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.payer.identification.type''',
      ));
  static List? fee(dynamic response) => getJsonField(
        response,
        r'''$.fee_details''',
        true,
      ) as List?;
  static List? charges(dynamic response) => getJsonField(
        response,
        r'''$.charges_details''',
        true,
      ) as List?;
  static List? refunds(dynamic response) => getJsonField(
        response,
        r'''$.refunds''',
        true,
      ) as List?;
}

class GetPaymentCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? accessToken =
        'TEST-4841127657432332-060819-cd8914366c0ad00638a67c0ff261819c-1848213391',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetPayment',
      apiUrl: 'https://api.mercadopago.com/v1/payments/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $accessToken',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UuidCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'UUID',
      apiUrl: 'https://www.uuidgenerator.net/api/version4',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? uuid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$''',
      ));
}

class LastDocumentCall {
  static Future<ApiCallResponse> call() async {
    const ffApiRequestBody = '''
{
  "personaId": "666a973a9245f500155a5c12",
  "personaToken": "DEV_3yiHgIqDNRVLdTjoW5LsHPeJwVackrts0qGdfmc9KRCeChA2MbdUBRrDATxKxGUY",
  "type": "03",
  "serie": "B001"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'lastDocument',
      apiUrl: 'https://back.apisunat.com/personas/lastDocument',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? suggestedNumber(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.suggestedNumber''',
      ));
}

class SendBillCall {
  static Future<ApiCallResponse> call({
    String? ruc = '',
    String? suggestedNumber = '',
    String? initialDate = '',
    String? initialHour = '',
    String? numberTotext = '',
    String? businessName = '',
    String? businessDirection = '',
    String? dni = '',
    String? customerName = '',
    String? customerAddres = '',
    double? totalIgv,
    double? oPgravada,
    double? totalAmount,
    int? index,
    String? productType = '',
    int? productQuantity,
    String? productDescription = '',
    double? priceWithoutIgv,
    double? totalIGVP,
    double? oPgravadaP,
    double? totalAmountP,
  }) async {
    final ffApiRequestBody = '''
{
  "personaId": "666a973a9245f500155a5c12",
  "personaToken": "DEV_3yiHgIqDNRVLdTjoW5LsHPeJwVackrts0qGdfmc9KRCeChA2MbdUBRrDATxKxGUY",
  "fileName": "$ruc-03-B001-$suggestedNumber",
  "documentBody": {
    "cbc:UBLVersionID": {
      "_text": "2.1"
    },
    "cbc:CustomizationID": {
      "_text": "2.0"
    },
    "cbc:ID": {
      "_text": "B001-$suggestedNumber"
    },
    "cbc:IssueDate": {
      "_text": "$initialDate"
    },
    "cbc:IssueTime": {
      "_text": "$initialHour"
    },
    "cbc:InvoiceTypeCode": {
      "_attributes": {
        "listID": "0101"
      },
      "_text": "03"
    },
    "cbc:Note": "$numberTotext",
    "cbc:DocumentCurrencyCode": {
      "_text": "PEN"
    },
    "cac:AccountingSupplierParty": {
      "cac:Party": {
        "cac:PartyIdentification": {
          "cbc:ID": {
            "_attributes": {
              "schemeID": "6"
            },
            "_text": "$ruc"
          }
        },
        "cac:PartyLegalEntity": {
          "cbc:RegistrationName": {
            "_text": "$businessName"
          },
          "cac:RegistrationAddress": {
            "cbc:AddressTypeCode": {
              "_text": "0000"
            },
            "cac:AddressLine": {
              "cbc:Line": {
                "_text": "$businessDirection"
              }
            }
          }
        }
      }
    },
    "cac:AccountingCustomerParty": {
      "cac:Party": {
        "cac:PartyIdentification": {
          "cbc:ID": {
            "_attributes": {
              "schemeID": "1"
            },
            "_text": "$dni"
          }
        },
        "cac:PartyLegalEntity": {
          "cbc:RegistrationName": {
            "_text": "$customerName"
          },
          "cac:RegistrationAddress": {
            "cac:AddressLine": {
              "cbc:Line": "$customerAddres"
            }
          }
        }
      }
    },
    "cac:TaxTotal": {
      "cbc:TaxAmount": {
        "_attributes": {
          "currencyID": "PEN"
        },
        "_text": "$totalIgv"
      },
      "cac:TaxSubtotal": [
        {
          "cbc:TaxableAmount": {
            "_attributes": {
              "currencyID": "PEN"
            },
            "_text": "$oPgravada"
          },
          "cbc:TaxAmount": {
            "_attributes": {
              "currencyID": "PEN"
            },
            "_text": "$totalIgv"
          },
          "cac:TaxCategory": {
            "cac:TaxScheme": {
              "cbc:ID": {
                "_text": "1000"
              },
              "cbc:Name": {
                "_text": "IGV"
              },
              "cbc:TaxTypeCode": {
                "_text": "VAT"
              }
            }
          }
        }
      ]
    },
    "cac:LegalMonetaryTotal": {
      "cbc:LineExtensionAmount": {
        "_attributes": {
          "currencyID": "PEN"
        },
        "_text": "$oPgravada"
      },
      "cbc:TaxInclusiveAmount": {
        "_attributes": {
          "currencyID": "PEN"
        },
        "_text": "$totalAmount"
      },
      "cbc:PayableAmount": {
        "_attributes": {
          "currencyID": "PEN"
        },
        "_text": "$totalAmount"
      }
    },
    "cac:InvoiceLine": [
      {
        "cbc:ID": {
          "_text": "$index"
        },
        "cbc:InvoicedQuantity": {
          "_attributes": {
            "unitCode": "$productType"
          },
          "_text": "$productQuantity"
        },
        "cbc:LineExtensionAmount": {
          "_attributes": {
            "currencyID": "PEN"
          },
          "_text": "$oPgravadaP"
        },
        "cac:PricingReference": {
          "cac:AlternativeConditionPrice": {
            "cbc:PriceAmount": {
              "_attributes": {
                "currencyID": "PEN"
              },
              "_text": "$totalAmountP"
            },
            "cbc:PriceTypeCode": {
              "_text": "01"
            }
          }
        },
        "cac:TaxTotal": {
          "cbc:TaxAmount": {
            "_attributes": {
              "currencyID": "PEN"
            },
            "_text": "$totalIGVP"
          },
          "cac:TaxSubtotal": [
            {
              "cbc:TaxableAmount": {
                "_attributes": {
                  "currencyID": "PEN"
                },
                "_text": "$oPgravadaP"
              },
              "cbc:TaxAmount": {
                "_attributes": {
                  "currencyID": "PEN"
                },
                "_text": "$totalIGVP"
              },
              "cac:TaxCategory": {
                "cbc:Percent": {
                  "_text": 18
                },
                "cbc:TaxExemptionReasonCode": {
                  "_text": "10"
                },
                "cac:TaxScheme": {
                  "cbc:ID": {
                    "_text": "1000"
                  },
                  "cbc:Name": {
                    "_text": "IGV"
                  },
                  "cbc:TaxTypeCode": {
                    "_text": "VAT"
                  }
                }
              }
            }
          ]
        },
        "cac:Item": {
          "cbc:Description": {
            "_text": "$productDescription"
          }
        },
        "cac:Price": {
          "cbc:PriceAmount": {
            "_attributes": {
              "currencyID": "PEN"
            },
            "_text": "$priceWithoutIgv"
          }
        }
      }
    ]
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sendBill',
      apiUrl: 'https://back.apisunat.com/personas/v1/sendBill',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? docId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.documentId''',
      ));
  static String? xml(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.xml''',
      ));
}

class GetPDFCall {
  static Future<ApiCallResponse> call({
    String? documentId = '666e66f02bb5910015c7934c',
    String? format = 'A4',
    String? fileName = '100707844049-03-B001-0000002',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetPDF',
      apiUrl:
          'https://back.apisunat.com/documents/documentId/getPDF/format/fileName.pdf',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'fileName': "100707844049-03-B001-0000006",
        'documentId': "666e299a2bb5910015c78a81",
        'format': "A4",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreatePDFCall {
  static Future<ApiCallResponse> call({
    String? startDate = '',
    String? endDate = '',
    double? totalSales,
    double? totalRevenue,
    double? t1Data,
    double? t2Data,
    double? t3Data,
    double? t4Data,
    double? us1,
    double? us2,
    double? us3,
    double? us4,
    double? in1,
    double? in2,
    double? in3,
    double? in4,
    String? pmonth = '',
    double? punidssold,
    double? prevenue,
    String? lmonth = '',
    double? lunidssold,
    double? lrevenue,
    double? unitssold2023,
    double? revenue2023,
    double? unitssold2024,
    double? revenue2024,
  }) async {
    final ffApiRequestBody = '''
{
  "template_id": "b1a77b23050f0c1e",
  "export_type": "json",
  "expiration": 10,
  "output_file": "ReporteDeVentas.pdf",
  "data": {
    "company_info": {
      "name": "NUTRINAT",
      "address": "CAL. FRANCISCO BOLOGNESI MZA. F LOTE. 10",
      "email": "clanprotm4@gmail.com",
      "number": "961869348"
    },
    "report_period": {
      "start_date": "$startDate",
      "end_date": "$endDate"
    },
    "sales_performance": {
      "total_sales": "$totalSales",
      "total_revenue": "$totalRevenue"
    },
    "sales_by_quarter": {
      "T1": "$t1Data",
      "T2": "$t2Data",
      "T3": "$t3Data",
      "T4": "$t4Data",
      "US1": "$us1",
      "US2": "$us2",
      "US3": "$us3",
      "US4": "$us4",
      "In1": "$in1",
      "In2": "$in2",
      "In3": "$in3",
      "In4": "$in4"
    },
    "trend_analysis": {
      "peak_month": {
        "month": "$pmonth",
        "units_sold": "$punidssold",
        "revenue": "$prevenue"
      },
      "lowest_month": {
        "month": "$lmonth",
        "units_sold": "$lunidssold",
        "revenue": "$lrevenue"
      }
    },
    "year_over_year_comparison": {
      "2023": {
        "units_sold": "$unitssold2023",
        "revenue": "$revenue2023"
      },
      "2024": {
        "units_sold": "$unitssold2024",
        "revenue": "$revenue2024"
      }
    }
  }
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreatePDF',
      apiUrl: 'https://api.craftmypdf.com/v1/create',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'X-API-KEY': '62d6MTI1NzA6MTI2MjY6Z2x5emdKcEhONmRnUktaTA=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? filePDF(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.file''',
      ));
  static String? tRef(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.transaction_ref''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
