import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

import 'package:chopper/chopper.dart';
import 'package:chopper/chopper.dart' as chopper;
import 'mWorkApi.enums.swagger.dart' as enums;
import 'mWorkApi.enums.swagger.dart';
export 'mWorkApi.enums.swagger.dart';

part 'mWorkApi.swagger.chopper.dart';
part 'mWorkApi.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class MWorkApi extends ChopperService {
  static MWorkApi create([ChopperClient? client]) {
    if (client != null) {
      return _$MWorkApi(client);
    }

    final newClient = ChopperClient(
        services: [_$MWorkApi()],
        converter: $JsonSerializableConverter(),
        baseUrl: 'https://');
    return _$MWorkApi(newClient);
  }

  ///
  @Get(path: '/Order/textTypes')
  Future<chopper.Response<StringInt32IDictionaryResult>> orderTextTypesGet();

  ///
  ///@param frmNo
  ///@param txtTp
  ///@param lang
  @Get(path: '/Order/firms/{frmNo}/texts')
  Future<chopper.Response<TxtIEnumerableResult>> orderFirmsFrmNoTextsGet(
      {@Path('frmNo') required int? frmNo,
      @Query('txtTp') TextTp? txtTp,
      @Query('lang') int? lang});

  ///
  ///@param frmNo
  @Get(path: '/Order/firms/{frmNo}/units')
  Future<chopper.Response<UnitIEnumerableResult>> orderFirmsFrmNoUnitsGet(
      {@Path('frmNo') required int? frmNo});

  ///
  ///@param frmNo
  @Get(path: '/Order/firms/{frmNo}/products')
  Future<chopper.Response<ProdIEnumerableResult>> orderFirmsFrmNoProductsGet(
      {@Path('frmNo') required int? frmNo});

  ///
  ///@param frmNo
  ///@param prodNo
  @Get(path: '/Order/firms/{frmNo}/products/{prodNo}')
  Future<chopper.Response<ProdResult>> orderFirmsFrmNoProductsProdNoGet(
      {@Path('frmNo') required int? frmNo,
      @Path('prodNo') required String? prodNo});

  ///
  ///@param frmNo
  @Get(path: '/Order/firms/{frmNo}/offices')
  Future<chopper.Response<R10IEnumerableResult>> orderFirmsFrmNoOfficesGet(
      {@Path('frmNo') required int? frmNo});

  ///
  ///@param frmNo
  ///@param rNo
  @Get(path: '/Order/firms/{frmNo}/offices/{rNo}')
  Future<chopper.Response<R10IEnumerableResult>> orderFirmsFrmNoOfficesRNoGet(
      {@Path('frmNo') required int? frmNo, @Path('rNo') required String? rNo});

  ///
  ///@param frmNo
  ///@param r10
  @Get(path: '/Order/firms/{frmNo}/sections')
  Future<chopper.Response<R1IEnumerableResult>> orderFirmsFrmNoSectionsGet(
      {@Path('frmNo') required int? frmNo, @Query('r10') String? r10});

  ///
  ///@param frmNo
  ///@param rNo
  @Get(path: '/Order/firms/{frmNo}/sections/{rNo}')
  Future<chopper.Response<R1Result>> orderFirmsFrmNoSectionsRNoGet(
      {@Path('frmNo') required int? frmNo, @Path('rNo') required int? rNo});

  ///
  ///@param frmNo
  ///@param custNo
  @Get(path: '/Order/firms/{frmNo}/customers/{custNo}')
  Future<chopper.Response<ActorCustomerResult>>
      orderFirmsFrmNoCustomersCustNoGet(
          {@Path('frmNo') required int? frmNo,
          @Path('custNo') required int? custNo});

  ///
  ///@param frmNo
  ///@param actNo
  @Get(path: '/Order/firms/{frmNo}/actors/{actNo}/deliveryAddresses')
  Future<chopper.Response<ActorDeliveryAddressIEnumerableResult>>
      orderFirmsFrmNoActorsActNoDeliveryAddressesGet(
          {@Path('frmNo') required int? frmNo,
          @Path('actNo') required int? actNo});

  ///
  ///@param frmNo
  ///@param actNo
  @Get(path: '/Order/firms/{frmNo}/actors/{actNo}/contactPersons')
  Future<chopper.Response<ActorContactPersonIEnumerableResult>>
      orderFirmsFrmNoActorsActNoContactPersonsGet(
          {@Path('frmNo') required int? frmNo,
          @Path('actNo') required int? actNo});

  ///
  ///@param frmNo
  ///@param r10
  @Get(path: '/Order/firms/{frmNo}/offices/{r10}/work')
  Future<chopper.Response<WorkResult>> orderFirmsFrmNoOfficesR10WorkGet(
      {@Path('frmNo') required int? frmNo, @Path('r10') required String? r10});
}

final Map<Type, Object Function(Map<String, dynamic>)>
    MWorkApiJsonDecoderMappings = {
  ActorContactPerson: ActorContactPerson.fromJsonFactory,
  ActorContactPersonIEnumerableResult:
      ActorContactPersonIEnumerableResult.fromJsonFactory,
  ActorCustomer: ActorCustomer.fromJsonFactory,
  ActorCustomerResult: ActorCustomerResult.fromJsonFactory,
  ActorDeliveryAddress: ActorDeliveryAddress.fromJsonFactory,
  ActorDeliveryAddressIEnumerableResult:
      ActorDeliveryAddressIEnumerableResult.fromJsonFactory,
  ActorEmployee: ActorEmployee.fromJsonFactory,
  Ord: Ord.fromJsonFactory,
  OrdLn: OrdLn.fromJsonFactory,
  Prod: Prod.fromJsonFactory,
  ProdIEnumerableResult: ProdIEnumerableResult.fromJsonFactory,
  ProdResult: ProdResult.fromJsonFactory,
  R1: R1.fromJsonFactory,
  R10: R10.fromJsonFactory,
  R10IEnumerableResult: R10IEnumerableResult.fromJsonFactory,
  R1IEnumerableResult: R1IEnumerableResult.fromJsonFactory,
  R1Result: R1Result.fromJsonFactory,
  StringInt32IDictionaryResult: StringInt32IDictionaryResult.fromJsonFactory,
  Txt: Txt.fromJsonFactory,
  TxtIEnumerableResult: TxtIEnumerableResult.fromJsonFactory,
  Unit: Unit.fromJsonFactory,
  UnitIEnumerableResult: UnitIEnumerableResult.fromJsonFactory,
  Work: Work.fromJsonFactory,
  WorkResult: WorkResult.fromJsonFactory,
};

@JsonSerializable(explicitToJson: true)
class ActorContactPerson {
  ActorContactPerson({
    this.actNo,
    this.custNo,
    this.nm,
    this.ad1,
    this.ad2,
    this.pNo,
    this.pArea,
    this.mobPh,
    this.phone,
    this.mailAd,
  });

  factory ActorContactPerson.fromJson(Map<String, dynamic> json) =>
      _$ActorContactPersonFromJson(json);

