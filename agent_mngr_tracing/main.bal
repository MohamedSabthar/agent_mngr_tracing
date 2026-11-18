import ballerina/http;
import ballerinax/amp;

listener amp:Listener ampListener = new ();

service amp:ChatService / on ampListener {
    resource function post chat(@http:Payload amp:ChatRequest request)
            returns amp:ChatResponse|error {
        string reply = check aiAgent.run(request.message, sessionId = request.sessionId);
        return {response: reply};
    }
}
