public class AccountHandler {
    public static Account InsertNewAccount(String Accountname) {
        Account Recordname = new Account(Name = Accountname);
       
        try{
            insert RecordName; 
        } catch(DmlException e){
            System.debug('A DML exception has occured: '+e.getMessage());
            return null;
        }
        
        return Recordname;
    }
    
}