package org.libpag;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.hardware.HardwareBuffer;

/* JADX INFO: loaded from: classes2.dex */
abstract class c {

    static class a {
        int a;
        int b;
        long c;
        private PAGDecoder d;

        a() {
        }

        synchronized boolean a() {
            return this.d != null;
        }

        synchronized boolean b() {
            return this.a > 0 && this.b > 0;
        }

        synchronized int c() {
            PAGDecoder pAGDecoder;
            pAGDecoder = this.d;
            return pAGDecoder == null ? 0 : pAGDecoder.numFrames();
        }

        synchronized void e() {
            d();
            this.a = 0;
            this.b = 0;
            this.c = 0L;
        }

        synchronized boolean a(int i) {
            PAGDecoder pAGDecoder;
            pAGDecoder = this.d;
            return pAGDecoder != null && pAGDecoder.checkFrameChanged(i);
        }

        synchronized void d() {
            PAGDecoder pAGDecoder = this.d;
            if (pAGDecoder != null) {
                pAGDecoder.release();
                this.d = null;
            }
        }

        synchronized boolean a(int i, HardwareBuffer hardwareBuffer) {
            PAGDecoder pAGDecoder;
            pAGDecoder = this.d;
            return (pAGDecoder == null || hardwareBuffer == null || !pAGDecoder.readFrame(i, hardwareBuffer)) ? false : true;
        }

        synchronized boolean a(Bitmap bitmap, int i) {
            PAGDecoder pAGDecoder;
            pAGDecoder = this.d;
            return (pAGDecoder == null || bitmap == null || !pAGDecoder.copyFrameTo(bitmap, i)) ? false : true;
        }

        synchronized boolean a(PAGComposition pAGComposition, int i, int i2, float f) {
            float f2;
            int iHeight;
            if (pAGComposition == null || i <= 0 || i2 <= 0 || f <= 0.0f) {
                return false;
            }
            if (pAGComposition.width() >= pAGComposition.height()) {
                f2 = i * 1.0f;
                iHeight = pAGComposition.width();
            } else {
                f2 = i2 * 1.0f;
                iHeight = pAGComposition.height();
            }
            PAGDecoder pAGDecoderMake = PAGDecoder.Make(pAGComposition, f, f2 / iHeight);
            this.d = pAGDecoderMake;
            this.a = pAGDecoderMake.width();
            this.b = this.d.height();
            this.c = pAGComposition.duration();
            return true;
        }
    }

    protected static double a(int i, int i2) {
        if (i2 <= 1 || i < 0) {
            return 0.0d;
        }
        if (i >= i2 - 1) {
            return 1.0d;
        }
        return ((((double) i) * 1.0d) + 0.1d) / ((double) i2);
    }

    protected static Matrix a(int i, int i2, int i3, int i4, int i5) {
        Matrix matrix = new Matrix();
        if (i != 0 && i2 > 0 && i3 > 0 && i4 > 0 && i5 > 0) {
            float f = i4;
            float f2 = i2;
            float f3 = (f * 1.0f) / f2;
            float f4 = i5;
            float f5 = i3;
            float f6 = (1.0f * f4) / f5;
            if (i == 1) {
                matrix.setScale(f3, f6);
            } else if (i != 3) {
                float fMin = Math.min(f3, f6);
                matrix.setScale(fMin, fMin);
                if (f3 < f6) {
                    matrix.postTranslate(0.0f, (f4 - (f5 * fMin)) * 0.5f);
                } else {
                    matrix.postTranslate((f - (f2 * fMin)) * 0.5f, 0.0f);
                }
            } else {
                float fMax = Math.max(f3, f6);
                matrix.setScale(fMax, fMax);
                if (f3 > f6) {
                    matrix.postTranslate(0.0f, (f4 - (f5 * fMax)) * 0.5f);
                } else {
                    matrix.postTranslate((f - (f2 * fMax)) * 0.5f, 0.0f);
                }
            }
        }
        return matrix;
    }

    private static double a(double d, double d2) {
        return d - (((double) ((int) Math.floor(d / d2))) * d2);
    }

    protected static int a(double d, int i) {
        if (i <= 1) {
            return 0;
        }
        double dA = a(d, 1.0d);
        if (dA <= 0.0d && d != 0.0d) {
            dA += 1.0d;
        }
        int iFloor = (int) Math.floor(dA * ((double) i));
        return iFloor == i ? i - 1 : iFloor;
    }
}
