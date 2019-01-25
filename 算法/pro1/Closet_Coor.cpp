#include <iostream>
#include <algorithm>
#include <cmath>
#define MAXNODE 100
#define BIG 65536
using namespace std;

struct Node
{
    double getDistance(Node &b) const
    {
        return sqrt((x - b.x)*(x - b.x) + (y - b.y)*(y - b.y));
    }
    
    bool operator==(Node b)
    {
    	if(x == b.x && y == b.y)
           return true;
        else return false;
    } 
    
int x, y;
};

struct Pair
{
    Node a, b;
    double dist;
};

struct Pairs
{
    int count;
    Pair p[100];
    double dist;
    Pairs()
    {
        count = 0;
        dist = BIG;
    }
};

bool sortx(Node a, Node b)  
{//横坐标排序 
    return a.x < b.x;
}

bool sorty(Node a, Node b)
{//纵坐标排序 
    return a.y < b.y;
}

void delete_samenodes(Pairs &res)
{//去掉输入点队中相同点对 
    int i,j,k;
    for (i = 0; i < res.count; i++)
    {
        for (j = i+1; j < res.count; j++)
        {
            if ((res.p[j].a == res.p[i].a && res.p[j].b == res.p[i].b) || (res.p[j].a == res.p[i].b && res.p[j].b == res.p[i].a))
            {
                for(k=j;k<res.count-1;k++){
                    res.p[k]=res.p[k+1];
                }
                res.count--;
                break;
            }
        }
    }
}

Pairs ClosestPair(int start, int end, Node p[])
{  //求最近点对 
    Pairs res;
    Pair s;
    s.a = p[start];
    s.b = p[start];
    s.dist = BIG;
    res.count = 0;
    for (int i = start; i < end; i++)
    {
        for (int j = i + 1; j < end; j++)
        {
            double dist = p[i].getDistance(p[j]);
            if (dist <= s.dist)
            {
                if (dist < s.dist)
                {
                    res.count = 0;
                    res.dist = dist;
                }
                s.dist = dist;
                s.a = p[i];
                s.b = p[j];
                res.p[res.count] = s;
                res.count++;
            }
        }
    }
    return res;
}

void make_nodes(Pairs &a,Pairs &b)
{// 去掉结果中重复的点对 
    int flag;
    for (int i = 0; i < b.count; i++)
        {
            flag=0;
            for (int j = 0; j < a.count; j++)
            {
                if ((a.p[j].a == b.p[i].a && a.p[j].b == b.p[i].b) || (a.p[j].a == b.p[i].b && a.p[j].b == b.p[i].a))
                {
                    flag = 1;
                    a.count--;
                    break;
                }
            }
            if (flag != 1)
                a.p[a.count + i] = b.p[i];
        }
        a.count += b.count;
}
Pairs getAreaPair(int start, int end, Node p[])
{//得到左中右最近点对 
    Pairs left, right, mid, res;
    Node tmp[100];
    bool l_flag = 0;
    int i, divide = (end + start) / 2, count;
    double dist;
    if (start + 1 == end)
    {
        Pair ss;
        Pairs s;
        s.count = 1;
        ss.a = p[start];
        ss.b = p[end];
        s.dist = ss.dist = p[start].getDistance(p[end]);
        s.p[0] = ss;
        return s;
    }
    left = getAreaPair(start, divide, p); //递归 
    right = getAreaPair(divide, end, p); //递归 
    if (left.dist < right.dist)
    {
        dist = left.dist;
        l_flag = true;
        res = left;
    }
    else if (left.dist > right.dist)
    {
        dist = right.dist;
        res = right;
    }
    else
    {
        dist = left.dist;
        res = left;
       make_nodes(res,right);
    }
    count = 0;
    for (i = divide; i >= start && p[divide].x - p[i].x < dist; i--)
        tmp[count++] = p[i];
    for (i = divide + 1; i < end && p[divide].x - p[i].x < dist; i++)
        tmp[count++] = p[i];
    sort(tmp, tmp + count, sorty);
    mid = ClosestPair(0, count - 1, tmp);
    if (mid.dist < dist)
        res = mid;
    else if (mid.dist == dist)
        make_nodes(res,mid);
    int j,k;
    delete_samenodes(res);
    return res;
}

int main()
{
    int num, x, y, times;//times--组数  num--每组个数 
    Node p[MAXNODE];
    Pairs res;
    freopen("in.dat", "r", stdin);
    freopen("out.dat", "w", stdout);
   cin>>times;
    for (int j = 0; j < times; j++)
    {
        cin>>num;
        for (int i = 0; i < num; i++)
        {
            cin>>x>>y;
            p[i].x = x;
            p[i].y = y;
        }
        sort(p, p + num, sortx);
        res = getAreaPair(0, num - 1, p);
        for (int 	i = 0; i < res.count; i++)
          {
            cout<<"("<<res.p[i].a.x<<","<< res.p[i].a.y<<") ";
            cout<<"("<<res.p[i].b.x<<","<< res.p[i].b.y<<")  "<<endl;
        }
        cout<<endl;
    }
   // system("pause");
    return 0;
}
