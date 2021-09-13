public class DMLOperations 
{
	public static void insertMethod()
    {
        List<Account> accList = new List<Account>();
        List<Account> accList1 = new List<Account>();
        Account acc = new Account();
        acc.Name = 'Rajesh Testing Record4';
        acc.AccountNumber = '321';
        acc.Active__c = 'true';
        accList.add(acc);
        
        Account acc1 = new Account();
        acc1.Name = 'Rajesh Testing Record5';
        acc1.AccountNumber = '321';
        acc1.Active__c = 'true';
        accList.add(acc1);
        
        Account acc2 = new Account();
        acc2.Name = 'Rajesh Testing Record6';
        acc2.AccountNumber = '321';
        acc2.Active__c = 'true';
        accList.add(acc2);
        
        if(!accList.isEmpty())
        {
            //insert accList;
        }
        insert accList1;
    }
    
    /* Auther is Rajesh
     Created Date is --
     This below method will update all recors which is create din the baove method */
    public static void updateMethod()
    {
        List<Account> accList = new List<Account>();
        Map<id, account> accMap = new Map <Id, Account>();
        accList = [select id, name, accountnumber from Account where name Like 'Rajesh%' and AccountNumber = '123'];
        System.debug('----accList-'+accList);
        
        for(Account acc : accList)
        {
            acc.AccountNumber = '999';
            accMap.put(acc.Id, acc);
        }
        if(!accMap.values().isEmpty())
        {
        	update accMap.values();
        }
    }
    public static void deleteMethod()
    {
        List<Account> accList = new List<Account>();
        accList = [select id, name, accountnumber from Account where name Like 'Rajesh%'];
        if(!accList.isEmpty())
        {
            delete accList;
        }
    }
}