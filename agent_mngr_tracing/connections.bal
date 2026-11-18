import ballerinax/ai.openai;

final openai:ModelProvider openaiModelprovider = check new (string `${openaiApiKey}`, "gpt-4o-mini");
