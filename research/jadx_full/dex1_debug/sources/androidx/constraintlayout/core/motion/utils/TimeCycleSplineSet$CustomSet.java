package androidx.constraintlayout.core.motion.utils;

import androidx.constraintlayout.core.motion.CustomAttribute;
import androidx.constraintlayout.core.motion.MotionWidget;
import java.lang.reflect.Array;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class TimeCycleSplineSet$CustomSet extends TimeCycleSplineSet {
    String mAttributeName;
    KeyFrameArray$CustomArray mConstraintAttributeList;
    float[] mCustomCache;
    float[] mTempValues;
    KeyFrameArray$FloatArray mWaveProperties = new KeyFrameArray$FloatArray();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TimeCycleSplineSet$CustomSet(String str, KeyFrameArray$CustomArray keyFrameArray$CustomArray) {
        this.mAttributeName = str.split(",")[1];
        this.mConstraintAttributeList = keyFrameArray$CustomArray;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPoint(int i9, CustomAttribute customAttribute, float f8, int i10, float f9) {
        this.mConstraintAttributeList.append(i9, customAttribute);
        this.mWaveProperties.append(i9, new float[]{f8, f9});
        this.mWaveShape = Math.max(this.mWaveShape, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean setProperty(MotionWidget motionWidget, float f8, long j9, KeyCache keyCache) {
        this.mCurveFit.getPos(f8, this.mTempValues);
        float[] fArr = this.mTempValues;
        float f9 = fArr[fArr.length - 2];
        float f10 = fArr[fArr.length - 1];
        long j10 = j9 - this.mLastTime;
        if (Float.isNaN(this.mLastCycle)) {
            float floatValue = keyCache.getFloatValue(motionWidget, this.mAttributeName, 0);
            this.mLastCycle = floatValue;
            if (Float.isNaN(floatValue)) {
                this.mLastCycle = 0.0f;
            }
        }
        float f11 = (float) ((((j10 * 1.0E-9d) * ((double) f9)) + ((double) this.mLastCycle)) % 1.0d);
        this.mLastCycle = f11;
        this.mLastTime = j9;
        float fCalcWave = calcWave(f11);
        this.mContinue = false;
        int i9 = 0;
        while (true) {
            float[] fArr2 = this.mCustomCache;
            if (i9 >= fArr2.length) {
                break;
            }
            boolean z8 = this.mContinue;
            float f12 = this.mTempValues[i9];
            this.mContinue = z8 | (((double) f12) != 0.0d);
            fArr2[i9] = (f12 * fCalcWave) + f10;
            i9++;
        }
        motionWidget.setInterpolatedValue(this.mConstraintAttributeList.valueAt(0), this.mCustomCache);
        if (f9 != 0.0f) {
            this.mContinue = true;
        }
        return this.mContinue;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet
    public void setup(int i9) {
        int size = this.mConstraintAttributeList.size();
        int iNumberOfInterpolatedValues = this.mConstraintAttributeList.valueAt(0).numberOfInterpolatedValues();
        double[] dArr = new double[size];
        int i10 = iNumberOfInterpolatedValues + 2;
        this.mTempValues = new float[i10];
        this.mCustomCache = new float[iNumberOfInterpolatedValues];
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, i10);
        for (int i11 = 0; i11 < size; i11++) {
            int iKeyAt = this.mConstraintAttributeList.keyAt(i11);
            CustomAttribute customAttributeValueAt = this.mConstraintAttributeList.valueAt(i11);
            float[] fArrValueAt = this.mWaveProperties.valueAt(i11);
            dArr[i11] = ((double) iKeyAt) * 0.01d;
            customAttributeValueAt.getValuesToInterpolate(this.mTempValues);
            int i12 = 0;
            while (true) {
                float[] fArr = this.mTempValues;
                if (i12 < fArr.length) {
                    dArr2[i11][i12] = fArr[i12];
                    i12++;
                }
            }
            double[] dArr3 = dArr2[i11];
            dArr3[iNumberOfInterpolatedValues] = fArrValueAt[0];
            dArr3[iNumberOfInterpolatedValues + 1] = fArrValueAt[1];
        }
        this.mCurveFit = CurveFit.get(i9, dArr, dArr2);
    }

    @Override // androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet
    public void setPoint(int i9, float f8, float f9, int i10, float f10) {
        throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute,...)");
    }
}
