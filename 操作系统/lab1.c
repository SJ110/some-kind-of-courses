#include<stdio.h> 
#include<string.h> 
#include<sys/types.h> 
#include<sys/wait.h> 
#include<signal.h>
#include<stdlib.h>
#include<unistd.h>
#define MAXBUFFER 102


static pid_t pid1; //�ӽ���1 
static pid_t pid2; //�ӽ���2

void sigmain(int sig)  //sigmain
{
	kill(pid1,SIGUSR1);
	kill(pid2,SIGUSR1);
}   

void sigpid1(int sig) //sigpid1
{
	printf("Child Process l is Killed by Parent!\n");
	exit(0);
}

void sigpid2(int sig)
{
	printf("Child Process 2 is Killed by Parent!\n");
	exit(0);
}

int main()
{
	int status;
	int pipefd[2]; 
	//int result=pipe(pipefd); 
        pipe(pipefd);
	//pipefd[0]ֻ�����ڶ�;  pipe[1]ֻ������д

    char buffer[MAXBUFFER]; //������ 
    char buffer2[MAXBUFFER];
	pid1=fork();
	 if(pid1==0)
	 {
	 	signal(SIGINT,SIG_IGN);  //���ú����ź��� 
	 	signal(SIGUSR1,sigpid1);
	 	close(pipefd[0]); //д��ʱ�رն�ͨ�� 
	 	int count=1;
	 	while(1)
	 	{
	 		sprintf(buffer,"I send you %d times.\n",count);
			//lockf(pipefd[1],1,0);
	 		write(pipefd[1],buffer,sizeof(buffer));
	 		count++;
			//lockf(pipefd[1],0,0);
	 		sleep(1);
		 }
	 }
	/*if(pid2==-1)
	{
		printf("failed to fork pid2.\n");
		return -1;
	}*/
	else
{
	pid2=fork();
	if(pid2==0)
	{
		signal(SIGINT,SIG_IGN);  //���ú����ź��� 
		signal(SIGUSR1,sigpid2);
		//close(pipefd[1]); //����ʱ�ر�дͨ��
		while(1)
		{
			read(pipefd[0],buffer,sizeof(buffer)); //����ܵ� 
			//buffer2[size]='\0';
			//lockf(pipefd[0],0,0);
			printf("%s",buffer); 
                        memset(buffer,'\0',MAXBUFFER);
		 } 
	}
	else
{
	signal(SIGINT,sigmain);
	waitpid(pid1,&status,0);
	waitpid(pid2,&status,0);
	close(pipefd[0]);//�رն��ܵ� 
	close(pipefd[1]);//�ر�д�ܵ� 
	printf("Parent Process is Killed!\n");
	exit(0); 
}
}
}
