@isTest
private class TestRestrictContactByName {
    @isTest static void TestRestrictContact(){
        
        Contact cont = new Contact(FirstName='John', LastName='INVALIDNAME');
        insert cont;
        
        Contact cont1 = new Contact(FirstName = 'INVALIDNAME',LastName = 'INVALIDNAME');
        insert cont;
        
       
}
        
}

/*static testMethod void  metodoTest() 
    {
    
        List<Contact> listContact= new List<Contact>();
        Contact c1 = new Contact(FirstName='Francesco', LastName='Riggio' , email='Test@test.com');
        Contact c2 = new Contact(FirstName='Francesco1', LastName = 'INVALIDNAME',email='Test@test.com');
        listContact.add(c1);
        listContact.add(c2);

        Test.startTest();
            try
            {
                insert listContact;
            }
            catch(Exception ee)
            {
            }
        Test.stopTest(); 
    }*/