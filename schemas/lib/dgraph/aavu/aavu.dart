@JS()
library aavu_schema;

import 'package:aavu_schemas/dgraph/aavu/objects.dart';
import 'package:dstore/dstore.dart';
import "package:js/js.dart";

part "aavu.dstore.dart";

@GraphqlSchemaSource(
    path: "./schema_source/dgraphq/aavu.graphql",
    schemaUplodDetails: SchemaUploadRequest(
      url: "http://localhost:8080/admin",
    ),
    uploadSchema: true,
    database: GraphqlDatabase.dgraph,
    revision: "0.1.2")
class AaavuSchema {
  late Objects objects;
}
