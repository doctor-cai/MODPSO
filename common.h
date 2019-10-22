#ifndef __COMMON_H_
#define __COMMON_H_

#include <algorithm>


double distanceArray(double vec1[], double vec2[], int dim)
{
    double sum = 0;
	for(int n=0; n<dim; n++)
		sum+= (vec1[n] - vec2[n])*(vec1[n] - vec2[n]);
	return sqrt(sum);
}

double distanceVector(vector <double> &vec1, vector <double> &vec2)
{
    double sum = 0;
	for(int n=0; n<vec1.size(); n++)
		sum+=(vec1[n] - vec2[n])*(vec1[n] - vec2[n]);
	return sqrt(sum);
}


double norm_vector(vector <double> &x)
{
	double sum = 0;
	for(int i=0;i<x.size();i++)
        sum = sum + x[i]*x[i];
    return sqrt(sum);
}

double sum_vector(vector<double>&vec)
{
	double sum = 0;
	for(int i=0;i<vec.size();i++)
        sum = sum + vec[i];
    return sum;
}

double innerproduct(vector <double>&vec1, vector <double>&vec2)
{
    double sum = 0;
	for(int i=0; i<vec1.size(); i++)
		sum+= vec1[i]*vec2[i];
	return sum;
}

void minfastsort(double x[], int idx[], int n, int m)
{
    for(int i=0; i<m; i++)
	{
		for(int j=i+1; j<n; j++)
			if(x[i]>x[j])
			{
				double temp = x[i];
				x[i]        = x[j];
				x[j]        = temp;
				int id      = idx[i];
				idx[i]      = idx[j];
				idx[j]      = id;
			}
	}
}



void ReadFile(char *filepath,int** p,int row,int col)

{
	int i;
	int j;
	ifstream input(filepath,ios::in);
	
	if(input.fail())
	{
		cout<<"Oops!Couldn't open data file\n";
		exit(1);
	}
	
	for ( i = 0;i < row;i++ )
	{
		for ( j = 0;j < col;j++ )
		{
			input >> p[i][j];
			input.get();
		}
	}
	
	input.close();
}


void NodeInformation()
{
	for ( int i = 0;i < numVariables;i++ )
	{
		int positive_sum = 0;
		int negative_sum = 0;
		
		for ( int j = 0;j < numVariables;j++ )
		{
			if ( AdjacentMatrix[i][j] == 1 )
			{
				node[i].neighbours.push_back(j);
				positive_sum += AdjacentMatrix[i][j];
			}
			else if (AdjacentMatrix[i][j] == -1)
			{
				//abs for int,fabs for float and labs for long
				node[i].neighbours_n.push_back(j);
				negative_sum += abs(AdjacentMatrix[i][j]);
			}			
		}
		node[i].degree = positive_sum;
		node[i].degree_n = negative_sum;
	}
}


double calc_NMI(vector<int> gene,char *filepath)

