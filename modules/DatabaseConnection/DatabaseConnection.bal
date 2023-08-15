// import ballerina/io;
import ballerinax/mongodb;

mongodb:ConnectionConfig mongoConfig = {
    connection: {
        url: "mongodb+srv://<username>:<password>@gramacheck.t8cotjr.mongodb.net/?retryWrites=true&w=majority"
    },
    databaseName: "databaseName"
};
mongodb:Client mongoClient = checkpanic new (mongoConfig);

//Insert data to collection
public function insertData() {
    string collection = "Requests";
    map<json> doc = { "ID": 2, "NIC": "1234", "address":{
                        "no":"100", "street":"Park Street", "village":"Thibirigasyaya", "city":"Colombo","postalcode": 40000
                    },
                    "date": "", "status": "completed"};

    checkpanic mongoClient->insert(doc, collection);
}

//Update data on a collection
// public function updateData() {
//     string collection = "CollectionName";
//     map<json> filter = {"NIC": "03226"};
//     map<json> set = {"status": "Completed"};

//     var result = mongoClient->update(collection, filter, set, true, false);
// }