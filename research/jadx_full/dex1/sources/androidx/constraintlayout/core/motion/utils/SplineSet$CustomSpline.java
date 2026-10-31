package androidx.constraintlayout.core.motion.utils;

import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.motion.MotionWidget;
import java.lang.reflect.Array;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SplineSet$CustomSpline extends SplineSet {
    String mAttributeName;
    KeyFrameArray$CustomVar mConstraintAttributeList;
    float[] mTempValues;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SplineSet$CustomSpline(String str, KeyFrameArray$CustomVar keyFrameArray$CustomVar) {
        this.mAttributeName = str.split(",")[1];
        this.mConstraintAttributeList = keyFrameArray$CustomVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.utils.SplineSet
    public void setPoint(int i9, float f8) {
        throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute)");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setProperty(MotionWidget motionWidget, float f8) {
        this.mCurveFit.getPos(f8, this.mTempValues);
        this.mConstraintAttributeList.valueAt(0).setInterpolatedValue(motionWidget, this.mTempValues);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.utils.SplineSet
    public void setup(int i9) {
        int size = this.mConstraintAttributeList.size();
        int iNumberOfInterpolatedValues = this.mConstraintAttributeList.valueAt(0).numberOfInterpolatedValues();
        double[] dArr = new double[size];
        this.mTempValues = new float[iNumberOfInterpolatedValues];
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, iNumberOfInterpolatedValues);
        for (int i10 = 0; i10 < size; i10++) {
            int iKeyAt = this.mConstraintAttributeList.keyAt(i10);
            CustomVariable customVariableValueAt = this.mConstraintAttributeList.valueAt(i10);
            dArr[i10] = ((double) iKeyAt) * 0.01d;
            customVariableValueAt.getValuesToInterpolate(this.mTempValues);
            int i11 = 0;
            while (true) {
                float[] fArr = this.mTempValues;
                if (i11 < fArr.length) {
                    dArr2[i10][i11] = fArr[i11];
                    i11++;
                }
            }
        }
        this.mCurveFit = CurveFit.get(i9, dArr, dArr2);
    }

    public void setPoint(int i9, CustomVariable customVariable) {
        this.mConstraintAttributeList.append(i9, customVariable);
    }

    @Override // androidx.constraintlayout.core.motion.utils.SplineSet
    public void setProperty(TypedValues typedValues, float f8) {
        setProperty((MotionWidget) typedValues, f8);
    }
}
