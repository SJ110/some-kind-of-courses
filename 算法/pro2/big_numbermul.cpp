#include <bits/stdc++.h>
using namespace std;
template <typename T>
int StrtoInt(T s)// 将字符串或字符转化为数字	
{	
int res;	
stringstream ss;	
ss << s;	
ss >> res;	
return res;
}

string InttoStr(int n)// 将数字转为字符串

{
	
	string res;
	stringstream ss;
	ss << n;
	ss >> res;
	return res;
}

void addZero(string &s, int n, bool pre = true)	// 在字符串前或者字符串后添加0(默认为前)
{
	string temp(n, '0');
	s = pre ? temp + s : s + temp;
}
void removeZero(string &s)// 去除前导零	
{	
    int i = 0;	
    while (i < s.length() && s[i] == '0')	
	      ++i;	
	if (i < s.length())		
	     s = s.substr(i);	
	else		
	     s = "0";
	} 
	
string add(string a, string b)
{	// 大数加法(只考虑a+b非负）	
    string res;	
    removeZero(a);	
    removeZero(b);	
    reverse(a.begin(), a.end());	
    reverse(b.begin(), b.end());	
    int l = max((int)a.size(), (int)b.size());	
    for (int i = 0, j = 0; j || i < l; ++i)	
    {		
	    int t = j;		
        if (i < a.size())			
            t += StrtoInt(a[i]);
		if (i < b.size())
			t += StrtoInt(b[i]);
    	int q = t % 10;	
		res = InttoStr(q) + res;	
		j = t / 10;
		}	
	return res;
	}

string sub(string a, string b)	// 大数减法
{
    string res;
	removeZero(a);
	removeZero(b);
	reverse(a.begin(), a.end());
	reverse(b.begin(), b.end());
	int la = (int)a.size(), lb = (int)b.size(), j = 0;	//int* temp = new int[lx];	
	int *temp = (int *)calloc(la, sizeof(int));	
	for (int i = 0; i < la; ++i)
	{		
	    int temp1 = StrtoInt(a[i]);
		int temp2 = i < lb ? StrtoInt(b[i]) : 0;	
		temp[j++] = temp1 - temp2;
			}	
	for (int i = 0; i < la; ++i)
	{		
		  if (temp[i] < 0)
		{			
			temp[i] += 10;	
			--temp[i + 1];	
			}	
	}
	for (int i = la - 1; i >= 0; i--)
		{	
			res += InttoStr(temp[i]);
		}
			return res;
}

string mul(string a, string b)
{	// 大数乘法（只考虑a，b非负）	
    string res;
	int n = 2;	
	if (a.size() > 2 || b.size() > 2)
	{	
	 	n = 4;	
	    while (n < a.size() || n < b.size())
		n <<= 1;	
	    addZero(a, n - (int)a.size());	
		addZero(b, n - (int)b.size());	
		}	
	if (a.size() == 1)	
		addZero(a, 1);	
	if (b.size() == 1)	
		addZero(b, 1);
	if (n == 2)
	{ // 递归终止	
		int temp = StrtoInt(a) * StrtoInt(b);	
		res = InttoStr(temp);	
	}	else
 	{		
	    string a1, a0, b1, b0, c2, c1, c0;	
		a1 = a.substr(0, n / 2);	
		a0 = a.substr(n / 2);	
		b1 = b.substr(0, n / 2);	
		b0 = b.substr(n / 2);
		c2 = mul(a1, b1);
		c0 = mul(a0, b0);	
		c1 = sub(mul(add(a0, a1), add(b0, b1)), add(c2, c0));	
		addZero(c2, n, false);	
		addZero(c1, n / 2, false);	
		res = add(add(c2, c1), c0);
	}
	return res;		
} 

