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


/** This is an auto generated class representing the AccountRepresentative type in your schema. */
@immutable
class AccountRepresentative extends Model {
  static const classType = const _AccountRepresentativeModelType();
  final String id;
  final List<Customer>? _customers;
  final List<Order>? _orders;
  final int? _orderTotal;
  final String? _salesPeriod;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  List<Customer>? get customers {
    return _customers;
  }
  
  List<Order>? get orders {
    return _orders;
  }
  
  int? get orderTotal {
    return _orderTotal;
  }
  
  String? get salesPeriod {
    return _salesPeriod;
  }
  
  const AccountRepresentative._internal({required this.id, customers, orders, orderTotal, salesPeriod}): _customers = customers, _orders = orders, _orderTotal = orderTotal, _salesPeriod = salesPeriod;
  
  factory AccountRepresentative({String? id, List<Customer>? customers, List<Order>? orders, int? orderTotal, String? salesPeriod}) {
    return AccountRepresentative._internal(
      id: id == null ? UUID.getUUID() : id,
      customers: customers != null ? List<Customer>.unmodifiable(customers) : customers,
      orders: orders != null ? List<Order>.unmodifiable(orders) : orders,
      orderTotal: orderTotal,
      salesPeriod: salesPeriod);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountRepresentative &&
      id == other.id &&
      DeepCollectionEquality().equals(_customers, other._customers) &&
      DeepCollectionEquality().equals(_orders, other._orders) &&
      _orderTotal == other._orderTotal &&
      _salesPeriod == other._salesPeriod;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("AccountRepresentative {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("orderTotal=" + (_orderTotal != null ? _orderTotal!.toString() : "null") + ", ");
    buffer.write("salesPeriod=" + "$_salesPeriod");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  AccountRepresentative copyWith({String? id, List<Customer>? customers, List<Order>? orders, int? orderTotal, String? salesPeriod}) {
    return AccountRepresentative(
      id: id ?? this.id,
      customers: customers ?? this.customers,
      orders: orders ?? this.orders,
      orderTotal: orderTotal ?? this.orderTotal,
      salesPeriod: salesPeriod ?? this.salesPeriod);
  }
  
  AccountRepresentative.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _customers = json['customers'] is List
        ? (json['customers'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Customer.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _orders = json['orders'] is List
        ? (json['orders'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Order.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _orderTotal = json['orderTotal'],
      _salesPeriod = json['salesPeriod'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'customers': _customers?.map((e) => e?.toJson())?.toList(), 'orders': _orders?.map((e) => e?.toJson())?.toList(), 'orderTotal': _orderTotal, 'salesPeriod': _salesPeriod
  };

  static final QueryField ID = QueryField(fieldName: "accountRepresentative.id");
  static final QueryField CUSTOMERS = QueryField(
    fieldName: "customers",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Customer).toString()));
  static final QueryField ORDERS = QueryField(
    fieldName: "orders",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Order).toString()));
  static final QueryField ORDERTOTAL = QueryField(fieldName: "orderTotal");
  static final QueryField SALESPERIOD = QueryField(fieldName: "salesPeriod");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "AccountRepresentative";
    modelSchemaDefinition.pluralName = "AccountRepresentatives";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: AccountRepresentative.CUSTOMERS,
      isRequired: false,
      ofModelName: (Customer).toString(),
      associatedKey: Customer.ACCOUNTREPRESENTATIVEID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: AccountRepresentative.ORDERS,
      isRequired: false,
      ofModelName: (Order).toString(),
      associatedKey: Order.ACCOUNTREPRESENTATIVEID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: AccountRepresentative.ORDERTOTAL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: AccountRepresentative.SALESPERIOD,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _AccountRepresentativeModelType extends ModelType<AccountRepresentative> {
  const _AccountRepresentativeModelType();
  
  @override
  AccountRepresentative fromJson(Map<String, dynamic> jsonData) {
    return AccountRepresentative.fromJson(jsonData);
  }
}