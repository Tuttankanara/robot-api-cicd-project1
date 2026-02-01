*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${BASE_URL}    https://jsonplaceholder.typicode.com

*** Keywords ***

 # Create a reusable HTTP session with SSL verification enabled
 # 'json_api' is the session name used for all requests

Create API Session
    Create Session    json_api    ${BASE_URL}    verify=True

Create Post
    [Arguments]    ${payload}
    ${response}=    POST On Session    json_api    /posts    json=${payload}
    Should Be Equal As Integers    ${response.status_code}    201
    RETURN    ${response.json()}

Get Post
    [Arguments]    ${post_id}
    ${response}=    GET On Session    json_api    /posts/${post_id}
    Should Be Equal As Integers    ${response.status_code}    200
    RETURN    ${response.json()}

Update Post
    [Arguments]    ${post_id}    ${payload}
    ${response}=    PUT On Session    json_api    /posts/${post_id}    json=${payload}
    Should Be Equal As Integers    ${response.status_code}    200
    RETURN    ${response.json()}

Delete Post
    [Arguments]    ${post_id}
    ${response}=    DELETE On Session    json_api    /posts/${post_id}
    Should Be Equal As Integers    ${response.status_code}    200