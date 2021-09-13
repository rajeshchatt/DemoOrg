public class LeadTriggerHandler 
{
	public static void checkLeadData(Boolean isBefore, Boolean isInsert, List<Lead> newLeads)
    {
        if(isBefore == true && isInsert == true)
        {
            for(Lead L: newLeads)
            {
                if(L.LastName == 'One')
                {
                    l.Phone = '1111111111';
                }
                else if (l.LastName == 'Two')
                {
                    l.Phone = '2222222222';
                }
                else if (l.LastName == 'Three')
                {
                    l.Phone = '3333333333';
                }
            }
        }
    }
}