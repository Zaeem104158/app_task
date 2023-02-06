// To parse this JSON data, do
//
//     final appTaskModel = appTaskModelFromJson(jsonString);

import 'dart:convert';

AppTaskModel appTaskModelFromJson(String str) => AppTaskModel.fromJson(json.decode(str));

String appTaskModelToJson(AppTaskModel data) => json.encode(data.toJson());

class AppTaskModel {
    AppTaskModel({
        required this.parentConsignmentChargesRequestOid,
        required this.parentConsignmentChargeOid,
        required this.orderCnRequest,
        required this.senderInfo,
        required this.consignmentChargesRequestParams,
    });

    String parentConsignmentChargesRequestOid;
    String parentConsignmentChargeOid;
    OrderCnRequest orderCnRequest;
    SenderInfo senderInfo;
    List<ConsignmentChargesRequestParam> consignmentChargesRequestParams;

    factory AppTaskModel.fromJson(Map<String, dynamic> json) => AppTaskModel(
        parentConsignmentChargesRequestOid: json["parent_consignment_charges_request_oid"],
        parentConsignmentChargeOid: json["parent_consignment_charge_oid"],
        orderCnRequest: OrderCnRequest.fromJson(json["orderCnRequest"]),
        senderInfo: SenderInfo.fromJson(json["senderInfo"]),
        consignmentChargesRequestParams: List<ConsignmentChargesRequestParam>.from(json["consignmentChargesRequestParams"].map((x) => ConsignmentChargesRequestParam.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "parent_consignment_charges_request_oid": parentConsignmentChargesRequestOid,
        "parent_consignment_charge_oid": parentConsignmentChargeOid,
        "orderCnRequest": orderCnRequest.toJson(),
        "senderInfo": senderInfo.toJson(),
        "consignmentChargesRequestParams": List<dynamic>.from(consignmentChargesRequestParams.map((x) => x.toJson())),
    };
}

class ConsignmentChargesRequestParam {
    ConsignmentChargesRequestParam({
        required this.oid,
        required this.parentOid,
        required this.requestTypeId,
        required this.serviceTypeId,
        this.categoryId,
        required this.isPackaging,
        this.packagingId,
        required this.isVolumetricWeight,
        required this.lengthValue,
        required this.widthValue,
        required this.heightValue,
        required this.productWeight,
        required this.isDhakaCity,
        required this.isOtherCity,
        required this.isUpazila,
        required this.homeDelivery,
        required this.isCheckCod,
        required this.collectableAmount,
    });

    String oid;
    String parentOid;
    String requestTypeId;
    String serviceTypeId;
    dynamic categoryId;
    String isPackaging;
    dynamic packagingId;
    String isVolumetricWeight;
    String lengthValue;
    String widthValue;
    String heightValue;
    String productWeight;
    String isDhakaCity;
    String isOtherCity;
    String isUpazila;
    String homeDelivery;
    String isCheckCod;
    String collectableAmount;

    factory ConsignmentChargesRequestParam.fromJson(Map<String, dynamic> json) => ConsignmentChargesRequestParam(
        oid: json["oid"],
        parentOid: json["parent_oid"],
        requestTypeId: json["request_type_id"],
        serviceTypeId: json["service_type_id"],
        categoryId: json["category_id"],
        isPackaging: json["is_packaging"],
        packagingId: json["packaging_id"],
        isVolumetricWeight: json["is_volumetric_weight"],
        lengthValue: json["length_value"],
        widthValue: json["width_value"],
        heightValue: json["height_value"],
        productWeight: json["product_weight"],
        isDhakaCity: json["is_dhaka_city"],
        isOtherCity: json["is_other_city"],
        isUpazila: json["is_upazila"],
        homeDelivery: json["home_delivery"],
        isCheckCod: json["is_check_cod"],
        collectableAmount: json["collectable_amount"],
    );

    Map<String, dynamic> toJson() => {
        "oid": oid,
        "parent_oid": parentOid,
        "request_type_id": requestTypeId,
        "service_type_id": serviceTypeId,
        "category_id": categoryId,
        "is_packaging": isPackaging,
        "packaging_id": packagingId,
        "is_volumetric_weight": isVolumetricWeight,
        "length_value": lengthValue,
        "width_value": widthValue,
        "height_value": heightValue,
        "product_weight": productWeight,
        "is_dhaka_city": isDhakaCity,
        "is_other_city": isOtherCity,
        "is_upazila": isUpazila,
        "home_delivery": homeDelivery,
        "is_check_cod": isCheckCod,
        "collectable_amount": collectableAmount,
    };
}

class OrderCnRequest {
    OrderCnRequest({
        required this.cnRequestId,
        required this.serviceTypeId,
        required this.requestTypeId,
        required this.homeDelivery,
        required this.payer,
        required this.paymentType,
    });

    String cnRequestId;
    String serviceTypeId;
    String requestTypeId;
    String homeDelivery;
    String payer;
    String paymentType;

    factory OrderCnRequest.fromJson(Map<String, dynamic> json) => OrderCnRequest(
        cnRequestId: json["cn_request_id"],
        serviceTypeId: json["service_type_id"],
        requestTypeId: json["request_type_id"],
        homeDelivery: json["home_delivery"],
        payer: json["payer"],
        paymentType: json["payment_type"],
    );

    Map<String, dynamic> toJson() => {
        "cn_request_id": cnRequestId,
        "service_type_id": serviceTypeId,
        "request_type_id": requestTypeId,
        "home_delivery": homeDelivery,
        "payer": payer,
        "payment_type": paymentType,
    };
}

class SenderInfo {
    SenderInfo({
        required this.senderNameEn,
        required this.senderNameBn,
        required this.senderType,
        required this.senderPhone,
        required this.senderEmail,
        required this.senderNid,
        required this.senderDivisionOid,
        required this.senderDistrictOid,
        required this.senderThanaOid,
        required this.senderPostOfficeOid,
        required this.senderAddress,
        required this.senderHubOid,
    });

    String senderNameEn;
    String senderNameBn;
    String senderType;
    String senderPhone;
    String senderEmail;
    String senderNid;
    String senderDivisionOid;
    String senderDistrictOid;
    String senderThanaOid;
    String senderPostOfficeOid;
    String senderAddress;
    String senderHubOid;

    factory SenderInfo.fromJson(Map<String, dynamic> json) => SenderInfo(
        senderNameEn: json["sender_name_en"],
        senderNameBn: json["sender_name_bn"],
        senderType: json["sender_type"],
        senderPhone: json["sender_phone"],
        senderEmail: json["sender_email"],
        senderNid: json["sender_nid"],
        senderDivisionOid: json["sender_division_oid"],
        senderDistrictOid: json["sender_district_oid"],
        senderThanaOid: json["sender_thana_oid"],
        senderPostOfficeOid: json["sender_post_office_oid"],
        senderAddress: json["sender_address"],
        senderHubOid: json["sender_hub_oid"],
    );

    Map<String, dynamic> toJson() => {
        "sender_name_en": senderNameEn,
        "sender_name_bn": senderNameBn,
        "sender_type": senderType,
        "sender_phone": senderPhone,
        "sender_email": senderEmail,
        "sender_nid": senderNid,
        "sender_division_oid": senderDivisionOid,
        "sender_district_oid": senderDistrictOid,
        "sender_thana_oid": senderThanaOid,
        "sender_post_office_oid": senderPostOfficeOid,
        "sender_address": senderAddress,
        "sender_hub_oid": senderHubOid,
    };
}
