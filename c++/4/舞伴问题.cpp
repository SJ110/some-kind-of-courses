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

class QUEUE :public STACK {
	STACK  s2;
public:
	QUEUE(int m); //每个栈最多m个元素，要求实现的队列最多能入2m个元素
	QUEUE(const QUEUE&s); 			//用队列s拷贝初始化队列
	virtual operator int() const;			//返回队列的实际元素个数
	virtual int full() const;		       //返回队列是否已满，满返回1，否则返回0
	virtual int operator[ ](int x)const;   //取下标为x的元素，第1个元素下标为0
	virtual QUEUE& operator<<(int e);  //将e入队列,并返回队列
	virtual QUEUE& operator>>(int &e);	//出队列到e,并返回队列
	virtual QUEUE& operator=(const QUEUE&s); //赋s给队列,并返回被赋值的队列
	virtual void print() const;			//打印队列
	virtual ~QUEUE();					//销毁队列
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
	int *ref = const_cast<int*>(elems);
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
	delete[]elems;
}

QUEUE::QUEUE(int m) :STACK(m),s2(m){}

QUEUE::QUEUE(const QUEUE&s):STACK(static_cast<STACK>(s)),s2(s.s2){}//

QUEUE::operator int() const
{
	return (s2.operator int() + STACK::operator int());
}

int QUEUE::full() const
{
	if (STACK::operator int() == STACK::size()&&s2.operator int()!=0)  //入栈空间满，出栈空间非空
		return true;
	else return false; 
}

int QUEUE::operator[](int x) const
{
	if (x <s2.operator int())
		return s2.operator[]((s2.operator int())-x-1 );
	else return STACK::operator[](x-s2.operator int());
}
QUEUE& QUEUE::operator<<(int e)
{
	int temp; //存放出栈元素
	if (STACK::operator int() == STACK::size()&&s2.operator int()==0)   //STACK满且s2空
		for (int i = 0; i < STACK::size();i++)
		{
			STACK::operator>>(temp);
			s2.operator<<(temp);  //从STACK移出入栈到s2
		  }
	if(STACK::operator int()<STACK::size())
	    STACK::operator<<(e);
	return *this;
}

QUEUE& QUEUE::operator>>(int &e)
{
	if (s2.operator int())
		s2.operator>>(e);
	else if (s2.operator int() == 0 && STACK::operator int() != 0)
	{
		int temp;
		int origSize = STACK::operator int();
		for (int i = 0; i < origSize; i++)
		{
			STACK::operator>>(temp);  //从STACK出栈
			s2.operator<<(temp);   //入栈到s2
		}
		s2.operator>>(e);
	}
	return *this;
}

QUEUE& QUEUE::operator=(const QUEUE&s)
{
	STACK::operator=(static_cast<STACK>(s));
	s2 = s.s2;
	return *this;
}

void QUEUE::print() const
{
	for (int i = 0; i < s2.operator int(); i++)  //s2存放的元素是有STACK中pop出的，应该逆序打印
	{
		cout << s2.operator[](s2.operator int() - i - 1) << "  ";//s2是队列首部
	}
	for (int i = 0; i < STACK::operator int(); i++)
	{
		cout << STACK::operator[](i)<<"  ";
	}
}

QUEUE::~QUEUE(){}

int main()
{
	int queuesize;
	int mencount,womencount;
	cout<<"请输入要处理的队列大小m表示2m人:"<<endl;
	cin>>queuesize;
	QUEUE *men= new  QUEUE(queuesize);
	QUEUE *women =new QUEUE(queuesize);
	cout<<"请输入男队列的人数（素数）(人数不大于m+1)："<<endl; 
	cin>>mencount;
	for(int i=0;i<mencount;i++)
	{
		men->operator<<(i+1);
	}
	cout<<"请输入女队列的人数（素数）人数不大于（m+1）且不和男队列人数相同：" <<endl; 
	cin>>womencount;
	for(int i=0;i<womencount;i++)
	{
		women->operator<<(i+1);
	}
	cout<<"请确定男队列和女队列中要组队舞蹈的编号："<<endl; 
	int m,f;
	cout<<"男队列：";
	cin>>m;//getchar();
	cout<<"女队列：";
	cin>>f;//getchar();
	int tempm=1,tempw=1,times=0;
	while(tempm!=m||tempw!=f) 
	{
		men->operator>>(tempm);
		women->operator>>(tempw);
		times++;
		men->operator<<(tempm);
		women->operator<<(tempw);
		cout<<"第"<<times<<"次，"<<"男队列：";
	        men->print();
	    cout<<endl<<"女队列："; 
	       women->print();   
	    cout<<endl;
	}
	cout<<"第"<<times<<"次后："<<m<<"和"<<f<<"一起跳舞"<<endl; 
	return 0;
 } 
