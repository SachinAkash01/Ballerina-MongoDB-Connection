import ballerina/io;
import Connection.DatabaseConnection;

public function main() {
    DatabaseConnection:insertData();
    io:println("Successfull!");
}
