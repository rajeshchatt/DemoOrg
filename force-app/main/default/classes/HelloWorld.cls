public class HelloWorld 
{
    public static void addTwoNumbers(Integer firstNumber, Integer secNumber)
    {
		Integer Sum;
        Sum = firstNumber + secNumber;
        System.debug('------'+Sum);
    }
    public static void howToUseStringVariable()
    {
		String AllCourses;
		String firstCourse;
		String secCourse; 
        firstCourse = '1234';
        secCourse = 'Apex';
        AllCourses = firstCourse + secCourse;
        System.debug('------firstCourse='+firstCourse);
        System.debug('------secCourse='+secCourse);
        System.debug('------AllCourses='+AllCourses);
    }
    public  void howToUseStringVariable1()
    {
        String Subject;
        Subject = 'Java';
        Subject = 'Apex';
        Subject = 'CPP';
        
        Integer IntergerVariable; Boolean booleanVariable;
        IntergerVariable = 100;
        IntergerVariable = 200;
        booleanVariable =  False;
        booleanVariable =  True;
        
        System.debug('----Subject--'+Subject);
        System.debug('----IntergerVariable--'+IntergerVariable);
        System.debug('----booleanVariable--'+booleanVariable);
    }   
}