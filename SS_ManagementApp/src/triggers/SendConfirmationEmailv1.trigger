trigger SendConfirmationEmailv1 on Session_BigSpeaker__c (before insert) {

List<Id> sessionSpeakerIds = new List<Id>();

for(Session_BigSpeaker__c newItem: trigger.new){
  sessionSpeakerIds.add(newItem.Id);
}

List<Session_BigSpeaker__c> BigSessionSpeakers =
[SELECT BigSession__r.Name,
        BigSession__r.Session_Date__c,
        BigSpeaker__r.Last_Name__c,
        BigSpeaker__r.Email__c
        FROM Session_BigSpeaker__c WHERE Id IN:sessionSpeakerIds];

if (BigSessionSpeakers.size()>0){

  Session_BigSpeaker__c sessionSpeaker = BigSessionSpeakers[0];
  if(sessionSpeaker.BigSpeaker__r.Email__c !=null){
    String address = sessionSpeaker.BigSpeaker__r.Email__c;
    String subject = 'Speaker Confirmation';
    String message = 'Dear '+sessionSpeaker.BigSpeaker__r.Name+
    ', \nYour session "'+sessionSpeaker.BigSession__r.Name+'" is confirmed.\n\n'+
    'Thanks for speaking at the conference!';
    Email_Manager.sendMail(address,subject,message);

  }

}

}
