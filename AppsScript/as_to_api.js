function newFunction(){
    // Declare 'data' in the scope of 'myFunction' so it can be accessed later
    var data;
    function createJiraTickets() {
      const sheet = SpreadsheetApp.getActiveSpreadsheet().getSheetByName("Sheet1");
      const lastRow = sheet.getLastRow();
      const dataRange = sheet.getRange(1, 1, lastRow, 5); 
      data = dataRange.getValues(); // Assign the data to the 'data' variable
    }
  
    createJiraTickets();      // Call the function to populate 'data'
  
    for (var i = 1; i < data.length; ++i) { // Starting loop from 1
      var row = data[i];
      var summary = row[3];   
      var id = row[0]; 
      var name = row[2];
      var description = row[4];
      
      // TEST : Logger.log(name);
  
      var issueData = {
        "update": {},
        "fields": {
          "project": {"id": "INSERT PROJECT ID"},
          "field name": name,
          "field name": id,
          "summary": summary,
          "description": {      // if rich text, you need to specify the data type since not text or number
            "type": "doc",
            "version": 1,
            "content": [
              {
                "type": "paragraph",
                "content": [
                  {
                    "type": "text",
                    "text": description
                  }
                ]
              }
            ]
          },
            "issuetype": {
            "id": "ID OF ISSUE TYPE" // Change to the type of issue you want to create
          }
        }
      };  // Add more fields as needed
          // Test Logger.log(issueData)
      var options = {     // this converts data to json format, prepares for sending
        "method": "POST",   //sending data to the server to create a new JIRA ticket.
        "contentType": "application/json",  // data in json format
        "headers": {
          "Authorization": "Basic 
        },
        "payload": JSON.stringify(issueData)    // converts data in obj issueData to JSON string 
      };
      // TEST Logger.log(options)
      // this takes place of curl and makes HTTP request
      try {
        var response = UrlFetchApp.fetch("API url path", options); //need to put domain of our url
        var jsonResponse = JSON.parse(response.getContentText());
        console.log("Created JIRA issue with ID: " + jsonResponse.id); // parses response from Jira
      } catch (e) {
        console.log("Error creating JIRA issue: " + e.toString());   //logs an error message if error occurs during try block #failsafe
      }
    }
  }