public class CollectionApexClass 
{
	public static void howToUseList()
    {
        String str;
        List<String> lst = new List<String>();
        lst.clear();
        lst.add('Java');
        lst.add('dotNet');
        lst.add('Apex');
        lst.add('Apex');
        lst.add('Apex');
        System.debug('lst='+lst);
        
        List<Integer> Integerlst = new List<Integer>();
        Integerlst.add(5);
        Integerlst.add(6);
        Integerlst.clear();
        Integerlst.add(7);
        Integerlst.add(8);
        Integerlst.add(2);
        Integerlst.add(1);
        
        List<Integer> addingAllValues = new List<Integer>();
        addingAllValues.addAll(Integerlst);
        System.debug('addingAllValues='+addingAllValues);
        
    }
    
    public static void howToUseSet()
    {
        Set<Integer> IntegerSet = new Set<Integer>();
        IntegerSet.add(1);
        IntegerSet.add(1);
        IntegerSet.add(2);
        IntegerSet.add(2);
        IntegerSet.add(3);
        IntegerSet.add(9);
        IntegerSet.add(4);
        IntegerSet.add(11);
        IntegerSet.add(5);
        System.debug('IntegerSet='+IntegerSet);
        
        Set<String> StringSet = new Set<String>();
        StringSet.add('Java');
        StringSet.add('Apex');
        StringSet.add('Dotnet'); 
        StringSet.add('CPP');
        StringSet.add('java');
        System.debug('StringSet='+StringSet);  
        
    }
    public static void howToUseMap()
    {
        Map<Integer, String> myFirstMap = new Map<Integer, String>();
        myFirstMap.put(7, 'Java');
        myFirstMap.put(6, 'Cpp');
        myFirstMap.put(2, 'Apex');
        myFirstMap.put(5, 'DotNet');
        System.debug('myFirstMap='+myFirstMap);
        System.debug('------get method'+myFirstMap.get(5));
        System.debug('------values'+myFirstMap.values());
        System.debug('------keyset'+myFirstMap.keySet());
    }
}