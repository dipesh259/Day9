#!/bin/bash 

#INITIAL VALUE TO ASSING PRESENT
isPresent=1

#TO VARIABLE
randomNumber=$((RANDOM%2))
caseChoce=$randomNumber
read -p "to use case four case statement:"caseChoce

#TO CHECK THE EMPLOYEE PRESENT AND ABSENT
if [ $randomNumber -eq 	$isPresent ]
then
	echo "Employee Present"

#USING CASE STATEMENT
case "$caseChoce" in

	0) echo "To calculate Daily Employee Wage"
	
	#TO FUNCTION CALCULATE EMPLOYEE WAGE
		
		function calculateDailyEmployeeWage(){
		read -p "Assume Wage per hour is :" isWagePerHour "rupees"
		isDayHour=8

	#TO ONE DAY WORKING EMPLOYEE WAGE
		
		calculateEmployeeWageForOneDay=$(( $isWagePerHour * $isDayHour ))
		read -p "working days :" isDay
	#TO MONTH DAY WORKING EMPLOYEE WAGE
		
		calculateEmployeeWageForMonth=$(( $calculateEmployeeWageForOneDay  *  $isDay ))
		echo "To calculate employee wages for a Month :" $calculateEmployeeWageForMonth "rupees"
		}
		calculateDailyEmployeeWage
		;;
	1)echo "To calculate part time Employee and wage"

	#TO FUNCTION CALCULATE PART TIME EMPLOYEE WAGE
		
		function partTimeEmployeeAndWage(){
		read -p "Assume Wage per hour is :" isWagePerHour "rupees"
		isDayHour=8

	#TO ONE DAY WORKING EMPLOYEE WAGE
		
		calculateEmployeeWageForOneDay=$(( $isWagePerHour * $isDayHour ))
		read -p "TO part time working days :" isDay

	#TO MONTH DAY WORKING EMPLOYEE WAGE
		
		calculateEmployeeWageForMonth=$(( $calculateEmployeeWageForOneDay * $isDay ))
		echo "To calculate employee part time wages for a Month :" $calculateEmployeeWageForMonth "rupees"
		}
		partTimeEmployeeAndWage
		;;
		*)echo "No choice"
		;;
esac


else
	echo "Employee Absent"
fi
