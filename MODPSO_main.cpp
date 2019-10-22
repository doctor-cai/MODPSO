
/*==================================================================================================*/
// Please find details of the method from:
//
//	 Maoguo Gong, Qing Cai, Xiaowei Chen, and Lijia Ma, "Complex Network Clustering by Multiobjective
//             Discrete Particle Swarm Optimization Based on Decomposition", IEEE Trans. Evolutionary 
//             Computation, 18.1 (2014): 82-97.
/*==================================================================================================*/
// The source codes are free for research work. If you have any problem with the source codes, please 
// contact with:

//	Maoguo Gong, 
//		Key Laboratory of Intelligent Perception and Image Understanding of Ministry of Education,
//		University of Xidian,
//		Xi'an, Shaanxi Province 710071, China.
//		http://web.xidian.edu.cn/mggong/index.html
//		Email: gong@ieee.org or mggong@mail.xidian.edu.cn

//    Qing Cai
//		Key Laboratory of Intelligent Perception and Image Understanding of Ministry of Education,
//		University of Xidian,
//		Xi'an, Shaanxi Province 710071, China.
//		Email: 506183509@qq.com
/*==================================================================================================*/
// Programmer:		
//		Qing Cai
// Last Update:
//		Nov. 11, 2012
//		Apr. 10, 2016
//		May. 11, 2018
/*==================================================================================================*/
// The package is passed compiling under: MS Visual C++ in Windows XP. 
// The latest package is passed compiling under: MS Visual Studio 2015 in Windows 10. 
// After running the program, please find the final results in the corresponding document archives.
// All the network topology structures shown in the paper are drawn with the software Pajek.
/*==================================================================================================*/

#include "global.h"
#include "dmoea.h"
	