  @JsonKey(name: 'actNo')
  final int? actNo;
  @JsonKey(name: 'custNo')
  final int? custNo;
  @JsonKey(name: 'nm')
  final String? nm;
  @JsonKey(name: 'ad1')
  final String? ad1;
  @JsonKey(name: 'ad2')
  final String? ad2;
  @JsonKey(name: 'pNo')
  final String? pNo;
  @JsonKey(name: 'pArea')
  final String? pArea;
  @JsonKey(name: 'mobPh')
  final String? mobPh;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'mailAd')
  final String? mailAd;
  static const fromJsonFactory = _$ActorContactPersonFromJson;
  static const toJsonFactory = _$ActorContactPersonToJson;
  Map<String, dynamic> toJson() => _$ActorContactPersonToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ActorContactPerson &&
            (identical(other.actNo, actNo) ||
                const DeepCollectionEquality().equals(other.actNo, actNo)) &&
            (identical(other.custNo, custNo) ||
                const DeepCollectionEquality().equals(other.custNo, custNo)) &&
            (identical(other.nm, nm) ||
                const DeepCollectionEquality().equals(other.nm, nm)) &&
            (identical(other.ad1, ad1) ||
                const DeepCollectionEquality().equals(other.ad1, ad1)) &&
            (identical(other.ad2, ad2) ||
                const DeepCollectionEquality().equals(other.ad2, ad2)) &&
            (identical(other.pNo, pNo) ||
                const DeepCollectionEquality().equals(other.pNo, pNo)) &&
            (identical(other.pArea, pArea) ||
                const DeepCollectionEquality().equals(other.pArea, pArea)) &&
            (identical(other.mobPh, mobPh) ||
                const DeepCollectionEquality().equals(other.mobPh, mobPh)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.mailAd, mailAd) ||
                const DeepCollectionEquality().equals(other.mailAd, mailAd)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(actNo) ^
      const DeepCollectionEquality().hash(custNo) ^
      const DeepCollectionEquality().hash(nm) ^
      const DeepCollectionEquality().hash(ad1) ^
      const DeepCollectionEquality().hash(ad2) ^
      const DeepCollectionEquality().hash(pNo) ^
      const DeepCollectionEquality().hash(pArea) ^
      const DeepCollectionEquality().hash(mobPh) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(mailAd) ^
      runtimeType.hashCode;
}

extension $ActorContactPersonExtension on ActorContactPerson {
  ActorContactPerson copyWith(
      {int? actNo,
      int? custNo,
      String? nm,
      String? ad1,
      String? ad2,
      String? pNo,
      String? pArea,
      String? mobPh,
      String? phone,
      String? mailAd}) {
    return ActorContactPerson(
        actNo: actNo ?? this.actNo,
        custNo: custNo ?? this.custNo,
        nm: nm ?? this.nm,
        ad1: ad1 ?? this.ad1,
        ad2: ad2 ?? this.ad2,
        pNo: pNo ?? this.pNo,
        pArea: pArea ?? this.pArea,
        mobPh: mobPh ?? this.mobPh,
        phone: phone ?? this.phone,
        mailAd: mailAd ?? this.mailAd);
  }
}

@JsonSerializable(explicitToJson: true)
class ActorContactPersonIEnumerableResult {
  ActorContactPersonIEnumerableResult({
    this.success,
    this.message,
    this.data,
  });

