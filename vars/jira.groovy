def call(body){
sh '(curl --request POST \
  --url '{https://jira132.atlassian.net/rest/api/3/issue}' \
  --user '{mahitalluri132@gmail.com:kL4PmIMRZiwyjQchOfg33905}' \
  --header '{Accept: application/json}' \
  --header '{Content-Type: application/json}' 
  --data '{'("fields": {
        "summary": "Summit 2019 is awesome!",
        "issuetype": {
            "id": "10303"
        },
        "project": {
            "key": "D1"
        },
        "description": {
            "type": "doc",
            "version": 1,
            "content": [
                {
                "type": "paragraph",
                "content": [
                    {
                    "text": "This is the description.",
                    "type": "text"
                    }
                ]
                }
            ]
        }
    }
)'}')'
}
