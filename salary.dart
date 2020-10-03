import 'dart:io'; 
  
void main() 
{ 
    print("Enter your name?"); 
    String name = stdin.readLineSync(); 
    String cap = capitalize(name);
    print("Enter your id:");
    int id = int.parse(stdin.readLineSync());
    print("Enter salary in dollar:");
    int sal = int.parse(stdin.readLineSync());
    int hra = calHRA(sal);
    int da = calDA(sal);
    int ta = calTA(sal);
    int bonus = calBonus(sal);
    int pf = calPF(sal);
    int grossSalary = sal + hra + da + ta + bonus - pf ;
    int per = (sal * 30)~/100;
    int netSalary = grossSalary - per;
    display(id,cap,sal,netSalary,ta,hra,pf,da);
} 
String capitalize(String name) {
  if (name == null) {
    throw ArgumentError("string: $name");
  }

  if (name.isEmpty) {
    return name;
  }

  return name[0].toUpperCase() + name.substring(1);
}
int calHRA(int sal) {

      int res = (30 * sal)~/100;
      return res;
}

int calDA(int sal) {

      int res = (10 * sal)~/100;
      return res;
}

int calTA(int sal) {

      int res = (20 * sal)~/100;
      return res;
}

int calBonus(int sal) {

      int res = (5 * sal)~/100;
      return res;
}

int calPF(int sal) {

      int res = (10 * sal)~/100;
      return res;
}

void display(int id ,String cap , int sal , int netSalary, int ta, int hra , int pf ,int da) {

    print("id : $id");
    print("Name:$cap");
    print("Salary : \$$sal");
    print("net salary : \$$netSalary");
    print("TA:\$$ta");
    print("HRA : \$$hra");
    print("PF:\$$pf");
    print("DA : \$$da");

}