int main(){
	string a, b,answer;
	int clflag;	 // clflag判断运算	
 	freopen("in.dat","r",stdin);
    freopen("out.dat","w",stdout);
    int num;//测试组数
	cin>>num;
	for(int i=0;i<num;i++)
	{
		cin>>a>>b;
		cin>>clflag;
	   switch(clflag)
	   {
	   	case 1: if(a[0]!='-'&&b[0]!='-')
	                answer=add(a,b);
		        if(a[0]=='-'&&b[0]=='-')
	   	        {
	   	        	a=a.substr(1,a.size());
	   	        	b=b.substr(1,b.size());
	   	        	answer="-"+add(a,b);
				   }
				if(a[0]=='-'&&b[0]!='-')
				       {
				       	  a=a.substr(1,a.size());
	   	                  if(a.size()<b.size())
						     answer=sub(b,a);
						  if(a.size()==b.size())
						     {
						     	if(a==b)
						     	  answer="0";
						     	else
						     	{
						     		for(int i=0;i<a.size();i++)
						     	   {
						     	   	  if(a[i]>b[i])
						     	   	    {  
											answer="-"+sub(a,b);
											break;
											  }  
						     	   	   else 
										{
										   	answer=sub(b,a);
										   	break;
										  }
									}   
								 }
						     	
								  }
						   else answer="-"+sub(a,b);
						} 
				if(a[0]!='-'&&b[0]=='-')
				{
					b=b.substr(1,b.size());
					if(a.size()<b.size())
					    answer="-"+sub(b,a);
					if(a.size()==b.size())
					 {
					 	if(a==b)
					 	 	answer="0";
					 	else
					{
						for(int i=0;i<a.size();i++)
						    {
						       if(a[i]>b[i])
						       {
							       answer=sub(a,b);break;
								 }  
						       if(a[i]<b[i])
						       {
							      answer="-"+sub(b,a);break;
							   }
							}  
						 }	 
						 
					  }
					else answer=sub(a,b);
					
				}
				cout<<answer<<endl;break;
						 
	    case 2: if(a[0]=='-'&&b[0]=='-')
		        {
		            a=a.substr(1,a.size());
					b=b.substr(1,b.size());
					if(a.size()<b.size())
					   answer=sub(b,a);
					if(a.size()==b.size())
					{
					   if(a==b)
						  answer="0";
					    else 
				    	{
					   for(int i=0;i<a.size();i++)
					   {
						if(a[i]<b[i])
						  {
						  	answer=sub(b,a);break;
						  }
						if(a[i]>b[i])
						 {
						   answer="-"+sub(a,b);break;
						}
					  }
					}
				}   
				else answer="-"+sub(a,b);
			 }
			 if(a[0]=='-'&&b[0]!='-')
			 {
			 	a=a.substr(1,a.size());
			    answer="-"+add(a,b);
			 }
			 if(a[0]!='-'&&b[0]=='-')
			 {
			 	b=b.substr(1,b.size());
			 	answer=add(a,b);
			 }
			 else
			 {
			 	if(a.size()>b.size())
			 	  answer=sub(a,b);
			 	if(a.size()<b.size())
			 	  answer="-"+sub(b,a);
			    if(a.size()==b.size())
				{
					if(a==b)
					  answer="0";
					else
					{
						for(int i=0;i<a.size();i++)
						{
							if(a[i]>b[i])
							 {
							 	answer=sub(a,b);break;
							  } 
							if(a[i]<b[i])
							{
								answer="-"+sub(b,a);
								break;
							}
						}
					}
				 } 
			 }
			 cout<<answer<<endl;
			 break;
	    case 3: if(a[0]!='-'&&b[0]!='-')
	                answer=mul(a,b);
		        if(a[0]=='-'&&b[0]=='-')
	            {
	            	a=a.substr(1,a.size());
	                b=b.substr(1,b.size());
	    	        answer=mul(a,b);
	         	} 
	            if(a[0]=='-'&&b[0]!='-')
	            {
	            	a=a.substr(1,a.size());
				   answer="-"+mul(a,b);
				}
	            if(a[0]!='-'&&b[0]=='-')
	            {
	            	b=b.substr(1,b.size());
	            	answer="-"+mul(a,b);
				}
	            cout<<answer<<endl;
	            break;
	   }
	 }
	return 0; 

}

