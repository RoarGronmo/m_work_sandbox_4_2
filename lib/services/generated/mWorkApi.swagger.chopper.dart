//Generated code

part of 'mWorkApi.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$MWorkApi extends MWorkApi {
  _$MWorkApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = MWorkApi;

  @override
  Future<Response<StringInt32IDictionaryResult>> orderTextTypesGet() {
    final $url = '/Order/textTypes';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<StringInt32IDictionaryResult,
        StringInt32IDictionaryResult>($request);
  }

  @override
  Future<Response<TxtIEnumerableResult>> orderFirmsFrmNoTextsGet(
      {required int? frmNo, dynamic txtTp, int? lang}) {
    final $url = '/Order/firms/${frmNo}/texts';
    final $params = <String, dynamic>{'txtTp': txtTp, 'lang': lang};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<TxtIEnumerableResult, TxtIEnumerableResult>($request);
  }

  @override
  Future<Response<UnitIEnumerableResult>> orderFirmsFrmNoUnitsGet(
      {required int? frmNo}) {
    final $url = '/Order/firms/${frmNo}/units';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<UnitIEnumerableResult, UnitIEnumerableResult>($request);
  }

  @override
  Future<Response<ProdIEnumerableResult>> orderFirmsFrmNoProductsGet(
      {required int? frmNo}) {
    final $url = '/Order/firms/${frmNo}/products';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ProdIEnumerableResult, ProdIEnumerableResult>($request);
  }

  @override
  Future<Response<ProdResult>> orderFirmsFrmNoProductsProdNoGet(
      {required int? frmNo, required String? prodNo}) {
    final $url = '/Order/firms/${frmNo}/products/${prodNo}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ProdResult, ProdResult>($request);
  }

  @override
  Future<Response<R10IEnumerableResult>> orderFirmsFrmNoOfficesGet(
      {required int? frmNo}) {
    final $url = '/Order/firms/${frmNo}/offices';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<R10IEnumerableResult, R10IEnumerableResult>($request);
  }

  @override
  Future<Response<R10IEnumerableResult>> orderFirmsFrmNoOfficesRNoGet(
      {required int? frmNo, required String? rNo}) {
    final $url = '/Order/firms/${frmNo}/offices/${rNo}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<R10IEnumerableResult, R10IEnumerableResult>($request);
  }

  @override
  Future<Response<R1IEnumerableResult>> orderFirmsFrmNoSectionsGet(
      {required int? frmNo, String? r10}) {
    final $url = '/Order/firms/${frmNo}/sections';
    final $params = <String, dynamic>{'r10': r10};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<R1IEnumerableResult, R1IEnumerableResult>($request);
  }

  @override
  Future<Response<R1Result>> orderFirmsFrmNoSectionsRNoGet(
      {required int? frmNo, required int? rNo}) {
    final $url = '/Order/firms/${frmNo}/sections/${rNo}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<R1Result, R1Result>($request);
  }

  @override
  Future<Response<ActorCustomerResult>> orderFirmsFrmNoCustomersCustNoGet(
      {required int? frmNo, required int? custNo}) {
    final $url = '/Order/firms/${frmNo}/customers/${custNo}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ActorCustomerResult, ActorCustomerResult>($request);
  }

  @override
  Future<Response<ActorDeliveryAddressIEnumerableResult>>
      orderFirmsFrmNoActorsActNoDeliveryAddressesGet(
          {required int? frmNo, required int? actNo}) {
    final $url = '/Order/firms/${frmNo}/actors/${actNo}/deliveryAddresses';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ActorDeliveryAddressIEnumerableResult,
        ActorDeliveryAddressIEnumerableResult>($request);
  }

  @override
  Future<Response<ActorContactPersonIEnumerableResult>>
      orderFirmsFrmNoActorsActNoContactPersonsGet(
          {required int? frmNo, required int? actNo}) {
    final $url = '/Order/firms/${frmNo}/actors/${actNo}/contactPersons';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ActorContactPersonIEnumerableResult,
        ActorContactPersonIEnumerableResult>($request);
  }

  @override
  Future<Response<WorkResult>> orderFirmsFrmNoOfficesR10WorkGet(
      {required int? frmNo, required String? r10}) {
    final $url = '/Order/firms/${frmNo}/offices/${r10}/work';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<WorkResult, WorkResult>($request);
  }
}
