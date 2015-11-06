Public Class ContactAndLeadSearch
{
        Public static List<List<sObject>> searchContactsAndLeads(String keyword)
        {
            List<List<sObject>> searchList = [FIND :keyword IN ALL FIELDS Returning lead(FirstName, LastName),
                                             contact(firstname, lastname)];
            return searchList;
        }
}


/*Public Class ContactAndLeadSearch
{
        Public static List<List<sObject>> searchContactsAndLeads(String searchword)
        {
            String searchQuery = 'FIND \'' + searchword + '\' IN ALL FIELDS RETURNING Lead(Name,FirstName,LastName ), Contact(FirstName,LastName )';
            List<List<sObject>> searchConLead = search.query(searchQuery);
            return searchConLead;
        }
}*/