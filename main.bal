import ballerina/http;
import ballerina/io;

configurable string serviceUrl = "http://localhost:9090";

public function main() returns error? {
    // Creates a new client with the Basic REST service URL.
    http:Client clientEp = check new (serviceUrl);
    http:ClientError? result = clientEp->/;

    io:println("\nEndppoint called: " + serviceUrl);
}
