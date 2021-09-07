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


/** This is an auto generated class representing the Signup type in your schema. */
@immutable
class Signup extends Model {
  static const classType = const _SignupModelType();
  final String id;
  final String? _Name;
  final int? _Phonenumber;
  final String? _Emailaddress;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get Name {
    return _Name;
  }
  
  int? get Phonenumber {
    return _Phonenumber;
  }
  
  String? get Emailaddress {
    return _Emailaddress;
  }
  
  const Signup._internal({required this.id, Name, Phonenumber, Emailaddress}): _Name = Name, _Phonenumber = Phonenumber, _Emailaddress = Emailaddress;
  
  factory Signup({String? id, String? Name, int? Phonenumber, String? Emailaddress}) {
    return Signup._internal(
      id: id == null ? UUID.getUUID() : id,
      Name: Name,
      Phonenumber: Phonenumber,
      Emailaddress: Emailaddress);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Signup &&
      id == other.id &&
      _Name == other._Name &&
      _Phonenumber == other._Phonenumber &&
      _Emailaddress == other._Emailaddress;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Signup {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("Name=" + "$_Name" + ", ");
    buffer.write("Phonenumber=" + (_Phonenumber != null ? _Phonenumber!.toString() : "null") + ", ");
    buffer.write("Emailaddress=" + "$_Emailaddress");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Signup copyWith({String? id, String? Name, int? Phonenumber, String? Emailaddress}) {
    return Signup(
      id: id ?? this.id,
      Name: Name ?? this.Name,
      Phonenumber: Phonenumber ?? this.Phonenumber,
      Emailaddress: Emailaddress ?? this.Emailaddress);
  }
  
  Signup.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _Name = json['Name'],
      _Phonenumber = json['Phonenumber'],
      _Emailaddress = json['Emailaddress'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'Name': _Name, 'Phonenumber': _Phonenumber, 'Emailaddress': _Emailaddress
  };

  static final QueryField ID = QueryField(fieldName: "signup.id");
  static final QueryField NAME = QueryField(fieldName: "Name");
  static final QueryField PHONENUMBER = QueryField(fieldName: "Phonenumber");
  static final QueryField EMAILADDRESS = QueryField(fieldName: "Emailaddress");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Signup";
    modelSchemaDefinition.pluralName = "Signups";
    
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
      key: Signup.NAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Signup.PHONENUMBER,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Signup.EMAILADDRESS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _SignupModelType extends ModelType<Signup> {
  const _SignupModelType();
  
  @override
  Signup fromJson(Map<String, dynamic> jsonData) {
    return Signup.fromJson(jsonData);
  }
}