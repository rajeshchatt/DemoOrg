public class HowToUseSOQL 
{
    public static void learnSOQL()
    {
    	List<Account> acc = [SELECT Name, AccountNumber, (Select id, name from contacts) from Account];
        List<Account> recordNeedstoBeUpdated = new List<Account>();
        For(Account accountVar: acc)
        {
            
            System.debug('The account Name-'+ accountVar.name +'Printing the contacts'+ accountVar.contacts);
            if(accountVar.name == 'SOQL Test')
            {
				if(accountVar.AccountNumber == '999')
                {
                    accountVar.AccountNumber = '1234';
                    recordNeedstoBeUpdated.add(accountVar);
                }
                else
                {
                    System.debug('AccountNumber---'+accountVar.AccountNumber);
                }
            }
        }
        if(!recordNeedstoBeUpdated.isEmpty())
        {
            Delete recordNeedstoBeUpdated;
        }
    }
    public static void learnDeleteOperation()
    {
        List<Account> recordNeedstoBeDeleted = new List<Account>();
        recordNeedstoBeDeleted = [SELECT id, name from Account where name = 'SOQL Test' and AccountNumber = '1234'];
        System.debug('----recordNeedstoBeDeleted='+recordNeedstoBeDeleted);
        Delete recordNeedstoBeDeleted;
        
    }
}