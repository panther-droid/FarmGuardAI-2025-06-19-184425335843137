import LLM "mo:llm";

actor FarmGuard {

  public func getAdvice(symptom : Text) : async Text {
    let response = await LLM.chat(#Llama3_1_8B, [
      {
        role = #system_;
        content = "You are FarmGuard, an AI assistant helping Kenyan farmers identify and treat crop diseases. Give simple, clear advice. Suggest affordable, local solutions.";
      },
      {
        role = #user;
        content = symptom;
      }
    ]);
    return response;
  };

};
