#include <iostream>
#include <windows.h>
using namespace std;

int main()
{
 int len = 1;	//지수 값 받아서 길이 정하는 변수  
 int input = 0;	//사용자에게 값을 받는 변수  
 int count = 1;	//사용자가 입력한 숫자의 값만큼 len에 곱하기 3을 반복함.
 int i, j, k; 	//반복문에서 사용하기 위한 변수들 
while(1)		//정상적인 값 입력받는 반복문 
{
 cout << "Enter the power of 3(range = 3~2187): ";
 cin >> input;
 
 if(input <= 2187 and input >= 3 and input % 3 == 0)
 break;
 
 cout << "잘못 된 값을 입력했습니다.";
 cout << endl;
}
 
 if(input == 3){
 	input = 1;
 }else if(input == 9){
 	input = 2;
 }else if(input == 27){
 	input = 3;
 }else if(input == 81){
 	input = 4;
 }else if(input == 243){
 	input = 5;
 }else if(input == 729){
 	input = 6;
 }else{
 	input = 7;
 }
 
for(len = 1; count <= input; count++){ 	//len에 input값 만큼 지수 곱을 해줌. 
	len = len*3;
}	

	for (i = 0; i < len; i++)		//3의 input승만큼의 세로길이 
	{			
		for (j = 0; j < len; j++)  //3의 input승만큼의 가로길이
		{		  
			for (k = len / 3; k; k /= 3)
				if ((j % (k * 3)) / k == 1 and (i % (k * 3)) / k == 1)
					break;
			cout << (k ? " " : "#");
		}
		cout << endl;
	}

 Sleep(1000); //1초정지 
 return 0;
 
}
