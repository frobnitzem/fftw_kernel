#define E float
#define R float *__restrict__

#define is 1
#define os 1
#define ros 2
#define ios 2
#define ris 2
#define iis 2

// (stride, int) -> int
#define WS(a,b) (a*b)
#define DK(name, val) static const float name = val

#ifdef CUDA

#define FMA(a, b, c) (__fmaf_rn(a, b, c))
#define FMS(a, b, c) (__fmaf_rn(a, b, -c))
#define FNMA(a, b, c) (- __fmaf_rn(a, b, c))
#define FNMS(a, b, c) (- __fmaf_rn(a, b, -c))

#else

#define FMA(a, b, c) (((a) * (b)) + (c))
#define FMS(a, b, c) (((a) * (b)) - (c))
#define FNMA(a, b, c) (- (((a) * (b)) + (c)))
#define FNMS(a, b, c) ((c) - ((a) * (b)))

#endif
