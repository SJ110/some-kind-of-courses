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
	STACK(const STACK&s); 			//用栈s拷贝初始化栈
	virtual int  size() const;			//返回栈的最大元素个数max
	virtual operator int() const;			//返回栈的实际元素个数pos    
	virtual int operator[ ] (int x) const;	//取下标x处的栈元素
	virtual STACK& operator<<(int e); 	//将e入栈,并返回栈
	virtual STACK& operator>>(int &e);	//出栈到e,并返回栈
	virtual STACK& operator=(const STACK&s); //赋s给栈,并返回被赋值的栈
	virtual void print() const;			//打印栈
	virtual ~STACK();					//销毁栈
};

STACK::STACK(int m) :max(m), pos(0), elems(new int[m]) {}

STACK::STACK(const STACK&s) : elems(new int[s.pos]), pos(s.pos), max(s.max) 
{
	//pos = s.pos;
	for (int i = 0; i < pos; i++)
		elems[i] = s.elems[i];
}

int STACK::size()const
{
	return max;
}

STACK::operator int()const
{
	return pos;
}
int STACK::operator[](int x)const
{
	return elems[x];
}

STACK& STACK::operator<<(int e)
{
	if (pos != max)
	{
		elems[pos] = e;
		pos++;
	}
	return *this;
}
STACK& STACK::operator>>(int &e)
{
	if (pos != 0)
	{
		e = elems[pos-1];
		pos--;
	}
	return *this;
}
STACK& STACK::operator=(const STACK&s)
{
	int *ref =const_cast<int*>(elems);
	delete ref;
	ref = new int[s.max];
	int *num = const_cast<int*>(&max);
	*num = s.max;
	pos = s.pos;
	for (int i = 0; i < pos; i++)
		elems[i] = s.elems[i];
	return *this;
}
void STACK::print()const
{
	for (int i = 0; i < pos; i++)
		cout << elems[i] << "  ";
}
STACK::~STACK()
{
	delete []elems;
}

int main(int argc, char*argv[])
{
	string arg;
	int ch;
	STACK *p = NULL;
	for (int i = 0; i < argc; i++)
	{
		arg = argv[i];
		if (arg == "-S")
		{
			ch = atoi(argv[i + 1]);
			cout << "S  " << ch << "  ";
			p = new STACK(ch);
		}
		else if (arg == "-I")
		{
			cout << "I  ";
			int  j = i, flag = 1;
			j++;
			while (j < argc)
			{
				if (p->operator int() == p->size())
				{
					if (argv[j][0] != '-')
					{
						cout << "E  "; flag = 0; break;
					}
					else break;
				}
				if (argv[j][0] != '-')
				{
					ch = atoi(argv[j]);
					//*p<<(ch);
					p->operator<<(ch);
				}
				else break;
				j++;
			}
			if (flag == 0)
				i = argc;
			else p->print();
		}
		else if (arg == "-A")
		{
			cout << "A  ";
			ch = atoi(argv[i + 1]);
			STACK *p1 = new STACK(ch);
			p1->operator=(*p);  //新栈赋值
			p = p1;   //回到栈p操作
			if (p->operator int())
				p->print();
		}
		else if (arg == "-C")
		{
			cout << "C  ";
			STACK *p2 = new STACK(*p);
			p = p2;
			if (p->operator int())
				p->print();
		}
		else if (arg == "-N")
		{
			cout << "N  " << p->operator int() << "  ";
		}
		else if (arg == "-G")
		{
			ch = atoi(argv[i + 1]);
			if (ch < p->operator int())
				cout << "G  " << p->operator[](ch) << "  ";
			else {
				cout << "G  E  ";
				break;
			}
		}
		else if (arg == "-O")
		{
			cout << "O  ";
			ch = atoi(argv[i + 1]);
			if (ch > p->operator int())
			{
				cout << "E  "; break;
			}
			int out;
			for (int j = 0; j < ch; j++)
				p->operator>>(out);
			if (p->operator int())
				p->print();
		}
	}
	return 0;
}




