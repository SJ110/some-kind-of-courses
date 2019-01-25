#include <iostream>
#define MAXNUM 10  //最大节点数 
#define INF 9999.0   
using namespace std;

double optimal_bst(double p[MAXNUM+1],double q[MAXNUM+1],int (&root)[MAXNUM][MAXNUM],int n)
{ //对照ppt算法生成矩阵e和w 
//再由root性质输出节点 
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
			cout << "k" << root[i][j] << "为根" << endl;
		}
		else if (flag == 0){
			cout << "k" << root[i][j] << "为k" << j + 1 << "的左孩子" << endl;
		}
		else{
			cout << "k" << root[i][j] << "为k" << i - 1 << "的右孩子" << endl;
		}
		CONSTRUCT_OPTIMAL_BST(root,i, root[i][j] - 1, 0);
		CONSTRUCT_OPTIMAL_BST(root,root[i][j] + 1, j, 2);
	}
	else if (j == (i - 1)){
		if (flag == 0){
			cout << "d" << j << "为k" << i << "的左孩子" << endl;
		}
		else if (flag == 2){
			cout << "d" << j << "为k" << j << "的右孩子" << endl;
		}
	}
}*/ 
void construct_optimal_bst(int start, int end, int root[MAXNUM][MAXNUM])
{ //由root递归生成子节点 
    int node = root[start][end];
    if (node - 2 < start)
        cout << "d" << node - 1 << "为k" << node << "的左孩子" << endl;
    else
    {
        cout << "k" << root[start][node - 2] << "为k" << node << "的左孩子" << endl;
        construct_optimal_bst(start, node - 2, root);
    }  //生成左子树 
    if (end < node)
        cout << "d" << end + 1 << "为k" << node << "的右孩子" << endl;
    else
    {
        cout << "k" << root[node][end] << "为k" << node << "的右孩子" << endl;
        construct_optimal_bst(node, end, root);
    } //生成右子树 
}

int main()
{
    int root[MAXNUM][MAXNUM];
    int n; //节点数
    double p[MAXNUM+1], q[MAXNUM+1];
    freopen("in.dat", "r", stdin);
    freopen("out.dat", "w", stdout);
    cin >> n;
    for (int i = 1; i <= n; i++)
        cin >> p[i];
    for (int j = 0; j <= n; j++)
        cin >> q[j];
    cout << "代价为："<<optimal_bst(p,q,root,n) << endl;
    cout << "k" << root[0][n - 1] << "为根" << endl;  //输出根节点 
    construct_optimal_bst(0, n - 1, root);
    return 0;
}
