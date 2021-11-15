// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mWorkApi.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActorContactPerson _$ActorContactPersonFromJson(Map<String, dynamic> json) =>
    ActorContactPerson(
      actNo: json['actNo'] as int?,
      custNo: json['custNo'] as int?,
      nm: json['nm'] as String?,
      ad1: json['ad1'] as String?,
      ad2: json['ad2'] as String?,
      pNo: json['pNo'] as String?,
      pArea: json['pArea'] as String?,
      mobPh: json['mobPh'] as String?,
      phone: json['phone'] as String?,
      mailAd: json['mailAd'] as String?,
    );

Map<String, dynamic> _$ActorContactPersonToJson(ActorContactPerson instance) =>
    <String, dynamic>{
      'actNo': instance.actNo,
      'custNo': instance.custNo,
      'nm': instance.nm,
      'ad1': instance.ad1,
      'ad2': instance.ad2,
      'pNo': instance.pNo,
      'pArea': instance.pArea,
      'mobPh': instance.mobPh,
      'phone': instance.phone,
      'mailAd': instance.mailAd,
    };

ActorContactPersonIEnumerableResult
    _$ActorContactPersonIEnumerableResultFromJson(Map<String, dynamic> json) =>
        ActorContactPersonIEnumerableResult(
          success: json['success'] as bool?,
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>?)
                  ?.map((e) =>
                      ActorContactPerson.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              [],
        );

