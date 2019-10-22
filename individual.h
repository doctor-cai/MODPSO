#ifndef __TINDIVIDUAL_H_
#define __TINDIVIDUAL_H_

//#include "global.h"
#include "objective.h"

class TIndividual{
public:
	TIndividual();
	virtual ~TIndividual();

	vector <int> x_var;
	vector <double> y_obj;

	void   rnd_init();
	void   obj_eval();

    bool   operator<(const TIndividual &ind2);
    bool   operator==(const TIndividual &ind2);
    void   operator=(const TIndividual &ind2);

	void show_objective();
	void show_variable();

};

TIndividual::TIndividual()
{
	for(int i=0; i<numVariables; i++)
		x_var.push_back(i+1);	//this is better

	for(int n=0; n<numObjectives; n++)
        y_obj.push_back(0.0);
}

TIndividual::~TIndividual()
{

}

void TIndividual::rnd_init()
{
	IGLP(x_var,node);

//	rehearse(x_var);
}

void TIndividual::obj_eval()
{
    objectives(x_var,y_obj);
}

void TIndividual::operator=(const TIndividual &ind2)
{
    x_var = ind2.x_var;
	y_obj = ind2.y_obj;
}

void TIndividual::show_objective()
{
    for(int n=0; n<numObjectives; n++)
		printf("%f ",y_obj[n]);
	printf("\n");
}

void TIndividual::show_variable()
{
    for(int n=0; n<numVariables; n++)
		printf("%d ",x_var[n]);
	printf("\n");
}

bool TIndividual::operator<(const TIndividual &ind2)
{
	bool dominated = true;
    for(int n=0; n<numObjectives; n++)
	{
		if(ind2.y_obj[n]<y_obj[n]) return false; 
	}
	if(ind2.y_obj==y_obj) return false;

	return dominated;
}


bool TIndividual::operator==(const TIndividual &ind2)
{
	if(ind2.y_obj==y_obj) return true;
	else return false;
}



class TSOP 
{
public:
	TSOP();
	virtual ~TSOP();

	TIndividual     indiv;
	vector <double> namda;    
	vector <int>    table;     // the vector for the indexes of neighboring subproblems
	vector <int>    array;

    void  operator=(const TSOP&sub2);
};

TSOP::TSOP()
{
}

TSOP::~TSOP()
{
}


void TSOP::operator=(const TSOP&sub2)
{
    indiv  = sub2.indiv;
	table  = sub2.table;
	namda  = sub2.namda;
	array  = sub2.array;
}


#endif