{
	int i,j,k,m;
	double Temp_NMI = 0.0;
	int* p = new int[numVariables];

	ifstream input(filepath,ios::in);
		
	if(input.fail())
	{
		cout<<"Oops!Couldn't open real label file\n";
	//	exit(1);
	}
		
	for ( i = 0;i < numVariables;i++ )
	{

		input >> p[i];
		input.get();
	}

	vector<int> copylabel;
	copylabel = gene;

	vector<vector<int> >A;  //the detected community
	vector<vector<int> >B;  //the real community

	for ( i = 0;i < numVariables;i++ )
	{	//calculate A				
		if ( copylabel[i] != -1 )
		{
			vector<int> s1;	//store every component in each cluster
			s1.push_back(i);
			for ( j = i+1;j < numVariables;j++ )
			{
				if ( copylabel[i] == copylabel[j] )
				{
					s1.push_back(j);
					copylabel[j] = -1;
				}
			}//end j
			copylabel[i] = -1;
			A.push_back(s1);
		}//end if
			//calculate B
		if ( p[i] != -1 )
		{
			vector<int> s2;	//store every component in each cluster
			s2.push_back(i);
			for ( k = i+1;k < numVariables;k++ )
			{
				if ( p[i] == p[k] )
				{
					s2.push_back(k);
					p[k] = -1;
				}
			}//end k
			p[i] = -1;
			B.push_back(s2);
		}//end if
	}//end i		

/*/////////////////////////////////////////
		cout<<"detected A"<<endl;
	for ( i = 0;i < A.size();i++ )
	{
		cout<<"第 "<<i+1<<" 类:"<<endl;
		for ( k = 0;k < A[i].size();k++ )
		{
		//	cout<<A[i][k]+1<<' ';
			cout<<A[i][k]<<' ';
		}
		cout<<endl;
	}cout<<endl;
/*//////////////////////////////////////////*/

	/*/////////////////////////////////////////
		cout<<"real ones"<<endl;
	for ( i = 0;i < B.size();i++ )
	{
		cout<<"第 "<<i+1<<" 类:"<<endl;
		for ( k = 0;k < B[i].size();k++ )
		{
		//	cout<<A[i][k]+1<<' ';
			cout<<B[i][k]<<' ';
		}
		cout<<endl;
	}cout<<endl;
/*//////////////////////////////////////////*/
	double x = 0.0;
	double y = 0.0;
	int *ci = new int[A.size()];//sum of row
	int *cj = new int[B.size()];//sum of col
//	vector<vector<int> >C;		//the fuzzy matrix
	vector<vector<int> >C(A.size(),vector<int>(B.size()));

	for ( i = 0;i < A.size();i++ )
		ci[i] = 0;
	for ( j = 0;j < B.size();j++ )
		cj[j] = 0;

	for ( i = 0;i < A.size();i++ )
		for ( j = 0;j < B.size();j++ )
			C[i][j] = 0;

	for ( i = 0;i < A.size();i++ )
	{
		for ( j = 0;j < B.size();j++ )
		{
			for ( k = 0;k < A[i].size();k++ )
			{
				for ( m = 0;m < B[j].size();m++ )
				{
					if ( A[i][k] == B[j][m] )
					{
						C[i][j] += 1;
						break;
					}//end if
				}//end m
			}//end k
		}//end j	
	}//end i

	for ( i = 0;i < A.size();i++ )
	{
		for ( j = 0;j < B.size();j++ )
		{
			ci[i] += C[i][j];
		}
	}

	for ( j = 0;j < B.size();j++ )
	{
		for ( k = 0;k < A.size();k++ )
		{
			cj[j] += C[k][j];
		}
	}
	
	double temp1 = 0.0;

	for ( i = 0;i < A.size();i++ )
	{
		temp1 += 1.0*ci[i]*log10(1.0*ci[i]/numVariables);
		for ( j = 0;j < B.size();j++ )
		{
			if ( C[i][j] != 0 )
			{
				x += 1.0*C[i][j]*log10(1.0*C[i][j]*numVariables/(ci[i]*cj[j]));
			}
		}
		
	}

	for ( j = 0;j < B.size();j++ )
	{
		y += 1.0*cj[j]*log10(1.0*cj[j]/numVariables);
	}

	Temp_NMI = -2*x/(temp1 + y);
	

	delete[] p;
	delete[] ci;
	delete[] cj;
	A.clear();
	B.clear();
	C.clear();

	return Temp_NMI;
}

//template<class T>
void rehearse(vector<int> x)
{
	vector<int> copylabel;

	copylabel = x;
	
	vector<vector<int> >A;  //the detected community
	
	for ( int i = 0;i < numVariables; i++ ){	//calculate A				
		if ( copylabel[i] != -1 ){
			vector<int> s1;	//store every component in each cluster
			s1.push_back(i);
			for ( int j = i+1;j < numVariables;j++ ){
				if ( copylabel[i] == copylabel[j] ){
					s1.push_back(j);
					copylabel[j] = -1;
				}
			}//end j
			copylabel[i] = -1;
			A.push_back(s1);
		}//end if
	}//end i	
	
	for (int t_row = 0; t_row < A.size(); t_row++)
	{
		for (int t_col = 0; t_col < A[t_row].size(); t_col++)
		{
			x[A[t_row][t_col]] = t_row+1;
		}
	}
	A.clear();
}

/*----print the detected partitions for----
  ----the unknown structure networks------*/
void PrintPartition(int* gene,char *filepath)
{
	int i,j,k,m;

	int* copylabel = new int[numVariables];

	for( j = 0;j < numVariables;j++ )
		copylabel[j] = gene[j];

	vector<vector<int> >A;  //the detected community

	for ( i = 0;i < numVariables;i++ ){	//calculate A				
		if ( copylabel[i] != -1 ){
			vector<int> s1;	//store every component in each cluster
			s1.push_back(i);
			for ( j = i+1;j < numVariables;j++ ){
				if ( copylabel[i] == copylabel[j] ){
					s1.push_back(j);
					copylabel[j] = -1;
				}
			}//end j
			copylabel[i] = -1;
			A.push_back(s1);
		}//end if
	}//end i	
	
	delete [] copylabel;
	
	int* p = new int[numVariables];
	
	for ( i = 0;i < A.size();i++ ){
		for ( k = 0;k < A[i].size();k++ ){
			p[A[i][k]] = i + 1;
		}
	}
	
//	cout<<A.size()<<" clusters have been detected"<<endl;
	
	ofstream output(filepath,ios::out);
	output<<"*vertices "<<numVariables<<endl;
				
	for ( i = 0;i < numVariables;i++ )
		output<<p[i]<<endl;
	
	output.close();
}



