package androidx.constraintlayout.core.motion.utils;

import ai.onnxruntime.AbstractC0074a;
import androidx.constraintlayout.core.motion.MotionWidget;
import java.lang.reflect.Array;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class KeyCycleOscillator {
    private static final String TAG = "KeyCycleOscillator";
    private CurveFit mCurveFit;
    private CycleOscillator mCycleOscillator;
    private String mType;
    private int mWaveShape = 0;
    private String mWaveString = null;
    public int mVariesBy = 0;
    ArrayList<WavePoint> mWavePoints = new ArrayList<>();

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class CoreSpline extends KeyCycleOscillator {
        String mType;
        int mTypeId;

        public CoreSpline(String str) {
            this.mType = str;
            this.mTypeId = TypedValues.CycleType.getId(str);
        }

        @Override // androidx.constraintlayout.core.motion.utils.KeyCycleOscillator
        public void setProperty(MotionWidget motionWidget, float f8) {
            motionWidget.setValue(this.mTypeId, get(f8));
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class CycleOscillator {
        private static final String TAG = "CycleOscillator";
        static final int UNSET = -1;
        CurveFit mCurveFit;
        float[] mOffsetArr;
        private final int mOffst;
        Oscillator mOscillator;
        float mPathLength;
        float[] mPeriod;
        private final int mPhase;
        float[] mPhaseArr;
        double[] mPosition;
        float[] mScale;
        double[] mSplineSlopeCache;
        double[] mSplineValueCache;
        private final int mValue;
        float[] mValues;
        private final int mVariesBy;
        int mWaveShape;

        public CycleOscillator(int i10, String str, int i11, int i12) {
            Oscillator oscillator = new Oscillator();
            this.mOscillator = oscillator;
            this.mOffst = 0;
            this.mPhase = 1;
            this.mValue = 2;
            this.mWaveShape = i10;
            this.mVariesBy = i11;
            oscillator.setType(i10, str);
            this.mValues = new float[i12];
            this.mPosition = new double[i12];
            this.mPeriod = new float[i12];
            this.mOffsetArr = new float[i12];
            this.mPhaseArr = new float[i12];
            this.mScale = new float[i12];
        }

        public double getLastPhase() {
            return this.mSplineValueCache[1];
        }

        public double getSlope(float f8) {
            CurveFit curveFit = this.mCurveFit;
            double[] dArr = this.mSplineSlopeCache;
            if (curveFit != null) {
                double d = f8;
                curveFit.getSlope(d, dArr);
                this.mCurveFit.getPos(d, this.mSplineValueCache);
            } else {
                dArr[0] = 0.0d;
                dArr[1] = 0.0d;
                dArr[2] = 0.0d;
            }
            double d10 = f8;
            double value = this.mOscillator.getValue(d10, this.mSplineValueCache[1]);
            double slope = this.mOscillator.getSlope(d10, this.mSplineValueCache[1], this.mSplineSlopeCache[1]);
            double[] dArr2 = this.mSplineSlopeCache;
            return (slope * this.mSplineValueCache[2]) + (value * dArr2[2]) + dArr2[0];
        }

        public double getValues(float f8) {
            CurveFit curveFit = this.mCurveFit;
            double[] dArr = this.mSplineValueCache;
            if (curveFit != null) {
                curveFit.getPos(f8, dArr);
            } else {
                dArr[0] = this.mOffsetArr[0];
                dArr[1] = this.mPhaseArr[0];
                dArr[2] = this.mValues[0];
            }
            double[] dArr2 = this.mSplineValueCache;
            return (this.mOscillator.getValue(f8, dArr2[1]) * this.mSplineValueCache[2]) + dArr2[0];
        }

        public void setPoint(int i10, int i11, float f8, float f10, float f11, float f12) {
            this.mPosition[i10] = ((double) i11) / 100.0d;
            this.mPeriod[i10] = f8;
            this.mOffsetArr[i10] = f10;
            this.mPhaseArr[i10] = f11;
            this.mValues[i10] = f12;
        }

        public void setup(float f8) {
            this.mPathLength = f8;
            double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, this.mPosition.length, 3);
            float[] fArr = this.mValues;
            this.mSplineValueCache = new double[fArr.length + 2];
            this.mSplineSlopeCache = new double[fArr.length + 2];
            if (this.mPosition[0] > 0.0d) {
                this.mOscillator.addPoint(0.0d, this.mPeriod[0]);
            }
            double[] dArr2 = this.mPosition;
            int length = dArr2.length - 1;
            if (dArr2[length] < 1.0d) {
                this.mOscillator.addPoint(1.0d, this.mPeriod[length]);
            }
            for (int i10 = 0; i10 < dArr.length; i10++) {
                double[] dArr3 = dArr[i10];
                dArr3[0] = this.mOffsetArr[i10];
                dArr3[1] = this.mPhaseArr[i10];
                dArr3[2] = this.mValues[i10];
                this.mOscillator.addPoint(this.mPosition[i10], this.mPeriod[i10]);
            }
            this.mOscillator.normalize();
            double[] dArr4 = this.mPosition;
            if (dArr4.length > 1) {
                this.mCurveFit = CurveFit.get(0, dArr4, dArr);
            } else {
                this.mCurveFit = null;
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class PathRotateSet extends KeyCycleOscillator {
        String mType;
        int mTypeId;

        public PathRotateSet(String str) {
            this.mType = str;
            this.mTypeId = TypedValues.CycleType.getId(str);
        }

        public void setPathRotate(MotionWidget motionWidget, float f8, double d, double d10) {
            motionWidget.setRotationZ(get(f8) + ((float) Math.toDegrees(Math.atan2(d10, d))));
        }

        @Override // androidx.constraintlayout.core.motion.utils.KeyCycleOscillator
        public void setProperty(MotionWidget motionWidget, float f8) {
            motionWidget.setValue(this.mTypeId, get(f8));
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class WavePoint {
        float mOffset;
        float mPeriod;
        float mPhase;
        int mPosition;
        float mValue;

        public WavePoint(int i10, float f8, float f10, float f11, float f12) {
            this.mPosition = i10;
            this.mValue = f12;
            this.mOffset = f10;
            this.mPeriod = f8;
            this.mPhase = f11;
        }
    }

    public static KeyCycleOscillator makeWidgetCycle(String str) {
        return str.equals("pathRotate") ? new PathRotateSet(str) : new CoreSpline(str);
    }

    public float get(float f8) {
        return (float) this.mCycleOscillator.getValues(f8);
    }

    public CurveFit getCurveFit() {
        return this.mCurveFit;
    }

    public float getSlope(float f8) {
        return (float) this.mCycleOscillator.getSlope(f8);
    }

    public void setPoint(int i10, int i11, String str, int i12, float f8, float f10, float f11, float f12, Object obj) {
        this.mWavePoints.add(new WavePoint(i10, f8, f10, f11, f12));
        if (i12 != -1) {
            this.mVariesBy = i12;
        }
        this.mWaveShape = i11;
        setCustom(obj);
        this.mWaveString = str;
    }

    public void setType(String str) {
        this.mType = str;
    }

    public void setup(float f8) {
        int size = this.mWavePoints.size();
        if (size == 0) {
            return;
        }
        Collections.sort(this.mWavePoints, new Comparator<WavePoint>() { // from class: androidx.constraintlayout.core.motion.utils.KeyCycleOscillator.1
            @Override // java.util.Comparator
            public int compare(WavePoint wavePoint, WavePoint wavePoint2) {
                return Integer.compare(wavePoint.mPosition, wavePoint2.mPosition);
            }
        });
        double[] dArr = new double[size];
        char c = 2;
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, 3);
        this.mCycleOscillator = new CycleOscillator(this.mWaveShape, this.mWaveString, this.mVariesBy, size);
        ArrayList<WavePoint> arrayList = this.mWavePoints;
        int size2 = arrayList.size();
        int i10 = 0;
        int i11 = 0;
        while (i10 < size2) {
            int i12 = i10 + 1;
            WavePoint wavePoint = arrayList.get(i10);
            float f10 = wavePoint.mPeriod;
            dArr[i11] = ((double) f10) * 0.01d;
            double[] dArr3 = dArr2[i11];
            float f11 = wavePoint.mValue;
            dArr3[0] = f11;
            float f12 = wavePoint.mOffset;
            char c10 = c;
            dArr3[1] = f12;
            float f13 = wavePoint.mPhase;
            dArr3[c10] = f13;
            this.mCycleOscillator.setPoint(i11, wavePoint.mPosition, f10, f12, f13, f11);
            i11++;
            i10 = i12;
            c = c10;
            dArr2 = dArr2;
        }
        this.mCycleOscillator.setup(f8);
        this.mCurveFit = CurveFit.get(0, dArr, dArr2);
    }

    public String toString() {
        String string = this.mType;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        ArrayList<WavePoint> arrayList = this.mWavePoints;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            WavePoint wavePoint = arrayList.get(i10);
            i10++;
            WavePoint wavePoint2 = wavePoint;
            StringBuilder sbM172w = AbstractC0074a.m172w(string, "[");
            sbM172w.append(wavePoint2.mPosition);
            sbM172w.append(" , ");
            sbM172w.append(decimalFormat.format(wavePoint2.mValue));
            sbM172w.append("] ");
            string = sbM172w.toString();
        }
        return string;
    }

    public boolean variesByPath() {
        return this.mVariesBy == 1;
    }

    public void setCustom(Object obj) {
    }

    public void setPoint(int i10, int i11, String str, int i12, float f8, float f10, float f11, float f12) {
        this.mWavePoints.add(new WavePoint(i10, f8, f10, f11, f12));
        if (i12 != -1) {
            this.mVariesBy = i12;
        }
        this.mWaveShape = i11;
        this.mWaveString = str;
    }

    public void setProperty(MotionWidget motionWidget, float f8) {
    }
}
