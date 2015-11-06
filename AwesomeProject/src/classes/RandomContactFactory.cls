public class RandomContactFactory {

    public static List<Contact> generateRandomContacts(Integer SomeNumber, String SomeWord){

        List<Contact> randomContacts = new List<Contact>();
        
        for(Integer i =0; i<SomeNumber; i++){
            Contact c = new Contact(FirstName = 'testaccount'+i);
            randomContacts.add(c);
        }
        
        return randomContacts;
    }
}