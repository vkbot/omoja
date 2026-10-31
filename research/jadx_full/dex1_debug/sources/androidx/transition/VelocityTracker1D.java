package androidx.transition;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class VelocityTracker1D {
    private static final int ASSUME_POINTER_MOVE_STOPPED_MILLIS = 40;
    private static final int HISTORY_SIZE = 20;
    private static final int HORIZON_MILLIS = 100;
    private float[] mDataSamples = new float[20];
    private int mIndex = 0;
    private long[] mTimeSamples;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public VelocityTracker1D() {
        long[] jArr = new long[20];
        this.mTimeSamples = jArr;
        Arrays.fill(jArr, Long.MIN_VALUE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private float kineticEnergyToVelocity(float f8) {
        return (float) (Math.sqrt(Math.abs(f8) * 2.0f) * ((double) Math.signum(f8)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addDataPoint(long j9, float f8) {
        int i9 = (this.mIndex + 1) % 20;
        this.mIndex = i9;
        this.mTimeSamples[i9] = j9;
        this.mDataSamples[i9] = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float calculateVelocity() {
        int i9 = this.mIndex;
        if (i9 == 0 && this.mTimeSamples[i9] == Long.MIN_VALUE) {
            return 0.0f;
        }
        long j9 = this.mTimeSamples[i9];
        int i10 = 0;
        long j10 = j9;
        while (true) {
            long j11 = this.mTimeSamples[i9];
            if (j11 == Long.MIN_VALUE) {
                break;
            }
            float f8 = j9 - j11;
            float fAbs = Math.abs(j11 - j10);
            if (f8 > 100.0f || fAbs > 40.0f) {
                break;
            }
            if (i9 == 0) {
                i9 = 20;
            }
            i9--;
            i10++;
            if (i10 >= 20) {
                break;
            }
            j10 = j11;
        }
        if (i10 < 2) {
            return 0.0f;
        }
        int i11 = this.mIndex;
        if (i10 == 2) {
            int i12 = i11 == 0 ? 19 : i11 - 1;
            long[] jArr = this.mTimeSamples;
            float f9 = jArr[i11] - jArr[i12];
            if (f9 == 0.0f) {
                return 0.0f;
            }
            float[] fArr = this.mDataSamples;
            return ((fArr[i11] - fArr[i12]) / f9) * 1000.0f;
        }
        int i13 = ((i11 - i10) + 21) % 20;
        int i14 = (i11 + 21) % 20;
        long j12 = this.mTimeSamples[i13];
        float f10 = this.mDataSamples[i13];
        int i15 = i13 + 1;
        float f11 = 0.0f;
        for (int i16 = i15 % 20; i16 != i14; i16 = (i16 + 1) % 20) {
            long j13 = this.mTimeSamples[i16];
            float f12 = j13 - j12;
            if (f12 != 0.0f) {
                float f13 = this.mDataSamples[i16];
                float f14 = (f13 - f10) / f12;
                float fAbs2 = (Math.abs(f14) * (f14 - kineticEnergyToVelocity(f11))) + f11;
                if (i16 == i15) {
                    fAbs2 *= 0.5f;
                }
                f11 = fAbs2;
                f10 = f13;
                j12 = j13;
            }
        }
        return kineticEnergyToVelocity(f11) * 1000.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void resetTracking() {
        this.mIndex = 0;
        Arrays.fill(this.mTimeSamples, Long.MIN_VALUE);
        Arrays.fill(this.mDataSamples, 0.0f);
    }
}