int deltafun(int a, int b)
{
	if (a == b)
		return 1;
	else return 0;
}


double calcQ(vector<int> pos)
{
	double R;
	unsigned int i, j;

	int* copylabel = new int[numVariables];
	
	for( j = 0;j < numVariables;j++ )
		copylabel[j] = pos[j];
	
	vector<vector<int> >A;  //the detected community
	
	for ( i = 0;i < numVariables;i++ ){	//calculate A				
		if ( copylabel[i] != -1 ){
			vector<int> s1;	//store every component in each cluster
			s1.push_back(i);
			for ( j = i+1;j < numVariables;j++ ){
				if ( copylabel[i] == copylabel[j] ){
					s1.push_back(j);
					copylabel[j] = -1;
				}
			}//end j
			copylabel[i] = -1;
			A.push_back(s1);
		}//end if
	}
	
//	cout<<A.size()<<" clusters have been detected"<<endl;
	A.clear();
	delete[] copylabel;

	if (SignedFlag == 0)
	{
		if (strlen(NetworkName) == 0)
		{
			R = 0;
		}
		else
		{
			for (i = 0; i < numVariables; i++)
				R += node[i].degree;
			R = 1.0 / R;
		}
		
		double Q = 0;
		for ( i = 0;i < numVariables;i++ ){
			int di = node[i].degree;
			int u = pos[i];
			for ( j = 0;j < numVariables;j++ ){
					int dj = node[j].degree;
					int v = pos[j];
					Q += (AdjacentMatrix[i][j] - di * dj * R)*deltafun(u, v);
				
			}
		}
		Q *=  R;
		return Q;
	} 
	else if (SignedFlag == 1)
	{		
		double Q = 0;
		double positive_degree = 0, negative_degree = 0;
		for (i = 0;i < numVariables;i++)
		{
			positive_degree += node[i].degree;
			negative_degree += node[i].degree_n;
		}
		R = positive_degree + negative_degree;
		R = 1.0/R;
		positive_degree = 1.0/positive_degree;
		negative_degree = 1.0/negative_degree;
		for ( i = 0;i < numVariables;i++ ){
			int idp = node[i].degree;
			int idn = node[i].degree_n;
			int u = pos[i];
			for ( j = 0;j < numVariables;j++ ){
				int jdp = node[j].degree;
				int jdn = node[j].degree_n;
				int v = pos[j];
				Q += (AdjacentMatrix[i][j]-(idp*jdp*positive_degree-idn*jdn*negative_degree))*deltafun(u,v);
			}
		}
		Q *=  R;
	return Q;
	}
}

/*--only for two objectives scinorio--*/
/*-----remove same point in the PF----*/
vector<vector<double> > remove_same_point(vector<vector<double> >pop)
{
	vector<double> pop_col1;
	vector<double> pop_col2;
	for (int i = 0; i < pop.size(); i++)
	{
		pop_col1.push_back(pop[i][0]);
		pop_col2.push_back(pop[i][1]);
	}

	vector<double>::iterator pop_col1_iter;
	vector<double>::iterator pop_col2_iter;

	sort(pop_col1.begin(),pop_col1.end());
	pop_col1_iter = unique(pop_col1.begin(),pop_col1.end());
	pop_col1.erase(pop_col1_iter,pop_col1.end());

	sort(pop_col2.begin(),pop_col2.end());
	pop_col2_iter = unique(pop_col2.begin(),pop_col2.end());
	pop_col2.erase(pop_col2_iter,pop_col2.end());

	if (pop_col2.size() != pop_col1.size())
	{
		cerr<<"PF is wrong"<<endl;
	//	exit(1);
	}

	reverse(pop_col2.begin(),pop_col2.end());
	
	vector<vector<double> >front;
	for (int j = 0; j < pop_col1.size(); j++)
	{
		vector<double> temp;
		temp.push_back(pop_col1[j]);
		temp.push_back(pop_col2[j]);

		front.push_back(temp);
	}

	return front;
}

void perturbation(int a[],int N)
{
    int i;
    int index;
    int temp;
    srand((unsigned)time(NULL));
    for (i = N - 1; i > 0; i--)
    {
        index = rand() % i;
		swap(a[i],a[index]);
    }
}

void IGLP(vector<int> gene,network* node)

