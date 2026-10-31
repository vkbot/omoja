package androidx.constraintlayout.core.motion.utils;

import ai.onnxruntime.a;
import androidx.constraintlayout.core.motion.MotionWidget;
import java.lang.reflect.Array;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class KeyCycleOscillator {
    private static final String TAG = "KeyCycleOscillator";
    private CurveFit mCurveFit;
    private KeyCycleOscillator$CycleOscillator mCycleOscillator;
    private String mType;
    private int mWaveShape = 0;
    private String mWaveString = null;
    public int mVariesBy = 0;
    ArrayList<KeyCycleOscillator$WavePoint> mWavePoints = new ArrayList<>();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static KeyCycleOscillator makeWidgetCycle(String str) {
        return str.equals("pathRotate") ? new KeyCycleOscillator$PathRotateSet(str) : new KeyCycleOscillator$CoreSpline(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float get(float f8) {
        return (float) this.mCycleOscillator.getValues(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CurveFit getCurveFit() {
        return this.mCurveFit;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getSlope(float f8) {
        return (float) this.mCycleOscillator.getSlope(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPoint(int i9, int i10, String str, int i11, float f8, float f9, float f10, float f11, Object obj) {
        this.mWavePoints.add(new KeyCycleOscillator$WavePoint(i9, f8, f9, f10, f11));
        if (i11 != -1) {
            this.mVariesBy = i11;
        }
        this.mWaveShape = i10;
        setCustom(obj);
        this.mWaveString = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setType(String str) {
        this.mType = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setup(float f8) {
        int size = this.mWavePoints.size();
        if (size == 0) {
            return;
        }
        Collections.sort(this.mWavePoints, new KeyCycleOscillator$1(this));
        double[] dArr = new double[size];
        char c = 2;
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, 3);
        this.mCycleOscillator = new KeyCycleOscillator$CycleOscillator(this.mWaveShape, this.mWaveString, this.mVariesBy, size);
        ArrayList<KeyCycleOscillator$WavePoint> arrayList = this.mWavePoints;
        int size2 = arrayList.size();
        int i9 = 0;
        int i10 = 0;
        while (i9 < size2) {
            int i11 = i9 + 1;
            KeyCycleOscillator$WavePoint keyCycleOscillator$WavePoint = arrayList.get(i9);
            float f9 = keyCycleOscillator$WavePoint.mPeriod;
            dArr[i10] = ((double) f9) * 0.01d;
            double[] dArr3 = dArr2[i10];
            float f10 = keyCycleOscillator$WavePoint.mValue;
            dArr3[0] = f10;
            float f11 = keyCycleOscillator$WavePoint.mOffset;
            char c9 = c;
            dArr3[1] = f11;
            float f12 = keyCycleOscillator$WavePoint.mPhase;
            dArr3[c9] = f12;
            this.mCycleOscillator.setPoint(i10, keyCycleOscillator$WavePoint.mPosition, f9, f11, f12, f10);
            i10++;
            i9 = i11;
            c = c9;
            dArr2 = dArr2;
        }
        this.mCycleOscillator.setup(f8);
        this.mCurveFit = CurveFit.get(0, dArr, dArr2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        String string = this.mType;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        ArrayList<KeyCycleOscillator$WavePoint> arrayList = this.mWavePoints;
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            KeyCycleOscillator$WavePoint keyCycleOscillator$WavePoint = arrayList.get(i9);
            i9++;
            KeyCycleOscillator$WavePoint keyCycleOscillator$WavePoint2 = keyCycleOscillator$WavePoint;
            StringBuilder sbW = a.w(string, "[");
            sbW.append(keyCycleOscillator$WavePoint2.mPosition);
            sbW.append(" , ");
            sbW.append(decimalFormat.format(keyCycleOscillator$WavePoint2.mValue));
            sbW.append("] ");
            string = sbW.toString();
        }
        return string;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean variesByPath() {
        return this.mVariesBy == 1;
    }

    public void setCustom(Object obj) {
    }

    public void setPoint(int i9, int i10, String str, int i11, float f8, float f9, float f10, float f11) {
        this.mWavePoints.add(new KeyCycleOscillator$WavePoint(i9, f8, f9, f10, f11));
        if (i11 != -1) {
            this.mVariesBy = i11;
        }
        this.mWaveShape = i10;
        this.mWaveString = str;
    }

    public void setProperty(MotionWidget motionWidget, float f8) {
    }
}
