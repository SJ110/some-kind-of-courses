#include<iostream>
#include<string>
#include<stdlib.h>
using namespace std;

class STACK {
	int  *const  elems;	//�����ڴ����ڴ��ջ��Ԫ��
	const  int   max;	//ջ�ܴ�ŵ����Ԫ�ظ���
	int   pos;			//ջʵ������Ԫ�ظ�����ջ��ʱpos=0;
public:
	STACK(int m);		//��ʼ��ջ�����m��Ԫ��
	STACK(const STACK&s); 			//��ջs������ʼ��ջ
	virtual int  size() const;			//����ջ�����Ԫ�ظ���max
	virtual operator int() const;			//����ջ��ʵ��Ԫ�ظ���pos    
	virtual int operator[ ] (int x) const;	//ȡ�±�x����ջԪ��
	virtual STACK& operator<<(int e); 	//��e��ջ,������ջ
	virtual STACK& operator>>(int &e);	//��ջ��e,������ջ
	virtual STACK& operator=(const STACK&s); //��s��ջ,�����ر���ֵ��ջ
	virtual void print() const;			//��ӡջ
	virtual ~STACK();					//����ջ
};

class QUEUE :public STACK {
	STACK  s2;
public:
	QUEUE(int m); //ÿ��ջ���m��Ԫ�أ�Ҫ��ʵ�ֵĶ����������2m��Ԫ��
	QUEUE(const QUEUE&s); 			//�ö���s������ʼ������
	virtual operator int() const;			//���ض��е�ʵ��Ԫ�ظ���
	virtual int full() const;		       //���ض����Ƿ�������������1�����򷵻�0
	virtual int operator[ ](int x)const;   //ȡ�±�Ϊx��Ԫ�أ���1��Ԫ���±�Ϊ0
	virtual QUEUE& operator<<(int e);  //��e�����,�����ض���
	virtual QUEUE& operator>>(int &e);	//�����е�e,�����ض���
	virtual QUEUE& operator=(const QUEUE&s); //��s������,�����ر���ֵ�Ķ���
	virtual void print() const;			//��ӡ����
	virtual ~QUEUE();					//���ٶ���
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
	if (STACK::operator int() == STACK::size()&&s2.operator int()!=0)  //��ջ�ռ�������ջ�ռ�ǿ�
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
	int temp; //��ų�ջԪ��
	if (STACK::operator int() == STACK::size()&&s2.operator int()==0)   //STACK����s2��
		for (int i = 0; i < STACK::size();i++)
		{
			STACK::operator>>(temp);
			s2.operator<<(temp);  //��STACK�Ƴ���ջ��s2
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
			STACK::operator>>(temp);  //��STACK��ջ
			s2.operator<<(temp);   //��ջ��s2
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
	for (int i = 0; i < s2.operator int(); i++)  //s2��ŵ�Ԫ������STACK��pop���ģ�Ӧ�������ӡ
	{
		cout << s2.operator[](s2.operator int() - i - 1) << "  ";//s2�Ƕ����ײ�
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
	cout<<"������Ҫ����Ķ��д�Сm��ʾ2m��:"<<endl;
	cin>>queuesize;
	QUEUE *men= new  QUEUE(queuesize);
	QUEUE *women =new QUEUE(queuesize);
	cout<<"�������ж��е�������������(����������m+1)��"<<endl; 
	cin>>mencount;
	for(int i=0;i<mencount;i++)
	{
		men->operator<<(i+1);
	}
	cout<<"������Ů���е����������������������ڣ�m+1���Ҳ����ж���������ͬ��" <<endl; 
	cin>>womencount;
	for(int i=0;i<womencount;i++)
	{
		women->operator<<(i+1);
	}
	cout<<"��ȷ���ж��к�Ů������Ҫ����赸�ı�ţ�"<<endl; 
	int m,f;
	cout<<"�ж��У�";
	cin>>m;//getchar();
	cout<<"Ů���У�";
	cin>>f;//getchar();
	int tempm=1,tempw=1,times=0;
	while(tempm!=m||tempw!=f) 
	{
		men->operator>>(tempm);
		women->operator>>(tempw);
		times++;
		men->operator<<(tempm);
		women->operator<<(tempw);
		cout<<"��"<<times<<"�Σ�"<<"�ж��У�";
	        men->print();
	    cout<<endl<<"Ů���У�"; 
	       women->print();   
	    cout<<endl;
	}
	cout<<"��"<<times<<"�κ�"<<m<<"��"<<f<<"һ������"<<endl; 
	return 0;
 } 
