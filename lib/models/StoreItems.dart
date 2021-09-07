/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// ignore_for_file: public_member_api_docs

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the StoreItems type in your schema. */
@immutable
class StoreItems extends Model {
  static const classType = const _StoreItemsModelType();
  final String id;
  final String? _StoreID;
  final String? _ItemID;
  final String? _Price;
  final String? _OfferPrice;
  final String? _InventoryBalance;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get StoreID {
    try {
      return _StoreID!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String get ItemID {
    try {
      return _ItemID!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String? get Price {
    return _Price;
  }
  
  String? get OfferPrice {
    return _OfferPrice;
  }
  
  String? get InventoryBalance {
    return _InventoryBalance;
  }
  
  const StoreItems._internal({required this.id, required StoreID, required ItemID, Price, OfferPrice, InventoryBalance}): _StoreID = StoreID, _ItemID = ItemID, _Price = Price, _OfferPrice = OfferPrice, _InventoryBalance = InventoryBalance;
  
  factory StoreItems({String? id, required String StoreID, required String ItemID, String? Price, String? OfferPrice, String? InventoryBalance}) {
    return StoreItems._internal(
      id: id == null ? UUID.getUUID() : id,
      StoreID: StoreID,
      ItemID: ItemID,
      Price: Price,
      OfferPrice: OfferPrice,
      InventoryBalance: InventoryBalance);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StoreItems &&
      id == other.id &&
      _StoreID == other._StoreID &&
      _ItemID == other._ItemID &&
      _Price == other._Price &&
      _OfferPrice == other._OfferPrice &&
      _InventoryBalance == other._InventoryBalance;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("StoreItems {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("StoreID=" + "$_StoreID" + ", ");
    buffer.write("ItemID=" + "$_ItemID" + ", ");
    buffer.write("Price=" + "$_Price" + ", ");
    buffer.write("OfferPrice=" + "$_OfferPrice" + ", ");
    buffer.write("InventoryBalance=" + "$_InventoryBalance");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  StoreItems copyWith({String? id, String? StoreID, String? ItemID, String? Price, String? OfferPrice, String? InventoryBalance}) {
    return StoreItems(
      id: id ?? this.id,
      StoreID: StoreID ?? this.StoreID,
      ItemID: ItemID ?? this.ItemID,
      Price: Price ?? this.Price,
      OfferPrice: OfferPrice ?? this.OfferPrice,
      InventoryBalance: InventoryBalance ?? this.InventoryBalance);
  }
  
  StoreItems.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _StoreID = json['StoreID'],
      _ItemID = json['ItemID'],
      _Price = json['Price'],
      _OfferPrice = json['OfferPrice'],
      _InventoryBalance = json['InventoryBalance'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'StoreID': _StoreID, 'ItemID': _ItemID, 'Price': _Price, 'OfferPrice': _OfferPrice, 'InventoryBalance': _InventoryBalance
  };

  static final QueryField ID = QueryField(fieldName: "storeItems.id");
  static final QueryField STOREID = QueryField(fieldName: "StoreID");
  static final QueryField ITEMID = QueryField(fieldName: "ItemID");
  static final QueryField PRICE = QueryField(fieldName: "Price");
  static final QueryField OFFERPRICE = QueryField(fieldName: "OfferPrice");
  static final QueryField INVENTORYBALANCE = QueryField(fieldName: "InventoryBalance");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "StoreItems";
    modelSchemaDefinition.pluralName = "StoreItems";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: StoreItems.STOREID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: StoreItems.ITEMID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: StoreItems.PRICE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: StoreItems.OFFERPRICE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: StoreItems.INVENTORYBALANCE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _StoreItemsModelType extends ModelType<StoreItems> {
  const _StoreItemsModelType();
  
  @override
  StoreItems fromJson(Map<String, dynamic> jsonData) {
    return StoreItems.fromJson(jsonData);
  }
}