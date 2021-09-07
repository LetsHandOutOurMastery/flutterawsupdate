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


/** This is an auto generated class representing the CustomerSignUp type in your schema. */
@immutable
class CustomerSignUp extends Model {
  static const classType = const _CustomerSignUpModelType();
  final String id;
  final String? _custName;
  final String? _custPhone;
  final String? _custEmail;
  final TemporalDate? _custCreatedDate;
  final bool? _custVerifie;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get custName {
    return _custName;
  }
  
  String? get custPhone {
    return _custPhone;
  }
  
  String? get custEmail {
    return _custEmail;
  }
  
  TemporalDate? get custCreatedDate {
    return _custCreatedDate;
  }
  
  bool? get custVerifie {
    return _custVerifie;
  }
  
  const CustomerSignUp._internal({required this.id, custName, custPhone, custEmail, custCreatedDate, custVerifie}): _custName = custName, _custPhone = custPhone, _custEmail = custEmail, _custCreatedDate = custCreatedDate, _custVerifie = custVerifie;
  
  factory CustomerSignUp({String? id, String? custName, String? custPhone, String? custEmail, TemporalDate? custCreatedDate, bool? custVerifie}) {
    return CustomerSignUp._internal(
      id: id == null ? UUID.getUUID() : id,
      custName: custName,
      custPhone: custPhone,
      custEmail: custEmail,
      custCreatedDate: custCreatedDate,
      custVerifie: custVerifie);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerSignUp &&
      id == other.id &&
      _custName == other._custName &&
      _custPhone == other._custPhone &&
      _custEmail == other._custEmail &&
      _custCreatedDate == other._custCreatedDate &&
      _custVerifie == other._custVerifie;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("CustomerSignUp {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("custName=" + "$_custName" + ", ");
    buffer.write("custPhone=" + "$_custPhone" + ", ");
    buffer.write("custEmail=" + "$_custEmail" + ", ");
    buffer.write("custCreatedDate=" + (_custCreatedDate != null ? _custCreatedDate!.format() : "null") + ", ");
    buffer.write("custVerifie=" + (_custVerifie != null ? _custVerifie!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  CustomerSignUp copyWith({String? id, String? custName, String? custPhone, String? custEmail, TemporalDate? custCreatedDate, bool? custVerifie}) {
    return CustomerSignUp(
      id: id ?? this.id,
      custName: custName ?? this.custName,
      custPhone: custPhone ?? this.custPhone,
      custEmail: custEmail ?? this.custEmail,
      custCreatedDate: custCreatedDate ?? this.custCreatedDate,
      custVerifie: custVerifie ?? this.custVerifie);
  }
  
  CustomerSignUp.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _custName = json['custName'],
      _custPhone = json['custPhone'],
      _custEmail = json['custEmail'],
      _custCreatedDate = json['custCreatedDate'] != null ? TemporalDate.fromString(json['custCreatedDate']) : null,
      _custVerifie = json['custVerifie'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'custName': _custName, 'custPhone': _custPhone, 'custEmail': _custEmail, 'custCreatedDate': _custCreatedDate?.format(), 'custVerifie': _custVerifie
  };

  static final QueryField ID = QueryField(fieldName: "customerSignUp.id");
  static final QueryField CUSTNAME = QueryField(fieldName: "custName");
  static final QueryField CUSTPHONE = QueryField(fieldName: "custPhone");
  static final QueryField CUSTEMAIL = QueryField(fieldName: "custEmail");
  static final QueryField CUSTCREATEDDATE = QueryField(fieldName: "custCreatedDate");
  static final QueryField CUSTVERIFIE = QueryField(fieldName: "custVerifie");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CustomerSignUp";
    modelSchemaDefinition.pluralName = "CustomerSignUps";
    
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
      key: CustomerSignUp.CUSTNAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CustomerSignUp.CUSTPHONE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CustomerSignUp.CUSTEMAIL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CustomerSignUp.CUSTCREATEDDATE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CustomerSignUp.CUSTVERIFIE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
  });
}

class _CustomerSignUpModelType extends ModelType<CustomerSignUp> {
  const _CustomerSignUpModelType();
  
  @override
  CustomerSignUp fromJson(Map<String, dynamic> jsonData) {
    return CustomerSignUp.fromJson(jsonData);
  }
}