#include <stdio.h>
#include <iostream>
#include "neural_network.h"
#include <ap_fixed.h>


using namespace std;

int main()
{

	ap_fixed<8, 2, AP_RND> X[9]= {0.19821,0.29013,0.25346,0.56617,0.61645,0.57556,0.61287,0.2819,0.1633};

	ap_fixed<10, 5, AP_RND>  i = Forward_propagation(X);

	return 0;
}
