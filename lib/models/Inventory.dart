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


/** This is an auto generated class representing the Inventory type in your schema. */
@immutable
class Inventory extends Model {
  static const classType = const _InventoryModelType();
  final String id;
  final String? _productID;
  final String? _warehouseID;
  final int? _inventoryAmount;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get productID {
    try {
      return _productID!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String get warehouseID {
    try {
      return _warehouseID!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  int get inventoryAmount {
    try {
      return _inventoryAmount!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  const Inventory._internal({required this.id, required productID, required warehouseID, required inventoryAmount}): _productID = productID, _warehouseID = warehouseID, _inventoryAmount = inventoryAmount;
  
  factory Inventory({String? id, required String productID, required String warehouseID, required int inventoryAmount}) {
    return Inventory._internal(
      id: id == null ? UUID.getUUID() : id,
      productID: productID,
      warehouseID: warehouseID,
      inventoryAmount: inventoryAmount);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Inventory &&
      id == other.id &&
      _productID == other._productID &&
      _warehouseID == other._warehouseID &&
      _inventoryAmount == other._inventoryAmount;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Inventory {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("productID=" + "$_productID" + ", ");
    buffer.write("warehouseID=" + "$_warehouseID" + ", ");
    buffer.write("inventoryAmount=" + (_inventoryAmount != null ? _inventoryAmount!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Inventory copyWith({String? id, String? productID, String? warehouseID, int? inventoryAmount}) {
    return Inventory(
      id: id ?? this.id,
      productID: productID ?? this.productID,
      warehouseID: warehouseID ?? this.warehouseID,
      inventoryAmount: inventoryAmount ?? this.inventoryAmount);
  }
  
  Inventory.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _productID = json['productID'],
      _warehouseID = json['warehouseID'],
      _inventoryAmount = json['inventoryAmount'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'productID': _productID, 'warehouseID': _warehouseID, 'inventoryAmount': _inventoryAmount
  };

  static final QueryField ID = QueryField(fieldName: "inventory.id");
  static final QueryField PRODUCTID = QueryField(fieldName: "productID");
  static final QueryField WAREHOUSEID = QueryField(fieldName: "warehouseID");
  static final QueryField INVENTORYAMOUNT = QueryField(fieldName: "inventoryAmount");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Inventory";
    modelSchemaDefinition.pluralName = "Inventories";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Inventory.PRODUCTID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Inventory.WAREHOUSEID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Inventory.INVENTORYAMOUNT,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
  });
}

class _InventoryModelType extends ModelType<Inventory> {
  const _InventoryModelType();
  
  @override
  Inventory fromJson(Map<String, dynamic> jsonData) {
    return Inventory.fromJson(jsonData);
  }
}