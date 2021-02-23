#include<stdio.h>

int transpose(int n,int m,int a[][100],int t[][100])
{
    int i,j;
    for(j=0;j<m;j++)
    {
        for(i=0;i<n;i++)
        {
            t[i][j]=a[j][i];
        }
    }
}