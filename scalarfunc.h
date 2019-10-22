#ifndef __SCALARFUNC_H_
#define __SCALARFUNC_H_

#include "global.h"
#include "individual.h"


// scalarizing functions for decomposition methods
double scalar_func(vector<double>&y_obj,vector<double>&namda,TIndividual* nbi_node)
{
	double fvalue = 0.0;   
	// Tchebycheff approach
	if(!strcmp(strFunctionType,"_TCH1"))
	{
		double max_fun = -1.0e+30;

		for(int n=0; n<numObjectives; n++)
		{
			double diff = fabs(y_obj[n] - idealpoint[n]);
			double feval;
			if(namda[n]==0) 
			{
				feval = 0.00001*diff;
			}
			else
			{
			    feval = diff*namda[n];
			}
			if(feval>max_fun) max_fun = feval;
		}		
		fvalue = max_fun;
	}

	// normalized Tchebycheff approach
	if(!strcmp(strFunctionType,"_TCH2"))
	{
		vector <double> scale;
		for(int i=0; i<numObjectives; i++)
		{
			double min = 1.0e+30, max = -1.0e+30;
			for(int j=0; j<numObjectives; j++)
			{
				double tp = nbi_node[j].y_obj[i];
				if(tp>max) max = tp;
				if(tp<min) min = tp;
			}
			scale.push_back(max-min);
			if(max-min==0) return 1.0e+30;
		}

		double max_fun = -1.0e+30;
		for(int n=0; n<numObjectives; n++)
		{
			double diff = (y_obj[n] - idealpoint[n])/scale[n];
			double feval;
			if(namda[n]==0) 
				feval = 0.0001*diff;
			else
			    feval = diff*namda[n];
			if(feval>max_fun) max_fun = feval;

		}
		fvalue = max_fun;
	}


	//* Boundary intersection approach
	if(!strcmp(strFunctionType,"_PBI"))
	{

		// normalize the weight vector (line segment)
		double nd = norm_vector(namda);
		for(int i=0; i<numObjectives; i++)
			namda[i] = namda[i]/nd;

		vector <double> realA(numObjectives);
		vector <double> realB(numObjectives);

		// difference beween current point and reference point
		for(int n=0; n<numObjectives; n++)
			realA[n] = (y_obj[n] - idealpoint[n]);

		// distance along the line segment
		double d1 = fabs(innerproduct(realA,namda));

		// distance to the line segment
		for(int m=0; m<numObjectives; m++)
			realB[m] = (y_obj[m] - (idealpoint[m] + d1*namda[m]));
		double d2 = norm_vector(realB);

		fvalue = d1 + 5*d2;

	}

	return fvalue;
}


#endif