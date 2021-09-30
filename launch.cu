#include "rfft.h"

__global__ void r2hc_32(const R I, R ro, R io) {
     DK(KP831469612, +0.831469612302545237078788377617905756738560812);
     DK(KP668178637, +0.668178637919298919997757686523080761552472251);
     DK(KP980785280, +0.980785280403230449126182236134239036973933731);
     DK(KP198912367, +0.198912367379658006911597622644676228597850501);
     DK(KP923879532, +0.923879532511286756128183189396788286822416626);
     DK(KP707106781, +0.707106781186547524400844362104849039284835938);
     DK(KP414213562, +0.414213562373095048801688724209698078569671875);
	  E T1x, T1M, T1I, T1E, T1J, T1H;
	  {
	       E Tv, T1h, T7, T2b, Te, T2n, Ty, T1i, T1l, TF, T2d, Tt, T1k, TC, T2c;
	       E Tm, T2j, T1Z, T2k, T22, TK, T1B, T19, T1C, T1e, TO, TV, T1T, TN, TP;
	       E T2g, T1S;
	       {
		    E TD, Tp, Tq, Tr;
		    {
			 E T1, T2, T4, T5;
			 T1 = I[0];
			 T2 = I[WS(is, 16)];
			 T4 = I[WS(is, 8)];
			 T5 = I[WS(is, 24)];
			 {
			      E Ta, Tw, Tx, Td, Tn, To;
			      {
				   E T8, T3, T6, T9, Tb, Tc;
				   T8 = I[WS(is, 4)];
				   Tv = T1 - T2;
				   T3 = T1 + T2;
				   T1h = T4 - T5;
				   T6 = T4 + T5;
				   T9 = I[WS(is, 20)];
				   Tb = I[WS(is, 28)];
				   Tc = I[WS(is, 12)];
				   T7 = T3 + T6;
				   T2b = T3 - T6;
				   Ta = T8 + T9;
				   Tw = T8 - T9;
				   Tx = Tb - Tc;
				   Td = Tb + Tc;
			      }
			      Tn = I[WS(is, 30)];
			      To = I[WS(is, 14)];
			      Te = Ta + Td;
			      T2n = Td - Ta;
			      Ty = Tw + Tx;
			      T1i = Tx - Tw;
			      TD = Tn - To;
			      Tp = Tn + To;
			      Tq = I[WS(is, 6)];
			      Tr = I[WS(is, 22)];
			 }
		    }
		    {
			 E Tj, TA, Ti, Tk;
			 {
			      E Tg, Th, TE, Ts;
			      Tg = I[WS(is, 2)];
			      Th = I[WS(is, 18)];
			      Tj = I[WS(is, 10)];
			      TE = Tq - Tr;
			      Ts = Tq + Tr;
			      TA = Tg - Th;
			      Ti = Tg + Th;
			      T1l = FNMS(KP414213562, TD, TE);
			      TF = FMA(KP414213562, TE, TD);
			      T2d = Tp - Ts;
			      Tt = Tp + Ts;
			      Tk = I[WS(is, 26)];
			 }
			 {
			      E T11, T15, T1c, T20, T14, T16, T1X, T1Y, T1Q, T1R;
			      {
				   E T1a, T1b, T12, T13;
				   {
					E TZ, T10, TB, Tl;
					TZ = I[WS(is, 31)];
					T10 = I[WS(is, 15)];
					T1a = I[WS(is, 23)];
					TB = Tj - Tk;
					Tl = Tj + Tk;
					T1X = TZ + T10;
					T11 = TZ - T10;
					T1k = FMA(KP414213562, TA, TB);
					TC = FNMS(KP414213562, TB, TA);
					T2c = Ti - Tl;
					Tm = Ti + Tl;
					T1b = I[WS(is, 7)];
				   }
				   T12 = I[WS(is, 3)];
				   T13 = I[WS(is, 19)];
				   T15 = I[WS(is, 27)];
				   T1Y = T1b + T1a;
				   T1c = T1a - T1b;
				   T20 = T12 + T13;
				   T14 = T12 - T13;
				   T16 = I[WS(is, 11)];
			      }
			      T2j = T1X - T1Y;
			      T1Z = T1X + T1Y;
			      {
				   E TT, TU, TL, TM;
				   {
					E TI, T21, T17, TJ, T18, T1d;
					TI = I[WS(is, 1)];
					T21 = T15 + T16;
					T17 = T15 - T16;
					TJ = I[WS(is, 17)];
					TT = I[WS(is, 9)];
					T2k = T21 - T20;
					T22 = T20 + T21;
					T18 = T14 + T17;
					T1d = T17 - T14;
					T1Q = TI + TJ;
					TK = TI - TJ;
					T1B = FNMS(KP707106781, T18, T11);
					T19 = FMA(KP707106781, T18, T11);
					T1C = FNMS(KP707106781, T1d, T1c);
					T1e = FMA(KP707106781, T1d, T1c);
					TU = I[WS(is, 25)];
				   }
				   TL = I[WS(is, 5)];
				   TM = I[WS(is, 21)];
				   TO = I[WS(is, 29)];
				   T1R = TT + TU;
				   TV = TT - TU;
				   T1T = TL + TM;
				   TN = TL - TM;
				   TP = I[WS(is, 13)];
			      }
			      T2g = T1Q - T1R;
			      T1S = T1Q + T1R;
			 }
		    }
	       }
	       {
		    E T1P, T25, T23, T2h, T1W, T1y, TS, T1z, TX, T27, T2a;
		    {
			 E Tf, Tu, T29, T28;
			 {
			      E T1U, TQ, T1V, TR, TW;
			      T1P = T7 - Te;
			      Tf = T7 + Te;
			      T1U = TO + TP;
			      TQ = TO - TP;
			      Tu = Tm + Tt;
			      T25 = Tt - Tm;
			      T23 = T1Z - T22;
			      T29 = T1Z + T22;
			      T2h = T1U - T1T;
			      T1V = T1T + T1U;
			      TR = TN + TQ;
			      TW = TN - TQ;
			      T27 = Tf + Tu;
			      T1W = T1S - T1V;
			      T28 = T1S + T1V;
			      T1y = FNMS(KP707106781, TR, TK);
			      TS = FMA(KP707106781, TR, TK);
			      T1z = FNMS(KP707106781, TW, TV);
			      TX = FMA(KP707106781, TW, TV);
			      T2a = T28 + T29;
			 }
			 ro[WS(ros, 8)] = Tf - Tu;
			 io[WS(ios, 8)] = T29 - T28;
		    }
		    ro[0] = T27 + T2a;
		    ro[WS(ros, 16)] = T27 - T2a;
		    {
			 E T2s, T2i, T2v, T2f, T2r, T2p, T2l, T2t;
			 {
			      E T2o, T2e, T26, T24;
			      T2o = T2d - T2c;
			      T2e = T2c + T2d;
			      T2s = FNMS(KP414213562, T2g, T2h);
			      T2i = FMA(KP414213562, T2h, T2g);
			      T26 = T23 - T1W;
			      T24 = T1W + T23;
			      T2v = FNMS(KP707106781, T2e, T2b);
			      T2f = FMA(KP707106781, T2e, T2b);
			      T2r = FMA(KP707106781, T2o, T2n);
			      T2p = FNMS(KP707106781, T2o, T2n);
			      io[WS(ios, 4)] = FMA(KP707106781, T26, T25);
			      io[WS(ios, 12)] = FMS(KP707106781, T26, T25);
			      ro[WS(ros, 4)] = FMA(KP707106781, T24, T1P);
			      ro[WS(ros, 12)] = FNMS(KP707106781, T24, T1P);
			      T2l = FNMS(KP414213562, T2k, T2j);
			      T2t = FMA(KP414213562, T2j, T2k);
			 }
			 {
			      E T1v, T1G, TH, T1s, T1F, T1w, T1o, T1g, T1p, T1n;
			      {
				   E T1f, TY, T1t, T1u, T1j, T1m;
				   {
					E Tz, TG, T1q, T1r;
					T1v = FNMS(KP707106781, Ty, Tv);
					Tz = FMA(KP707106781, Ty, Tv);
					{
					     E T2q, T2m, T2w, T2u;
					     T2q = T2l - T2i;
					     T2m = T2i + T2l;
					     T2w = T2t - T2s;
					     T2u = T2s + T2t;
					     io[WS(ios, 10)] = FMA(KP923879532, T2q, T2p);
					     io[WS(ios, 6)] = FMS(KP923879532, T2q, T2p);
					     ro[WS(ros, 2)] = FMA(KP923879532, T2m, T2f);
					     ro[WS(ros, 14)] = FNMS(KP923879532, T2m, T2f);
					     ro[WS(ros, 10)] = FNMS(KP923879532, T2w, T2v);
					     ro[WS(ros, 6)] = FMA(KP923879532, T2w, T2v);
					     io[WS(ios, 2)] = FMA(KP923879532, T2u, T2r);
					     io[WS(ios, 14)] = FMS(KP923879532, T2u, T2r);
					     TG = TC + TF;
					     T1G = TF - TC;
					}
					T1f = FNMS(KP198912367, T1e, T19);
					T1q = FMA(KP198912367, T19, T1e);
					T1r = FMA(KP198912367, TS, TX);
					TY = FNMS(KP198912367, TX, TS);
					T1t = FNMS(KP923879532, TG, Tz);
					TH = FMA(KP923879532, TG, Tz);
					T1u = T1r + T1q;
					T1s = T1q - T1r;
					T1F = FMA(KP707106781, T1i, T1h);
					T1j = FNMS(KP707106781, T1i, T1h);
					T1m = T1k + T1l;
					T1w = T1k - T1l;
				   }
				   ro[WS(ros, 7)] = FMA(KP980785280, T1u, T1t);
				   T1o = T1f - TY;
				   T1g = TY + T1f;
				   T1p = FMA(KP923879532, T1m, T1j);
				   T1n = FNMS(KP923879532, T1m, T1j);
				   ro[WS(ros, 9)] = FNMS(KP980785280, T1u, T1t);
			      }
			      ro[WS(ros, 1)] = FMA(KP980785280, T1g, TH);
			      ro[WS(ros, 15)] = FNMS(KP980785280, T1g, TH);
			      io[WS(ios, 1)] = FMS(KP980785280, T1s, T1p);
			      io[WS(ios, 15)] = FMA(KP980785280, T1s, T1p);
			      io[WS(ios, 9)] = FMS(KP980785280, T1o, T1n);
			      io[WS(ios, 7)] = FMA(KP980785280, T1o, T1n);
			      {
				   E T1A, T1D, T1N, T1O, T1K, T1L;
				   T1A = FMA(KP668178637, T1z, T1y);
				   T1K = FNMS(KP668178637, T1y, T1z);
				   T1L = FNMS(KP668178637, T1B, T1C);
				   T1D = FMA(KP668178637, T1C, T1B);
				   T1N = FNMS(KP923879532, T1w, T1v);
				   T1x = FMA(KP923879532, T1w, T1v);
				   T1O = T1K + T1L;
				   T1M = T1K - T1L;
				   ro[WS(ros, 5)] = FNMS(KP831469612, T1O, T1N);
				   T1I = T1D - T1A;
				   T1E = T1A + T1D;
				   T1J = FMA(KP923879532, T1G, T1F);
				   T1H = FNMS(KP923879532, T1G, T1F);
				   ro[WS(ros, 11)] = FMA(KP831469612, T1O, T1N);
			      }
			 }
		    }
	       }
	  }
	  io[WS(ios, 3)] = FMA(KP831469612, T1M, T1J);
	  ro[WS(ros, 3)] = FMA(KP831469612, T1E, T1x);
	  io[WS(ios, 13)] = FMS(KP831469612, T1M, T1J);
	  ro[WS(ros, 13)] = FNMS(KP831469612, T1E, T1x);
	  io[WS(ios, 11)] = FMA(KP831469612, T1I, T1H);
	  io[WS(ios, 5)] = FMS(KP831469612, T1I, T1H);
}

extern "C"
void launch(float *__restrict__ mem, cudaStream_t stream) {
    dim3 grid(1, 1);
    dim3 threads(1, 1);

    r2hc_32 <<< grid, threads, 0, stream >>> (
        mem, &mem[32], &mem[33]);
}

