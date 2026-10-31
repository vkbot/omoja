package androidx.constraintlayout.motion.utils;

import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet;
import androidx.constraintlayout.widget.ConstraintAttribute;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class ViewTimeCycle extends TimeCycleSplineSet {
    private static final String TAG = "ViewTimeCycle";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ViewTimeCycle makeCustomSpline(String str, SparseArray<ConstraintAttribute> sparseArray) {
        return new ViewTimeCycle$CustomSet(str, sparseArray);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ViewTimeCycle makeSpline(String str, long j9) {
        ViewTimeCycle viewTimeCycle$RotationXset;
        str.getClass();
        switch (str) {
            case "rotationX":
                viewTimeCycle$RotationXset = new ViewTimeCycle$RotationXset();
                break;
            case "rotationY":
                viewTimeCycle$RotationXset = new ViewTimeCycle$RotationYset();
                break;
            case "translationX":
                viewTimeCycle$RotationXset = new ViewTimeCycle$TranslationXset();
                break;
            case "translationY":
                viewTimeCycle$RotationXset = new ViewTimeCycle$TranslationYset();
                break;
            case "translationZ":
                viewTimeCycle$RotationXset = new ViewTimeCycle$TranslationZset();
                break;
            case "progress":
                viewTimeCycle$RotationXset = new ViewTimeCycle$ProgressSet();
                break;
            case "scaleX":
                viewTimeCycle$RotationXset = new ViewTimeCycle$ScaleXset();
                break;
            case "scaleY":
                viewTimeCycle$RotationXset = new ViewTimeCycle$ScaleYset();
                break;
            case "rotation":
                viewTimeCycle$RotationXset = new ViewTimeCycle$RotationSet();
                break;
            case "elevation":
                viewTimeCycle$RotationXset = new ViewTimeCycle$ElevationSet();
                break;
            case "transitionPathRotate":
                viewTimeCycle$RotationXset = new ViewTimeCycle$PathRotate();
                break;
            case "alpha":
                viewTimeCycle$RotationXset = new ViewTimeCycle$AlphaSet();
                break;
            default:
                return null;
        }
        viewTimeCycle$RotationXset.setStartTime(j9);
        return viewTimeCycle$RotationXset;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float get(float f8, long j9, View view, KeyCache keyCache) {
        this.mCurveFit.getPos(f8, this.mCache);
        float[] fArr = this.mCache;
        float f9 = fArr[1];
        if (f9 == 0.0f) {
            this.mContinue = false;
            return fArr[2];
        }
        if (Float.isNaN(this.mLastCycle)) {
            float floatValue = keyCache.getFloatValue(view, this.mType, 0);
            this.mLastCycle = floatValue;
            if (Float.isNaN(floatValue)) {
                this.mLastCycle = 0.0f;
            }
        }
        float f10 = (float) (((((j9 - this.mLastTime) * 1.0E-9d) * ((double) f9)) + ((double) this.mLastCycle)) % 1.0d);
        this.mLastCycle = f10;
        keyCache.setFloatValue(view, this.mType, 0, f10);
        this.mLastTime = j9;
        float f11 = this.mCache[0];
        float fCalcWave = (calcWave(this.mLastCycle) * f11) + this.mCache[2];
        this.mContinue = (f11 == 0.0f && f9 == 0.0f) ? false : true;
        return fCalcWave;
    }

    public abstract boolean setProperty(View view, float f8, long j9, KeyCache keyCache);
}
