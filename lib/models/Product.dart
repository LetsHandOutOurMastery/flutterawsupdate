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

import 'ModelProvider.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Product type in your schema. */
@immutable
class Product extends Model {
  static const classType = const _ProductModelType();
  final String id;
  final String? _name;
  final List<Order>? _orders;
  final List<Inventory>? _inventories;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get name {
    try {
      return _name!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  List<Order>? get orders {
    return _orders;
  }
  
  List<Inventory>? get inventories {
    return _inventories;
  }
  
  const Product._internal({required this.id, required name, orders, inventories}): _name = name, _orders = orders, _inventories = inventories;
  
  factory Product({String? id, required String name, List<Order>? orders, List<Inventory>? inventories}) {
    return Product._internal(
      id: id == null ? UUID.getUUID() : id,
      name: name,
      orders: orders != null ? List<Order>.unmodifiable(orders) : orders,
      inventories: inventories != null ? List<Inventory>.unmodifiable(inventories) : inventories);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Product &&
      id == other.id &&
      _name == other._name &&
      DeepCollectionEquality().equals(_orders, other._orders) &&
      DeepCollectionEquality().equals(_inventories, other._inventories);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Product {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Product copyWith({String? id, String? name, List<Order>? orders, List<Inventory>? inventories}) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      orders: orders ?? this.orders,
      inventories: inventories ?? this.inventories);
  }
  
  Product.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _orders = json['orders'] is List
        ? (json['orders'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Order.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _inventories = json['inventories'] is List
        ? (json['inventories'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Inventory.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'orders': _orders?.map((e) => e?.toJson())?.toList(), 'inventories': _inventories?.map((e) => e?.toJson())?.toList()
  };

  static final QueryField ID = QueryField(fieldName: "product.id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField ORDERS = QueryField(
    fieldName: "orders",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Order).toString()));
  static final QueryField INVENTORIES = QueryField(
    fieldName: "inventories",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Inventory).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Product";
    modelSchemaDefinition.pluralName = "Products";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Product.NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Product.ORDERS,
      isRequired: false,
      ofModelName: (Order).toString(),
      associatedKey: Order.PRODUCTID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Product.INVENTORIES,
      isRequired: false,
      ofModelName: (Inventory).toString(),
      associatedKey: Inventory.PRODUCTID
    ));
  });
}

class _ProductModelType extends ModelType<Product> {
  const _ProductModelType();
  
  @override
  Product fromJson(Map<String, dynamic> jsonData) {
    return Product.fromJson(jsonData);
  }
}