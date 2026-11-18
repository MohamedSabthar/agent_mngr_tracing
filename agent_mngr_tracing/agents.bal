import ballerina/ai;

final ai:Agent aiAgent = check new (
    systemPrompt = {role: string `Math Tutor`, instructions: string `Use tools and answer the questions`}, model = openaiModelprovider, tools = [sum, mult, substract, div]
);

@ai:AgentTool
isolated function sum(float a, float b) returns float {
    return a + b;

}

@ai:AgentTool
isolated function mult(float a, float b) returns float {
    return a * b;

}

@ai:AgentTool
isolated function substract(float a, float b) returns float {
    return a - b;

}

@ai:AgentTool
isolated function div(float a, float b) returns float {
    return a / b;

}
