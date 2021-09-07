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
import 'AccountRepresentative.dart';
import 'Customer.dart';
import 'CustomerSignUp.dart';
import 'Employee.dart';
import 'IDIncrementation.dart';
import 'Inventory.dart';
import 'ItemMaster.dart';
import 'JSONtest.dart';
import 'Order.dart';
import 'Product.dart';
import 'Signup.dart';
import 'StoreItemCombo.dart';
import 'StoreItems.dart';
import 'StoreMaster.dart';
import 'Warehouse.dart';

export 'AccountRepresentative.dart';
export 'Customer.dart';
export 'CustomerSignUp.dart';
export 'Employee.dart';
export 'IDIncrementation.dart';
export 'Inventory.dart';
export 'ItemMaster.dart';
export 'JSONtest.dart';
export 'Order.dart';
export 'Product.dart';
export 'Signup.dart';
export 'StoreItemCombo.dart';
export 'StoreItems.dart';
export 'StoreMaster.dart';
export 'Warehouse.dart';

class ModelProvider implements ModelProviderInterface {
  @override
  String version = "5551e58c071bcb4a741b5878d161e8e8";
  @override
  List<ModelSchema> modelSchemas = [AccountRepresentative.schema, Customer.schema, CustomerSignUp.schema, Employee.schema, IDIncrementation.schema, Inventory.schema, ItemMaster.schema, JSONtest.schema, Order.schema, Product.schema, Signup.schema, StoreItemCombo.schema, StoreItems.schema, StoreMaster.schema, Warehouse.schema];
  static final ModelProvider _instance = ModelProvider();

  static ModelProvider get instance => _instance;
  
  ModelType getModelTypeByModelName(String modelName) {
    switch(modelName) {
    case "AccountRepresentative": {
    return AccountRepresentative.classType;
    }
    break;
    case "Customer": {
    return Customer.classType;
    }
    break;
    case "CustomerSignUp": {
    return CustomerSignUp.classType;
    }
    break;
    case "Employee": {
    return Employee.classType;
    }
    break;
    case "IDIncrementation": {
    return IDIncrementation.classType;
    }
    break;
    case "Inventory": {
    return Inventory.classType;
    }
    break;
    case "ItemMaster": {
    return ItemMaster.classType;
    }
    break;
    case "JSONtest": {
    return JSONtest.classType;
    }
    break;
    case "Order": {
    return Order.classType;
    }
    break;
    case "Product": {
    return Product.classType;
    }
    break;
    case "Signup": {
    return Signup.classType;
    }
    break;
    case "StoreItemCombo": {
    return StoreItemCombo.classType;
    }
    break;
    case "StoreItems": {
    return StoreItems.classType;
    }
    break;
    case "StoreMaster": {
    return StoreMaster.classType;
    }
    break;
    case "Warehouse": {
    return Warehouse.classType;
    }
    break;
    default: {
    throw Exception("Failed to find model in model provider for model name: " + modelName);
    }
    }
  }
}