  factory ActorContactPersonIEnumerableResult.fromJson(
          Map<String, dynamic> json) =>
      _$ActorContactPersonIEnumerableResultFromJson(json);

  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data', defaultValue: <ActorContactPerson>[])
  final List<ActorContactPerson>? data;
  static const fromJsonFactory = _$ActorContactPersonIEnumerableResultFromJson;
  static const toJsonFactory = _$ActorContactPersonIEnumerableResultToJson;
  Map<String, dynamic> toJson() =>
      _$ActorContactPersonIEnumerableResultToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ActorContactPersonIEnumerableResult &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $ActorContactPersonIEnumerableResultExtension
    on ActorContactPersonIEnumerableResult {
  ActorContactPersonIEnumerableResult copyWith(
      {bool? success, String? message, List<ActorContactPerson>? data}) {
    return ActorContactPersonIEnumerableResult(
        success: success ?? this.success,
        message: message ?? this.message,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class ActorCustomer {
  ActorCustomer({
    this.actNo,
    this.custNo,
    this.ctry,
    this.nm,
    this.ad1,
    this.ad2,
    this.ad4,
    this.pNo,
    this.pArea,
    this.mobPh,
    this.phone,
    this.mailAd,
    this.crSusp,
  });

  factory ActorCustomer.fromJson(Map<String, dynamic> json) =>
      _$ActorCustomerFromJson(json);

  @JsonKey(name: 'actNo')
  final int? actNo;
  @JsonKey(name: 'custNo')
  final int? custNo;
  @JsonKey(name: 'ctry')
  final int? ctry;
  @JsonKey(name: 'nm')
  final String? nm;
  @JsonKey(name: 'ad1')
  final String? ad1;
  @JsonKey(name: 'ad2')
  final String? ad2;
  @JsonKey(name: 'ad4')
  final String? ad4;
  @JsonKey(name: 'pNo')
  final String? pNo;
  @JsonKey(name: 'pArea')
  final String? pArea;
  @JsonKey(name: 'mobPh')
  final String? mobPh;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'mailAd')
  final String? mailAd;
  @JsonKey(name: 'crSusp')
  final int? crSusp;
  static const fromJsonFactory = _$ActorCustomerFromJson;
  static const toJsonFactory = _$ActorCustomerToJson;
  Map<String, dynamic> toJson() => _$ActorCustomerToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ActorCustomer &&
            (identical(other.actNo, actNo) ||
                const DeepCollectionEquality().equals(other.actNo, actNo)) &&
            (identical(other.custNo, custNo) ||
                const DeepCollectionEquality().equals(other.custNo, custNo)) &&
            (identical(other.ctry, ctry) ||
                const DeepCollectionEquality().equals(other.ctry, ctry)) &&
            (identical(other.nm, nm) ||
                const DeepCollectionEquality().equals(other.nm, nm)) &&
            (identical(other.ad1, ad1) ||
                const DeepCollectionEquality().equals(other.ad1, ad1)) &&
            (identical(other.ad2, ad2) ||
                const DeepCollectionEquality().equals(other.ad2, ad2)) &&
            (identical(other.ad4, ad4) ||
                const DeepCollectionEquality().equals(other.ad4, ad4)) &&
            (identical(other.pNo, pNo) ||
                const DeepCollectionEquality().equals(other.pNo, pNo)) &&
            (identical(other.pArea, pArea) ||
                const DeepCollectionEquality().equals(other.pArea, pArea)) &&
            (identical(other.mobPh, mobPh) ||
                const DeepCollectionEquality().equals(other.mobPh, mobPh)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.mailAd, mailAd) ||
                const DeepCollectionEquality().equals(other.mailAd, mailAd)) &&
            (identical(other.crSusp, crSusp) ||
                const DeepCollectionEquality().equals(other.crSusp, crSusp)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(actNo) ^
      const DeepCollectionEquality().hash(custNo) ^
      const DeepCollectionEquality().hash(ctry) ^
      const DeepCollectionEquality().hash(nm) ^
      const DeepCollectionEquality().hash(ad1) ^
      const DeepCollectionEquality().hash(ad2) ^
      const DeepCollectionEquality().hash(ad4) ^
      const DeepCollectionEquality().hash(pNo) ^
      const DeepCollectionEquality().hash(pArea) ^
      const DeepCollectionEquality().hash(mobPh) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(mailAd) ^
      const DeepCollectionEquality().hash(crSusp) ^
      runtimeType.hashCode;
}

extension $ActorCustomerExtension on ActorCustomer {
  ActorCustomer copyWith(
      {int? actNo,
      int? custNo,
      int? ctry,
      String? nm,
      String? ad1,
      String? ad2,
      String? ad4,
      String? pNo,
      String? pArea,
      String? mobPh,
      String? phone,
      String? mailAd,
      int? crSusp}) {
    return ActorCustomer(
        actNo: actNo ?? this.actNo,
        custNo: custNo ?? this.custNo,
        ctry: ctry ?? this.ctry,
        nm: nm ?? this.nm,
        ad1: ad1 ?? this.ad1,
        ad2: ad2 ?? this.ad2,
        ad4: ad4 ?? this.ad4,
        pNo: pNo ?? this.pNo,
        pArea: pArea ?? this.pArea,
        mobPh: mobPh ?? this.mobPh,
        phone: phone ?? this.phone,
        mailAd: mailAd ?? this.mailAd,
        crSusp: crSusp ?? this.crSusp);
  }
}

@JsonSerializable(explicitToJson: true)
class ActorCustomerResult {
  ActorCustomerResult({
    this.success,
    this.message,
    this.data,
  });

  factory ActorCustomerResult.fromJson(Map<String, dynamic> json) =>
      _$ActorCustomerResultFromJson(json);

  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final ActorCustomer? data;
  static const fromJsonFactory = _$ActorCustomerResultFromJson;
  static const toJsonFactory = _$ActorCustomerResultToJson;
  Map<String, dynamic> toJson() => _$ActorCustomerResultToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ActorCustomerResult &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $ActorCustomerResultExtension on ActorCustomerResult {
  ActorCustomerResult copyWith(
      {bool? success, String? message, ActorCustomer? data}) {
    return ActorCustomerResult(
        success: success ?? this.success,
        message: message ?? this.message,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class ActorDeliveryAddress {
  ActorDeliveryAddress({
    this.actNo,
    this.ctry,
    this.nm,
    this.ad1,
    this.ad2,
    this.ad4,
    this.pNo,
    this.pArea,
    this.mobPh,
    this.phone,
    this.mailAd,
  });

  factory ActorDeliveryAddress.fromJson(Map<String, dynamic> json) =>
      _$ActorDeliveryAddressFromJson(json);

  @JsonKey(name: 'actNo')
  final int? actNo;
  @JsonKey(name: 'ctry')
  final int? ctry;
  @JsonKey(name: 'nm')
  final String? nm;
  @JsonKey(name: 'ad1')
  final String? ad1;
  @JsonKey(name: 'ad2')
  final String? ad2;
  @JsonKey(name: 'ad4')
  final String? ad4;
  @JsonKey(name: 'pNo')
  final String? pNo;
  @JsonKey(name: 'pArea')
  final String? pArea;
  @JsonKey(name: 'mobPh')
  final String? mobPh;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'mailAd')
  final String? mailAd;
  static const fromJsonFactory = _$ActorDeliveryAddressFromJson;
  static const toJsonFactory = _$ActorDeliveryAddressToJson;
  Map<String, dynamic> toJson() => _$ActorDeliveryAddressToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ActorDeliveryAddress &&
            (identical(other.actNo, actNo) ||
                const DeepCollectionEquality().equals(other.actNo, actNo)) &&
            (identical(other.ctry, ctry) ||
                const DeepCollectionEquality().equals(other.ctry, ctry)) &&
            (identical(other.nm, nm) ||
                const DeepCollectionEquality().equals(other.nm, nm)) &&
            (identical(other.ad1, ad1) ||
                const DeepCollectionEquality().equals(other.ad1, ad1)) &&
            (identical(other.ad2, ad2) ||
                const DeepCollectionEquality().equals(other.ad2, ad2)) &&
            (identical(other.ad4, ad4) ||
                const DeepCollectionEquality().equals(other.ad4, ad4)) &&
            (identical(other.pNo, pNo) ||
                const DeepCollectionEquality().equals(other.pNo, pNo)) &&
            (identical(other.pArea, pArea) ||
                const DeepCollectionEquality().equals(other.pArea, pArea)) &&
            (identical(other.mobPh, mobPh) ||
                const DeepCollectionEquality().equals(other.mobPh, mobPh)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.mailAd, mailAd) ||
                const DeepCollectionEquality().equals(other.mailAd, mailAd)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(actNo) ^
      const DeepCollectionEquality().hash(ctry) ^
      const DeepCollectionEquality().hash(nm) ^
      const DeepCollectionEquality().hash(ad1) ^
      const DeepCollectionEquality().hash(ad2) ^
      const DeepCollectionEquality().hash(ad4) ^
      const DeepCollectionEquality().hash(pNo) ^
      const DeepCollectionEquality().hash(pArea) ^
      const DeepCollectionEquality().hash(mobPh) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(mailAd) ^
      runtimeType.hashCode;
}

extension $ActorDeliveryAddressExtension on ActorDeliveryAddress {
  ActorDeliveryAddress copyWith(
      {int? actNo,
      int? ctry,
      String? nm,
      String? ad1,
      String? ad2,
      String? ad4,
      String? pNo,
      String? pArea,
      String? mobPh,
      String? phone,
      String? mailAd}) {
    return ActorDeliveryAddress(
        actNo: actNo ?? this.actNo,
        ctry: ctry ?? this.ctry,
        nm: nm ?? this.nm,
        ad1: ad1 ?? this.ad1,
        ad2: ad2 ?? this.ad2,
        ad4: ad4 ?? this.ad4,
        pNo: pNo ?? this.pNo,
        pArea: pArea ?? this.pArea,
        mobPh: mobPh ?? this.mobPh,
        phone: phone ?? this.phone,
        mailAd: mailAd ?? this.mailAd);
  }
}

@JsonSerializable(explicitToJson: true)
class ActorDeliveryAddressIEnumerableResult {
  ActorDeliveryAddressIEnumerableResult({
    this.success,
    this.message,
    this.data,
  });

  factory ActorDeliveryAddressIEnumerableResult.fromJson(
          Map<String, dynamic> json) =>
      _$ActorDeliveryAddressIEnumerableResultFromJson(json);

  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data', defaultValue: <ActorDeliveryAddress>[])
  final List<ActorDeliveryAddress>? data;
  static const fromJsonFactory =
      _$ActorDeliveryAddressIEnumerableResultFromJson;
  static const toJsonFactory = _$ActorDeliveryAddressIEnumerableResultToJson;
  Map<String, dynamic> toJson() =>
      _$ActorDeliveryAddressIEnumerableResultToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ActorDeliveryAddressIEnumerableResult &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $ActorDeliveryAddressIEnumerableResultExtension
    on ActorDeliveryAddressIEnumerableResult {
  ActorDeliveryAddressIEnumerableResult copyWith(
      {bool? success, String? message, List<ActorDeliveryAddress>? data}) {
    return ActorDeliveryAddressIEnumerableResult(
        success: success ?? this.success,
        message: message ?? this.message,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class ActorEmployee {
  ActorEmployee({
    this.actNo,
    this.nm,
    this.empNo,
    this.r10,
  });

  factory ActorEmployee.fromJson(Map<String, dynamic> json) =>
      _$ActorEmployeeFromJson(json);

  @JsonKey(name: 'actNo')
  final int? actNo;
  @JsonKey(name: 'nm')
  final String? nm;
  @JsonKey(name: 'empNo')
  final int? empNo;
  @JsonKey(name: 'r10')
  final String? r10;
  static const fromJsonFactory = _$ActorEmployeeFromJson;
  static const toJsonFactory = _$ActorEmployeeToJson;
  Map<String, dynamic> toJson() => _$ActorEmployeeToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ActorEmployee &&
            (identical(other.actNo, actNo) ||
                const DeepCollectionEquality().equals(other.actNo, actNo)) &&
            (identical(other.nm, nm) ||
                const DeepCollectionEquality().equals(other.nm, nm)) &&
            (identical(other.empNo, empNo) ||
                const DeepCollectionEquality().equals(other.empNo, empNo)) &&
            (identical(other.r10, r10) ||
                const DeepCollectionEquality().equals(other.r10, r10)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(actNo) ^
      const DeepCollectionEquality().hash(nm) ^
      const DeepCollectionEquality().hash(empNo) ^
      const DeepCollectionEquality().hash(r10) ^
      runtimeType.hashCode;
}

extension $ActorEmployeeExtension on ActorEmployee {
  ActorEmployee copyWith({int? actNo, String? nm, int? empNo, String? r10}) {
    return ActorEmployee(
        actNo: actNo ?? this.actNo,
        nm: nm ?? this.nm,
        empNo: empNo ?? this.empNo,
        r10: r10 ?? this.r10);
  }
}

@JsonSerializable(explicitToJson: true)
class Ord {
  Ord({
    this.ordNo,
    this.r1,
    this.r2,
    this.r10,
    this.r11,
    this.empNo,
    this.rsp,
    this.custNo,
    this.nm,
    this.ctry,
    this.delAd1,
    this.delAd2,
    this.delAd4,
    this.delPArea,
    this.cfDelDt,
    this.gr,
    this.gr2,
    this.gr6,
    this.ourRef,
    this.yrRef,
    this.csOrdNo,
    this.label,
    this.inf,
    this.inf2,
    this.inf3,
    this.inf4,
    this.inf5,
    this.inf6,
  });

  factory Ord.fromJson(Map<String, dynamic> json) => _$OrdFromJson(json);

  @JsonKey(name: 'ordNo')
  final int? ordNo;
  @JsonKey(name: 'r1')
  final String? r1;
  @JsonKey(name: 'r2')
  final String? r2;
  @JsonKey(name: 'r10')
  final String? r10;
  @JsonKey(name: 'r11')
  final String? r11;
  @JsonKey(name: 'empNo')
  final int? empNo;
  @JsonKey(name: 'rsp')
  final int? rsp;
  @JsonKey(name: 'custNo')
  final int? custNo;
  @JsonKey(name: 'nm')
  final String? nm;
  @JsonKey(name: 'ctry')
  final int? ctry;
  @JsonKey(name: 'delAd1')
  final String? delAd1;
  @JsonKey(name: 'delAd2')
  final String? delAd2;
  @JsonKey(name: 'delAd4')
  final String? delAd4;
  @JsonKey(name: 'delPArea')
  final String? delPArea;
  @JsonKey(name: 'cfDelDt')
  final int? cfDelDt;
  @JsonKey(name: 'gr')
  final int? gr;
  @JsonKey(name: 'gr2')
  final int? gr2;
  @JsonKey(name: 'gr6')
  final int? gr6;
  @JsonKey(name: 'ourRef')
  final String? ourRef;
  @JsonKey(name: 'yrRef')
  final String? yrRef;
  @JsonKey(name: 'csOrdNo')
  final String? csOrdNo;
  @JsonKey(name: 'label')
  final String? label;
  @JsonKey(name: 'inf')
  final String? inf;
  @JsonKey(name: 'inf2')
  final String? inf2;
  @JsonKey(name: 'inf3')
  final String? inf3;
  @JsonKey(name: 'inf4')
  final String? inf4;
  @JsonKey(name: 'inf5')
  final String? inf5;
  @JsonKey(name: 'inf6')
  final String? inf6;
  static const fromJsonFactory = _$OrdFromJson;
  static const toJsonFactory = _$OrdToJson;
  Map<String, dynamic> toJson() => _$OrdToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Ord &&
            (identical(other.ordNo, ordNo) ||
                const DeepCollectionEquality().equals(other.ordNo, ordNo)) &&
            (identical(other.r1, r1) ||
                const DeepCollectionEquality().equals(other.r1, r1)) &&
            (identical(other.r2, r2) ||
                const DeepCollectionEquality().equals(other.r2, r2)) &&
            (identical(other.r10, r10) ||
                const DeepCollectionEquality().equals(other.r10, r10)) &&
            (identical(other.r11, r11) ||
                const DeepCollectionEquality().equals(other.r11, r11)) &&
            (identical(other.empNo, empNo) ||
                const DeepCollectionEquality().equals(other.empNo, empNo)) &&
            (identical(other.rsp, rsp) ||
                const DeepCollectionEquality().equals(other.rsp, rsp)) &&
            (identical(other.custNo, custNo) ||
                const DeepCollectionEquality().equals(other.custNo, custNo)) &&
            (identical(other.nm, nm) ||
                const DeepCollectionEquality().equals(other.nm, nm)) &&
            (identical(other.ctry, ctry) ||
                const DeepCollectionEquality().equals(other.ctry, ctry)) &&
            (identical(other.delAd1, delAd1) ||
                const DeepCollectionEquality().equals(other.delAd1, delAd1)) &&
            (identical(other.delAd2, delAd2) ||
                const DeepCollectionEquality().equals(other.delAd2, delAd2)) &&
            (identical(other.delAd4, delAd4) ||
                const DeepCollectionEquality().equals(other.delAd4, delAd4)) &&
            (identical(other.delPArea, delPArea) ||
                const DeepCollectionEquality()
                    .equals(other.delPArea, delPArea)) &&
            (identical(other.cfDelDt, cfDelDt) ||
                const DeepCollectionEquality()
                    .equals(other.cfDelDt, cfDelDt)) &&
            (identical(other.gr, gr) ||
                const DeepCollectionEquality().equals(other.gr, gr)) &&
            (identical(other.gr2, gr2) ||
                const DeepCollectionEquality().equals(other.gr2, gr2)) &&
            (identical(other.gr6, gr6) ||
                const DeepCollectionEquality().equals(other.gr6, gr6)) &&
            (identical(other.ourRef, ourRef) ||
                const DeepCollectionEquality().equals(other.ourRef, ourRef)) &&
            (identical(other.yrRef, yrRef) ||
                const DeepCollectionEquality().equals(other.yrRef, yrRef)) &&
            (identical(other.csOrdNo, csOrdNo) ||
                const DeepCollectionEquality()
                    .equals(other.csOrdNo, csOrdNo)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.inf, inf) ||
                const DeepCollectionEquality().equals(other.inf, inf)) &&
            (identical(other.inf2, inf2) ||
                const DeepCollectionEquality().equals(other.inf2, inf2)) &&
            (identical(other.inf3, inf3) ||
                const DeepCollectionEquality().equals(other.inf3, inf3)) &&
            (identical(other.inf4, inf4) ||
                const DeepCollectionEquality().equals(other.inf4, inf4)) &&
            (identical(other.inf5, inf5) ||
                const DeepCollectionEquality().equals(other.inf5, inf5)) &&
            (identical(other.inf6, inf6) ||
                const DeepCollectionEquality().equals(other.inf6, inf6)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ordNo) ^
      const DeepCollectionEquality().hash(r1) ^
      const DeepCollectionEquality().hash(r2) ^
      const DeepCollectionEquality().hash(r10) ^
      const DeepCollectionEquality().hash(r11) ^
      const DeepCollectionEquality().hash(empNo) ^
      const DeepCollectionEquality().hash(rsp) ^
      const DeepCollectionEquality().hash(custNo) ^
      const DeepCollectionEquality().hash(nm) ^
      const DeepCollectionEquality().hash(ctry) ^
      const DeepCollectionEquality().hash(delAd1) ^
      const DeepCollectionEquality().hash(delAd2) ^
      const DeepCollectionEquality().hash(delAd4) ^
      const DeepCollectionEquality().hash(delPArea) ^
      const DeepCollectionEquality().hash(cfDelDt) ^
      const DeepCollectionEquality().hash(gr) ^
      const DeepCollectionEquality().hash(gr2) ^
      const DeepCollectionEquality().hash(gr6) ^
      const DeepCollectionEquality().hash(ourRef) ^
      const DeepCollectionEquality().hash(yrRef) ^
      const DeepCollectionEquality().hash(csOrdNo) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(inf) ^
      const DeepCollectionEquality().hash(inf2) ^
      const DeepCollectionEquality().hash(inf3) ^
      const DeepCollectionEquality().hash(inf4) ^
      const DeepCollectionEquality().hash(inf5) ^
      const DeepCollectionEquality().hash(inf6) ^
      runtimeType.hashCode;
}

extension $OrdExtension on Ord {
  Ord copyWith(
      {int? ordNo,
      String? r1,
      String? r2,
      String? r10,
      String? r11,
      int? empNo,
      int? rsp,
      int? custNo,
      String? nm,
      int? ctry,
      String? delAd1,
      String? delAd2,
      String? delAd4,
      String? delPArea,
      int? cfDelDt,
      int? gr,
      int? gr2,
      int? gr6,
      String? ourRef,
      String? yrRef,
      String? csOrdNo,
      String? label,
      String? inf,
      String? inf2,
      String? inf3,
      String? inf4,
      String? inf5,
      String? inf6}) {
    return Ord(
        ordNo: ordNo ?? this.ordNo,
        r1: r1 ?? this.r1,
        r2: r2 ?? this.r2,
        r10: r10 ?? this.r10,
        r11: r11 ?? this.r11,
        empNo: empNo ?? this.empNo,
        rsp: rsp ?? this.rsp,
        custNo: custNo ?? this.custNo,
        nm: nm ?? this.nm,
        ctry: ctry ?? this.ctry,
        delAd1: delAd1 ?? this.delAd1,
        delAd2: delAd2 ?? this.delAd2,
        delAd4: delAd4 ?? this.delAd4,
        delPArea: delPArea ?? this.delPArea,
        cfDelDt: cfDelDt ?? this.cfDelDt,
        gr: gr ?? this.gr,
        gr2: gr2 ?? this.gr2,
        gr6: gr6 ?? this.gr6,
        ourRef: ourRef ?? this.ourRef,
        yrRef: yrRef ?? this.yrRef,
        csOrdNo: csOrdNo ?? this.csOrdNo,
        label: label ?? this.label,
        inf: inf ?? this.inf,
        inf2: inf2 ?? this.inf2,
        inf3: inf3 ?? this.inf3,
        inf4: inf4 ?? this.inf4,
        inf5: inf5 ?? this.inf5,
        inf6: inf6 ?? this.inf6);
  }
}

@JsonSerializable(explicitToJson: true)
class OrdLn {
  OrdLn({
    this.ordNo,
    this.lnNo,
    this.prodNo,
    this.descr,
    this.r1,
    this.cfDelDt,
  });

  factory OrdLn.fromJson(Map<String, dynamic> json) => _$OrdLnFromJson(json);

  @JsonKey(name: 'ordNo')
  final int? ordNo;
  @JsonKey(name: 'lnNo')
  final int? lnNo;
  @JsonKey(name: 'prodNo')
  final String? prodNo;
  @JsonKey(name: 'descr')
  final String? descr;
  @JsonKey(name: 'r1')
  final int? r1;
  @JsonKey(name: 'cfDelDt')
  final int? cfDelDt;
  static const fromJsonFactory = _$OrdLnFromJson;
  static const toJsonFactory = _$OrdLnToJson;
  Map<String, dynamic> toJson() => _$OrdLnToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrdLn &&
            (identical(other.ordNo, ordNo) ||
                const DeepCollectionEquality().equals(other.ordNo, ordNo)) &&
            (identical(other.lnNo, lnNo) ||
                const DeepCollectionEquality().equals(other.lnNo, lnNo)) &&
            (identical(other.prodNo, prodNo) ||
                const DeepCollectionEquality().equals(other.prodNo, prodNo)) &&
            (identical(other.descr, descr) ||
                const DeepCollectionEquality().equals(other.descr, descr)) &&
            (identical(other.r1, r1) ||
                const DeepCollectionEquality().equals(other.r1, r1)) &&
            (identical(other.cfDelDt, cfDelDt) ||
                const DeepCollectionEquality().equals(other.cfDelDt, cfDelDt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ordNo) ^
      const DeepCollectionEquality().hash(lnNo) ^
      const DeepCollectionEquality().hash(prodNo) ^
      const DeepCollectionEquality().hash(descr) ^
      const DeepCollectionEquality().hash(r1) ^
      const DeepCollectionEquality().hash(cfDelDt) ^
      runtimeType.hashCode;
}

extension $OrdLnExtension on OrdLn {
  OrdLn copyWith(
      {int? ordNo,
      int? lnNo,
      String? prodNo,
      String? descr,
      int? r1,
      int? cfDelDt}) {
    return OrdLn(
        ordNo: ordNo ?? this.ordNo,
        lnNo: lnNo ?? this.lnNo,
        prodNo: prodNo ?? this.prodNo,
        descr: descr ?? this.descr,
        r1: r1 ?? this.r1,
        cfDelDt: cfDelDt ?? this.cfDelDt);
  }
}

@JsonSerializable(explicitToJson: true)
class Prod {
  Prod({
    this.prodNo,
    this.descr,
    this.prodTp3,
    this.prodGr,
    this.prodPrG2,
    this.stSaleUn,
    this.webPg2,
    this.r3,
    this.r4,
    this.procMt,
    this.excPrint,
    this.editPref,
    this.edFmt,
    this.specFunc,
  });

  factory Prod.fromJson(Map<String, dynamic> json) => _$ProdFromJson(json);

  @JsonKey(name: 'prodNo')
  final String? prodNo;
  @JsonKey(name: 'descr')
  final String? descr;
  @JsonKey(name: 'prodTp3')
  final int? prodTp3;
  @JsonKey(name: 'prodGr')
  final int? prodGr;
  @JsonKey(name: 'prodPrG2')
  final int? prodPrG2;
  @JsonKey(name: 'stSaleUn')
  final int? stSaleUn;
  @JsonKey(name: 'webPg2')
  final String? webPg2;
  @JsonKey(name: 'r3')
  final int? r3;
  @JsonKey(name: 'r4')
  final int? r4;
  @JsonKey(name: 'procMt')
  final int? procMt;
  @JsonKey(name: 'excPrint')
  final int? excPrint;
  @JsonKey(name: 'editPref')
  final int? editPref;
  @JsonKey(name: 'edFmt')
  final int? edFmt;
  @JsonKey(name: 'specFunc')
  final int? specFunc;
  static const fromJsonFactory = _$ProdFromJson;
  static const toJsonFactory = _$ProdToJson;
  Map<String, dynamic> toJson() => _$ProdToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Prod &&
            (identical(other.prodNo, prodNo) ||
                const DeepCollectionEquality().equals(other.prodNo, prodNo)) &&
            (identical(other.descr, descr) ||
                const DeepCollectionEquality().equals(other.descr, descr)) &&
            (identical(other.prodTp3, prodTp3) ||
                const DeepCollectionEquality()
                    .equals(other.prodTp3, prodTp3)) &&
            (identical(other.prodGr, prodGr) ||
                const DeepCollectionEquality().equals(other.prodGr, prodGr)) &&
            (identical(other.prodPrG2, prodPrG2) ||
                const DeepCollectionEquality()
                    .equals(other.prodPrG2, prodPrG2)) &&
            (identical(other.stSaleUn, stSaleUn) ||
                const DeepCollectionEquality()
                    .equals(other.stSaleUn, stSaleUn)) &&
            (identical(other.webPg2, webPg2) ||
                const DeepCollectionEquality().equals(other.webPg2, webPg2)) &&
            (identical(other.r3, r3) ||
                const DeepCollectionEquality().equals(other.r3, r3)) &&
            (identical(other.r4, r4) ||
                const DeepCollectionEquality().equals(other.r4, r4)) &&
            (identical(other.procMt, procMt) ||
                const DeepCollectionEquality().equals(other.procMt, procMt)) &&
            (identical(other.excPrint, excPrint) ||
                const DeepCollectionEquality()
                    .equals(other.excPrint, excPrint)) &&
            (identical(other.editPref, editPref) ||
                const DeepCollectionEquality()
                    .equals(other.editPref, editPref)) &&
            (identical(other.edFmt, edFmt) ||
                const DeepCollectionEquality().equals(other.edFmt, edFmt)) &&
            (identical(other.specFunc, specFunc) ||
                const DeepCollectionEquality()
                    .equals(other.specFunc, specFunc)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(prodNo) ^
      const DeepCollectionEquality().hash(descr) ^
      const DeepCollectionEquality().hash(prodTp3) ^
      const DeepCollectionEquality().hash(prodGr) ^
      const DeepCollectionEquality().hash(prodPrG2) ^
      const DeepCollectionEquality().hash(stSaleUn) ^
      const DeepCollectionEquality().hash(webPg2) ^
      const DeepCollectionEquality().hash(r3) ^
      const DeepCollectionEquality().hash(r4) ^
      const DeepCollectionEquality().hash(procMt) ^
      const DeepCollectionEquality().hash(excPrint) ^
      const DeepCollectionEquality().hash(editPref) ^
      const DeepCollectionEquality().hash(edFmt) ^
      const DeepCollectionEquality().hash(specFunc) ^
      runtimeType.hashCode;
}

extension $ProdExtension on Prod {
  Prod copyWith(
      {String? prodNo,
      String? descr,
      int? prodTp3,
      int? prodGr,
      int? prodPrG2,
      int? stSaleUn,
      String? webPg2,
      int? r3,
      int? r4,
      int? procMt,
      int? excPrint,
      int? editPref,
      int? edFmt,
      int? specFunc}) {
    return Prod(
        prodNo: prodNo ?? this.prodNo,
        descr: descr ?? this.descr,
        prodTp3: prodTp3 ?? this.prodTp3,
        prodGr: prodGr ?? this.prodGr,
        prodPrG2: prodPrG2 ?? this.prodPrG2,
        stSaleUn: stSaleUn ?? this.stSaleUn,
        webPg2: webPg2 ?? this.webPg2,
        r3: r3 ?? this.r3,
        r4: r4 ?? this.r4,
        procMt: procMt ?? this.procMt,
        excPrint: excPrint ?? this.excPrint,
        editPref: editPref ?? this.editPref,
        edFmt: edFmt ?? this.edFmt,
        specFunc: specFunc ?? this.specFunc);
  }
}

@JsonSerializable(explicitToJson: true)
class ProdIEnumerableResult {
  ProdIEnumerableResult({
    this.success,
    this.message,
    this.data,
  });

  factory ProdIEnumerableResult.fromJson(Map<String, dynamic> json) =>
      _$ProdIEnumerableResultFromJson(json);

  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data', defaultValue: <Prod>[])
  final List<Prod>? data;
  static const fromJsonFactory = _$ProdIEnumerableResultFromJson;
  static const toJsonFactory = _$ProdIEnumerableResultToJson;
  Map<String, dynamic> toJson() => _$ProdIEnumerableResultToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProdIEnumerableResult &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $ProdIEnumerableResultExtension on ProdIEnumerableResult {
  ProdIEnumerableResult copyWith(
      {bool? success, String? message, List<Prod>? data}) {
    return ProdIEnumerableResult(
        success: success ?? this.success,
        message: message ?? this.message,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class ProdResult {
  ProdResult({
    this.success,
    this.message,
    this.data,
  });

  factory ProdResult.fromJson(Map<String, dynamic> json) =>
      _$ProdResultFromJson(json);

  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final Prod? data;
  static const fromJsonFactory = _$ProdResultFromJson;
  static const toJsonFactory = _$ProdResultToJson;
  Map<String, dynamic> toJson() => _$ProdResultToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProdResult &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $ProdResultExtension on ProdResult {
  ProdResult copyWith({bool? success, String? message, Prod? data}) {
    return ProdResult(
        success: success ?? this.success,
        message: message ?? this.message,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class R1 {
  R1({
    this.rNo,
    this.r10,
    this.nm,
    this.mailAd,
  });

  factory R1.fromJson(Map<String, dynamic> json) => _$R1FromJson(json);

  @JsonKey(name: 'rNo')
  final int? rNo;
  @JsonKey(name: 'r10')
  final String? r10;
  @JsonKey(name: 'nm')
  final String? nm;
  @JsonKey(name: 'mailAd')
  final String? mailAd;
  static const fromJsonFactory = _$R1FromJson;
  static const toJsonFactory = _$R1ToJson;
  Map<String, dynamic> toJson() => _$R1ToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is R1 &&
            (identical(other.rNo, rNo) ||
                const DeepCollectionEquality().equals(other.rNo, rNo)) &&
            (identical(other.r10, r10) ||
                const DeepCollectionEquality().equals(other.r10, r10)) &&
            (identical(other.nm, nm) ||
                const DeepCollectionEquality().equals(other.nm, nm)) &&
            (identical(other.mailAd, mailAd) ||
                const DeepCollectionEquality().equals(other.mailAd, mailAd)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(rNo) ^
      const DeepCollectionEquality().hash(r10) ^
      const DeepCollectionEquality().hash(nm) ^
      const DeepCollectionEquality().hash(mailAd) ^
      runtimeType.hashCode;
}

extension $R1Extension on R1 {
  R1 copyWith({int? rNo, String? r10, String? nm, String? mailAd}) {
    return R1(
        rNo: rNo ?? this.rNo,
        r10: r10 ?? this.r10,
        nm: nm ?? this.nm,
        mailAd: mailAd ?? this.mailAd);
  }
}

@JsonSerializable(explicitToJson: true)
class R10 {
  R10({
    this.rNo,
    this.nm,
    this.mailAd,
  });

  factory R10.fromJson(Map<String, dynamic> json) => _$R10FromJson(json);

  @JsonKey(name: 'rNo')
  final String? rNo;
  @JsonKey(name: 'nm')
  final String? nm;
  @JsonKey(name: 'mailAd')
  final String? mailAd;
  static const fromJsonFactory = _$R10FromJson;
  static const toJsonFactory = _$R10ToJson;
  Map<String, dynamic> toJson() => _$R10ToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is R10 &&
            (identical(other.rNo, rNo) ||
                const DeepCollectionEquality().equals(other.rNo, rNo)) &&
            (identical(other.nm, nm) ||
                const DeepCollectionEquality().equals(other.nm, nm)) &&
            (identical(other.mailAd, mailAd) ||
                const DeepCollectionEquality().equals(other.mailAd, mailAd)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(rNo) ^
      const DeepCollectionEquality().hash(nm) ^
      const DeepCollectionEquality().hash(mailAd) ^
      runtimeType.hashCode;
}

extension $R10Extension on R10 {
  R10 copyWith({String? rNo, String? nm, String? mailAd}) {
    return R10(
        rNo: rNo ?? this.rNo, nm: nm ?? this.nm, mailAd: mailAd ?? this.mailAd);
  }
}

@JsonSerializable(explicitToJson: true)
class R10IEnumerableResult {
  R10IEnumerableResult({
    this.success,
    this.message,
    this.data,
  });

  factory R10IEnumerableResult.fromJson(Map<String, dynamic> json) =>
      _$R10IEnumerableResultFromJson(json);

  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data', defaultValue: <R10>[])
  final List<R10>? data;
  static const fromJsonFactory = _$R10IEnumerableResultFromJson;
  static const toJsonFactory = _$R10IEnumerableResultToJson;
  Map<String, dynamic> toJson() => _$R10IEnumerableResultToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is R10IEnumerableResult &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $R10IEnumerableResultExtension on R10IEnumerableResult {
  R10IEnumerableResult copyWith(
      {bool? success, String? message, List<R10>? data}) {
    return R10IEnumerableResult(
        success: success ?? this.success,
        message: message ?? this.message,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class R1IEnumerableResult {
  R1IEnumerableResult({
    this.success,
    this.message,
    this.data,
  });

  factory R1IEnumerableResult.fromJson(Map<String, dynamic> json) =>
      _$R1IEnumerableResultFromJson(json);

  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data', defaultValue: <R1>[])
  final List<R1>? data;
  static const fromJsonFactory = _$R1IEnumerableResultFromJson;
  static const toJsonFactory = _$R1IEnumerableResultToJson;
  Map<String, dynamic> toJson() => _$R1IEnumerableResultToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is R1IEnumerableResult &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $R1IEnumerableResultExtension on R1IEnumerableResult {
  R1IEnumerableResult copyWith(
      {bool? success, String? message, List<R1>? data}) {
    return R1IEnumerableResult(
        success: success ?? this.success,
        message: message ?? this.message,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class R1Result {
  R1Result({
    this.success,
    this.message,
    this.data,
  });

  factory R1Result.fromJson(Map<String, dynamic> json) =>
      _$R1ResultFromJson(json);

  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final R1? data;
  static const fromJsonFactory = _$R1ResultFromJson;
  static const toJsonFactory = _$R1ResultToJson;
  Map<String, dynamic> toJson() => _$R1ResultToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is R1Result &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $R1ResultExtension on R1Result {
  R1Result copyWith({bool? success, String? message, R1? data}) {
    return R1Result(
        success: success ?? this.success,
        message: message ?? this.message,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class StringInt32IDictionaryResult {
  StringInt32IDictionaryResult({
    this.success,
    this.message,
    this.data,
  });

  factory StringInt32IDictionaryResult.fromJson(Map<String, dynamic> json) =>
      _$StringInt32IDictionaryResultFromJson(json);

  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final Object? data;
  static const fromJsonFactory = _$StringInt32IDictionaryResultFromJson;
  static const toJsonFactory = _$StringInt32IDictionaryResultToJson;
  Map<String, dynamic> toJson() => _$StringInt32IDictionaryResultToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StringInt32IDictionaryResult &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $StringInt32IDictionaryResultExtension
    on StringInt32IDictionaryResult {
  StringInt32IDictionaryResult copyWith(
      {bool? success, String? message, Object? data}) {
    return StringInt32IDictionaryResult(
        success: success ?? this.success,
        message: message ?? this.message,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class Txt {
  Txt({
    this.txtNo,
    this.txt,
  });

  factory Txt.fromJson(Map<String, dynamic> json) => _$TxtFromJson(json);

  @JsonKey(name: 'txtNo')
  final int? txtNo;
  @JsonKey(name: 'txt')
  final String? txt;
  static const fromJsonFactory = _$TxtFromJson;
  static const toJsonFactory = _$TxtToJson;
  Map<String, dynamic> toJson() => _$TxtToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Txt &&
            (identical(other.txtNo, txtNo) ||
                const DeepCollectionEquality().equals(other.txtNo, txtNo)) &&
            (identical(other.txt, txt) ||
                const DeepCollectionEquality().equals(other.txt, txt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(txtNo) ^
      const DeepCollectionEquality().hash(txt) ^
      runtimeType.hashCode;
}

extension $TxtExtension on Txt {
  Txt copyWith({int? txtNo, String? txt}) {
    return Txt(txtNo: txtNo ?? this.txtNo, txt: txt ?? this.txt);
  }
}

@JsonSerializable(explicitToJson: true)
class TxtIEnumerableResult {
  TxtIEnumerableResult({
    this.success,
    this.message,
    this.data,
  });

  factory TxtIEnumerableResult.fromJson(Map<String, dynamic> json) =>
      _$TxtIEnumerableResultFromJson(json);

  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data', defaultValue: <Txt>[])
  final List<Txt>? data;
  static const fromJsonFactory = _$TxtIEnumerableResultFromJson;
  static const toJsonFactory = _$TxtIEnumerableResultToJson;
  Map<String, dynamic> toJson() => _$TxtIEnumerableResultToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TxtIEnumerableResult &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $TxtIEnumerableResultExtension on TxtIEnumerableResult {
  TxtIEnumerableResult copyWith(
      {bool? success, String? message, List<Txt>? data}) {
    return TxtIEnumerableResult(
        success: success ?? this.success,
        message: message ?? this.message,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class Unit {
  Unit({
    this.un,
    this.descr,
  });

  factory Unit.fromJson(Map<String, dynamic> json) => _$UnitFromJson(json);

  @JsonKey(name: 'un')
  final int? un;
  @JsonKey(name: 'descr')
  final String? descr;
  static const fromJsonFactory = _$UnitFromJson;
  static const toJsonFactory = _$UnitToJson;
  Map<String, dynamic> toJson() => _$UnitToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Unit &&
            (identical(other.un, un) ||
                const DeepCollectionEquality().equals(other.un, un)) &&
            (identical(other.descr, descr) ||
                const DeepCollectionEquality().equals(other.descr, descr)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(un) ^
      const DeepCollectionEquality().hash(descr) ^
      runtimeType.hashCode;
}

extension $UnitExtension on Unit {
  Unit copyWith({int? un, String? descr}) {
    return Unit(un: un ?? this.un, descr: descr ?? this.descr);
  }
}

@JsonSerializable(explicitToJson: true)
class UnitIEnumerableResult {
  UnitIEnumerableResult({
    this.success,
    this.message,
    this.data,
  });

  factory UnitIEnumerableResult.fromJson(Map<String, dynamic> json) =>
      _$UnitIEnumerableResultFromJson(json);

  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data', defaultValue: <Unit>[])
  final List<Unit>? data;
  static const fromJsonFactory = _$UnitIEnumerableResultFromJson;
  static const toJsonFactory = _$UnitIEnumerableResultToJson;
  Map<String, dynamic> toJson() => _$UnitIEnumerableResultToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnitIEnumerableResult &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $UnitIEnumerableResultExtension on UnitIEnumerableResult {
  UnitIEnumerableResult copyWith(
      {bool? success, String? message, List<Unit>? data}) {
    return UnitIEnumerableResult(
        success: success ?? this.success,
        message: message ?? this.message,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class Work {
  Work({
    this.ords,
    this.ordLns,
    this.r1s,
    this.actorCustomers,
    this.actorEmployees,
  });

  factory Work.fromJson(Map<String, dynamic> json) => _$WorkFromJson(json);

  @JsonKey(name: 'ords', defaultValue: <Ord>[])
  final List<Ord>? ords;
  @JsonKey(name: 'ordLns', defaultValue: <OrdLn>[])
  final List<OrdLn>? ordLns;
  @JsonKey(name: 'r1s', defaultValue: <R1>[])
  final List<R1>? r1s;
  @JsonKey(name: 'actorCustomers', defaultValue: <ActorCustomer>[])
  final List<ActorCustomer>? actorCustomers;
  @JsonKey(name: 'actorEmployees', defaultValue: <ActorEmployee>[])
  final List<ActorEmployee>? actorEmployees;
  static const fromJsonFactory = _$WorkFromJson;
  static const toJsonFactory = _$WorkToJson;
  Map<String, dynamic> toJson() => _$WorkToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Work &&
            (identical(other.ords, ords) ||
                const DeepCollectionEquality().equals(other.ords, ords)) &&
            (identical(other.ordLns, ordLns) ||
                const DeepCollectionEquality().equals(other.ordLns, ordLns)) &&
            (identical(other.r1s, r1s) ||
                const DeepCollectionEquality().equals(other.r1s, r1s)) &&
            (identical(other.actorCustomers, actorCustomers) ||
                const DeepCollectionEquality()
                    .equals(other.actorCustomers, actorCustomers)) &&
            (identical(other.actorEmployees, actorEmployees) ||
                const DeepCollectionEquality()
                    .equals(other.actorEmployees, actorEmployees)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ords) ^
      const DeepCollectionEquality().hash(ordLns) ^
      const DeepCollectionEquality().hash(r1s) ^
      const DeepCollectionEquality().hash(actorCustomers) ^
      const DeepCollectionEquality().hash(actorEmployees) ^
      runtimeType.hashCode;
}

extension $WorkExtension on Work {
  Work copyWith(
      {List<Ord>? ords,
      List<OrdLn>? ordLns,
      List<R1>? r1s,
      List<ActorCustomer>? actorCustomers,
      List<ActorEmployee>? actorEmployees}) {
    return Work(
        ords: ords ?? this.ords,
        ordLns: ordLns ?? this.ordLns,
        r1s: r1s ?? this.r1s,
        actorCustomers: actorCustomers ?? this.actorCustomers,
        actorEmployees: actorEmployees ?? this.actorEmployees);
  }
}

@JsonSerializable(explicitToJson: true)
class WorkResult {
  WorkResult({
    this.success,
    this.message,
    this.data,
  });

  factory WorkResult.fromJson(Map<String, dynamic> json) =>
      _$WorkResultFromJson(json);

  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final Work? data;
  static const fromJsonFactory = _$WorkResultFromJson;
  static const toJsonFactory = _$WorkResultToJson;
  Map<String, dynamic> toJson() => _$WorkResultToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WorkResult &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $WorkResultExtension on WorkResult {
  WorkResult copyWith({bool? success, String? message, Work? data}) {
    return WorkResult(
        success: success ?? this.success,
        message: message ?? this.message,
        data: data ?? this.data);
  }
}

String? textTpToJson(enums.TextTp? textTp) {
  return enums.$TextTpMap[textTp];
}

enums.TextTp textTpFromJson(String? textTp) {
  if (textTp == null) {
    return enums.TextTp.swaggerGeneratedUnknown;
  }

  return enums.$TextTpMap.entries
      .firstWhere(
          (element) => element.value.toLowerCase() == textTp.toLowerCase(),
          orElse: () =>
              const MapEntry(enums.TextTp.swaggerGeneratedUnknown, ''))
      .key;
}

List<String> textTpListToJson(List<enums.TextTp>? textTp) {
  if (textTp == null) {
    return [];
  }

  return textTp.map((e) => enums.$TextTpMap[e]!).toList();
}

List<enums.TextTp> textTpListFromJson(List? textTp) {
  if (textTp == null) {
    return [];
  }

  return textTp.map((e) => textTpFromJson(e.toString())).toList();
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  chopper.Response<ResultType> convertResponse<ResultType, Item>(
      chopper.Response response) {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(MWorkApiJsonDecoderMappings);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}
