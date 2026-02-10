// MY-FFT.cpp : 定义控制台应用程序的入口点。
//

#include "fftw3.h"
#include <math.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

#define pi 3.14159265

void mfft(const double *x,double *yr,double *yi,int n)
{	
    fftw_complex *in, *out;
    fftw_plan p;
	int i;
    in = (fftw_complex*) fftw_malloc(sizeof(fftw_complex) * n);
    out = (fftw_complex*) fftw_malloc(sizeof(fftw_complex) * n);
	for(i=0;i<n;i++)
	{
		in[i][0]=x[i];
		in[i][1]=0;
	}	
    p = fftw_plan_dft_1d(n, in, out, FFTW_FORWARD, FFTW_ESTIMATE);
	fftw_execute(p); 
	//
	for(i=0;i<n;i++)
	{
		yr[i]=out[i][0];
		yi[i]=out[i][1];
	}
	//
    fftw_destroy_plan(p);
    fftw_free(in); 
	fftw_free(out);
}

void mfsa(const double *yr,const double *yi,double Fs,int L,double *f,double *P)
{
	double T = 1/Fs ;
	//double *t = new double[L];
	double *t = (double *)calloc(L, sizeof(double));
	//double *f = new double[L/2+1];
	//double *P = new double[L/2+1];
	//memset(t, 0, sizeof(t));
	//memset(f, 0, sizeof(f));
	//memset(P, 0, sizeof(P));
	double tmp1 = 0;
	double tmp2 = 0;
	int i;
	for(i=0;i<L;i++)
	{
		t[i] = tmp1;
		tmp1 = tmp1 + T;
	}
	for(i=0;i<L/2+1;i++)
	{
		f[i] = tmp2;
		tmp2 = tmp2 + Fs/L;
	}
	P[0] = sqrt(yr[0]*yr[0]+yi[0]*yi[0])/L;
	//printf("P[0] = %f\n",P[0]);
    //P[int(L/2)]=sqrt(pow(yr[int(L/2)],2)+pow(yi[int(L/2)],2))/L;
	//printf("P[int(L/2)] = %f\n",P[int(L/2)]);
	for(i=1;i<L/2;i++)
	{
		P[i]=2*sqrt(yr[i]*yr[i]+yi[i]*yi[i])/L;
		//printf("yr[i] = %f, yi[i] = %f, P[i] = %f\n",yr[i],yi[i],P[i]);
	}	
}