// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

string tempvar = 'Enter_your_name_here';
System.debug('Hello World!');
System.debug('My name is ' + tempvar);

Blob b = Crypto.GenerateAESKey(128);
String h = EncodingUtil.ConvertTohex(b);
String guid = h.SubString(0,8)+ '-' + h.SubString(8,12) + '-' + h.SubString(12,16) + '-' + h.SubString(16,20) + '-' + h.substring(20);
system.debug('GuId :: '+guid);

Account Acc = new Account(External_Id__c='21574385-35fa-e652-fd5e-2384f73e04cc');

Contact con = new Contact();
con.LastName = 'TEST 101';
con.AccountId = Acc.Id;
database.insert(con);

database.delete([SELECT Id FROM Contact WHERE AccountId = '0010p0000163KHhAAM']);