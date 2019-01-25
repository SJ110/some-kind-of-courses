#include<iostream>
#include<string>
#include<stdlib.h>
using namespace std;
class STACK {
	int  *const  elems;	//申请内存用于存放栈的元素
	const  int   max;	//栈能存放的最大元素个数
	int   pos;			//栈实际已有元素个数，栈空时pos=0;
public:
	STACK(int m);		//初始化栈：最多m个元素
	STACK(const STACK&s); //用栈s拷贝初始化栈
	int  size() const;		//返回栈的最大元素个数max
	int  howMany() const;	//返回栈的实际元素个数pos
	int  getelem(int x) const;	//取下标x处的栈元素
	STACK& push(int e); 	//将e入栈,并返回栈
	STACK& pop(int &e); 	//出栈到e,并返回栈
	STACK& assign(const STACK&s); //赋s给栈,并返回被赋值的栈
	void print() const;		//打印栈
	~STACK();				//销毁栈
};
STACK::STACK(int m):max(m),pos(0),elems(new int[m]){}

STACK::STACK(const STACK&s):elems(new int[s.pos]),pos(s.pos),max(s.max)
{
	//pos = s.pos;
	for (int i = 0; i < pos; i++)
		elems[i] = s.elems[i];
}

int STACK::size() const
{
	return max;
}

int STACK::howMany()const
{
	return pos;
}

int STACK::getelem(int x) const
{
	return elems[x];
}

STACK& STACK::push(int e)
{
	if(max!=pos)
	{
	   elems[pos] = e;
        pos++;
	}
	return *this;
}

STACK& STACK::pop(int &e)
{
	if(pos!=0)
	{
	  e = elems[pos - 1];
	  pos--;
	}
	return *this;
}

STACK& STACK::assign(const STACK &s)
{
//	for (int i = 0; i < s.pos; i++)
//		elems[i] = s.elems[i];
//	pos = s.pos;
//	max=s.max;
//	return *this;
    int *ref = const_cast<int *>(elems);
    delete ref; 
    ref = new int [s.max];
    int *num = const_cast<int *>(&max);
    *num = s.max;
    pos = s.pos;
    for(int i=0; i < pos; ++i)
        elems[i] = s.elems[i];
    return *this;
}

void STACK::print() const
{
	for (int i = 0; i < pos; i++)
		cout << elems[i] << "  ";
}
STACK::~STACK()
{
	delete[]elems;
}

int main(int argc,char* argv[])
{
	string arg;
	int ch;
	STACK *p = NULL;
	for (int i = 1; i < argc; i++)
	{
         arg = argv[i];
	     if (arg == "-S")
	     {
		    ch = atoi(argv[i+1]);  
			p = new STACK(ch);
			cout << "S  " << ch<<"  ";
	    }
		 else if (arg == "-I")
		 {
			 cout << "I  ";
             int j=i,flag=1;
             j++;
             while(j<argc)
             {
             	if(p->howMany()==p->size())
                {
            	if(argv[j][0]!='-') 
            	{
				   cout<<"E  ";flag=0;break;
				}
            	else break;
			   }
			   if(argv[j][0]!='-')
			  {
				ch=atoi(argv[j]);
				p->push(ch);
		      	}
			   else break;
			   j++;
			 }
			  if(flag==0)
                 i=argc;
		      else p->	print();
		 }
		 else if (arg == "-A")
		 {
			 cout << "A  ";
			 ch = atoi(argv[i+1]);
			 STACK *p1 = new STACK(ch);
			 p1->assign(*p);  //新栈赋值
			 p = p1;   //回到栈p操作
//			 delete p1;
			 if (p->howMany())
				 p->print();
		 }
		 else if (arg == "-C")
		 {
			 cout << "C  ";
			 STACK *p2 = new STACK(*p);
			 p = p2;
			 if (p->howMany())
				 p->print();
		 }
		 else if (arg == "-N")
		 {
			 cout << "N  " << p->howMany() << "  ";
		 }
		 else if (arg == "-G")
		 {
			 ch = atoi(argv[i+1]);
			 if (ch < p->howMany())
				 cout << "G  " << p->getelem(ch) << "  ";
			 else {
				 cout << "G  E  ";
				 break;
			 }
		 }
		 else if (arg == "-O")
		 {
			 cout << "O  ";
			 ch = atoi(argv[i+1]);
			 if(ch>p->howMany())
            {
            	cout<<"E  "; break;
			}
			 int out;
			 for (int j = 0; j < ch; j++)
				 p->pop(out);
			 if (p->howMany())
				 p->print();
//			 else {
//				 cout << "E  ";
//				 break;
//			 }
		 }
	}
//	p->~STACK();
	p = NULL;
	return 0;
}
