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


/** This is an auto generated class representing the Order type in your schema. */
@immutable
class Order extends Model {
  static const classType = const _OrderModelType();
  final String id;
  final String? _customerID;
  final String? _accountRepresentativeID;
  final String? _productID;
  final String? _status;
  final int? _amount;
  final String? _date;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get customerID {
    try {
      return _customerID!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String get accountRepresentativeID {
    try {
      return _accountRepresentativeID!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String get productID {
    try {
      return _productID!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String get status {
    try {
      return _status!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  int get amount {
    try {
      return _amount!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String get date {
    try {
      return _date!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  const Order._internal({required this.id, required customerID, required accountRepresentativeID, required productID, required status, required amount, required date}): _customerID = customerID, _accountRepresentativeID = accountRepresentativeID, _productID = productID, _status = status, _amount = amount, _date = date;
  
  factory Order({String? id, required String customerID, required String accountRepresentativeID, required String productID, required String status, required int amount, required String date}) {
    return Order._internal(
      id: id == null ? UUID.getUUID() : id,
      customerID: customerID,
      accountRepresentativeID: accountRepresentativeID,
      productID: productID,
      status: status,
      amount: amount,
      date: date);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Order &&
      id == other.id &&
      _customerID == other._customerID &&
      _accountRepresentativeID == other._accountRepresentativeID &&
      _productID == other._productID &&
      _status == other._status &&
      _amount == other._amount &&
      _date == other._date;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Order {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("customerID=" + "$_customerID" + ", ");
    buffer.write("accountRepresentativeID=" + "$_accountRepresentativeID" + ", ");
    buffer.write("productID=" + "$_productID" + ", ");
    buffer.write("status=" + "$_status" + ", ");
    buffer.write("amount=" + (_amount != null ? _amount!.toString() : "null") + ", ");
    buffer.write("date=" + "$_date");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Order copyWith({String? id, String? customerID, String? accountRepresentativeID, String? productID, String? status, int? amount, String? date}) {
    return Order(
      id: id ?? this.id,
      customerID: customerID ?? this.customerID,
      accountRepresentativeID: accountRepresentativeID ?? this.accountRepresentativeID,
      productID: productID ?? this.productID,
      status: status ?? this.status,
      amount: amount ?? this.amount,
      date: date ?? this.date);
  }
  
  Order.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _customerID = json['customerID'],
      _accountRepresentativeID = json['accountRepresentativeID'],
      _productID = json['productID'],
      _status = json['status'],
      _amount = json['amount'],
      _date = json['date'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'customerID': _customerID, 'accountRepresentativeID': _accountRepresentativeID, 'productID': _productID, 'status': _status, 'amount': _amount, 'date': _date
  };

  static final QueryField ID = QueryField(fieldName: "order.id");
  static final QueryField CUSTOMERID = QueryField(fieldName: "customerID");
  static final QueryField ACCOUNTREPRESENTATIVEID = QueryField(fieldName: "accountRepresentativeID");
  static final QueryField PRODUCTID = QueryField(fieldName: "productID");
  static final QueryField STATUS = QueryField(fieldName: "status");
  static final QueryField AMOUNT = QueryField(fieldName: "amount");
  static final QueryField DATE = QueryField(fieldName: "date");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Order";
    modelSchemaDefinition.pluralName = "Orders";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Order.CUSTOMERID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Order.ACCOUNTREPRESENTATIVEID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Order.PRODUCTID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Order.STATUS,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Order.AMOUNT,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Order.DATE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _OrderModelType extends ModelType<Order> {
  const _OrderModelType();
  
  @override
  Order fromJson(Map<String, dynamic> jsonData) {
    return Order.fromJson(jsonData);
  }
}