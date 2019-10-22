#ifndef _RECOMBINATION_H_
#define _RECOMBINATION_H_

#include "global.h"
#include "individual.h"

	
template <class T>  //execute two way crossover
void realbinarycrossover (T &parent1, T &parent2, T& child1, T& child2)
{
	for (int i = 0; i < numVariables; i++)
	{
		child1.x_var[i] = parent1.x_var[i];
		child2.x_var[i] = parent2.x_var[i];
	}

    if (rnd_uni(&rnd_uni_init) <= cross_posibility) 
    {	

		int position1 = int(rnd_uni(&rnd_uni_init)*numVariables);
		int position2 = int(rnd_uni(&rnd_uni_init)*numVariables);
		int a = child1.x_var[position1];
		int b = child2.x_var[position2];
			
		vector<int>indexA; //store index in cha that has same gene with position
		vector<int>indexB; //store index in chb that has same gene with position

		for (int m = 0;m < numVariables;m++)
		{
			if (child1.x_var[m] == a )
			{
				indexA.push_back(m);
			}
			if ( child2.x_var[m] == b )
			{
				indexB.push_back(m);
			}
		}
			
		for ( int j = 0;j < indexA.size();j++ )
		{
			child2.x_var[indexA[j]] = a;
		}
			
		for ( int n = 0;n < indexB.size();n++ )
		{
			child1.x_var[indexB[n]] = b;
		}
	}
}




template <class T>
void realmutation(T &ind)  //NBM mutation used in the paper
{
	for (int j = 0; j < numVariables; j++)
	{
		if (rnd_uni(&rnd_uni_init) <= mutate_posibility)
		{			
			int indentifier = ind.x_var[j];
			
			int rand_v_ns = node[j].neighbours.size();
			int negative_n = node[j].neighbours_n.size();
			
			for (int i = 0; i < rand_v_ns; i++)
			{
				int neighborX = node[j].neighbours[i];
				ind.x_var[neighborX] = indentifier;
			}			
		}
	}

	return;
}



/********************************************************/
/* local search procedure:hill climbing process(greedy) */
/* strictly follow the version in the paper:meme-net.pdf*/
/* randomly select a chrom and a gene,say the chosen    */
/* chrom has m clusters,and the chosen gene belongs to  */
/* the n-th cluster,assign the gene to other clusters,  */
/* thus we get m-1 new clusters.if the best D value in  */
/* the m-1 clusters is larger than the chosen chrom's   */
/* copy the new chrom to the chosen chrom				*/
/********************************************************/
//*
template <class T>
void LocalSeach(T &ind,vector<double>&namda)
{
	int i, j, k;		
	int RandGene = numVariables * rnd_uni(&rnd_uni_init);	
	vector<int> neighbor_label;			
	double ind_func = namda[0]*ind.y_obj[0] + namda[1]*ind.y_obj[1];

	int neighborsize = node[RandGene].neighbours.size();
					
	if(neighborsize > 1)
	{
		for (int nei = 0; nei < neighborsize; nei++)
		{
				int neighbornode = node[RandGene].neighbours[nei];
				neighbor_label.push_back(ind.x_var[neighbornode]);
		}
		
		vector<int>::iterator iter;
		
		sort(neighbor_label.begin(),neighbor_label.end());
		iter = unique(neighbor_label.begin(),neighbor_label.end());
		neighbor_label.erase(iter,neighbor_label.end());	

		double minaggregatefun = 1000000;
		int nodeindex;
		for (i = 0; i < neighbor_label.size(); i++)
		{
			vector<int> neighborhood;
			vector<double> func;
			func.push_back(0.0);
			func.push_back(0.0);
			neighborhood=ind.x_var;
			neighborhood[RandGene] = neighbor_label[i];
			objectives(neighborhood,func);
			double aggregatefun	= func[0]*namda[0]+func[1]*namda[1];
			if (minaggregatefun > aggregatefun)
			{
				minaggregatefun = aggregatefun;
				nodeindex = i;
			}
		}	
		if (minaggregatefun < ind_func)
		{
			ind.x_var[RandGene] = neighbor_label[nodeindex];
		}
										
	}//end if neighbor.size > 1
	else 
	{
		if (neighborsize == 1)
			ind.x_var[node[RandGene].neighbours[0]] = ind.x_var[RandGene];
		else	cout<<"the "<<i+1<<"th node has no connection"<<endl;						
	}

}

#endif