// MY-FFT.cpp : 定义控制台应用程序的入口点。
//

#include "fftw3.h"
#include <math.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

#define pi 3.14159265


void imfft(const double *xr, double *xi,double *yr,double *yi, const int n)
{	
    fftw_complex *in, *out;
    fftw_plan p;
	int i;
    in = (fftw_complex*) fftw_malloc(sizeof(fftw_complex) * n);
    out = (fftw_complex*) fftw_malloc(sizeof(fftw_complex) * n);
	for (i = 0; i<n; i++)
	{
		in[i][0] = xr[i];
		in[i][1] = xi[i];
	}
    p = fftw_plan_dft_1d(n, in, out, FFTW_BACKWARD, FFTW_ESTIMATE);
	fftw_execute(p); 
	//
	for (i = 0; i<n; i++)
	{
		yr[i] = out[i][0]/n;
		yi[i] = out[i][1]/n;
	}
	
	//
    fftw_destroy_plan(p);
    fftw_free(in); 
	fftw_free(out);
}

