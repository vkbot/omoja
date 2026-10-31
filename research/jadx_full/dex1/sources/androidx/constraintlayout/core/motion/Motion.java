package androidx.constraintlayout.core.motion;

import ai.onnxruntime.a;
import androidx.constraintlayout.core.motion.key.MotionKey;
import androidx.constraintlayout.core.motion.key.MotionKeyAttributes;
import androidx.constraintlayout.core.motion.key.MotionKeyCycle;
import androidx.constraintlayout.core.motion.key.MotionKeyPosition;
import androidx.constraintlayout.core.motion.key.MotionKeyTimeCycle;
import androidx.constraintlayout.core.motion.key.MotionKeyTrigger;
import androidx.constraintlayout.core.motion.utils.CurveFit;
import androidx.constraintlayout.core.motion.utils.DifferentialInterpolator;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.FloatRect;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.motion.utils.KeyCycleOscillator;
import androidx.constraintlayout.core.motion.utils.KeyCycleOscillator$PathRotateSet;
import androidx.constraintlayout.core.motion.utils.KeyFrameArray$CustomVar;
import androidx.constraintlayout.core.motion.utils.Rect;
import androidx.constraintlayout.core.motion.utils.SplineSet;
import androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet;
import androidx.constraintlayout.core.motion.utils.TypedBundle;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.motion.utils.Utils;
import androidx.constraintlayout.core.motion.utils.VelocityMatrix;
import androidx.constraintlayout.core.motion.utils.ViewState;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Motion implements TypedValues {
    static final int BOUNCE = 4;
    private static final boolean DEBUG = false;
    public static final int DRAW_PATH_AS_CONFIGURED = 4;
    public static final int DRAW_PATH_BASIC = 1;
    public static final int DRAW_PATH_CARTESIAN = 3;
    public static final int DRAW_PATH_NONE = 0;
    public static final int DRAW_PATH_RECTANGLE = 5;
    public static final int DRAW_PATH_RELATIVE = 2;
    public static final int DRAW_PATH_SCREEN = 6;
    static final int EASE_IN = 1;
    static final int EASE_IN_OUT = 0;
    static final int EASE_OUT = 2;
    private static final boolean FAVOR_FIXED_SIZE_VIEWS = false;
    public static final int HORIZONTAL_PATH_X = 2;
    public static final int HORIZONTAL_PATH_Y = 3;
    private static final int INTERPOLATOR_REFERENCE_ID = -2;
    private static final int INTERPOLATOR_UNDEFINED = -3;
    static final int LINEAR = 3;
    static final int OVERSHOOT = 5;
    public static final int PATH_PERCENT = 0;
    public static final int PATH_PERPENDICULAR = 1;
    public static final int ROTATION_LEFT = 2;
    public static final int ROTATION_RIGHT = 1;
    private static final int SPLINE_STRING = -1;
    private static final String TAG = "MotionController";
    public static final int VERTICAL_PATH_X = 4;
    public static final int VERTICAL_PATH_Y = 5;
    private CurveFit mArcSpline;
    private int[] mAttributeInterpolatorCount;
    private String[] mAttributeNames;
    String[] mAttributeTable;
    private HashMap<String, SplineSet> mAttributesMap;
    String mConstraintTag;
    float mCurrentCenterX;
    float mCurrentCenterY;
    private HashMap<String, KeyCycleOscillator> mCycleMap;
    public String mId;
    private double[] mInterpolateData;
    private int[] mInterpolateVariables;
    private double[] mInterpolateVelocity;
    private MotionKeyTrigger[] mKeyTriggers;
    Motion mRelativeMotion;
    private CurveFit[] mSpline;
    private HashMap<String, TimeCycleSplineSet> mTimeCycleAttributesMap;
    MotionWidget mView;
    Rect mTempRect = new Rect();
    private int mCurveFitType = 0;
    private MotionPaths mStartMotionPath = new MotionPaths();
    private MotionPaths mEndMotionPath = new MotionPaths();
    private MotionConstrainedPoint mStartPoint = new MotionConstrainedPoint();
    private MotionConstrainedPoint mEndPoint = new MotionConstrainedPoint();
    float mMotionStagger = Float.NaN;
    float mStaggerOffset = 0.0f;
    float mStaggerScale = 1.0f;
    private int mMaxDimension = 4;
    private float[] mValuesBuff = new float[4];
    private ArrayList<MotionPaths> mMotionPaths = new ArrayList<>();
    private float[] mVelocity = new float[1];
    private ArrayList<MotionKey> mKeyList = new ArrayList<>();
    private int mPathMotionArc = -1;
    private int mTransformPivotTarget = -1;
    private MotionWidget mTransformPivotView = null;
    private int mQuantizeMotionSteps = -1;
    private float mQuantizeMotionPhase = Float.NaN;
    private DifferentialInterpolator mQuantizeMotionInterpolator = null;
    private boolean mNoMovement = false;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Motion(MotionWidget motionWidget) {
        setView(motionWidget);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private float getAdjustedPosition(float f8, float[] fArr) {
        float f9 = 0.0f;
        if (fArr != null) {
            fArr[0] = 1.0f;
        } else {
            float f10 = this.mStaggerScale;
            if (f10 != 1.0d) {
                float f11 = this.mStaggerOffset;
                if (f8 < f11) {
                    f8 = 0.0f;
                }
                if (f8 > f11 && f8 < 1.0d) {
                    f8 = Math.min((f8 - f11) * f10, 1.0f);
                }
            }
        }
        Easing easing = this.mStartMotionPath.mKeyFrameEasing;
        ArrayList<MotionPaths> arrayList = this.mMotionPaths;
        int size = arrayList.size();
        float f12 = Float.NaN;
        int i9 = 0;
        while (i9 < size) {
            MotionPaths motionPaths = arrayList.get(i9);
            i9++;
            MotionPaths motionPaths2 = motionPaths;
            Easing easing2 = motionPaths2.mKeyFrameEasing;
            if (easing2 != null) {
                float f13 = motionPaths2.mTime;
                if (f13 < f8) {
                    easing = easing2;
                    f9 = f13;
                } else if (Float.isNaN(f12)) {
                    f12 = motionPaths2.mTime;
                }
            }
        }
        if (easing != null) {
            float f14 = (Float.isNaN(f12) ? 1.0f : f12) - f9;
            double d = (f8 - f9) / f14;
            f8 = (((float) easing.get(d)) * f14) + f9;
            if (fArr != null) {
                fArr[0] = (float) easing.getDiff(d);
            }
        }
        return f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static DifferentialInterpolator getInterpolator(int i9, String str, int i10) {
        if (i9 != -1) {
            return null;
        }
        return new Motion$1(Easing.getInterpolator(str));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private float getPreCycleDistance() {
        float[] fArr = new float[2];
        float f8 = 1.0f / 99;
        double d = 0.0d;
        double d9 = 0.0d;
        int i9 = 0;
        float fHypot = 0.0f;
        while (i9 < 100) {
            float f9 = i9 * f8;
            double d10 = f9;
            Easing easing = this.mStartMotionPath.mKeyFrameEasing;
            ArrayList<MotionPaths> arrayList = this.mMotionPaths;
            int size = arrayList.size();
            float f10 = Float.NaN;
            int i10 = 0;
            float f11 = 0.0f;
            while (i10 < size) {
                MotionPaths motionPaths = arrayList.get(i10);
                i10++;
                MotionPaths motionPaths2 = motionPaths;
                float f12 = f8;
                Easing easing2 = motionPaths2.mKeyFrameEasing;
                if (easing2 != null) {
                    float f13 = motionPaths2.mTime;
                    if (f13 < f9) {
                        f11 = f13;
                        easing = easing2;
                    } else if (Float.isNaN(f10)) {
                        f10 = motionPaths2.mTime;
                    }
                }
                f8 = f12;
            }
            float f14 = f8;
            if (easing != null) {
                if (Float.isNaN(f10)) {
                    f10 = 1.0f;
                }
                float f15 = f10 - f11;
                d10 = (((float) easing.get((f9 - f11) / f15)) * f15) + f11;
            }
            double d11 = d10;
            this.mSpline[0].getPos(d11, this.mInterpolateData);
            int i11 = i9;
            this.mStartMotionPath.getCenter(d11, this.mInterpolateVariables, this.mInterpolateData, fArr, 0);
            if (i11 > 0) {
                fHypot += (float) Math.hypot(d9 - ((double) fArr[1]), d - ((double) fArr[0]));
            }
            d = fArr[0];
            d9 = fArr[1];
            i9 = i11 + 1;
            f8 = f14;
        }
        return fHypot;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void insertKey(MotionPaths motionPaths) {
        ArrayList<MotionPaths> arrayList = this.mMotionPaths;
        int size = arrayList.size();
        MotionPaths motionPaths2 = null;
        int i9 = 0;
        while (i9 < size) {
            MotionPaths motionPaths3 = arrayList.get(i9);
            i9++;
            MotionPaths motionPaths4 = motionPaths3;
            if (motionPaths.mPosition == motionPaths4.mPosition) {
                motionPaths2 = motionPaths4;
            }
        }
        if (motionPaths2 != null) {
            this.mMotionPaths.remove(motionPaths2);
        }
        int iBinarySearch = Collections.binarySearch(this.mMotionPaths, motionPaths);
        if (iBinarySearch == 0) {
            Utils.loge(TAG, " KeyPath position \"" + motionPaths.mPosition + "\" outside of range");
        }
        this.mMotionPaths.add((-iBinarySearch) - 1, motionPaths);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void readView(MotionPaths motionPaths) {
        motionPaths.setBounds(this.mView.getX(), this.mView.getY(), this.mView.getWidth(), this.mView.getHeight());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setupRelative() {
        Motion motion = this.mRelativeMotion;
        if (motion == null) {
            return;
        }
        this.mStartMotionPath.setupRelative(motion, motion.mStartMotionPath);
        MotionPaths motionPaths = this.mEndMotionPath;
        Motion motion2 = this.mRelativeMotion;
        motionPaths.setupRelative(motion2, motion2.mEndMotionPath);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addKey(MotionKey motionKey) {
        this.mKeyList.add(motionKey);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addKeys(ArrayList<MotionKey> arrayList) {
        this.mKeyList.addAll(arrayList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void buildBounds(float[] fArr, int i9) {
        float f8 = 1.0f;
        float f9 = 1.0f / (i9 - 1);
        HashMap<String, SplineSet> map = this.mAttributesMap;
        if (map != null) {
            map.get("translationX");
        }
        HashMap<String, SplineSet> map2 = this.mAttributesMap;
        if (map2 != null) {
            map2.get("translationY");
        }
        HashMap<String, KeyCycleOscillator> map3 = this.mCycleMap;
        if (map3 != null) {
            map3.get("translationX");
        }
        HashMap<String, KeyCycleOscillator> map4 = this.mCycleMap;
        if (map4 != null) {
            map4.get("translationY");
        }
        int i10 = 0;
        while (i10 < i9) {
            float fMin = i10 * f9;
            float f10 = this.mStaggerScale;
            float f11 = 0.0f;
            if (f10 != f8) {
                float f12 = this.mStaggerOffset;
                if (fMin < f12) {
                    fMin = 0.0f;
                }
                if (fMin > f12 && fMin < 1.0d) {
                    fMin = Math.min((fMin - f12) * f10, f8);
                }
            }
            double d = fMin;
            Easing easing = this.mStartMotionPath.mKeyFrameEasing;
            ArrayList<MotionPaths> arrayList = this.mMotionPaths;
            int size = arrayList.size();
            float f13 = Float.NaN;
            int i11 = 0;
            while (i11 < size) {
                MotionPaths motionPaths = arrayList.get(i11);
                i11++;
                MotionPaths motionPaths2 = motionPaths;
                Easing easing2 = motionPaths2.mKeyFrameEasing;
                if (easing2 != null) {
                    float f14 = motionPaths2.mTime;
                    if (f14 < fMin) {
                        easing = easing2;
                        f11 = f14;
                    } else if (Float.isNaN(f13)) {
                        f13 = motionPaths2.mTime;
                    }
                }
            }
            if (easing != null) {
                if (Float.isNaN(f13)) {
                    f13 = 1.0f;
                }
                float f15 = f13 - f11;
                d = (((float) easing.get((fMin - f11) / f15)) * f15) + f11;
            }
            this.mSpline[0].getPos(d, this.mInterpolateData);
            CurveFit curveFit = this.mArcSpline;
            if (curveFit != null) {
                double[] dArr = this.mInterpolateData;
                if (dArr.length > 0) {
                    curveFit.getPos(d, dArr);
                }
            }
            this.mStartMotionPath.getBounds(this.mInterpolateVariables, this.mInterpolateData, fArr, i10 * 2);
            i10++;
            f8 = 1.0f;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int buildKeyBounds(float[] fArr, int[] iArr) {
        if (fArr == null) {
            return 0;
        }
        double[] timePoints = this.mSpline[0].getTimePoints();
        if (iArr != null) {
            ArrayList<MotionPaths> arrayList = this.mMotionPaths;
            int size = arrayList.size();
            int i9 = 0;
            int i10 = 0;
            while (i10 < size) {
                MotionPaths motionPaths = arrayList.get(i10);
                i10++;
                iArr[i9] = motionPaths.mMode;
                i9++;
            }
        }
        int i11 = 0;
        for (double d : timePoints) {
            this.mSpline[0].getPos(d, this.mInterpolateData);
            this.mStartMotionPath.getBounds(this.mInterpolateVariables, this.mInterpolateData, fArr, i11);
            i11 += 2;
        }
        return i11 / 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int buildKeyFrames(float[] fArr, int[] iArr, int[] iArr2) {
        if (fArr == null) {
            return 0;
        }
        double[] timePoints = this.mSpline[0].getTimePoints();
        if (iArr != null) {
            ArrayList<MotionPaths> arrayList = this.mMotionPaths;
            int size = arrayList.size();
            int i9 = 0;
            int i10 = 0;
            while (i10 < size) {
                MotionPaths motionPaths = arrayList.get(i10);
                i10++;
                iArr[i9] = motionPaths.mMode;
                i9++;
            }
        }
        if (iArr2 != null) {
            ArrayList<MotionPaths> arrayList2 = this.mMotionPaths;
            int size2 = arrayList2.size();
            int i11 = 0;
            int i12 = 0;
            while (i12 < size2) {
                MotionPaths motionPaths2 = arrayList2.get(i12);
                i12++;
                iArr2[i11] = (int) (motionPaths2.mPosition * 100.0f);
                i11++;
            }
        }
        int i13 = 0;
        for (int i14 = 0; i14 < timePoints.length; i14++) {
            this.mSpline[0].getPos(timePoints[i14], this.mInterpolateData);
            this.mStartMotionPath.getCenter(timePoints[i14], this.mInterpolateVariables, this.mInterpolateData, fArr, i13);
            i13 += 2;
        }
        return i13 / 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void buildPath(float[] fArr, int i9) {
        int i10 = i9;
        float f8 = 1.0f;
        float f9 = 1.0f / (i10 - 1);
        HashMap<String, SplineSet> map = this.mAttributesMap;
        SplineSet splineSet = map == null ? null : map.get("translationX");
        HashMap<String, SplineSet> map2 = this.mAttributesMap;
        SplineSet splineSet2 = map2 == null ? null : map2.get("translationY");
        HashMap<String, KeyCycleOscillator> map3 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator = map3 == null ? null : map3.get("translationX");
        HashMap<String, KeyCycleOscillator> map4 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator2 = map4 != null ? map4.get("translationY") : null;
        int i11 = 0;
        while (i11 < i10) {
            float fMin = i11 * f9;
            float f10 = this.mStaggerScale;
            float f11 = 0.0f;
            if (f10 != f8) {
                float f12 = this.mStaggerOffset;
                if (fMin < f12) {
                    fMin = 0.0f;
                }
                if (fMin > f12 && fMin < 1.0d) {
                    fMin = Math.min((fMin - f12) * f10, f8);
                }
            }
            double d = fMin;
            Easing easing = this.mStartMotionPath.mKeyFrameEasing;
            ArrayList<MotionPaths> arrayList = this.mMotionPaths;
            int size = arrayList.size();
            float f13 = Float.NaN;
            int i12 = 0;
            while (i12 < size) {
                MotionPaths motionPaths = arrayList.get(i12);
                i12++;
                MotionPaths motionPaths2 = motionPaths;
                float f14 = f9;
                Easing easing2 = motionPaths2.mKeyFrameEasing;
                if (easing2 != null) {
                    float f15 = motionPaths2.mTime;
                    if (f15 < fMin) {
                        f11 = f15;
                        easing = easing2;
                    } else if (Float.isNaN(f13)) {
                        f13 = motionPaths2.mTime;
                    }
                }
                f9 = f14;
            }
            float f16 = f9;
            if (easing != null) {
                if (Float.isNaN(f13)) {
                    f13 = 1.0f;
                }
                float f17 = f13 - f11;
                d = (((float) easing.get((fMin - f11) / f17)) * f17) + f11;
            }
            this.mSpline[0].getPos(d, this.mInterpolateData);
            CurveFit curveFit = this.mArcSpline;
            if (curveFit != null) {
                double[] dArr = this.mInterpolateData;
                if (dArr.length > 0) {
                    curveFit.getPos(d, dArr);
                }
            }
            int i13 = i11 * 2;
            this.mStartMotionPath.getCenter(d, this.mInterpolateVariables, this.mInterpolateData, fArr, i13);
            if (keyCycleOscillator != null) {
                fArr[i13] = keyCycleOscillator.get(fMin) + fArr[i13];
            } else if (splineSet != null) {
                fArr[i13] = splineSet.get(fMin) + fArr[i13];
            }
            if (keyCycleOscillator2 != null) {
                int i14 = i13 + 1;
                fArr[i14] = keyCycleOscillator2.get(fMin) + fArr[i14];
            } else if (splineSet2 != null) {
                int i15 = i13 + 1;
                fArr[i15] = splineSet2.get(fMin) + fArr[i15];
            }
            i11++;
            i10 = i9;
            f9 = f16;
            f8 = 1.0f;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void buildRect(float f8, float[] fArr, int i9) {
        this.mSpline[0].getPos(getAdjustedPosition(f8, null), this.mInterpolateData);
        this.mStartMotionPath.getRect(this.mInterpolateVariables, this.mInterpolateData, fArr, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void buildRectangles(float[] fArr, int i9) {
        float f8 = 1.0f / (i9 - 1);
        for (int i10 = 0; i10 < i9; i10++) {
            this.mSpline[0].getPos(getAdjustedPosition(i10 * f8, null), this.mInterpolateData);
            this.mStartMotionPath.getRect(this.mInterpolateVariables, this.mInterpolateData, fArr, i10 * 8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getAnimateRelativeTo() {
        return this.mStartMotionPath.mAnimateRelativeTo;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getAttributeValues(String str, float[] fArr, int i9) {
        SplineSet splineSet = this.mAttributesMap.get(str);
        if (splineSet == null) {
            return -1;
        }
        for (int i10 = 0; i10 < fArr.length; i10++) {
            fArr[i10] = splineSet.get(i10 / (fArr.length - 1));
        }
        return fArr.length;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void getCenter(double d, float[] fArr, float[] fArr2) {
        double[] dArr = new double[4];
        double[] dArr2 = new double[4];
        this.mSpline[0].getPos(d, dArr);
        this.mSpline[0].getSlope(d, dArr2);
        Arrays.fill(fArr2, 0.0f);
        this.mStartMotionPath.getCenter(d, this.mInterpolateVariables, dArr, fArr, dArr2, fArr2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getCenterX() {
        return this.mCurrentCenterX;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getCenterY() {
        return this.mCurrentCenterY;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void getDpDt(float f8, float f9, float f10, float[] fArr) {
        double[] dArr;
        float adjustedPosition = getAdjustedPosition(f8, this.mVelocity);
        CurveFit[] curveFitArr = this.mSpline;
        int i9 = 0;
        if (curveFitArr == null) {
            MotionPaths motionPaths = this.mEndMotionPath;
            float f11 = motionPaths.mX;
            MotionPaths motionPaths2 = this.mStartMotionPath;
            float f12 = f11 - motionPaths2.mX;
            float f13 = motionPaths.mY - motionPaths2.mY;
            float f14 = motionPaths.mWidth - motionPaths2.mWidth;
            float f15 = (motionPaths.mHeight - motionPaths2.mHeight) + f13;
            fArr[0] = ((f14 + f12) * f9) + ((1.0f - f9) * f12);
            fArr[1] = (f15 * f10) + ((1.0f - f10) * f13);
            return;
        }
        double d = adjustedPosition;
        curveFitArr[0].getSlope(d, this.mInterpolateVelocity);
        this.mSpline[0].getPos(d, this.mInterpolateData);
        float f16 = this.mVelocity[0];
        while (true) {
            dArr = this.mInterpolateVelocity;
            if (i9 >= dArr.length) {
                break;
            }
            dArr[i9] = dArr[i9] * ((double) f16);
            i9++;
        }
        CurveFit curveFit = this.mArcSpline;
        if (curveFit == null) {
            this.mStartMotionPath.setDpDt(f9, f10, fArr, this.mInterpolateVariables, dArr, this.mInterpolateData);
            return;
        }
        double[] dArr2 = this.mInterpolateData;
        if (dArr2.length > 0) {
            curveFit.getPos(d, dArr2);
            this.mArcSpline.getSlope(d, this.mInterpolateVelocity);
            this.mStartMotionPath.setDpDt(f9, f10, fArr, this.mInterpolateVariables, this.mInterpolateVelocity, this.mInterpolateData);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getDrawPath() {
        int iMax = this.mStartMotionPath.mDrawPath;
        ArrayList<MotionPaths> arrayList = this.mMotionPaths;
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            MotionPaths motionPaths = arrayList.get(i9);
            i9++;
            iMax = Math.max(iMax, motionPaths.mDrawPath);
        }
        return Math.max(iMax, this.mEndMotionPath.mDrawPath);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getFinalHeight() {
        return this.mEndMotionPath.mHeight;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getFinalWidth() {
        return this.mEndMotionPath.mWidth;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getFinalX() {
        return this.mEndMotionPath.mX;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getFinalY() {
        return this.mEndMotionPath.mY;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public int getId(String str) {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MotionPaths getKeyFrame(int i9) {
        return this.mMotionPaths.get(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getKeyFrameInfo(int i9, int[] iArr) {
        float[] fArr = new float[2];
        ArrayList<MotionKey> arrayList = this.mKeyList;
        int size = arrayList.size();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i10 < size) {
            int i13 = i10 + 1;
            MotionKey motionKey = arrayList.get(i10);
            int i14 = motionKey.mType;
            if (i14 == i9 || i9 != -1) {
                iArr[i12] = 0;
                iArr[i12 + 1] = i14;
                int i15 = motionKey.mFramePosition;
                iArr[i12 + 2] = i15;
                double d = i15 / 100.0f;
                this.mSpline[0].getPos(d, this.mInterpolateData);
                this.mStartMotionPath.getCenter(d, this.mInterpolateVariables, this.mInterpolateData, fArr, 0);
                iArr[i12 + 3] = Float.floatToIntBits(fArr[0]);
                int i16 = i12 + 4;
                iArr[i16] = Float.floatToIntBits(fArr[1]);
                if (motionKey instanceof MotionKeyPosition) {
                    MotionKeyPosition motionKeyPosition = (MotionKeyPosition) motionKey;
                    iArr[i12 + 5] = motionKeyPosition.mPositionType;
                    iArr[i12 + 6] = Float.floatToIntBits(motionKeyPosition.mPercentX);
                    i16 = i12 + 7;
                    iArr[i16] = Float.floatToIntBits(motionKeyPosition.mPercentY);
                }
                int i17 = i16 + 1;
                iArr[i12] = i17 - i12;
                i11++;
                i12 = i17;
            }
            i10 = i13;
        }
        return i11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getKeyFrameParameter(int i9, float f8, float f9) {
        MotionPaths motionPaths = this.mEndMotionPath;
        float f10 = motionPaths.mX;
        MotionPaths motionPaths2 = this.mStartMotionPath;
        float f11 = motionPaths2.mX;
        float f12 = f10 - f11;
        float f13 = motionPaths.mY;
        float f14 = motionPaths2.mY;
        float f15 = f13 - f14;
        float f16 = (motionPaths2.mWidth / 2.0f) + f11;
        float f17 = (motionPaths2.mHeight / 2.0f) + f14;
        float fHypot = (float) Math.hypot(f12, f15);
        if (fHypot < 1.0E-7d) {
            return Float.NaN;
        }
        float f18 = f8 - f16;
        float f19 = f9 - f17;
        if (((float) Math.hypot(f18, f19)) == 0.0f) {
            return 0.0f;
        }
        float f20 = (f19 * f15) + (f18 * f12);
        if (i9 == 0) {
            return f20 / fHypot;
        }
        if (i9 == 1) {
            return (float) Math.sqrt((fHypot * fHypot) - (f20 * f20));
        }
        if (i9 == 2) {
            return f18 / f12;
        }
        if (i9 == 3) {
            return f19 / f12;
        }
        if (i9 == 4) {
            return f18 / f15;
        }
        if (i9 != 5) {
            return 0.0f;
        }
        return f19 / f15;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getKeyFramePositions(int[] iArr, float[] fArr) {
        ArrayList<MotionKey> arrayList = this.mKeyList;
        int size = arrayList.size();
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        while (i10 < size) {
            int i12 = i10 + 1;
            MotionKey motionKey = arrayList.get(i10);
            int i13 = motionKey.mFramePosition;
            iArr[i9] = (motionKey.mType * 1000) + i13;
            double d = i13 / 100.0f;
            this.mSpline[0].getPos(d, this.mInterpolateData);
            this.mStartMotionPath.getCenter(d, this.mInterpolateVariables, this.mInterpolateData, fArr, i11);
            i11 += 2;
            i10 = i12;
            i9++;
        }
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getMotionStagger() {
        return this.mMotionStagger;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double[] getPos(double d) {
        this.mSpline[0].getPos(d, this.mInterpolateData);
        CurveFit curveFit = this.mArcSpline;
        if (curveFit != null) {
            double[] dArr = this.mInterpolateData;
            if (dArr.length > 0) {
                curveFit.getPos(d, dArr);
            }
        }
        return this.mInterpolateData;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MotionKeyPosition getPositionKeyframe(int i9, int i10, float f8, float f9) {
        int i11;
        int i12;
        float f10;
        float f11;
        FloatRect floatRect = new FloatRect();
        MotionPaths motionPaths = this.mStartMotionPath;
        float f12 = motionPaths.mX;
        floatRect.left = f12;
        float f13 = motionPaths.mY;
        floatRect.top = f13;
        floatRect.right = f12 + motionPaths.mWidth;
        floatRect.bottom = f13 + motionPaths.mHeight;
        FloatRect floatRect2 = new FloatRect();
        MotionPaths motionPaths2 = this.mEndMotionPath;
        float f14 = motionPaths2.mX;
        floatRect2.left = f14;
        float f15 = motionPaths2.mY;
        floatRect2.top = f15;
        floatRect2.right = f14 + motionPaths2.mWidth;
        floatRect2.bottom = f15 + motionPaths2.mHeight;
        ArrayList<MotionKey> arrayList = this.mKeyList;
        int size = arrayList.size();
        int i13 = 0;
        while (i13 < size) {
            int i14 = i13 + 1;
            MotionKey motionKey = arrayList.get(i13);
            if (motionKey instanceof MotionKeyPosition) {
                MotionKeyPosition motionKeyPosition = (MotionKeyPosition) motionKey;
                i11 = i9;
                i12 = i10;
                f10 = f8;
                f11 = f9;
                if (motionKeyPosition.intersects(i11, i12, floatRect, floatRect2, f10, f11)) {
                    return motionKeyPosition;
                }
            } else {
                i11 = i9;
                i12 = i10;
                f10 = f8;
                f11 = f9;
            }
            i9 = i11;
            i10 = i12;
            f8 = f10;
            f9 = f11;
            i13 = i14;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void getPostLayoutDvDp(float f8, int i9, int i10, float f9, float f10, float[] fArr) {
        float adjustedPosition = getAdjustedPosition(f8, this.mVelocity);
        HashMap<String, SplineSet> map = this.mAttributesMap;
        SplineSet splineSet = map == null ? null : map.get("translationX");
        HashMap<String, SplineSet> map2 = this.mAttributesMap;
        SplineSet splineSet2 = map2 == null ? null : map2.get("translationY");
        HashMap<String, SplineSet> map3 = this.mAttributesMap;
        SplineSet splineSet3 = map3 == null ? null : map3.get("rotationZ");
        HashMap<String, SplineSet> map4 = this.mAttributesMap;
        SplineSet splineSet4 = map4 == null ? null : map4.get("scaleX");
        HashMap<String, SplineSet> map5 = this.mAttributesMap;
        SplineSet splineSet5 = map5 == null ? null : map5.get("scaleY");
        HashMap<String, KeyCycleOscillator> map6 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator = map6 == null ? null : map6.get("translationX");
        HashMap<String, KeyCycleOscillator> map7 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator2 = map7 == null ? null : map7.get("translationY");
        HashMap<String, KeyCycleOscillator> map8 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator3 = map8 == null ? null : map8.get("rotationZ");
        HashMap<String, KeyCycleOscillator> map9 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator4 = map9 == null ? null : map9.get("scaleX");
        HashMap<String, KeyCycleOscillator> map10 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator5 = map10 != null ? map10.get("scaleY") : null;
        VelocityMatrix velocityMatrix = new VelocityMatrix();
        velocityMatrix.clear();
        velocityMatrix.setRotationVelocity(splineSet3, adjustedPosition);
        velocityMatrix.setTranslationVelocity(splineSet, splineSet2, adjustedPosition);
        velocityMatrix.setScaleVelocity(splineSet4, splineSet5, adjustedPosition);
        velocityMatrix.setRotationVelocity(keyCycleOscillator3, adjustedPosition);
        velocityMatrix.setTranslationVelocity(keyCycleOscillator, keyCycleOscillator2, adjustedPosition);
        velocityMatrix.setScaleVelocity(keyCycleOscillator4, keyCycleOscillator5, adjustedPosition);
        CurveFit curveFit = this.mArcSpline;
        if (curveFit != null) {
            double[] dArr = this.mInterpolateData;
            if (dArr.length > 0) {
                double d = adjustedPosition;
                curveFit.getPos(d, dArr);
                this.mArcSpline.getSlope(d, this.mInterpolateVelocity);
                this.mStartMotionPath.setDpDt(f9, f10, fArr, this.mInterpolateVariables, this.mInterpolateVelocity, this.mInterpolateData);
            }
            velocityMatrix.applyTransform(f9, f10, i9, i10, fArr);
            return;
        }
        int i11 = 0;
        if (this.mSpline == null) {
            MotionPaths motionPaths = this.mEndMotionPath;
            float f11 = motionPaths.mX;
            MotionPaths motionPaths2 = this.mStartMotionPath;
            float f12 = f11 - motionPaths2.mX;
            float f13 = motionPaths.mY - motionPaths2.mY;
            float f14 = motionPaths.mWidth - motionPaths2.mWidth;
            float f15 = f13 + (motionPaths.mHeight - motionPaths2.mHeight);
            fArr[0] = ((f14 + f12) * f9) + ((1.0f - f9) * f12);
            fArr[1] = (f15 * f10) + ((1.0f - f10) * f13);
            velocityMatrix.clear();
            velocityMatrix.setRotationVelocity(splineSet3, adjustedPosition);
            velocityMatrix.setTranslationVelocity(splineSet, splineSet2, adjustedPosition);
            velocityMatrix.setScaleVelocity(splineSet4, splineSet5, adjustedPosition);
            velocityMatrix.setRotationVelocity(keyCycleOscillator3, adjustedPosition);
            velocityMatrix.setTranslationVelocity(keyCycleOscillator, keyCycleOscillator2, adjustedPosition);
            velocityMatrix.setScaleVelocity(keyCycleOscillator4, keyCycleOscillator5, adjustedPosition);
            velocityMatrix.applyTransform(f9, f10, i9, i10, fArr);
            return;
        }
        double adjustedPosition2 = getAdjustedPosition(adjustedPosition, this.mVelocity);
        this.mSpline[0].getSlope(adjustedPosition2, this.mInterpolateVelocity);
        this.mSpline[0].getPos(adjustedPosition2, this.mInterpolateData);
        float f16 = this.mVelocity[0];
        while (true) {
            double[] dArr2 = this.mInterpolateVelocity;
            if (i11 >= dArr2.length) {
                this.mStartMotionPath.setDpDt(f9, f10, fArr, this.mInterpolateVariables, dArr2, this.mInterpolateData);
                velocityMatrix.applyTransform(f9, f10, i9, i10, fArr);
                return;
            } else {
                dArr2[i11] = dArr2[i11] * ((double) f16);
                i11++;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getStartHeight() {
        return this.mStartMotionPath.mHeight;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getStartWidth() {
        return this.mStartMotionPath.mWidth;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getStartX() {
        return this.mStartMotionPath.mX;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getStartY() {
        return this.mStartMotionPath.mY;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getTransformPivotTarget() {
        return this.mTransformPivotTarget;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MotionWidget getView() {
        return this.mView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean interpolate(MotionWidget motionWidget, float f8, long j9, KeyCache keyCache) {
        MotionWidget motionWidget2 = motionWidget;
        float adjustedPosition = getAdjustedPosition(f8, null);
        int i9 = this.mQuantizeMotionSteps;
        if (i9 != -1) {
            float f9 = 1.0f / i9;
            float fFloor = ((float) Math.floor(adjustedPosition / f9)) * f9;
            float f10 = (adjustedPosition % f9) / f9;
            if (!Float.isNaN(this.mQuantizeMotionPhase)) {
                f10 = (f10 + this.mQuantizeMotionPhase) % 1.0f;
            }
            DifferentialInterpolator differentialInterpolator = this.mQuantizeMotionInterpolator;
            adjustedPosition = ((differentialInterpolator != null ? differentialInterpolator.getInterpolation(f10) : ((double) f10) > 0.5d ? 1.0f : 0.0f) * f9) + fFloor;
        }
        float f11 = adjustedPosition;
        HashMap<String, SplineSet> map = this.mAttributesMap;
        if (map != null) {
            Iterator<SplineSet> it = map.values().iterator();
            while (it.hasNext()) {
                it.next().setProperty(motionWidget2, f11);
            }
        }
        CurveFit[] curveFitArr = this.mSpline;
        if (curveFitArr != null) {
            double d = f11;
            curveFitArr[0].getPos(d, this.mInterpolateData);
            this.mSpline[0].getSlope(d, this.mInterpolateVelocity);
            CurveFit curveFit = this.mArcSpline;
            if (curveFit != null) {
                double[] dArr = this.mInterpolateData;
                if (dArr.length > 0) {
                    curveFit.getPos(d, dArr);
                    this.mArcSpline.getSlope(d, this.mInterpolateVelocity);
                }
            }
            if (!this.mNoMovement) {
                this.mStartMotionPath.setView(f11, motionWidget2, this.mInterpolateVariables, this.mInterpolateData, this.mInterpolateVelocity, null);
                f11 = f11;
                motionWidget2 = motionWidget2;
            }
            if (this.mTransformPivotTarget != -1) {
                if (this.mTransformPivotView == null) {
                    this.mTransformPivotView = motionWidget2.getParent().findViewById(this.mTransformPivotTarget);
                }
                MotionWidget motionWidget3 = this.mTransformPivotView;
                if (motionWidget3 != null) {
                    float bottom = (this.mTransformPivotView.getBottom() + motionWidget3.getTop()) / 2.0f;
                    float right = (this.mTransformPivotView.getRight() + this.mTransformPivotView.getLeft()) / 2.0f;
                    if (motionWidget2.getRight() - motionWidget2.getLeft() > 0 && motionWidget2.getBottom() - motionWidget2.getTop() > 0) {
                        float left = right - motionWidget2.getLeft();
                        float top = bottom - motionWidget2.getTop();
                        motionWidget2.setPivotX(left);
                        motionWidget2.setPivotY(top);
                    }
                }
            }
            int i10 = 1;
            while (true) {
                CurveFit[] curveFitArr2 = this.mSpline;
                if (i10 >= curveFitArr2.length) {
                    break;
                }
                curveFitArr2[i10].getPos(d, this.mValuesBuff);
                this.mStartMotionPath.mCustomAttributes.get(this.mAttributeNames[i10 - 1]).setInterpolatedValue(motionWidget2, this.mValuesBuff);
                i10++;
            }
            MotionConstrainedPoint motionConstrainedPoint = this.mStartPoint;
            if (motionConstrainedPoint.mVisibilityMode == 0) {
                if (f11 <= 0.0f) {
                    motionWidget2.setVisibility(motionConstrainedPoint.mVisibility);
                } else {
                    MotionConstrainedPoint motionConstrainedPoint2 = this.mEndPoint;
                    if (f11 >= 1.0f) {
                        motionWidget2.setVisibility(motionConstrainedPoint2.mVisibility);
                    } else if (motionConstrainedPoint2.mVisibility != motionConstrainedPoint.mVisibility) {
                        motionWidget2.setVisibility(4);
                    }
                }
            }
            if (this.mKeyTriggers != null) {
                int i11 = 0;
                while (true) {
                    MotionKeyTrigger[] motionKeyTriggerArr = this.mKeyTriggers;
                    if (i11 >= motionKeyTriggerArr.length) {
                        break;
                    }
                    motionKeyTriggerArr[i11].conditionallyFire(f11, motionWidget2);
                    i11++;
                }
            }
        } else {
            MotionPaths motionPaths = this.mStartMotionPath;
            float f12 = motionPaths.mX;
            MotionPaths motionPaths2 = this.mEndMotionPath;
            float fB = a.b(motionPaths2.mX, f12, f11, f12);
            float f13 = motionPaths.mY;
            float fB2 = a.b(motionPaths2.mY, f13, f11, f13);
            float f14 = motionPaths.mWidth;
            float fB3 = a.b(motionPaths2.mWidth, f14, f11, f14);
            float f15 = motionPaths.mHeight;
            float f16 = fB + 0.5f;
            float f17 = fB2 + 0.5f;
            motionWidget2.layout((int) f16, (int) f17, (int) (f16 + fB3), (int) (f17 + a.b(motionPaths2.mHeight, f15, f11, f15)));
        }
        HashMap<String, KeyCycleOscillator> map2 = this.mCycleMap;
        if (map2 != null) {
            for (KeyCycleOscillator keyCycleOscillator : map2.values()) {
                if (keyCycleOscillator instanceof KeyCycleOscillator$PathRotateSet) {
                    double[] dArr2 = this.mInterpolateVelocity;
                    ((KeyCycleOscillator$PathRotateSet) keyCycleOscillator).setPathRotate(motionWidget2, f11, dArr2[0], dArr2[1]);
                } else {
                    keyCycleOscillator.setProperty(motionWidget2, f11);
                }
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String name() {
        return this.mView.getName();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void positionKeyframe(MotionWidget motionWidget, MotionKeyPosition motionKeyPosition, float f8, float f9, String[] strArr, float[] fArr) {
        FloatRect floatRect = new FloatRect();
        MotionPaths motionPaths = this.mStartMotionPath;
        float f10 = motionPaths.mX;
        floatRect.left = f10;
        float f11 = motionPaths.mY;
        floatRect.top = f11;
        floatRect.right = f10 + motionPaths.mWidth;
        floatRect.bottom = f11 + motionPaths.mHeight;
        FloatRect floatRect2 = new FloatRect();
        MotionPaths motionPaths2 = this.mEndMotionPath;
        float f12 = motionPaths2.mX;
        floatRect2.left = f12;
        float f13 = motionPaths2.mY;
        floatRect2.top = f13;
        floatRect2.right = f12 + motionPaths2.mWidth;
        floatRect2.bottom = f13 + motionPaths2.mHeight;
        motionKeyPosition.positionAttributes(motionWidget, floatRect, floatRect2, f8, f9, strArr, fArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void rotate(Rect rect, Rect rect2, int i9, int i10, int i11) {
        if (i9 == 1) {
            int i12 = rect.left + rect.right;
            rect2.left = ((rect.top + rect.bottom) - rect.width()) / 2;
            rect2.top = i11 - ((rect.height() + i12) / 2);
            rect2.right = rect.width() + rect2.left;
            rect2.bottom = rect.height() + rect2.top;
            return;
        }
        if (i9 == 2) {
            int i13 = rect.left + rect.right;
            rect2.left = i10 - ((rect.width() + (rect.top + rect.bottom)) / 2);
            rect2.top = (i13 - rect.height()) / 2;
            rect2.right = rect.width() + rect2.left;
            rect2.bottom = rect.height() + rect2.top;
            return;
        }
        if (i9 == 3) {
            int i14 = rect.left + rect.right;
            rect2.left = ((rect.height() / 2) + rect.top) - (i14 / 2);
            rect2.top = i11 - ((rect.height() + i14) / 2);
            rect2.right = rect.width() + rect2.left;
            rect2.bottom = rect.height() + rect2.top;
            return;
        }
        if (i9 != 4) {
            return;
        }
        int i15 = rect.left + rect.right;
        rect2.left = i10 - ((rect.width() + (rect.bottom + rect.top)) / 2);
        rect2.top = (i15 - rect.height()) / 2;
        rect2.right = rect.width() + rect2.left;
        rect2.bottom = rect.height() + rect2.top;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setBothStates(MotionWidget motionWidget) {
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.mTime = 0.0f;
        motionPaths.mPosition = 0.0f;
        this.mNoMovement = true;
        motionPaths.setBounds(motionWidget.getX(), motionWidget.getY(), motionWidget.getWidth(), motionWidget.getHeight());
        this.mEndMotionPath.setBounds(motionWidget.getX(), motionWidget.getY(), motionWidget.getWidth(), motionWidget.getHeight());
        this.mStartPoint.setState(motionWidget);
        this.mEndPoint.setState(motionWidget);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDrawPath(int i9) {
        this.mStartMotionPath.mDrawPath = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setEnd(MotionWidget motionWidget) {
        MotionPaths motionPaths = this.mEndMotionPath;
        motionPaths.mTime = 1.0f;
        motionPaths.mPosition = 1.0f;
        readView(motionPaths);
        this.mEndMotionPath.setBounds(motionWidget.getLeft(), motionWidget.getTop(), motionWidget.getWidth(), motionWidget.getHeight());
        this.mEndMotionPath.applyParameters(motionWidget);
        this.mEndPoint.setState(motionWidget);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setIdString(String str) {
        this.mId = str;
        this.mStartMotionPath.mId = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPathMotionArc(int i9) {
        this.mPathMotionArc = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStaggerOffset(float f8) {
        this.mStaggerOffset = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStaggerScale(float f8) {
        this.mStaggerScale = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStart(MotionWidget motionWidget) {
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.mTime = 0.0f;
        motionPaths.mPosition = 0.0f;
        motionPaths.setBounds(motionWidget.getX(), motionWidget.getY(), motionWidget.getWidth(), motionWidget.getHeight());
        this.mStartMotionPath.applyParameters(motionWidget);
        this.mStartPoint.setState(motionWidget);
        TypedBundle motionProperties = motionWidget.getWidgetFrame().getMotionProperties();
        if (motionProperties != null) {
            motionProperties.applyDelta(this);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStartState(ViewState viewState, MotionWidget motionWidget, int i9, int i10, int i11) {
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.mTime = 0.0f;
        motionPaths.mPosition = 0.0f;
        Rect rect = new Rect();
        if (i9 == 1) {
            int i12 = viewState.left + viewState.right;
            rect.left = ((viewState.top + viewState.bottom) - viewState.width()) / 2;
            rect.top = i10 - ((viewState.height() + i12) / 2);
            rect.right = viewState.width() + rect.left;
            rect.bottom = viewState.height() + rect.top;
        } else if (i9 == 2) {
            int i13 = viewState.left + viewState.right;
            rect.left = i11 - ((viewState.width() + (viewState.top + viewState.bottom)) / 2);
            rect.top = (i13 - viewState.height()) / 2;
            rect.right = viewState.width() + rect.left;
            rect.bottom = viewState.height() + rect.top;
        }
        this.mStartMotionPath.setBounds(rect.left, rect.top, rect.width(), rect.height());
        this.mStartPoint.setState(rect, motionWidget, i9, viewState.rotation);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTransformPivotTarget(int i9) {
        this.mTransformPivotTarget = i9;
        this.mTransformPivotView = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i9, String str) {
        if (705 == i9 || 611 == i9) {
            this.mQuantizeMotionInterpolator = getInterpolator(-1, str, 0);
            return true;
        }
        if (605 != i9) {
            return false;
        }
        this.mStartMotionPath.mAnimateRelativeTo = str;
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setView(MotionWidget motionWidget) {
        this.mView = motionWidget;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r1v16, resolved type: boolean */
    /* JADX DEBUG: Multi-variable search result rejected for r1v17, resolved type: boolean */
    /* JADX DEBUG: Multi-variable search result rejected for r1v41, resolved type: boolean */
    /* JADX WARN: Multi-variable type inference failed */
    public void setup(int i9, int i10, float f8, long j9) {
        ArrayList arrayList;
        HashSet<String> hashSet;
        HashSet<String> hashSet2;
        int i11;
        String[] strArr;
        int i12;
        CustomVariable customVariable;
        SplineSet splineSetMakeSpline;
        CustomVariable customVariable2;
        Integer num;
        HashSet<String> hashSet3;
        HashSet<String> hashSet4;
        SplineSet splineSetMakeSpline2;
        CustomVariable customVariable3;
        new HashSet();
        HashSet<String> hashSet5 = new HashSet<>();
        HashSet<String> hashSet6 = new HashSet<>();
        HashSet<String> hashSet7 = new HashSet<>();
        HashMap<String, Integer> map = new HashMap<>();
        setupRelative();
        int i13 = this.mPathMotionArc;
        if (i13 != -1) {
            MotionPaths motionPaths = this.mStartMotionPath;
            if (motionPaths.mPathMotionArc == -1) {
                motionPaths.mPathMotionArc = i13;
            }
        }
        this.mStartPoint.different(this.mEndPoint, hashSet6);
        ArrayList<MotionKey> arrayList2 = this.mKeyList;
        int i14 = 0;
        if (arrayList2 != null) {
            int size = arrayList2.size();
            int i15 = 0;
            arrayList = null;
            while (i15 < size) {
                MotionKey motionKey = arrayList2.get(i15);
                i15++;
                MotionKey motionKey2 = motionKey;
                if (motionKey2 instanceof MotionKeyPosition) {
                    MotionKeyPosition motionKeyPosition = (MotionKeyPosition) motionKey2;
                    insertKey(new MotionPaths(i9, i10, motionKeyPosition, this.mStartMotionPath, this.mEndMotionPath));
                    int i16 = motionKeyPosition.mCurveFit;
                    if (i16 != -1) {
                        this.mCurveFitType = i16;
                    }
                } else if (motionKey2 instanceof MotionKeyCycle) {
                    motionKey2.getAttributeNames(hashSet7);
                } else if (motionKey2 instanceof MotionKeyTimeCycle) {
                    motionKey2.getAttributeNames(hashSet5);
                } else if (motionKey2 instanceof MotionKeyTrigger) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add((MotionKeyTrigger) motionKey2);
                } else {
                    motionKey2.setInterpolation(map);
                    motionKey2.getAttributeNames(hashSet6);
                }
            }
        } else {
            arrayList = null;
        }
        if (arrayList != null) {
            this.mKeyTriggers = (MotionKeyTrigger[]) arrayList.toArray(new MotionKeyTrigger[0]);
        }
        int i17 = 1;
        if (hashSet6.isEmpty()) {
            hashSet = hashSet5;
            hashSet2 = hashSet7;
            i11 = 1;
        } else {
            this.mAttributesMap = new HashMap<>();
            for (String str : hashSet6) {
                if (str.startsWith("CUSTOM,")) {
                    KeyFrameArray$CustomVar keyFrameArray$CustomVar = new KeyFrameArray$CustomVar();
                    String str2 = str.split(",")[i17];
                    ArrayList<MotionKey> arrayList3 = this.mKeyList;
                    int size2 = arrayList3.size();
                    while (i14 < size2) {
                        MotionKey motionKey3 = arrayList3.get(i14);
                        i14++;
                        HashSet<String> hashSet8 = hashSet5;
                        MotionKey motionKey4 = motionKey3;
                        HashSet<String> hashSet9 = hashSet7;
                        HashMap<String, CustomVariable> map2 = motionKey4.mCustom;
                        if (map2 != null && (customVariable3 = map2.get(str2)) != null) {
                            keyFrameArray$CustomVar.append(motionKey4.mFramePosition, customVariable3);
                        }
                        hashSet7 = hashSet9;
                        hashSet5 = hashSet8;
                    }
                    hashSet3 = hashSet5;
                    hashSet4 = hashSet7;
                    splineSetMakeSpline2 = SplineSet.makeCustomSplineSet(str, keyFrameArray$CustomVar);
                } else {
                    hashSet3 = hashSet5;
                    hashSet4 = hashSet7;
                    splineSetMakeSpline2 = SplineSet.makeSpline(str, j9);
                }
                if (splineSetMakeSpline2 != null) {
                    splineSetMakeSpline2.setType(str);
                    this.mAttributesMap.put(str, splineSetMakeSpline2);
                }
                i17 = i17;
                hashSet7 = hashSet4;
                hashSet5 = hashSet3;
                i14 = 0;
            }
            hashSet = hashSet5;
            hashSet2 = hashSet7;
            i11 = i17;
            ArrayList<MotionKey> arrayList4 = this.mKeyList;
            if (arrayList4 != null) {
                int size3 = arrayList4.size();
                int i18 = 0;
                while (i18 < size3) {
                    MotionKey motionKey5 = arrayList4.get(i18);
                    i18++;
                    MotionKey motionKey6 = motionKey5;
                    if (motionKey6 instanceof MotionKeyAttributes) {
                        motionKey6.addValues(this.mAttributesMap);
                    }
                }
            }
            this.mStartPoint.addValues(this.mAttributesMap, 0);
            this.mEndPoint.addValues(this.mAttributesMap, 100);
            for (String str3 : this.mAttributesMap.keySet()) {
                int iIntValue = (!map.containsKey(str3) || (num = map.get(str3)) == null) ? 0 : num.intValue();
                SplineSet splineSet = this.mAttributesMap.get(str3);
                if (splineSet != null) {
                    splineSet.setup(iIntValue);
                }
            }
        }
        if (!hashSet.isEmpty()) {
            if (this.mTimeCycleAttributesMap == null) {
                this.mTimeCycleAttributesMap = new HashMap<>();
            }
            for (String str4 : hashSet) {
                if (!this.mTimeCycleAttributesMap.containsKey(str4)) {
                    if (str4.startsWith("CUSTOM,")) {
                        KeyFrameArray$CustomVar keyFrameArray$CustomVar2 = new KeyFrameArray$CustomVar();
                        String str5 = str4.split(",")[i11];
                        ArrayList<MotionKey> arrayList5 = this.mKeyList;
                        int size4 = arrayList5.size();
                        int i19 = 0;
                        while (i19 < size4) {
                            MotionKey motionKey7 = arrayList5.get(i19);
                            i19++;
                            MotionKey motionKey8 = motionKey7;
                            HashMap<String, CustomVariable> map3 = motionKey8.mCustom;
                            if (map3 != null && (customVariable2 = map3.get(str5)) != null) {
                                keyFrameArray$CustomVar2.append(motionKey8.mFramePosition, customVariable2);
                            }
                        }
                        splineSetMakeSpline = SplineSet.makeCustomSplineSet(str4, keyFrameArray$CustomVar2);
                    } else {
                        splineSetMakeSpline = SplineSet.makeSpline(str4, j9);
                    }
                    if (splineSetMakeSpline != null) {
                        splineSetMakeSpline.setType(str4);
                    }
                }
            }
            ArrayList<MotionKey> arrayList6 = this.mKeyList;
            if (arrayList6 != null) {
                int size5 = arrayList6.size();
                int i20 = 0;
                while (i20 < size5) {
                    MotionKey motionKey9 = arrayList6.get(i20);
                    i20++;
                    MotionKey motionKey10 = motionKey9;
                    if (motionKey10 instanceof MotionKeyTimeCycle) {
                        ((MotionKeyTimeCycle) motionKey10).addTimeValues(this.mTimeCycleAttributesMap);
                    }
                }
            }
            for (String str6 : this.mTimeCycleAttributesMap.keySet()) {
                this.mTimeCycleAttributesMap.get(str6).setup(map.containsKey(str6) ? map.get(str6).intValue() : 0);
            }
        }
        int size6 = this.mMotionPaths.size();
        int i21 = size6 + 2;
        MotionPaths[] motionPathsArr = new MotionPaths[i21];
        motionPathsArr[0] = this.mStartMotionPath;
        motionPathsArr[size6 + 1] = this.mEndMotionPath;
        if (this.mMotionPaths.size() > 0 && this.mCurveFitType == MotionKey.UNSET) {
            this.mCurveFitType = 0;
        }
        ArrayList<MotionPaths> arrayList7 = this.mMotionPaths;
        int size7 = arrayList7.size();
        int i22 = i11;
        int i23 = 0;
        while (i23 < size7) {
            MotionPaths motionPaths2 = arrayList7.get(i23);
            i23++;
            motionPathsArr[i22] = motionPaths2;
            i22++;
        }
        HashSet hashSet10 = new HashSet();
        for (String str7 : this.mEndMotionPath.mCustomAttributes.keySet()) {
            if (this.mStartMotionPath.mCustomAttributes.containsKey(str7)) {
                if (!hashSet6.contains("CUSTOM," + str7)) {
                    hashSet10.add(str7);
                }
            }
        }
        String[] strArr2 = (String[]) hashSet10.toArray(new String[0]);
        this.mAttributeNames = strArr2;
        this.mAttributeInterpolatorCount = new int[strArr2.length];
        int i24 = 0;
        while (true) {
            strArr = this.mAttributeNames;
            if (i24 >= strArr.length) {
                break;
            }
            String str8 = strArr[i24];
            this.mAttributeInterpolatorCount[i24] = 0;
            for (int i25 = 0; i25 < i21; i25++) {
                if (motionPathsArr[i25].mCustomAttributes.containsKey(str8) && (customVariable = motionPathsArr[i25].mCustomAttributes.get(str8)) != null) {
                    int[] iArr = this.mAttributeInterpolatorCount;
                    iArr[i24] = customVariable.numberOfInterpolatedValues() + iArr[i24];
                    break;
                }
            }
            i24++;
        }
        boolean z8 = motionPathsArr[0].mPathMotionArc != -1 ? i11 : 0;
        int length = 18 + strArr.length;
        boolean[] zArr = new boolean[length];
        for (int i26 = i11; i26 < i21; i26++) {
            motionPathsArr[i26].different(motionPathsArr[i26 - 1], zArr, this.mAttributeNames, z8);
        }
        int i27 = 0;
        for (int i28 = i11; i28 < length; i28++) {
            if (zArr[i28]) {
                i27++;
            }
        }
        this.mInterpolateVariables = new int[i27];
        int i29 = 2;
        int iMax = Math.max(2, i27);
        this.mInterpolateData = new double[iMax];
        this.mInterpolateVelocity = new double[iMax];
        int i30 = 0;
        for (int i31 = i11; i31 < length; i31++) {
            if (zArr[i31]) {
                this.mInterpolateVariables[i30] = i31;
                i30++;
            }
        }
        int[] iArr2 = new int[2];
        iArr2[i11] = this.mInterpolateVariables.length;
        iArr2[0] = i21;
        Class cls = Double.TYPE;
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) cls, iArr2);
        double[] dArr2 = new double[i21];
        for (int i32 = 0; i32 < i21; i32++) {
            motionPathsArr[i32].fillStandard(dArr[i32], this.mInterpolateVariables);
            dArr2[i32] = motionPathsArr[i32].mTime;
        }
        int i33 = 0;
        while (true) {
            int[] iArr3 = this.mInterpolateVariables;
            if (i33 >= iArr3.length) {
                break;
            }
            if (iArr3[i33] < MotionPaths.sNames.length) {
                String strP = a.p(new StringBuilder(), MotionPaths.sNames[this.mInterpolateVariables[i33]], " [");
                for (int i34 = 0; i34 < i21; i34++) {
                    StringBuilder sbU = a.u(strP);
                    sbU.append(dArr[i34][i33]);
                    strP = sbU.toString();
                }
            }
            i33++;
        }
        this.mSpline = new CurveFit[this.mAttributeNames.length + 1];
        int i35 = 0;
        while (true) {
            String[] strArr3 = this.mAttributeNames;
            if (i35 >= strArr3.length) {
                break;
            }
            String str9 = strArr3[i35];
            int i36 = 0;
            int i37 = 0;
            double[] dArr3 = null;
            double[][] dArr4 = null;
            while (i36 < i21) {
                if (motionPathsArr[i36].hasCustomData(str9)) {
                    if (dArr4 == null) {
                        dArr3 = new double[i21];
                        int[] iArr4 = new int[i29];
                        iArr4[i11] = motionPathsArr[i36].getCustomDataCount(str9);
                        i12 = 0;
                        iArr4[0] = i21;
                        dArr4 = (double[][]) Array.newInstance((Class<?>) cls, iArr4);
                    } else {
                        i12 = 0;
                    }
                    MotionPaths motionPaths3 = motionPathsArr[i36];
                    dArr3[i37] = motionPaths3.mTime;
                    motionPaths3.getCustomData(str9, dArr4[i37], i12);
                    i37++;
                }
                i36++;
                i35 = i35;
                i29 = 2;
            }
            int i38 = i35 + 1;
            this.mSpline[i38] = CurveFit.get(this.mCurveFitType, Arrays.copyOf(dArr3, i37), (double[][]) Arrays.copyOf(dArr4, i37));
            i35 = i38;
            i29 = 2;
        }
        int i39 = 0;
        this.mSpline[0] = CurveFit.get(this.mCurveFitType, dArr2, dArr);
        if (motionPathsArr[0].mPathMotionArc != -1) {
            int[] iArr5 = new int[i21];
            double[] dArr5 = new double[i21];
            int[] iArr6 = new int[2];
            iArr6[i11] = 2;
            iArr6[0] = i21;
            double[][] dArr6 = (double[][]) Array.newInstance((Class<?>) cls, iArr6);
            for (int i40 = 0; i40 < i21; i40++) {
                MotionPaths motionPaths4 = motionPathsArr[i40];
                iArr5[i40] = motionPaths4.mPathMotionArc;
                dArr5[i40] = motionPaths4.mTime;
                double[] dArr7 = dArr6[i40];
                dArr7[0] = motionPaths4.mX;
                dArr7[i11] = motionPaths4.mY;
            }
            i39 = 0;
            this.mArcSpline = CurveFit.getArc(iArr5, dArr5, dArr6);
        }
        this.mCycleMap = new HashMap<>();
        if (this.mKeyList != null) {
            float preCycleDistance = Float.NaN;
            for (String str10 : hashSet2) {
                KeyCycleOscillator keyCycleOscillatorMakeWidgetCycle = KeyCycleOscillator.makeWidgetCycle(str10);
                if (keyCycleOscillatorMakeWidgetCycle != null) {
                    if (keyCycleOscillatorMakeWidgetCycle.variesByPath() && Float.isNaN(preCycleDistance)) {
                        preCycleDistance = getPreCycleDistance();
                    }
                    keyCycleOscillatorMakeWidgetCycle.setType(str10);
                    this.mCycleMap.put(str10, keyCycleOscillatorMakeWidgetCycle);
                }
            }
            ArrayList<MotionKey> arrayList8 = this.mKeyList;
            int size8 = arrayList8.size();
            int i41 = i39;
            while (i41 < size8) {
                MotionKey motionKey11 = arrayList8.get(i41);
                i41++;
                MotionKey motionKey12 = motionKey11;
                if (motionKey12 instanceof MotionKeyCycle) {
                    ((MotionKeyCycle) motionKey12).addCycleValues(this.mCycleMap);
                }
            }
            Iterator<KeyCycleOscillator> it = this.mCycleMap.values().iterator();
            while (it.hasNext()) {
                it.next().setup(preCycleDistance);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return " start: x: " + this.mStartMotionPath.mX + " y: " + this.mStartMotionPath.mY + " end: x: " + this.mEndMotionPath.mX + " y: " + this.mEndMotionPath.mY;
    }

    public void endTrigger(boolean z8) {
    }

    public void setupRelative(Motion motion) {
        this.mRelativeMotion = motion;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i9, int i10) {
        if (i9 == 509) {
            setPathMotionArc(i10);
            return true;
        }
        if (i9 != 610) {
            return i9 == 704;
        }
        this.mQuantizeMotionSteps = i10;
        return true;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i9, float f8) {
        if (602 == i9) {
            this.mQuantizeMotionPhase = f8;
            return true;
        }
        if (600 != i9) {
            return false;
        }
        this.mMotionStagger = f8;
        return true;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i9, boolean z8) {
        return false;
    }
}
