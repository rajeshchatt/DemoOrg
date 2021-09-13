public class CaseTriggerHandler 
{
	public static Map<String, String> findTheContactNumber(Set<Id> conIds)
    {
        Map<String, String> contactIdWithContactNumberMap = new Map<String, String>();
        List<Contact> conList = new List<Contact>();
        conList = [Select id, phone, name from Contact where Id IN: conIds];
        for(Contact con: conList)
        {
            contactIdWithContactNumberMap.put(con.Id, con.phone);
        }
        return contactIdWithContactNumberMap;
    }
    
    public static void updateContactInfoInCase(Boolean isBefore, Boolean isInsert, Boolean isUpdate, List<Case> newCases)
    {
        Set<id> conIds = new  Set<Id>();
        Map<String, String> contactIdWithContactNumberMap = new Map<String, String>();
        if(isBefore == true)
        {
            if(isInsert == true || isUpdate == true)
            {
            	for(Case c: newCases)
                {
                    conIds.add(c.ContactId);
                }
                contactIdWithContactNumberMap = findTheContactNumber(conIds); 
                System.debug('--contactIdWithContactNumberMap----'+contactIdWithContactNumberMap);
                for(Case c : newCases)
                {
                    c.Contact_Info__c = contactIdWithContactNumberMap.get(c.ContactId);
                }
            }
        }
    }
}