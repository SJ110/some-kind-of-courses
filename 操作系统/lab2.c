#include<pthread.h>
#include<sys/types.h> 
#include<sys/sem.h>
#include<stdio.h>
#include<stdlib.h>
#define KEY 1 //信号量初始值 
union semun{
   int val; 
   struct semid_ds *buf;
   unsigned short *array; 
   struct seminfo *_buf;

};

pthread_t p1,p2; //线程 
int mutex;
static int flag=0;
int i=1; 
int a=0;//计算和
void *subp1(); //计算线程 
void *subp2(); //打印线程 

void P(int semid,int index)
{
    struct sembuf sem;
    sem.sem_num = index;
    sem.sem_op = -1;
    sem.sem_flg = 0; //操作标记：0或IPC_NOWAIT等
    semop(semid,&sem,1); //1:表示执行命令的个数
    return;
}

void V(int semid,int index)
{
    struct sembuf sem;
    sem.sem_num = index;
    sem.sem_op =  1;
    sem.sem_flg = 0;
    semop(semid,&sem,1);
    return;
}


int main()
{
    
    mutex=semget(IPC_PRIVATE,2,IPC_CREAT | 0666); 

    semctl(mutex,0,SETVAL,0);

    semctl(mutex,1,SETVAL,1);

	pthread_create(&p1,NULL,subp1,NULL);
	pthread_create(&p2,NULL,subp2,NULL);
pthread_join(p1,NULL);
	pthread_join(p2,NULL);
	if(semctl(mutex,0,IPC_RMID,0)==-1)
	   {
	   	   printf("信号灯删除失败，异常返回\n");
			  exit(1); 
	   }
        printf("信号灯删除成功，正常返回\n");
	return 0;
	 
}

void *subp1()
{
     for(;i<=100;i++){
     	P(mutex,1);
     	a=a+i;
     	V(mutex,0);
	}
 	flag=1;
 return NULL;
}

void *subp2()
{
	while(1)
	{
	   P(mutex,0);
	   printf("%d\t%d\n",a,i);
           if(flag==1){
        	
                return NULL;
}
           V(mutex,1);
	}      
        return NULL; 
}
