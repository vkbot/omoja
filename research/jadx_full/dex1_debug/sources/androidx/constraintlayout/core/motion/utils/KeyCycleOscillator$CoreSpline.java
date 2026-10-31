package androidx.constraintlayout.core.motion.utils;

import androidx.constraintlayout.core.motion.MotionWidget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class KeyCycleOscillator$CoreSpline extends KeyCycleOscillator {
    String mType;
    int mTypeId;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public KeyCycleOscillator$CoreSpline(String str) {
        this.mType = str;
        this.mTypeId = TypedValues$CycleType.getId(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.utils.KeyCycleOscillator
    public void setProperty(MotionWidget motionWidget, float f8) {
        motionWidget.setValue(this.mTypeId, get(f8));
    }
}
