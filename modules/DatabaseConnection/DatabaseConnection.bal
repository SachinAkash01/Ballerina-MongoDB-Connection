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
