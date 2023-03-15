var payload_obj = { subnet_id: "subnet-0532aed3fee1b727d", name: vivek, email: "vivekdhake74@gmail.com" };
var payload_json = JSON.stringify(payload_obj);

var myParams = {
    FunctionName: 'addCharacterSheet',
    InvocationType: 'RequestResponse',
    LogType: 'None',
    Payload: payload_json
  }

lambda.invoke(myParams, function(err, data){
      ...
    });