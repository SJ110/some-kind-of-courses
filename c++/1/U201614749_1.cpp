#include <stdio.h>
#include<string.h>
#include<stdlib.h>
#include<iostream>
using namespace std;
struct STACK {
	int  *elems;	//�����ڴ����ڴ��ջ��Ԫ��
	int   max;	//ջ�ܴ�ŵ����Ԫ�ظ���
	int   pos;	//ջʵ������Ԫ�ظ�����ջ��ʱpos=0;
};
void initSTACK(STACK *const p, int m);	//��ʼ��pָ���ջ�����m��Ԫ��
void initSTACK(STACK *const p, const STACK&s); //��ջs��ʼ��pָ���ջ
int  size(const STACK *const p);		//����pָ���ջ�����Ԫ�ظ���max
int  howMany(const STACK *const p);	//����pָ���ջ��ʵ��Ԫ�ظ���pos
int  getelem(const STACK *const p, int x);	//ȡ�±�x����ջԪ��
STACK *const push(STACK *const p, int e); 	//��e��ջ��������p
STACK *const pop(STACK *const p, int &e); 	//��ջ��e��������p
STACK *const assign(STACK*const p, const STACK&s); //��s��pָ��ջ,������p
void print(const STACK*const p);			//��ӡpָ���ջ
void destroySTACK(STACK*const p);		//����pָ���ջ

void initSTACK(STACK *const p, int m)
{
	p->elems = (int*)malloc(sizeof(int)*m);
			p->max = m;
			p->pos = 0;
}

void initSTACK(STACK *const p, const STACK&s)
{
	p->elems = (int *)malloc(sizeof(int)*s.max);
	for (int i = 0; i < s.pos; i++)
		p->elems[i] = s.elems[i];
	p->max = s.max;
	p->pos = s.pos;
}

int  size(const STACK *const p)
{
	return p->max;
}

int  howMany(const STACK *const p)
{
	return p->pos;
}
int  getelem(const STACK *const p, int x)
{
	return p->elems[x];
}

STACK *const push(STACK *const p, int e)
{
	if(p->pos!=p->max) 
	{
		p->elems[p->pos] = e;
		p->pos++;
	}
	   return p;
}
STACK *const pop(STACK *const p, int &e)
{
	if(p->pos!=0) 
	{
	   e = p->elems[p->pos - 1];
	   p->pos--;
	}
	return p;
}

STACK *const assign(STACK*const p, const STACK&s)
{
		if(p->max<s.max)
		{
			p->elems = (int*)realloc(p->elems,s.max*sizeof(int));
        	p->max = s.max;
		}
        for(int i=0;i<s.pos;i++)        
        p->elems[i] = s.elems[i];
        p->pos = s.pos;
        return p;
}

void print(const STACK*const p)
{
	for (int i = 0; i < p->pos; i++)
	{
		printf("%d  ", p->elems[i]);
    }
} 

void destroySTACK(STACK*const p)
{
	delete[] p->elems;
	p->elems = NULL;
	p->max = 0;
	p->pos = 0;
}

int main(int argc, char* argv[])
{
//	FILE* fp; 
//	fp = fopen("U201614749_1.txt", "w");
	STACK *p = (STACK*)malloc(sizeof(STACK));
	STACK s;
	char* arg;
	int ch; //���ַ�ת��Ϊ����
	for (int i = 1; i < argc; i++)
	{
		arg = argv[i];
		if (!strcmp(arg, "-S"))
		{
			ch = atoi(argv[i+1]);
			initSTACK(p, ch);
			cout << "S  "<<ch<<"  ";
	//		fprintf(fp,"S  %d  ",ch);
		}
		else if (!strcmp(arg, "-I"))
        {
          cout<<"I  ";
          int j=i,flag=1;
          j++;
          while(j<argc)
          {
		    if(p->pos==p->max)
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
				push(p,ch);
			}
			else break;
			j++;
		  }
          if(flag==0)
             i=argc;
		  else print(p);
			}
		else if (!strcmp(arg, "-O"))
		{
			cout << "O  ";
	//		fprintf(fp,"O  ");
			ch = atoi(argv[i+1]);
			p->pos -= ch;
			if(p->pos>=0)
			 for(int j=0;j<p->pos;j++)
			  {
			  printf("%d  ", p->elems[j]);
			  //  fprintf(fp,"%d  ",p->elems[j]);
		}
			else 
			{cout<<"E  ";
			 //fprintf(fp,"E  ");
			 break;
			 }
		}
		else if (!strcmp(arg, "-A"))
		{
			cout << "A  ";
		//	fprintf(fp,"A  ");
			ch = atoi(argv[i+1]);
		//	s.pos = ch;
			initSTACK(&s, *p);
			p = assign(p, s);
			if(p->pos) 
		     	print(p);
		//	for(int i=0;i<p->pos;i++)
			//    fprintf(fp,"%d  ",p->elems[i]);
		}
		else if (!strcmp(arg, "-C"))
		{
			cout << "C  ";
		//	fprintf(fp,"C  ");
			initSTACK(&s, *p);
			p=assign(p, s);
			print(p);
//			for(int i=0;i<p->pos;i++)
	//		    fprintf(fp,"%d  ",p->elems[i]);
		}
		else if (!strcmp(arg, "-N"))
		{
			cout << "N  " << p->pos<<"  ";
		//	fprintf(fp,"N  %d  ",p->pos);
		}
		else if (!strcmp(arg, "-G"))
		{
			ch = atoi(argv[i + 1]);
			if(ch<p->pos)
			{
			  cout << "G  " << p->elems[ch] << "  ";
		//	  fprintf(fp,"G  %d  ",p->elems[ch]);
        }
			else {cout<<"G  "<<"E  ";
		//	fprintf(fp,"G  E  ");
			break;}
		}
	}
//	fclose(fp);
//	fp=NULL;
	return  0;
}
