import ballerina/io;
import Connection.DatabaseConnection;

public function main() {
    DatabaseConnection:insertData(); //calling insertData() method
    io:println("Successfull!");
}
