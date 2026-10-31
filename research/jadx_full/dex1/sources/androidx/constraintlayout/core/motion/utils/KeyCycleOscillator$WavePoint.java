package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class KeyCycleOscillator$WavePoint {
    float mOffset;
    float mPeriod;
    float mPhase;
    int mPosition;
    float mValue;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public KeyCycleOscillator$WavePoint(int i9, float f8, float f9, float f10, float f11) {
        this.mPosition = i9;
        this.mValue = f11;
        this.mOffset = f9;
        this.mPeriod = f8;
        this.mPhase = f10;
    }
}
