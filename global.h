#ifndef __GLOBAL_H_
#define __GLOBAL_H_

#include <iostream>
#include <fstream>
#include <string>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <time.h>
#include <memory.h>
#include <vector>
#include <windows.h>
#include <iomanip>

using namespace std;


#define GNEx_nodes 128
#define GNEx_edge 1024
#define GNEx_QR 1.0/(2*GNEx_edge)


#define INF 1.0e+30
#define archive_size 500   /* set capacity of archive */
 
 
// demensionality of variables and objectives
int     numVariables;
int     numObjectives;
int     popsize;


char    strFunctionType[256];
char    FileName[256];
char    FilePath[256];
char    NetworkName[256];
char    NetworkLabel[256];
char    LabelName[256];

// ideal point used in decomposition methods
double  *idealpoint;
double  *nadirpoint;


// parameters for random number generation
int     seed = 237;
long    rnd_uni_init;

int optimization;	   /* set optimization type, 0 for min, 1 for max */
double alpha = 1.0;
double r = 1.0;
double delta = 2.0;
const double perterbation = 0.00001;
double mutate_posibility ;
const double cross_posibility = 0.9;
vector<vector<double> >front; // store removed PF
vector<vector<int> >chrom;    // store the corresponding chrom
vector<double> NMI;
vector<double> pm_NMI;
vector<double> pm_modularity;
vector<double> Thirty_Run_NMI;
vector<double> Thirty_Run_modularity;
vector<int> clusters;
double NMIavg;
double NMImax;
double Qmax;
double Qavg;
int SignedFlag;		//1 for signed networks, 0 for unsigned networks

vector<double> modularity;
unsigned int nondomCtr = 0;		/* number of nondominated solutions in archive */


struct network 
{
	vector<int> neighbours;		//positive neighbors
	vector<int> neighbours_n;	//negative neighbors
	int degree;					//positive links
	int degree_n;				//negative links
};

int **AdjacentMatrix ;
network *node ;



#include "random.h"

#endif