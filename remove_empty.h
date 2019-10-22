#ifndef _remove_h
#define _remove_h

#include "global.h"
#include "common.h"



/**************************************************************/
/* remove empty nodes in networks and output adjacency matrix */
/**************************************************************/
void remove_empty_node(network *node, int size, char* outputfile)
{
	int i, j,k,l,m,n;
	int NullCounter = 0;
	vector<int>emptynode;
	vector<vector<int> >Row_rmove_M;
	vector<vector<int> >Col_rmove_M;

	for (i=0; i<size; i++)
	{
		int sumdegree = node[i].degree + node[i].degree_n;
//		if (sumdegree == 0)			// remove degree = 0
//		if (sumdegree == 1)			// remove degree = 1
		if (node[i].degree == 0)	// remove positive degree = 0
		{
			NullCounter++;
			emptynode.push_back(i);
		}
		else
		{
			vector<int> rowvector;
			for (j = 0; j < size; j++)
			{
				rowvector.push_back(AdjacentMatrix[i][j]);
			}
			Row_rmove_M.push_back(rowvector);
		}
		
	}

	for (i=0; i<size; i++)
	{
		int sumdegree = node[i].degree + node[i].degree_n;
//		if (sumdegree != 0)			// MIDfull
//		if (sumdegree != 1)			// MID_remove
		if (node[i].degree != 0)	// MID_remove_remove
		{
			vector<int> colvector;
			for (j = 0; j < Row_rmove_M.size(); j++)
			{
				colvector.push_back(Row_rmove_M[j][i]);;
			}
			Col_rmove_M.push_back(colvector);
		}		
	}

	fstream fout1;
	fout1.open(outputfile,ios::out);
//	fout1<<"#original node "<<size<<"  #empty node "<<NullCounter<<endl;
	for (i = 0; i < Col_rmove_M.size(); i++)
	{
		for (j = 0; j < Col_rmove_M.size(); j++)
		{
			fout1<<Col_rmove_M[i][j]<<" ";
		}fout1<<endl;
	}
	fout1.close();

	cout<<"empty nodes: "<<NullCounter<<endl;
	fstream fout2;
	fout2.open("matrixfull_emptynode.txt",ios::out);

	//	fout1<<"#original node "<<size<<"  #empty node "<<NullCounter<<endl;
	for (i = 0; i < emptynode.size(); i++)
	{
		fout2<<emptynode[i]<<" ";
	}
	fout2.close();

	char** name = new char*[size];
	for ( i = 0; i < size; i++ )
	{
		name[i] = new char[256];
	}
	for ( i = 0; i < size; i++ )
	{
		strcpy(name[i] , "#");
	}
//	ifstream input("Fullname.txt",ios::in);
//	ifstream input("fullname_empty.txt",ios::in);
	ifstream input("fullname_empty_empty.txt",ios::in);
		
	if(input.fail())
	{
		cout<<"Oops!Couldn't open name data file\n";
		exit(1);
	}
		
		for ( i = 0; i <size; i++ )
		{
			input >> name[i];
			input.get();
		}
		
		input.close();
		

		for ( m = 0; m < emptynode.size(); m++ )
		{
				strcpy(name[emptynode[m]] , "#");
		}

		int countername = 0;
		for ( n = 0; n < 10; n++ )
		{
			cout<<name[n] <<endl;
		}
		fstream fout3;
//	fout3.open("fullname_empty.txt",ios::out); //remove empty node's name
//	fout3.open("fullname_empty_empty.txt",ios::out);
	fout3.open("fullname_empty_empty_empty.txt",ios::out);
		for ( n = 0; n < size; n++ )
		{
			if (strcmp(name[n] , "#")) 
			{
				countername++;
				fout3<<name[n]<<endl;
			}
		}
}


#endif