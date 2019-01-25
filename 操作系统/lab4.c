#include<unistd.h>
#include<sys/stat.h> 
#include<stdio.h> 
#include<string.h> 
#include<stdlib.h> 
#include<dirent.h>
#include <locale.h>
#include<time.h>
#include <pwd.h> 
#include <grp.h>
#define N 256

void list_files(char *fullpath,char *path);
void print_status(char *path,int link_num,int size_num);
int comp(const void *a,const void *b);

int main(int argc,char* argv[])
{
	if(argc!=2){
		printf("enter two parameters\n");
		return 0;
	}
        char s[6];
        scanf("%s",s);
        while(strcmp(s,"1s-1r")!=0)
        {
            getchar();
            scanf("%s",s);
          } 
	setlocale(LC_COLLATE, "");  //set sorting order
	char *path;
	path=(char*)malloc(sizeof(argv[1])+1);
	int link=0;
	int size=0;
	strcpy(path,argv[1]);
//	path[strlen(argv[1])+1]='\0';

	struct stat statbuf; 
	if(stat(path,&statbuf)==-1)
	{
		printf("error fliename\n");
		return 0;
	}
	if(S_ISDIR(statbuf.st_mode)) //判断是否为目录 
		list_files(path,path); 
    else{
       for (; statbuf.st_nlink; statbuf.st_nlink /= 10)
           link++;
       for (; statbuf.st_size; statbuf.st_size /= 10)
           size++;
       print_status(path, link, size);
	}
	return 0;
}
void list_files(char *fullpath,char*path)
{
	struct dirent *entry = NULL;
	struct stat s_buf;
	DIR *dir=opendir(path);
	if(dir==NULL)
	{
		printf("fail to open path\n");
		exit(0);
	}
	chdir(path);
	if(strcmp(path,fullpath)!=0)
	    putchar('\n');
	printf("%s:\n",fullpath);
	int entry_count=0;
	while((entry=readdir(dir))!=NULL)
	{
		if(strncmp(entry->d_name,".",1)==0||strncmp(entry->d_name,"..",2)==0) continue ; //比较是否子串 是跳过 
		entry_count++;
	}
	
	int pos=0;
	rewinddir(dir); 
    struct dirent *entry_bufs = (struct dirent*)malloc(sizeof(struct dirent) * entry_count); //存放文件信息 
	while((entry=readdir(dir))!=NULL)
	{
		if(strncmp(entry->d_name,".",1)==0||strncmp(entry->d_name,"..",2)==0) continue;
		memcpy(entry_bufs+pos,entry,sizeof(struct dirent));  
		pos++; 
	 } 
	 qsort(entry_bufs,entry_count,sizeof(struct dirent),comp);
	 
     unsigned long total = 0;
     int link_max = 0, size_max = 0;
     int link_num = 0, size_num = 0;
     for(int i=0;i<entry_count;i++)
	 {
	 	entry=entry_bufs+i;
	 	stat(entry->d_name,&s_buf); //保存文件信息到s_buf 
	 	if(link_max<s_buf.st_nlink)
	 	  link_max=s_buf.st_nlink;
	 	if(size_max<s_buf.st_size)
	 	  size_max=s_buf.st_size;
	 	total+=s_buf.st_blocks;
	  } 
	  for (; link_max; link_max /= 10)
         link_num++;
      for (; size_max; size_max /= 10)
         size_num++;
   
    printf("total %lu documents\n",total*512/1024);
    for(int i=0;i<entry_count;i++)
    {
    	entry=entry_bufs+i;
    	print_status(entry->d_name, link_num, size_num); //print 文件信息 
	}
	//递归
	for(int i=0;i<entry_count;i++)
	{
		entry=entry_bufs+i;
		char *new_path = (char*)malloc(sizeof(*fullpath) + 2 + sizeof(entry->d_name)); //下一个目录 
		strcpy(new_path,fullpath);
		strcat(new_path,"/");
		strcat(new_path,entry->d_name);
		if(entry->d_type==4)  //字符设备 DT_CHR 
		   list_files(new_path,entry->d_name); //递归下一个文件 
	 } 
   chdir("..");
   closedir(dir);
}

int comp(const void *a,const void *b)
{  
        struct dirent *dir_a=(struct dirent*)a;
        struct dirent *dir_b=(struct dirent*)b;
        return strcoll(dir_a->d_name,dir_b->d_name);// 排序中文文件 
}

void print_status(char *path,int link_num,int size_num) 
{
	struct stat s_buf;
	char *time;
    struct passwd *pwd_buf;
    struct group *group_buf;
	char modstr[11];
	stat(path,&s_buf);
	strcpy(modstr,"----------");
	  if (S_ISDIR(s_buf.st_mode))
	  modstr[0] = 'd';
	if (S_ISCHR(s_buf.st_mode))
		modstr[0] = 'c';
	if (S_ISBLK(s_buf.st_mode))
		modstr[0] = 'b';
  if (S_ISFIFO(s_buf.st_mode))
    modstr[0] = 'p';
  /* User mod */
	if (s_buf.st_mode & S_IRUSR)
		modstr[1] = 'r';
	if (s_buf.st_mode & S_IWUSR)
		modstr[2] = 'w';
	if (s_buf.st_mode & S_IXUSR)
		modstr[3] = 'x';
  /* Group mod */
	if (s_buf.st_mode & S_IRGRP)
		modstr[4] = 'r';
	if (s_buf.st_mode & S_IWGRP)
		modstr[5] = 'w';
	if (s_buf.st_mode & S_IXGRP)
		modstr[6] = 'x';
 /* Other mod */
	if (s_buf.st_mode & S_IROTH)
		modstr[7] = 'r';
	if (s_buf.st_mode & S_IWOTH)
		modstr[8] = 'w';
	if (s_buf.st_mode & S_IXOTH)
		modstr[9] = 'x';
    pwd_buf = getpwuid(s_buf.st_uid);
    group_buf = getgrgid(s_buf.st_gid);
    time=ctime(&s_buf.st_mtime);  //文件最后访问时间 
    printf("%s %*d %s %s %*ld %.12s %-s\n", \
      modstr, link_num, (int)s_buf.st_nlink, pwd_buf->pw_name, 
      group_buf->gr_name, size_num, (long)s_buf.st_size, time + 4, path);
}
