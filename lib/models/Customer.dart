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


/** This is an auto generated class representing the Customer type in your schema. */
@immutable
class Customer extends Model {
  static const classType = const _CustomerModelType();
  final String id;
  final String? _name;
  final String? _phoneNumber;
  final String? _accountRepresentativeID;
  final List<Order>? _ordersByDate;
  final List<Order>? _ordersByStatusDate;

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
  
  String? get phoneNumber {
    return _phoneNumber;
  }
  
  String get accountRepresentativeID {
    try {
      return _accountRepresentativeID!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  List<Order>? get ordersByDate {
    return _ordersByDate;
  }
  
  List<Order>? get ordersByStatusDate {
    return _ordersByStatusDate;
  }
  
  const Customer._internal({required this.id, required name, phoneNumber, required accountRepresentativeID, ordersByDate, ordersByStatusDate}): _name = name, _phoneNumber = phoneNumber, _accountRepresentativeID = accountRepresentativeID, _ordersByDate = ordersByDate, _ordersByStatusDate = ordersByStatusDate;
  
  factory Customer({String? id, required String name, String? phoneNumber, required String accountRepresentativeID, List<Order>? ordersByDate, List<Order>? ordersByStatusDate}) {
    return Customer._internal(
      id: id == null ? UUID.getUUID() : id,
      name: name,
      phoneNumber: phoneNumber,
      accountRepresentativeID: accountRepresentativeID,
      ordersByDate: ordersByDate != null ? List<Order>.unmodifiable(ordersByDate) : ordersByDate,
      ordersByStatusDate: ordersByStatusDate != null ? List<Order>.unmodifiable(ordersByStatusDate) : ordersByStatusDate);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Customer &&
      id == other.id &&
      _name == other._name &&
      _phoneNumber == other._phoneNumber &&
      _accountRepresentativeID == other._accountRepresentativeID &&
      DeepCollectionEquality().equals(_ordersByDate, other._ordersByDate) &&
      DeepCollectionEquality().equals(_ordersByStatusDate, other._ordersByStatusDate);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Customer {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("phoneNumber=" + "$_phoneNumber" + ", ");
    buffer.write("accountRepresentativeID=" + "$_accountRepresentativeID");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Customer copyWith({String? id, String? name, String? phoneNumber, String? accountRepresentativeID, List<Order>? ordersByDate, List<Order>? ordersByStatusDate}) {
    return Customer(
      id: id ?? this.id,
      name: name ?? this.name,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      accountRepresentativeID: accountRepresentativeID ?? this.accountRepresentativeID,
      ordersByDate: ordersByDate ?? this.ordersByDate,
      ordersByStatusDate: ordersByStatusDate ?? this.ordersByStatusDate);
  }
  
  Customer.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _phoneNumber = json['phoneNumber'],
      _accountRepresentativeID = json['accountRepresentativeID'],
      _ordersByDate = json['ordersByDate'] is List
        ? (json['ordersByDate'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Order.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _ordersByStatusDate = json['ordersByStatusDate'] is List
        ? (json['ordersByStatusDate'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Order.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'phoneNumber': _phoneNumber, 'accountRepresentativeID': _accountRepresentativeID, 'ordersByDate': _ordersByDate?.map((e) => e?.toJson())?.toList(), 'ordersByStatusDate': _ordersByStatusDate?.map((e) => e?.toJson())?.toList()
  };

  static final QueryField ID = QueryField(fieldName: "customer.id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField PHONENUMBER = QueryField(fieldName: "phoneNumber");
  static final QueryField ACCOUNTREPRESENTATIVEID = QueryField(fieldName: "accountRepresentativeID");
  static final QueryField ORDERSBYDATE = QueryField(
    fieldName: "ordersByDate",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Order).toString()));
  static final QueryField ORDERSBYSTATUSDATE = QueryField(
    fieldName: "ordersByStatusDate",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Order).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Customer";
    modelSchemaDefinition.pluralName = "Customers";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Customer.NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Customer.PHONENUMBER,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Customer.ACCOUNTREPRESENTATIVEID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Customer.ORDERSBYDATE,
      isRequired: false,
      ofModelName: (Order).toString(),
      associatedKey: Order.CUSTOMERID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Customer.ORDERSBYSTATUSDATE,
      isRequired: false,
      ofModelName: (Order).toString(),
      associatedKey: Order.CUSTOMERID
    ));
  });
}

class _CustomerModelType extends ModelType<Customer> {
  const _CustomerModelType();
  
  @override
  Customer fromJson(Map<String, dynamic> jsonData) {
    return Customer.fromJson(jsonData);
  }
}