#include <stdio.h>
#include <stdlib.h>
#include <cuda_runtime.h>
#include <sys/time.h>

#define CUDA y
#include "rfft.h"

typedef cudaStream_t cudaStream_t;

void hc2r_32(const R ri, const R ii, R O);
void r2hc_32(const R I, R ro, R io);

double wtime( void ) {
    struct timeval t;
    gettimeofday( &t, NULL );
    return t.tv_sec + t.tv_usec*1e-6;
}

double sync_wtime( cudaStream_t queue ) {
    gpuErrchk(cudaStreamSynchronize(queue));
    return wtime();
}

void run(float *x, float *X) {
    double time;
    cudaStream_t stream;
    float *mem;

    gpuErrchk(cudaStreamCreate(&stream));
    gpuErrchk(cudaMalloc((void **)&mem, (32+34)*sizeof(float)));
    gpuErrchk(cudaMemcpyAsync(mem, x, 32*sizeof(float),
                                    cudaMemcpyHostToDevice, stream));
    //gpuErrchk(cudaMemcpyAsync(mem+32, X, 34*sizeof(float),
    //                                cudaMemcpyHostToDevice, stream));
    time = sync_wtime(stream);
    launch(mem, stream);
    time = sync_wtime(stream) - time;
    gpuErrchk(cudaMemcpyAsync(X, mem+32, 34*sizeof(float),
                                    cudaMemcpyDeviceToHost, stream));

    gpuErrchk(cudaStreamSynchronize(stream));
    gpuErrchk(cudaFree(mem));
    gpuErrchk(cudaStreamDestroy(stream));
    printf("Completed in %f s\n", time);
}

void print_vec(const R v, int n) {
    for(int i=0; i<n; i++) {
        printf(" %f", v[i]);
    }
    printf("\n");
}

int main(int argc, char **argv) {
    E x[32] = { 0.2, -0.2, 1.0, -2.0,  0.5,  0.0,  1.2, 1.3,
                1.4,  1.5, 1.6,  1.7,  1.8,  1.9,  2.0, 0.0,
                0.2, -0.2, 1.0, -2.0,  0.5,  0.0,  1.2, 1.3,
                1.4,  5.1, 1.6, 1.7, -0.5, -0.6, -0.7, -0.9 };
    E X[34];
    for(int i=0; i<34; i++) {
        X[i] = -77.0;
    }

    print_vec(x, 32);
    run(x, X);
    //r2hc_32(x, X, X+1);
    print_vec(X, 34);
    /*hc2r_32(X, X+1, x);

    for(int i=0; i<32; i++) {
        x[i] /= 32.0;
    }
    print_vec(x, 32);
    */

    return 0;
}

