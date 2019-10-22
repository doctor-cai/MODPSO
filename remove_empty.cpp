#include "remove_empty.h"

void main()
{
	int i, j, k;
//	numVariables  = 4941;   //power grid 3244 empty node

//	numVariables  = 16706;  //astro-ph

//	numVariables  = 986;    // MIDfull 3.0   G

//	numVariables  = 5;    // my test

//	numVariables  = 161;    // MIDfull remove 3.0 G

	numVariables  = 137;    // MIDfull remove_remove 3.0

//	numVariables  = 987;    // matrixfull

//	numVariables  = 180;    // matrixfull_remove degree = 0

//	numVariables  = 162;    // matrixfull_remove_remove degree = 1

//	numVariables  = 94;    // matrixfull_remove_remove_remove positive degree = 1

	AdjacentMatrix = new int *[numVariables];
	for ( i = 0;i < numVariables;i++ )
	{
		AdjacentMatrix[i] = new int [numVariables];
	}
	node = new network[numVariables];

//	ReadFile("power.txt",AdjacentMatrix,numVariables,numVariables);  //right

//	ReadFile("astro-ph.txt",AdjacentMatrix,numVariables,numVariables);  //right

//	ReadFile("test1.txt",AdjacentMatrix,numVariables,numVariables);  //right
	
//	ReadFile("GFull.txt",AdjacentMatrix,numVariables,numVariables);  //right

//	ReadFile("GFull_remove.txt",AdjacentMatrix,numVariables,numVariables);  //right

	ReadFile("GFull_remove_remove.txt",AdjacentMatrix,numVariables,numVariables);  //right

//	ReadFile("matrixfull.txt",AdjacentMatrix,numVariables,numVariables);  //right

//	ReadFile("matrixfull_remove.txt",AdjacentMatrix,numVariables,numVariables);  //right

//	ReadFile("matrixfull_remove_remove.txt",AdjacentMatrix,numVariables,numVariables);  

	NodeInformation();	

//	remove_empty_node(node,4941,"power_remove.txt");

//	remove_empty_node(node,16706,"astro-ph_remove.txt");

//	remove_empty_node(node,numVariables,"GFull_remove.txt"); //remove empty node

//	remove_empty_node(node,numVariables,"GFull_remove_remove.txt");

	remove_empty_node(node,numVariables,"GFull_remove_remove_remove.txt");


}