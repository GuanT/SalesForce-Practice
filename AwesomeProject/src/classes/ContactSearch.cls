public class ContactSearch {
    public STATIC List<Contact> searchForContacts (string SearchLastName, string SearchPostal){
        
        LIST<Contact> ContactList = [SELECT Id,NAME FROM CONTACT
                                    WHERE LastName =: SearchLastName AND  MailingPostalCode =: SearchPostal];
        return ContactList;
    }
}