package androidx.core.view;

import android.view.MotionEvent;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class VelocityTrackerFallback {
    private static final long ASSUME_POINTER_STOPPED_MS = 40;
    private static final int HISTORY_SIZE = 20;
    private static final long RANGE_MS = 100;
    private final float[] mMovements = new float[20];
    private final long[] mEventTimes = new long[20];
    private float mLastComputedVelocity = 0.0f;
    private int mDataPointsBufferSize = 0;
    private int mDataPointsBufferLastUsedIndex = 0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void clear() {
        this.mDataPointsBufferSize = 0;
        this.mLastComputedVelocity = 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private float getCurrentVelocity() {
        long[] jArr;
        long j9;
        int i9;
        int i10 = this.mDataPointsBufferSize;
        if (i10 < 2) {
            return 0.0f;
        }
        int i11 = this.mDataPointsBufferLastUsedIndex;
        int i12 = ((i11 + 20) - (i10 - 1)) % 20;
        long j10 = this.mEventTimes[i11];
        while (true) {
            jArr = this.mEventTimes;
            j9 = jArr[i12];
            long j11 = j10 - j9;
            i9 = this.mDataPointsBufferSize;
            if (j11 <= RANGE_MS) {
                break;
            }
            this.mDataPointsBufferSize = i9 - 1;
            i12 = (i12 + 1) % 20;
        }
        if (i9 < 2) {
            return 0.0f;
        }
        if (i9 == 2) {
            int i13 = (i12 + 1) % 20;
            long j12 = jArr[i13];
            if (j9 == j12) {
                return 0.0f;
            }
            return this.mMovements[i13] / (j12 - j9);
        }
        float f8 = 0.0f;
        int i14 = 0;
        for (int i15 = 0; i15 < this.mDataPointsBufferSize - 1; i15++) {
            int i16 = i15 + i12;
            long[] jArr2 = this.mEventTimes;
            long j13 = jArr2[i16 % 20];
            int i17 = (i16 + 1) % 20;
            if (jArr2[i17] != j13) {
                i14++;
                float fKineticEnergyToVelocity = kineticEnergyToVelocity(f8);
                float f9 = this.mMovements[i17] / (this.mEventTimes[i17] - j13);
                float fAbs = (Math.abs(f9) * (f9 - fKineticEnergyToVelocity)) + f8;
                if (i14 == 1) {
                    fAbs *= 0.5f;
                }
                f8 = fAbs;
            }
        }
        return kineticEnergyToVelocity(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static float kineticEnergyToVelocity(float f8) {
        return (f8 < 0.0f ? -1.0f : 1.0f) * ((float) Math.sqrt(Math.abs(f8) * 2.0f));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addMovement(@NonNull MotionEvent motionEvent) {
        long eventTime = motionEvent.getEventTime();
        if (this.mDataPointsBufferSize != 0 && eventTime - this.mEventTimes[this.mDataPointsBufferLastUsedIndex] > ASSUME_POINTER_STOPPED_MS) {
            clear();
        }
        int i9 = (this.mDataPointsBufferLastUsedIndex + 1) % 20;
        this.mDataPointsBufferLastUsedIndex = i9;
        int i10 = this.mDataPointsBufferSize;
        if (i10 != 20) {
            this.mDataPointsBufferSize = i10 + 1;
        }
        this.mMovements[i9] = motionEvent.getAxisValue(26);
        this.mEventTimes[this.mDataPointsBufferLastUsedIndex] = eventTime;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void computeCurrentVelocity(int i9, float f8) {
        float currentVelocity = getCurrentVelocity() * i9;
        this.mLastComputedVelocity = currentVelocity;
        if (currentVelocity < (-Math.abs(f8))) {
            this.mLastComputedVelocity = -Math.abs(f8);
        } else if (this.mLastComputedVelocity > Math.abs(f8)) {
            this.mLastComputedVelocity = Math.abs(f8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getAxisVelocity(int i9) {
        if (i9 != 26) {
            return 0.0f;
        }
        return this.mLastComputedVelocity;
    }

    public void computeCurrentVelocity(int i9) {
        computeCurrentVelocity(i9, Float.MAX_VALUE);
    }
}
