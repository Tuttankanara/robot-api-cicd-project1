*** Settings ***
Resource    ../resources/api_keywords.robot
Variables   ../data/test_data.json
Suite Setup    Create API Session

*** Test Cases ***
 # Test creating a post and ensuring the response contains an 'id'
Create Post Test
    ${response}=    Create Post    ${new_post}
    Dictionary Should Contain Key    ${response}    id
    Log    Post created successfully
    
 # Note: '1' refers to the post ID in the API placeholder data
Read Existing Post Test
    ${response}=    Get Post    1
    Should Be Equal As Integers    ${response['id']}    1

Update Existing Post Test
    ${response}=    Update Post    1    ${updated_post}
    Should Be Equal    ${response['title']}    ${updated_post['title']}

Delete Post Test
    Delete Post    1