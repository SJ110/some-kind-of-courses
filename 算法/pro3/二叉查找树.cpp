#include <iostream>
#define MAXNUM 10  //���ڵ��� 
#define INF 9999.0   
using namespace std;

double optimal_bst(double p[MAXNUM+1],double q[MAXNUM+1],int (&root)[MAXNUM][MAXNUM],int n)
{ //����ppt�㷨���ɾ���e��w 
//����root��������ڵ� 
    double e[n+2][n+1],w[n+2][n+1];
    for(int i=1;i<=n+1;i++){
        e[i][i-1]=w[i][i-1]=q[i-1];
    }
    for(int l=1;l<=n;l++)
	{
        for(int i=1;i<=n-l+1;i++)
		{
            int j=i+l-1;
            e[i][j]=INF;
            w[i][j]=w[i][j-1]+p[j]+q[j];
            for(int r=i;r<=j;r++)
			{
                double t = e[i][r-1]+e[r+1][j]+w[i][j];
                if(t<e[i][j])
				{
                    e[i][j] = e[i][r-1]+e[r+1][j]+w[i][j];                
                    root[i-1][j-1] = r;
                }
            }
        }
    }
    return e[1][n];
}
/*void CONSTRUCT_OPTIMAL_BST(int** root, int i, int j, int flag){
	if (i <= j){
		if (flag == 1){
			cout << "k" << root[i][j] << "Ϊ��" << endl;
		}
		else if (flag == 0){
			cout << "k" << root[i][j] << "Ϊk" << j + 1 << "������" << endl;
		}
		else{
			cout << "k" << root[i][j] << "Ϊk" << i - 1 << "���Һ���" << endl;
		}
		CONSTRUCT_OPTIMAL_BST(root,i, root[i][j] - 1, 0);
		CONSTRUCT_OPTIMAL_BST(root,root[i][j] + 1, j, 2);
	}
	else if (j == (i - 1)){
		if (flag == 0){
			cout << "d" << j << "Ϊk" << i << "������" << endl;
		}
		else if (flag == 2){
			cout << "d" << j << "Ϊk" << j << "���Һ���" << endl;
		}
	}
}*/ 
void construct_optimal_bst(int start, int end, int root[MAXNUM][MAXNUM])
{ //��root�ݹ������ӽڵ� 
    int node = root[start][end];
    if (node - 2 < start)
        cout << "d" << node - 1 << "Ϊk" << node << "������" << endl;
    else
    {
        cout << "k" << root[start][node - 2] << "Ϊk" << node << "������" << endl;
        construct_optimal_bst(start, node - 2, root);
    }  //���������� 
    if (end < node)
        cout << "d" << end + 1 << "Ϊk" << node << "���Һ���" << endl;
    else
    {
        cout << "k" << root[node][end] << "Ϊk" << node << "���Һ���" << endl;
        construct_optimal_bst(node, end, root);
    } //���������� 
}

int main()
{
    int root[MAXNUM][MAXNUM];
    int n; //�ڵ���
    double p[MAXNUM+1], q[MAXNUM+1];
    freopen("in.dat", "r", stdin);
    freopen("out.dat", "w", stdout);
    cin >> n;
    for (int i = 1; i <= n; i++)
        cin >> p[i];
    for (int j = 0; j <= n; j++)
        cin >> q[j];
    cout << "����Ϊ��"<<optimal_bst(p,q,root,n) << endl;
    cout << "k" << root[0][n - 1] << "Ϊ��" << endl;  //������ڵ� 
    construct_optimal_bst(0, n - 1, root);
    return 0;
}
