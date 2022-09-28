#include<stdio.h>
#define n 5
int q[n], data, f = -1, r = -1, i; 
void insert();
void delete (); 
void display(); 
void main()
{
    int choice, cont = 1; 
    while (cont == 1)
    {
        printf("\n\t1.Insert element in queue"); 
        printf("\n\t2.Delete element from queue"); 
        printf("\n\t3.Display all elements of queue"); 
        printf("\n\tEnter your choice :"); 
        scanf("%d",&choice);
        switch (choice)
    {
        case 1:
            insert(); break;
        case 2:
            delete (); break;
        case 3:
            display(); break;
        default:
            printf("\n\tInvalid choice.");
    }
        printf("\n\tDo you want to continue(1/0) :"); scanf("%d", &cont);
    }
}
    void insert()
    {
        if (r == n - 1)
        {
            printf("\n\tOverflow.");
        }
        else
    {
        if (f == -1)
        {
            f = 0;
        }
        printf("\n\tEnter the data :"); scanf("%d",&data);
        r = r + 1;
        q[r] = data;
    }
    }
void delete ()
{
    if (f == -1)
    {
        printf("\n\tUnderflow.");
    }
    else
    {
        data = q[f];
        printf("\n\tElement deleted from queue is :%d",q[f]); 
        f = f + 1;
    }
}
void display()
{
    if (f == -1)
    {
        printf("\n\tUnderflow.");
    }
    else
    {
        printf("\n\tElements in queue."); 
        for (i = f; i <= r; i++)
        {
            printf("\n\t%d", q[i]);
        }
    }
}
