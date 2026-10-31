package androidx.constraintlayout.core.motion.utils;

import ai.onnxruntime.AbstractC0074a;
import androidx.constraintlayout.core.motion.CustomAttribute;
import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.motion.MotionWidget;
import java.lang.reflect.Array;
import java.text.DecimalFormat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class TimeCycleSplineSet {
    protected static final int CURVE_OFFSET = 2;
    protected static final int CURVE_PERIOD = 1;
    protected static final int CURVE_VALUE = 0;
    private static final String TAG = "SplineSet";
    protected static float sVal2PI = 6.2831855f;
    protected int mCount;
    protected CurveFit mCurveFit;
    protected long mLastTime;
    protected String mType;
    protected int mWaveShape = 0;
    protected int[] mTimePoints = new int[10];
    protected float[][] mValues = (float[][]) Array.newInstance((Class<?>) Float.TYPE, 10, 3);
    protected float[] mCache = new float[3];
    protected boolean mContinue = false;
    protected float mLastCycle = Float.NaN;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Sort {
        public static void doubleQuickSort(int[] iArr, float[][] fArr, int i10, int i11) {
            int[] iArr2 = new int[iArr.length + 10];
            iArr2[0] = i11;
            iArr2[1] = i10;
            int i12 = 2;
            while (i12 > 0) {
                int i13 = iArr2[i12 - 1];
                int i14 = i12 - 2;
                int i15 = iArr2[i14];
                if (i13 < i15) {
                    int iPartition = partition(iArr, fArr, i13, i15);
                    iArr2[i14] = iPartition - 1;
                    iArr2[i12 - 1] = i13;
                    int i16 = i12 + 1;
                    iArr2[i12] = i15;
                    i12 += 2;
                    iArr2[i16] = iPartition + 1;
                } else {
                    i12 = i14;
                }
            }
        }

        private static int partition(int[] iArr, float[][] fArr, int i10, int i11) {
            int i12 = iArr[i11];
            int i13 = i10;
            while (i10 < i11) {
                if (iArr[i10] <= i12) {
                    swap(iArr, fArr, i13, i10);
                    i13++;
                }
                i10++;
            }
            swap(iArr, fArr, i13, i11);
            return i13;
        }

        private static void swap(int[] iArr, float[][] fArr, int i10, int i11) {
            int i12 = iArr[i10];
            iArr[i10] = iArr[i11];
            iArr[i11] = i12;
            float[] fArr2 = fArr[i10];
            fArr[i10] = fArr[i11];
            fArr[i11] = fArr2;
        }
    }

    public float calcWave(float f8) {
        float fAbs;
        switch (this.mWaveShape) {
            case 1:
                return Math.signum(f8 * sVal2PI);
            case 2:
                fAbs = Math.abs(f8);
                break;
            case 3:
                return (((f8 * 2.0f) + 1.0f) % 2.0f) - 1.0f;
            case 4:
                fAbs = ((f8 * 2.0f) + 1.0f) % 2.0f;
                break;
            case 5:
                return (float) Math.cos(f8 * sVal2PI);
            case 6:
                float fAbs2 = 1.0f - Math.abs(((f8 * 4.0f) % 4.0f) - 2.0f);
                fAbs = fAbs2 * fAbs2;
                break;
            default:
                return (float) Math.sin(f8 * sVal2PI);
        }
        return 1.0f - fAbs;
    }

    public CurveFit getCurveFit() {
        return this.mCurveFit;
    }

    public void setPoint(int i10, float f8, float f10, int i11, float f11) {
        int[] iArr = this.mTimePoints;
        int i12 = this.mCount;
        iArr[i12] = i10;
        float[] fArr = this.mValues[i12];
        fArr[0] = f8;
        fArr[1] = f10;
        fArr[2] = f11;
        this.mWaveShape = Math.max(this.mWaveShape, i11);
        this.mCount++;
    }

    public void setStartTime(long j10) {
        this.mLastTime = j10;
    }

    public void setType(String str) {
        this.mType = str;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0060  */
    public void setup(int i10) {
        int i11 = this.mCount;
        if (i11 == 0) {
            System.err.println("Error no points added to " + this.mType);
            return;
        }
        Sort.doubleQuickSort(this.mTimePoints, this.mValues, 0, i11 - 1);
        int i12 = 1;
        int i13 = 0;
        while (true) {
            int[] iArr = this.mTimePoints;
            if (i12 >= iArr.length) {
                break;
            }
            if (iArr[i12] != iArr[i12 - 1]) {
                i13++;
            }
            i12++;
        }
        if (i13 == 0) {
            i13 = 1;
        }
        double[] dArr = new double[i13];
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i13, 3);
        int i14 = 0;
        for (int i15 = 0; i15 < this.mCount; i15++) {
            if (i15 > 0) {
                int[] iArr2 = this.mTimePoints;
                if (iArr2[i15] != iArr2[i15 - 1]) {
                    dArr[i14] = ((double) this.mTimePoints[i15]) * 0.01d;
                    double[] dArr3 = dArr2[i14];
                    float[] fArr = this.mValues[i15];
                    dArr3[0] = fArr[0];
                    dArr3[1] = fArr[1];
                    dArr3[2] = fArr[2];
                    i14++;
                }
            } else {
                dArr[i14] = ((double) this.mTimePoints[i15]) * 0.01d;
                double[] dArr4 = dArr2[i14];
                float[] fArr2 = this.mValues[i15];
                dArr4[0] = fArr2[0];
                dArr4[1] = fArr2[1];
                dArr4[2] = fArr2[2];
                i14++;
            }
        }
        this.mCurveFit = CurveFit.get(i10, dArr, dArr2);
    }

    public String toString() {
        String string = this.mType;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i10 = 0; i10 < this.mCount; i10++) {
            StringBuilder sbM172w = AbstractC0074a.m172w(string, "[");
            sbM172w.append(this.mTimePoints[i10]);
            sbM172w.append(" , ");
            sbM172w.append(decimalFormat.format(this.mValues[i10]));
            sbM172w.append("] ");
            string = sbM172w.toString();
        }
        return string;
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class CustomSet extends TimeCycleSplineSet {
        String mAttributeName;
        KeyFrameArray.CustomArray mConstraintAttributeList;
        float[] mCustomCache;
        float[] mTempValues;
        KeyFrameArray.FloatArray mWaveProperties = new KeyFrameArray.FloatArray();

        public CustomSet(String str, KeyFrameArray.CustomArray customArray) {
            this.mAttributeName = str.split(",")[1];
            this.mConstraintAttributeList = customArray;
        }

        public void setPoint(int i10, CustomAttribute customAttribute, float f8, int i11, float f10) {
            this.mConstraintAttributeList.append(i10, customAttribute);
            this.mWaveProperties.append(i10, new float[]{f8, f10});
            this.mWaveShape = Math.max(this.mWaveShape, i11);
        }

        public boolean setProperty(MotionWidget motionWidget, float f8, long j10, KeyCache keyCache) {
            this.mCurveFit.getPos(f8, this.mTempValues);
            float[] fArr = this.mTempValues;
            float f10 = fArr[fArr.length - 2];
            float f11 = fArr[fArr.length - 1];
            long j11 = j10 - this.mLastTime;
            if (Float.isNaN(this.mLastCycle)) {
                float floatValue = keyCache.getFloatValue(motionWidget, this.mAttributeName, 0);
                this.mLastCycle = floatValue;
                if (Float.isNaN(floatValue)) {
                    this.mLastCycle = 0.0f;
                }
            }
            float f12 = (float) ((((j11 * 1.0E-9d) * ((double) f10)) + ((double) this.mLastCycle)) % 1.0d);
            this.mLastCycle = f12;
            this.mLastTime = j10;
            float fCalcWave = calcWave(f12);
            this.mContinue = false;
            int i10 = 0;
            while (true) {
                float[] fArr2 = this.mCustomCache;
                if (i10 >= fArr2.length) {
                    break;
                }
                boolean z9 = this.mContinue;
                float f13 = this.mTempValues[i10];
                this.mContinue = z9 | (((double) f13) != 0.0d);
                fArr2[i10] = (f13 * fCalcWave) + f11;
                i10++;
            }
            motionWidget.setInterpolatedValue(this.mConstraintAttributeList.valueAt(0), this.mCustomCache);
            if (f10 != 0.0f) {
                this.mContinue = true;
            }
            return this.mContinue;
        }

        @Override // androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet
        public void setup(int i10) {
            int size = this.mConstraintAttributeList.size();
            int iNumberOfInterpolatedValues = this.mConstraintAttributeList.valueAt(0).numberOfInterpolatedValues();
            double[] dArr = new double[size];
            int i11 = iNumberOfInterpolatedValues + 2;
            this.mTempValues = new float[i11];
            this.mCustomCache = new float[iNumberOfInterpolatedValues];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, i11);
            for (int i12 = 0; i12 < size; i12++) {
                int iKeyAt = this.mConstraintAttributeList.keyAt(i12);
                CustomAttribute customAttributeValueAt = this.mConstraintAttributeList.valueAt(i12);
                float[] fArrValueAt = this.mWaveProperties.valueAt(i12);
                dArr[i12] = ((double) iKeyAt) * 0.01d;
                customAttributeValueAt.getValuesToInterpolate(this.mTempValues);
                int i13 = 0;
                while (true) {
                    float[] fArr = this.mTempValues;
                    if (i13 < fArr.length) {
                        dArr2[i12][i13] = fArr[i13];
                        i13++;
                    }
                }
                double[] dArr3 = dArr2[i12];
                dArr3[iNumberOfInterpolatedValues] = fArrValueAt[0];
                dArr3[iNumberOfInterpolatedValues + 1] = fArrValueAt[1];
            }
            this.mCurveFit = CurveFit.get(i10, dArr, dArr2);
        }

        @Override // androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet
        public void setPoint(int i10, float f8, float f10, int i11, float f11) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute,...)");
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class CustomVarSet extends TimeCycleSplineSet {
        String mAttributeName;
        KeyFrameArray.CustomVar mConstraintAttributeList;
        float[] mCustomCache;
        float[] mTempValues;
        KeyFrameArray.FloatArray mWaveProperties = new KeyFrameArray.FloatArray();

        public CustomVarSet(String str, KeyFrameArray.CustomVar customVar) {
            this.mAttributeName = str.split(",")[1];
            this.mConstraintAttributeList = customVar;
        }

        public void setPoint(int i10, CustomVariable customVariable, float f8, int i11, float f10) {
            this.mConstraintAttributeList.append(i10, customVariable);
            this.mWaveProperties.append(i10, new float[]{f8, f10});
            this.mWaveShape = Math.max(this.mWaveShape, i11);
        }

        public boolean setProperty(MotionWidget motionWidget, float f8, long j10, KeyCache keyCache) {
            this.mCurveFit.getPos(f8, this.mTempValues);
            float[] fArr = this.mTempValues;
            float f10 = fArr[fArr.length - 2];
            float f11 = fArr[fArr.length - 1];
            long j11 = j10 - this.mLastTime;
            if (Float.isNaN(this.mLastCycle)) {
                float floatValue = keyCache.getFloatValue(motionWidget, this.mAttributeName, 0);
                this.mLastCycle = floatValue;
                if (Float.isNaN(floatValue)) {
                    this.mLastCycle = 0.0f;
                }
            }
            float f12 = (float) ((((j11 * 1.0E-9d) * ((double) f10)) + ((double) this.mLastCycle)) % 1.0d);
            this.mLastCycle = f12;
            this.mLastTime = j10;
            float fCalcWave = calcWave(f12);
            this.mContinue = false;
            int i10 = 0;
            while (true) {
                float[] fArr2 = this.mCustomCache;
                if (i10 >= fArr2.length) {
                    break;
                }
                boolean z9 = this.mContinue;
                float f13 = this.mTempValues[i10];
                this.mContinue = z9 | (((double) f13) != 0.0d);
                fArr2[i10] = (f13 * fCalcWave) + f11;
                i10++;
            }
            this.mConstraintAttributeList.valueAt(0).setInterpolatedValue(motionWidget, this.mCustomCache);
            if (f10 != 0.0f) {
                this.mContinue = true;
            }
            return this.mContinue;
        }

        @Override // androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet
        public void setup(int i10) {
            int size = this.mConstraintAttributeList.size();
            int iNumberOfInterpolatedValues = this.mConstraintAttributeList.valueAt(0).numberOfInterpolatedValues();
            double[] dArr = new double[size];
            int i11 = iNumberOfInterpolatedValues + 2;
            this.mTempValues = new float[i11];
            this.mCustomCache = new float[iNumberOfInterpolatedValues];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, i11);
            for (int i12 = 0; i12 < size; i12++) {
                int iKeyAt = this.mConstraintAttributeList.keyAt(i12);
                CustomVariable customVariableValueAt = this.mConstraintAttributeList.valueAt(i12);
                float[] fArrValueAt = this.mWaveProperties.valueAt(i12);
                dArr[i12] = ((double) iKeyAt) * 0.01d;
                customVariableValueAt.getValuesToInterpolate(this.mTempValues);
                int i13 = 0;
                while (true) {
                    float[] fArr = this.mTempValues;
                    if (i13 < fArr.length) {
                        dArr2[i12][i13] = fArr[i13];
                        i13++;
                    }
                }
                double[] dArr3 = dArr2[i12];
                dArr3[iNumberOfInterpolatedValues] = fArrValueAt[0];
                dArr3[iNumberOfInterpolatedValues + 1] = fArrValueAt[1];
            }
            this.mCurveFit = CurveFit.get(i10, dArr, dArr2);
        }

        @Override // androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet
        public void setPoint(int i10, float f8, float f10, int i11, float f11) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute,...)");
        }
    }
}
