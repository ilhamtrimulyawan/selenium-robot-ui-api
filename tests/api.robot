*** Settings ***
Library           RequestsLibrary
Library           OperatingSystem

*** Variables ***
${BASE_URL}       https://reqres.in/api

*** Test Cases ***
Get List Of Users
    Create Session    reqres    ${BASE_URL}
    ${response}=      Get Request    reqres    /users?page=2
    Should Be Equal As Numbers    ${response.status_code}    200
    Log    ${response.text}

Create User
    Create Session    reqres    ${BASE_URL}
    ${json_data}=     Create Dictionary    name=John    job=developer
    ${response}=      Post Request    reqres    /users    json=${json_data}
    Should Be Equal As Numbers    ${response.status_code}    201
    Log    ${response.text}

Update User
    Create Session    reqres    ${BASE_URL}
    ${json_data}=     Create Dictionary    name=John    job=senior developer
    ${response}=      PUT Request    reqres    /users/2    json=${json_data}
    Should Be Equal As Numbers    ${response.status_code}    200
    Log    ${response.text}

Delete User
    Create Session    reqres    ${BASE_URL}
    ${response}=      Delete Request    reqres    /users/2
    Should Be Equal As Numbers    ${response.status_code}    204
    Log    ${response.text}
