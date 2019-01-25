#include <iostream>
#define INF 32767
#define MAX 100 
using namespace std;
 
void All_path_floyd_warshall(int n, int (&A)[MAX][MAX], int (&path)[MAX][MAX])
{
    for (int k = 0; k < n; k++)
    {
        for (int i = 0; i < n; i++)
        {
            for (int j = 0; j < n; j++)
            {
                if (A[i][j] <= A[i][k] + A[k][j])
                    path[i][j] = path[i][j];
                else
                    path[i][j] = path[k][j];
                if (A[i][j] > A[i][k] + A[k][j])
                    A[i][j] = A[i][k] + A[k][j];
            }
        }
    }
}

void print_path(int i, int j, int path[MAX][MAX])
{
    if (i == j)
        cout << i + 1 << " ";
    else{
        print_path(i, path[i][j], path);
        cout << j + 1 << " ";
    }
}

int main()
{
    freopen("in.dat", "r", stdin);
    freopen("out.dat", "w", stdout);
    int m, index;
    int matrix[MAX][MAX], p_matrix[MAX][MAX];  // matrix 保存最短路径，p_matrix保存所经过的点 
    cin >> m; //图的组数 
    cout << m << endl;
    for (index = 0; index < m; index++)
    {
        int n;
        cin >> n;
        cout << n << endl;
        for (int i = 0; i < n; i++)
        {
            for (int j = 0; j < n; j++)
            {
                cin >> matrix[i][j];
                if (matrix[i][j] == 100) //没有路径 
                    matrix[i][j] = INF;
            }
        }
        for (int i = 0; i < n; i++)
        {
            for (int j = 0; j < n; j++)
            {
                if (i == j || matrix[i][j] == 100)
                    p_matrix[i][j] = -1;//初始化为-1 
                else if (i != j || matrix[i][j] < 100)
                    p_matrix[i][j] = i; 
            }
        }
        All_path_floyd_warshall(n, matrix, p_matrix);
        for (int i = 0; i < n; i++)
        {
            for (int j = 0; j < n; j++)
                cout << matrix[i][j] << " ";
            cout << endl;
        }
        for (int i = 0; i < n; i++)
            for (int j = 0; j < n; j++)
            {
                if(matrix[i][j]==INF)
                   cout<<"NULL"; 
                else
                    print_path(i, j, p_matrix);
                cout << endl;
            }
    }
    return 0;
} 
