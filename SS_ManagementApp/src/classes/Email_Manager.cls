public with sharing class Email_Manager {
	public static void sendMail(String address, String subject, String body) {
			 Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
			 String[] toAddresses = new String[] {address};
			 mail.setToAddresses(toAddresses);
			 mail.setSubject(subject);
			 mail.setPlainTextBody(body);
			 system.debug(loggingLevel.Info,'debugging stuff here');
			 Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
	 }
}