void main()
{

	strcpy(strFunctionType,"_TCH1"); // _TCH1, _TCH2, _PBI

	/*------------parameters setting-----------*/
	int  max_gen         = 10;       // maximal number of generations
	int  niche           = 40;        // neighborhood size 
	int  sd				 = 99;		  // population size 100
	int  rn              = 3;		  // run times
	popsize = sd + 1;
	numObjectives = 2;
	int runtimes = rn;


	/*------------GN benchmark networks--------------*/
	char *BenchmarkData[] = { "out0.txt",		    "out1.txt",\
						      "out2.txt",			"out3.txt",\
							  "out4.txt",			"out5.txt",\
							  "out6.txt",			"out7.txt",\
							  "out8.txt" };

	/*-------------real labels of GN benchmark networks------*/
	char *BenchmarkDataLabel[] = {  "real_label_out0.txt",		"real_label_out1.txt",\
		"real_label_out2.txt",		"real_label_out3.txt",\
		"real_label_out4.txt",		"real_label_out5.txt",\
		"real_label_out6.txt",		"real_label_out7.txt",\
		"real_label_out8.txt" };

	/*-------------------GN extended benchmark networks-----------------*/
	char *ExtentionData[] = { "0.0.txt",\
		"0.05.txt",	"0.1.txt",\
		"0.15.txt",	"0.2.txt",\
		"0.25.txt",	"0.3.txt",\
		"0.35.txt",	"0.4.txt",\
		"0.45.txt", "0.5.txt" };

	/*--------------------labels of GN extended benchmark networks---------------------*/
	char *ExtentionDataLabel[] = { "real0.0.txt",\
		"real0.05.txt",  "real0.1.txt",\
		"real0.15.txt",  "real0.2.txt",\
		"real0.25.txt",  "real0.3.txt",\
		"real0.35.txt",  "real0.4.txt",\
		"real0.45.txt",  "real0.5.txt" };

	/*----------------------------unsigned real-world networks----------------------*/
	char *RealData[] = { "dFB50.txt",			"25_point.txt",\
		"125_point.txt",		"karate.txt",\
		"dolphin.txt",			"football.txt",\
		"polbook.txt",			"celegansneural.txt",\
		"SFI.txt",				"netscience.txt",\
		"netscience_remove.txt","power.txt",\
		"power_remove.txt",		"email.txt",\
		"hepth_adj.txt",		"PGP_adj.txt" };

	/*---------------------nos. of nodes of the corresponding unsigned networks--------------------*/
	int  nvars[] = { 50, 25, 125, 34, 62, 115, 105, 0, 118, 1589, 1461, 4941, 4941, 0, 8361, 10680 };

	/*-----real labels of the unsigned real-world networks----------*/
	char *RealDataLabel[] = { "real_label_FB50.txt",\
		"real_label_25_point.txt",\
		"real_label_125_point.txt",\
		"real_label_karate.txt",\
		"real_label_dolphin.txt",\
		"real_label_football.txt",\
		"real_label_polbook.txt",\
		"celegansneural_label.txt", "", "", "", "", "", "", "", "", "", "", "", "", "" };

	/*----------------------------------signed real-world and artificial networks--------------------*/
	char *SignedData[] = { "SPP_pair.txt",		"gahuku2.txt",
		"data1.txt",		"data.txt",
		"matrixfull.txt",	"matrixfull_remove.txt",
		"matrixfull_remove_remove.txt",		"GFull_remove_remove_remove.txt",
		"new1000-6.txt",	"EGFR.txt",       "Macrophage.txt",\
		"yeast.txt",      "ecoli.txt",
		"wiki_pair1.txt" };


	/*--------------------------real labels of the signed networks------------------------------*/
	char *SignedDataLabel[] = { "sloeven1label.txt",		"gahuku2label.txt",
		"datalabel.txt",		"datalabel.txt", "", "", "", "", "", "", "", "", "", "", "" };

	/*-----------nodes of the signed networks--------------------*/
	int nnodes[] = { 10, 16, 28, 28, 987, 180, 162, 120, 1000, 329, 678, 690, 1461, 7114 };

	/*----------------------------------the LFR benchmark networks------------------------------*/
	char *LFRData[] = { "0.00.txt", "0.05.txt",\
		"0.10.txt", "0.15.txt",\
		"0.20.txt", "0.25.txt",\
		"0.30.txt", "0.35.txt",
		"0.40.txt", "0.45.txt",\
		"0.50.txt", "0.55.txt",\
		"0.60.txt", "0.65.txt",\
		"0.70.txt", "0.75.txt",\
		"0.80.txt" };

	/*-----------------------the real labels of the LFR benchmark networks-------------------------*/
	char *LFRDataLabel[] = { "0.00.CLU", 	"0.05.CLU",\
		"0.10.CLU",	 "0.15.CLU",\
		"0.20.CLU",	 "0.25.CLU",\
		"0.30.CLU",	 "0.35.CLU",
		"0.40.CLU",	 "0.45.CLU",\
		"0.50.CLU",	 "0.55.CLU",\
		"0.60.CLU",	 "0.65.CLU",\
		"0.70.CLU",	 "0.75.CLU",\
		"0.80.CLU" };


	// comment or uncomment the following paragraphs for different testing data sets


	/*------------------------------------------------------------------*/
	/* for benchmark testing */
	/*------------------------------------------------------------------
	int FileIndex = 1; //change here to choose the tested data

	optimization = 0;
	numVariables  = 128;
	mutate_posibility = 0.1;
	SignedFlag = 0;  // unsigned network
	AdjacentMatrix = new int *[numVariables];
	for ( int i = 0;i < numVariables;i++ )
	AdjacentMatrix[i] = new int [numVariables];
	
	node = new network[numVariables];
	
	strcpy(FilePath, "GNBenchmark/");
	strcpy(NetworkName, BenchmarkData[FileIndex]);
	strcpy(FileName, FilePath);
	strcat(FileName, NetworkName);
	ReadFile(FileName, AdjacentMatrix,numVariables,numVariables);
	strcpy(NetworkLabel, FilePath);
	strcat(NetworkLabel, BenchmarkDataLabel[FileIndex]);
	//*-----------------------------------------------------------------/


	//////////////////////////////////////////////////////////////////////
	/// testing for GN extended networks ///////////////////////////////*/
	/*
	int FileIndex = 5;
	optimization = 0;
	numVariables  = 128;
	SignedFlag = 0;  // unsigned network
	mutate_posibility = 0.1;
	AdjacentMatrix = new int *[numVariables];
	for ( int i = 0;i < numVariables;i++ )
	AdjacentMatrix[i] = new int [numVariables];
	node = new network[numVariables];
	strcpy(FilePath, "GNExtend/");
	strcpy(NetworkName, ExtentionData[FileIndex]);
	strcpy(FileName, FilePath);
	strcat(FileName, NetworkName);
	ReadFile(FileName, AdjacentMatrix, numVariables, numVariables);
	strcpy(NetworkLabel, FilePath);
	strcat(NetworkLabel, ExtentionDataLabel[FileIndex]);
	/////////////////////////////////////////////////////////////////////


	/*==========================================================================================*/
	/*==================testing for unsigned real world networks================================*/
	/*
	int FileIndex = 5; //8--SFI, 10--netremove, 12--powerremove, 3-karate,4-dolphin,5-football
	numVariables  = nvars[FileIndex];
	optimization = 0;
	SignedFlag = 0;  // unsigned network
	mutate_posibility = 0.1;
	AdjacentMatrix = new int *[numVariables];
	for ( int i = 0;i < numVariables;i++ )
	AdjacentMatrix[i] = new int [numVariables];
	node = new network[numVariables];
	strcpy(FilePath, "RealWorld\\");
	strcpy(NetworkName, RealData[FileIndex]);
	strcpy(FileName, FilePath);
	strcat(FileName, NetworkName);
	ReadFile(FileName, AdjacentMatrix, numVariables, numVariables);
	strcpy(NetworkLabel, FilePath);
	strcat(NetworkLabel, RealDataLabel[FileIndex]);
	//===========================================================================================



	/**************************************************************/
	/*  testing for signed networks

	int FileIndex = 8;
	optimization = 0;
	numVariables = nnodes[FileIndex];
	SignedFlag = 1;  // signed network 
	mutate_posibility = 0.9;
	AdjacentMatrix = new int *[numVariables];
	for (int i = 0; i < numVariables; i++)
		AdjacentMatrix[i] = new int[numVariables];
	node = new network[numVariables];
	strcpy(FilePath, "RealWorld\\");
	strcpy(NetworkName, SignedData[FileIndex]);
	strcpy(FileName, FilePath);
	strcat(FileName, NetworkName);
	ReadFile(FileName, AdjacentMatrix, numVariables, numVariables);
	strcpy(NetworkLabel, FilePath);
	strcpy(LabelName, SignedDataLabel[FileIndex]);
	strcat(NetworkLabel, LabelName);
	/**************************************************************/


	//////////////////////////////////////////////////////////////////////
	//*  testing for LFR
	int FileIndex = 2;
	optimization = 0;
	numVariables  = 1000;
	SignedFlag = 0;  // unsigned network
	mutate_posibility = 0.1;
	AdjacentMatrix = new int *[numVariables];
	for ( int i = 0;i < numVariables;i++ )
	AdjacentMatrix[i] = new int [numVariables];
	node = new network[numVariables];
	strcpy(FilePath, "LFR\\");
	strcpy(NetworkName, LFRData[FileIndex]);
	strcpy(FileName, FilePath);
	strcat(FileName, NetworkName);
	ReadFile(FileName, AdjacentMatrix, numVariables, numVariables);
	strcpy(NetworkLabel, FilePath);
	strcpy(LabelName, LFRDataLabel[FileIndex]);
	strcat(NetworkLabel, LabelName);
	////////////////////////////////////////////////////////////////////



/*------------------------------------------------------------------------------*/
/*-------- do not change the following codes unless u really know them ---------*/
/*------------------------------------------------------------------------------*/
	NodeInformation();	//right

	seed = (seed + 111)%1235;	
	rnd_uni_init = -(long)seed;	

	TMOEAD  MOEAD;      
	
	for (int mg = 0; mg < runtimes; mg++)
	{
		
		cout<<"hold on, the "<<mg+1<<"th running starts...";
		MOEAD.run(sd, niche, max_gen, FileIndex+1, mg+1);
		
	}
	for (int j = 0; j < runtimes; j++)
	{
		cout<<"Q = "<<Thirty_Run_modularity[j]<<"  ";
		if (check_label())	cout<<"NMI = "<<Thirty_Run_NMI[j]<<endl;
	}
	if (check_label())	NMImax = *max_element(Thirty_Run_NMI.begin(),Thirty_Run_NMI.end());
	Qmax = *max_element(Thirty_Run_modularity.begin(),Thirty_Run_modularity.end());
	for (int k = 0; k < runtimes; k++)
	{
		if (check_label())	NMIavg += Thirty_Run_NMI[k];
		Qavg += Thirty_Run_modularity[k];
	}

	Qavg = Qavg/Thirty_Run_modularity.size();
	if (check_label())
	{
		NMIavg = NMIavg/Thirty_Run_NMI.size();
		cout<<"max NMI = "<<NMImax<<"   "<<"avg NMI = "<<NMIavg<<endl;
	}
	cout<<"max Q = "<<Qmax<<"    "<<"avg Q = "<<Qavg<<endl<<endl;;
	cout << "The end of the algorithm! Find the detailed results in the document archives" << endl << endl;
	cout << "When testing different data sets like GN, LFR, do remember to save the results in the four folders" << endl;
	cout << "since they will be replaced by newly automatically saved results" << endl << endl << endl;
}
