//Http
Http http = new Http();

//HttpRequest
HttpRequest request = new HttpRequest();

//Set Endpoint
request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');

//Set Method
request.setMethod('GET');

//Send Request
HttpResponse response = http.send(request);

//Analyse request
if(response.getStatusCode() == 200) {
    //Deserialize response JSON string into collections.

    Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());

    //Cast the values in the 'animals' key as a list
    List<Object> animals = (List<Object>) results.get('animals');
    System.debug('');
    for(Object animal: animals) {
        System.debug(' ');
    }
}

