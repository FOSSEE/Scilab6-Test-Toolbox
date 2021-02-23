#include<stdio.h>
#include"trans.h"

int main()
{
    int n,m,i,j;
    printf("Enter Rows and Columns: ");
    scanf("%d %d",&n,&m);
    int a[100][100];
    printf("\nEnter array: ");
    for(i=0;i<n;i++)
    {
        for(j=0;j<m;j++)
        {
            scanf("%d ",&a[i][j]);
        }
        printf("\n");
    }
    int t[100][100];
    transpose(n,m,a,t);

    printf("\nTranspose of the matrix:\n");
    for (i = 0; i < m; i++) 
    {
        for (j = 0; j < n; j++) 
        {
            printf("%d  ", t[i][j]);
        }
        printf("\n");
    }
    return 0;
}