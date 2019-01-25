#include<pthread.h>
#include<sys/types.h> 
#include<sys/sem.h>
#include<stdio.h>
#include<stdlib.h>
#define KEY 1 //�ź�����ʼֵ 
union semun{
   int val; 
   struct semid_ds *buf;
   unsigned short *array; 
   struct seminfo *_buf;

};

pthread_t p1,p2; //�߳� 
int mutex;
static int flag=0;
int i=1; 
int a=0;//�����
void *subp1(); //�����߳� 
void *subp2(); //��ӡ�߳� 

void P(int semid,int index)
{
    struct sembuf sem;
    sem.sem_num = index;
    sem.sem_op = -1;
    sem.sem_flg = 0; //������ǣ�0��IPC_NOWAIT��
    semop(semid,&sem,1); //1:��ʾִ������ĸ���
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
	   	   printf("�źŵ�ɾ��ʧ�ܣ��쳣����\n");
			  exit(1); 
	   }
        printf("�źŵ�ɾ���ɹ�����������\n");
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