{   
	int n,i,j,k,l;
	
	for ( n = 0;n < 5;n++ )
	{
		for ( i = 0;i < numVariables;i++ )
		{	
			int NeighborSize = node[i].neighbours.size();
			if (NeighborSize == 0)
			{
//				gene[i] = 0;
			} 
			else
			{
				if (NeighborSize == 1)
				{
					gene[i] = gene[node[i].neighbours[0]];
				} 
				else
				{
					int	sum = 0;
					int maxr = -1;//record index of i's neighbour which ...	
					int label = -1;
					int	temp = 1;
					
					for ( j = 0;j < NeighborSize;j++ )
					{
						int counter = 1;//record no. of nodes that has same label with j
						
						for ( k = j + 1;k < NeighborSize;k++ )
						{
							int p = gene[node[i].neighbours[j]];
							int q = gene[node[i].neighbours[k]];
							if( p == q )  counter++;
						}//end k
						
						if ( temp < counter )
						{
							maxr = j;
							temp = counter;
						}
					}//end j
					
					for ( l = 0;l < NeighborSize;l++ )
					{
						int u = gene[node[i].neighbours[l]];
						int v = gene[i];
						if ( u == v )
						{
							label = u;
						}
					}//end l
					if (label != -1 && maxr == -1)
					{
						gene[i] = label;
					}
					else 
					{
						if (maxr != -1)
						{
							gene[i] = gene[node[i].neighbours[maxr]];
						} 
						else
						{
							int randneighbor = (int)(rnd_uni(&rnd_uni_init)*NeighborSize);
							gene[i] = gene[node[i].neighbours[randneighbor]];
						}
					}
				}
			}
		}//end i
	}//end n
}



void heuristic_initial(vector<int> gene,network* node)
{
	int thita = 0.2*numVariables;
	for ( int m = 0;m < thita;m++ )
	{
		int position  = int(numVariables * rnd_uni(&rnd_uni_init));
		if (position == numVariables) position -= 1;
		
		if (node[position].neighbours.size() != 0)
		{
			for ( int k = 0;k < node[position].neighbours.size();k++ )
			{			
				gene[node[position].neighbours[k]] = gene[position];
			}
		} 
	}
}



bool check_label()
{
	if (strlen(LabelName) > 0)
	/*
	if (!strcmp(strlabel , "RealWorld\\new1000-6label.txt") || 
		!strcmp(strlabel , "RealWorld\\real_label_FB50.txt") ||
		!strcmp(strlabel , "RealWorld\\real_label_25_point.txt") ||
		!strcmp(strlabel , "RealWorld\\real_label_125_point.txt") ||
		!strcmp(strlabel , "RealWorld\\real_label_karate.txt") ||
		!strcmp(strlabel , "RealWorld\\real_label_dolphin.txt") ||
		!strcmp(strlabel , "RealWorld\\real_label_football.txt") ||
		!strcmp(strlabel , "RealWorld\\real_label_polbook.txt") ||
		!strcmp(strlabel , "GNExtend\\real0.0.txt") ||
		!strcmp(strlabel , "GNExtend\\real0.1.txt") ||
		!strcmp(strlabel , "GNExtend\\real0.15.txt") ||
		!strcmp(strlabel , "GNExtend\\real0.2.txt") ||
		!strcmp(strlabel , "GNExtend\\real0.25.txt") ||
		!strcmp(strlabel , "GNExtend\\real0.3.txt") ||
		!strcmp(strlabel , "GNExtend\\real0.35.txt") ||
		!strcmp(strlabel , "GNExtend\\real0.4.txt") ||
		!strcmp(strlabel , "GNExtend\\real0.45.txt") ||
		!strcmp(strlabel , "GNExtend\\real0.5.txt") ||
		!strcmp(strlabel , "GNExtend\\real0.05.txt") ||
		!strcmp(strlabel , "RealWorld\\sloeven1label.txt") ||
		!strcmp(strlabel , "RealWorld\\gahuku2label.txt") ||
		!strcmp(strlabel , "RealWorld\\datalabel.txt")||
		!strcmp(strlabel , "LFR\\0.00.CLU")||
		!strcmp(strlabel , "LFR\\0.05.CLU")||
		!strcmp(strlabel , "LFR\\0.10.CLU")||
		!strcmp(strlabel , "LFR\\0.15.CLU")||
		!strcmp(strlabel , "LFR\\0.20.CLU")||
		!strcmp(strlabel , "LFR\\0.25.CLU")||
		!strcmp(strlabel , "LFR\\0.30.CLU")||
		!strcmp(strlabel , "LFR\\0.35.CLU")||
		!strcmp(strlabel , "LFR\\0.40.CLU")||
		!strcmp(strlabel , "LFR\\0.45.CLU")||
		!strcmp(strlabel , "LFR\\0.50.CLU")||
		!strcmp(strlabel , "LFR\\0.55.CLU")||
		!strcmp(strlabel , "LFR\\0.60.CLU")||
		!strcmp(strlabel , "LFR\\0.65.CLU")||
		!strcmp(strlabel , "LFR\\0.70.CLU")||
		!strcmp(strlabel , "LFR\\0.75.CLU")||
		!strcmp(strlabel , "LFR\\0.80.CLU"))*/
		return true;
	else return false;
}


#endif