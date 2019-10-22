#ifndef __OBJECTIVE_H_
#define __OBJECTIVE_H_

#include "global.h"


void objectives(vector<int> x_var,vector<double> &y_obj)
{
	int i,j,k;		
//	rehearse(x_var);
	vector<int> copygene;
	vector<vector<int> >si;	//to store the k clusters and the elements

	for(i=0;i<numVariables;i++)
		copygene.push_back(x_var[i]);
	
	for ( i = 0;i < numVariables;i++ )
	{	//store every component in each cluster
		if ( copygene[i] != -1 )
		{
			vector<int> s;
			s.push_back(i);
			for ( j = i+1;j < numVariables;j++ )
			{
				if ( copygene[i] == copygene[j] )
				{
					s.push_back(j);
					copygene[j] = -1;
				}
			}//end j
			copygene[i] = -1;
			si.push_back(s);
		}//end if
	}//end i

	int clusters = si.size();
	
	if (SignedFlag == 0)
	{
		double Temp_RA = 0.0, Temp_RC = 0.0;
			
		for ( i = 0;i < si.size();i++ )
		{		
			int vs_i = 0;
			int ki_out = 0;
			
			for ( j = 0;j < si[i].size();j++ )
			{
				int a = si[i][j];
				int kj_in = 0;
				
				for ( k = 0;k < si[i].size();k++ )
				{
					int b = si[i][k];
					kj_in += AdjacentMatrix[a][b];
				}//end k
				vs_i += kj_in;
				ki_out += (node[a].degree - kj_in);
			}//end j

			Temp_RA += 1.0 * vs_i/si[i].size();
			Temp_RC += 1.0 * ki_out/si[i].size();	
		}//end i

		copygene.clear();
		si.clear();

	/*--------------------------------------------------------------*/
	/* for minimizing the objectives */
		y_obj[0] = delta * (numVariables - clusters) - Temp_RA;	//KKM
		y_obj[1] = Temp_RC;									    //RC
	/*--------------------------------------------------------------*/
	} 
	else if (SignedFlag == 1)
	{
		double SKKM = 0;
		double SRC = 0;
		for ( i = 0;i < si.size();i++ )
		{		
			int L_positive = 0;
			int L_negative = 0;
			int L_positive_out = 0;
			int L_negative_out = 0;
			
			for ( j = 0;j < si[i].size();j++ )
			{
				int a = si[i][j];
				int L_plus = 0;
				int L_minus = 0;
				
				for ( k = 0;k < si[i].size();k++ )
				{
					int b = si[i][k];
					if (AdjacentMatrix[a][b]==1)
					{
						L_plus+=AdjacentMatrix[a][b];
					} 
					else if(AdjacentMatrix[a][b]==-1)
					{
						//abs for int,fabs for float and labs for long
						L_minus+=abs(AdjacentMatrix[a][b]);
					}
				}//end k
				L_positive += L_plus;
				L_negative += L_minus;
				L_positive_out += (node[a].degree - L_plus);
				L_negative_out += (node[a].degree_n - L_minus);
			}//end j
			SKKM += 1.0 * (L_positive - L_negative)/si[i].size();
			SRC +=  1.0 * (L_positive_out - L_negative_out)/si[i].size();		
		}//end i

		if (optimization == 0)
		{	
			y_obj[0] =  -SKKM;									
			y_obj[1] = SRC;	
		}
	}
	copygene.clear();
	si.clear();
}


#endif