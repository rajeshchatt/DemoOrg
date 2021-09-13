public class WhatisVoid 
{
	public static Integer letsTestVoidMethod(Integer firstNumber, integer secNumber)
    {
        Integer sum = firstNumber + secNumber;
        return sum;
    }
    public static void useReturnedValue()
    {
        Integer useTheValue = letsTestVoidMethod(2, 3);
        system.debug('-useTheValue--'+useTheValue);
    }
}