Map<String, dynamic> _$ActorContactPersonIEnumerableResultToJson(
        ActorContactPersonIEnumerableResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

ActorCustomer _$ActorCustomerFromJson(Map<String, dynamic> json) =>
    ActorCustomer(
      actNo: json['actNo'] as int?,
      custNo: json['custNo'] as int?,
      ctry: json['ctry'] as int?,
      nm: json['nm'] as String?,
      ad1: json['ad1'] as String?,
      ad2: json['ad2'] as String?,
      ad4: json['ad4'] as String?,
      pNo: json['pNo'] as String?,
      pArea: json['pArea'] as String?,
      mobPh: json['mobPh'] as String?,
      phone: json['phone'] as String?,
      mailAd: json['mailAd'] as String?,
      crSusp: json['crSusp'] as int?,
    );

Map<String, dynamic> _$ActorCustomerToJson(ActorCustomer instance) =>
    <String, dynamic>{
      'actNo': instance.actNo,
      'custNo': instance.custNo,
      'ctry': instance.ctry,
      'nm': instance.nm,
      'ad1': instance.ad1,
      'ad2': instance.ad2,
      'ad4': instance.ad4,
      'pNo': instance.pNo,
      'pArea': instance.pArea,
      'mobPh': instance.mobPh,
      'phone': instance.phone,
      'mailAd': instance.mailAd,
      'crSusp': instance.crSusp,
    };

ActorCustomerResult _$ActorCustomerResultFromJson(Map<String, dynamic> json) =>
    ActorCustomerResult(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ActorCustomer.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ActorCustomerResultToJson(
        ActorCustomerResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

ActorDeliveryAddress _$ActorDeliveryAddressFromJson(
        Map<String, dynamic> json) =>
    ActorDeliveryAddress(
      actNo: json['actNo'] as int?,
      ctry: json['ctry'] as int?,
      nm: json['nm'] as String?,
      ad1: json['ad1'] as String?,
      ad2: json['ad2'] as String?,
      ad4: json['ad4'] as String?,
      pNo: json['pNo'] as String?,
      pArea: json['pArea'] as String?,
      mobPh: json['mobPh'] as String?,
      phone: json['phone'] as String?,
      mailAd: json['mailAd'] as String?,
    );

Map<String, dynamic> _$ActorDeliveryAddressToJson(
        ActorDeliveryAddress instance) =>
    <String, dynamic>{
      'actNo': instance.actNo,
      'ctry': instance.ctry,
      'nm': instance.nm,
      'ad1': instance.ad1,
      'ad2': instance.ad2,
      'ad4': instance.ad4,
      'pNo': instance.pNo,
      'pArea': instance.pArea,
      'mobPh': instance.mobPh,
      'phone': instance.phone,
      'mailAd': instance.mailAd,
    };

ActorDeliveryAddressIEnumerableResult
    _$ActorDeliveryAddressIEnumerableResultFromJson(
            Map<String, dynamic> json) =>
        ActorDeliveryAddressIEnumerableResult(
          success: json['success'] as bool?,
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>?)
                  ?.map((e) =>
                      ActorDeliveryAddress.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              [],
        );

Map<String, dynamic> _$ActorDeliveryAddressIEnumerableResultToJson(
        ActorDeliveryAddressIEnumerableResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

ActorEmployee _$ActorEmployeeFromJson(Map<String, dynamic> json) =>
    ActorEmployee(
      actNo: json['actNo'] as int?,
      nm: json['nm'] as String?,
      empNo: json['empNo'] as int?,
      r10: json['r10'] as String?,
    );

Map<String, dynamic> _$ActorEmployeeToJson(ActorEmployee instance) =>
    <String, dynamic>{
      'actNo': instance.actNo,
      'nm': instance.nm,
      'empNo': instance.empNo,
      'r10': instance.r10,
    };

Ord _$OrdFromJson(Map<String, dynamic> json) => Ord(
      ordNo: json['ordNo'] as int?,
      r1: json['r1'] as String?,
      r2: json['r2'] as String?,
      r10: json['r10'] as String?,
      r11: json['r11'] as String?,
      empNo: json['empNo'] as int?,
      rsp: json['rsp'] as int?,
      custNo: json['custNo'] as int?,
      nm: json['nm'] as String?,
      ctry: json['ctry'] as int?,
      delAd1: json['delAd1'] as String?,
      delAd2: json['delAd2'] as String?,
      delAd4: json['delAd4'] as String?,
      delPArea: json['delPArea'] as String?,
      cfDelDt: json['cfDelDt'] as int?,
      gr: json['gr'] as int?,
      gr2: json['gr2'] as int?,
      gr6: json['gr6'] as int?,
      ourRef: json['ourRef'] as String?,
      yrRef: json['yrRef'] as String?,
      csOrdNo: json['csOrdNo'] as String?,
      label: json['label'] as String?,
      inf: json['inf'] as String?,
      inf2: json['inf2'] as String?,
      inf3: json['inf3'] as String?,
      inf4: json['inf4'] as String?,
      inf5: json['inf5'] as String?,
      inf6: json['inf6'] as String?,
    );

Map<String, dynamic> _$OrdToJson(Ord instance) => <String, dynamic>{
      'ordNo': instance.ordNo,
      'r1': instance.r1,
      'r2': instance.r2,
      'r10': instance.r10,
      'r11': instance.r11,
      'empNo': instance.empNo,
      'rsp': instance.rsp,
      'custNo': instance.custNo,
      'nm': instance.nm,
      'ctry': instance.ctry,
      'delAd1': instance.delAd1,
      'delAd2': instance.delAd2,
      'delAd4': instance.delAd4,
      'delPArea': instance.delPArea,
      'cfDelDt': instance.cfDelDt,
      'gr': instance.gr,
      'gr2': instance.gr2,
      'gr6': instance.gr6,
      'ourRef': instance.ourRef,
      'yrRef': instance.yrRef,
      'csOrdNo': instance.csOrdNo,
      'label': instance.label,
      'inf': instance.inf,
      'inf2': instance.inf2,
      'inf3': instance.inf3,
      'inf4': instance.inf4,
      'inf5': instance.inf5,
      'inf6': instance.inf6,
    };

OrdLn _$OrdLnFromJson(Map<String, dynamic> json) => OrdLn(
      ordNo: json['ordNo'] as int?,
      lnNo: json['lnNo'] as int?,
      prodNo: json['prodNo'] as String?,
      descr: json['descr'] as String?,
      r1: json['r1'] as int?,
      cfDelDt: json['cfDelDt'] as int?,
    );

Map<String, dynamic> _$OrdLnToJson(OrdLn instance) => <String, dynamic>{
      'ordNo': instance.ordNo,
      'lnNo': instance.lnNo,
      'prodNo': instance.prodNo,
      'descr': instance.descr,
      'r1': instance.r1,
      'cfDelDt': instance.cfDelDt,
    };

Prod _$ProdFromJson(Map<String, dynamic> json) => Prod(
      prodNo: json['prodNo'] as String?,
      descr: json['descr'] as String?,
      prodTp3: json['prodTp3'] as int?,
      prodGr: json['prodGr'] as int?,
      prodPrG2: json['prodPrG2'] as int?,
      stSaleUn: json['stSaleUn'] as int?,
      webPg2: json['webPg2'] as String?,
      r3: json['r3'] as int?,
      r4: json['r4'] as int?,
      procMt: json['procMt'] as int?,
      excPrint: json['excPrint'] as int?,
      editPref: json['editPref'] as int?,
      edFmt: json['edFmt'] as int?,
      specFunc: json['specFunc'] as int?,
    );

Map<String, dynamic> _$ProdToJson(Prod instance) => <String, dynamic>{
      'prodNo': instance.prodNo,
      'descr': instance.descr,
      'prodTp3': instance.prodTp3,
      'prodGr': instance.prodGr,
      'prodPrG2': instance.prodPrG2,
      'stSaleUn': instance.stSaleUn,
      'webPg2': instance.webPg2,
      'r3': instance.r3,
      'r4': instance.r4,
      'procMt': instance.procMt,
      'excPrint': instance.excPrint,
      'editPref': instance.editPref,
      'edFmt': instance.edFmt,
      'specFunc': instance.specFunc,
    };

ProdIEnumerableResult _$ProdIEnumerableResultFromJson(
        Map<String, dynamic> json) =>
    ProdIEnumerableResult(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => Prod.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ProdIEnumerableResultToJson(
        ProdIEnumerableResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

ProdResult _$ProdResultFromJson(Map<String, dynamic> json) => ProdResult(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Prod.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProdResultToJson(ProdResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

R1 _$R1FromJson(Map<String, dynamic> json) => R1(
      rNo: json['rNo'] as int?,
      r10: json['r10'] as String?,
      nm: json['nm'] as String?,
      mailAd: json['mailAd'] as String?,
    );

Map<String, dynamic> _$R1ToJson(R1 instance) => <String, dynamic>{
      'rNo': instance.rNo,
      'r10': instance.r10,
      'nm': instance.nm,
      'mailAd': instance.mailAd,
    };

R10 _$R10FromJson(Map<String, dynamic> json) => R10(
      rNo: json['rNo'] as String?,
      nm: json['nm'] as String?,
      mailAd: json['mailAd'] as String?,
    );

Map<String, dynamic> _$R10ToJson(R10 instance) => <String, dynamic>{
      'rNo': instance.rNo,
      'nm': instance.nm,
      'mailAd': instance.mailAd,
    };

R10IEnumerableResult _$R10IEnumerableResultFromJson(
        Map<String, dynamic> json) =>
    R10IEnumerableResult(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => R10.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$R10IEnumerableResultToJson(
        R10IEnumerableResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

R1IEnumerableResult _$R1IEnumerableResultFromJson(Map<String, dynamic> json) =>
    R1IEnumerableResult(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => R1.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$R1IEnumerableResultToJson(
        R1IEnumerableResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

R1Result _$R1ResultFromJson(Map<String, dynamic> json) => R1Result(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : R1.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$R1ResultToJson(R1Result instance) => <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

StringInt32IDictionaryResult _$StringInt32IDictionaryResultFromJson(
        Map<String, dynamic> json) =>
    StringInt32IDictionaryResult(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'],
    );

Map<String, dynamic> _$StringInt32IDictionaryResultToJson(
        StringInt32IDictionaryResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

Txt _$TxtFromJson(Map<String, dynamic> json) => Txt(
      txtNo: json['txtNo'] as int?,
      txt: json['txt'] as String?,
    );

Map<String, dynamic> _$TxtToJson(Txt instance) => <String, dynamic>{
      'txtNo': instance.txtNo,
      'txt': instance.txt,
    };

TxtIEnumerableResult _$TxtIEnumerableResultFromJson(
        Map<String, dynamic> json) =>
    TxtIEnumerableResult(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => Txt.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TxtIEnumerableResultToJson(
        TxtIEnumerableResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

Unit _$UnitFromJson(Map<String, dynamic> json) => Unit(
      un: json['un'] as int?,
      descr: json['descr'] as String?,
    );

Map<String, dynamic> _$UnitToJson(Unit instance) => <String, dynamic>{
      'un': instance.un,
      'descr': instance.descr,
    };

UnitIEnumerableResult _$UnitIEnumerableResultFromJson(
        Map<String, dynamic> json) =>
    UnitIEnumerableResult(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => Unit.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$UnitIEnumerableResultToJson(
        UnitIEnumerableResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

Work _$WorkFromJson(Map<String, dynamic> json) => Work(
      ords: (json['ords'] as List<dynamic>?)
              ?.map((e) => Ord.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      ordLns: (json['ordLns'] as List<dynamic>?)
              ?.map((e) => OrdLn.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      r1s: (json['r1s'] as List<dynamic>?)
              ?.map((e) => R1.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      actorCustomers: (json['actorCustomers'] as List<dynamic>?)
              ?.map((e) => ActorCustomer.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      actorEmployees: (json['actorEmployees'] as List<dynamic>?)
              ?.map((e) => ActorEmployee.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$WorkToJson(Work instance) => <String, dynamic>{
      'ords': instance.ords?.map((e) => e.toJson()).toList(),
      'ordLns': instance.ordLns?.map((e) => e.toJson()).toList(),
      'r1s': instance.r1s?.map((e) => e.toJson()).toList(),
      'actorCustomers':
          instance.actorCustomers?.map((e) => e.toJson()).toList(),
      'actorEmployees':
          instance.actorEmployees?.map((e) => e.toJson()).toList(),
    };

WorkResult _$WorkResultFromJson(Map<String, dynamic> json) => WorkResult(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Work.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WorkResultToJson(WorkResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };
