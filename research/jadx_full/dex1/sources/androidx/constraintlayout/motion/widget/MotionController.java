package androidx.constraintlayout.motion.widget;

import ai.onnxruntime.a;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup$LayoutParams;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.constraintlayout.core.motion.utils.CurveFit;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.motion.utils.VelocityMatrix;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.constraintlayout.motion.utils.CustomSupport;
import androidx.constraintlayout.motion.utils.ViewOscillator;
import androidx.constraintlayout.motion.utils.ViewOscillator$PathRotateSet;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.motion.utils.ViewSpline$PathRotate;
import androidx.constraintlayout.motion.utils.ViewState;
import androidx.constraintlayout.motion.utils.ViewTimeCycle;
import androidx.constraintlayout.motion.utils.ViewTimeCycle$PathRotate;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.ConstraintSet$Constraint;
import androidx.constraintlayout.widget.ConstraintSet$Motion;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MotionController {
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
    private HashMap<String, ViewSpline> mAttributesMap;
    String mConstraintTag;
    float mCurrentCenterX;
    float mCurrentCenterY;
    private HashMap<String, ViewOscillator> mCycleMap;
    int mId;
    private double[] mInterpolateData;
    private int[] mInterpolateVariables;
    private double[] mInterpolateVelocity;
    private KeyTrigger[] mKeyTriggers;
    private boolean mNoMovement;
    private int mPathMotionArc;
    private Interpolator mQuantizeMotionInterpolator;
    private float mQuantizeMotionPhase;
    private int mQuantizeMotionSteps;
    private CurveFit[] mSpline;
    private HashMap<String, ViewTimeCycle> mTimeCycleAttributesMap;
    private int mTransformPivotTarget;
    private View mTransformPivotView;
    View mView;
    Rect mTempRect = new Rect();
    boolean mForceMeasure = false;
    private int mCurveFitType = -1;
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
    private ArrayList<Key> mKeyList = new ArrayList<>();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MotionController(View view) {
        int i9 = Key.UNSET;
        this.mPathMotionArc = i9;
        this.mTransformPivotTarget = i9;
        this.mTransformPivotView = null;
        this.mQuantizeMotionSteps = i9;
        this.mQuantizeMotionPhase = Float.NaN;
        this.mQuantizeMotionInterpolator = null;
        this.mNoMovement = false;
        setView(view);
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
    private static Interpolator getInterpolator(Context context, int i9, String str, int i10) {
        if (i9 == -2) {
            return AnimationUtils.loadInterpolator(context, i10);
        }
        if (i9 == -1) {
            return new MotionController$1(Easing.getInterpolator(str));
        }
        if (i9 == 0) {
            return new AccelerateDecelerateInterpolator();
        }
        if (i9 == 1) {
            return new AccelerateInterpolator();
        }
        if (i9 == 2) {
            return new DecelerateInterpolator();
        }
        if (i9 == 4) {
            return new BounceInterpolator();
        }
        if (i9 != 5) {
            return null;
        }
        return new OvershootInterpolator();
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
        int iBinarySearch = Collections.binarySearch(this.mMotionPaths, motionPaths);
        if (iBinarySearch == 0) {
            Log.e(TAG, " KeyPath position \"" + motionPaths.mPosition + "\" outside of range");
        }
        this.mMotionPaths.add((-iBinarySearch) - 1, motionPaths);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void readView(MotionPaths motionPaths) {
        motionPaths.setBounds((int) this.mView.getX(), (int) this.mView.getY(), this.mView.getWidth(), this.mView.getHeight());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addKey(Key key) {
        this.mKeyList.add(key);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addKeys(ArrayList<Key> arrayList) {
        this.mKeyList.addAll(arrayList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void buildBounds(float[] fArr, int i9) {
        float f8 = 1.0f;
        float f9 = 1.0f / (i9 - 1);
        HashMap<String, ViewSpline> map = this.mAttributesMap;
        if (map != null) {
            map.get("translationX");
        }
        HashMap<String, ViewSpline> map2 = this.mAttributesMap;
        if (map2 != null) {
            map2.get("translationY");
        }
        HashMap<String, ViewOscillator> map3 = this.mCycleMap;
        if (map3 != null) {
            map3.get("translationX");
        }
        HashMap<String, ViewOscillator> map4 = this.mCycleMap;
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
    public int buildKeyFrames(float[] fArr, int[] iArr) {
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
        for (int i12 = 0; i12 < timePoints.length; i12++) {
            this.mSpline[0].getPos(timePoints[i12], this.mInterpolateData);
            this.mStartMotionPath.getCenter(timePoints[i12], this.mInterpolateVariables, this.mInterpolateData, fArr, i11);
            i11 += 2;
        }
        return i11 / 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void buildPath(float[] fArr, int i9) {
        int i10 = i9;
        float f8 = 1.0f;
        float f9 = 1.0f / (i10 - 1);
        HashMap<String, ViewSpline> map = this.mAttributesMap;
        ViewSpline viewSpline = map == null ? null : map.get("translationX");
        HashMap<String, ViewSpline> map2 = this.mAttributesMap;
        ViewSpline viewSpline2 = map2 == null ? null : map2.get("translationY");
        HashMap<String, ViewOscillator> map3 = this.mCycleMap;
        ViewOscillator viewOscillator = map3 == null ? null : map3.get("translationX");
        HashMap<String, ViewOscillator> map4 = this.mCycleMap;
        ViewOscillator viewOscillator2 = map4 != null ? map4.get("translationY") : null;
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
            if (viewOscillator != null) {
                fArr[i13] = viewOscillator.get(fMin) + fArr[i13];
            } else if (viewSpline != null) {
                fArr[i13] = viewSpline.get(fMin) + fArr[i13];
            }
            if (viewOscillator2 != null) {
                int i14 = i13 + 1;
                fArr[i14] = viewOscillator2.get(fMin) + fArr[i14];
            } else if (viewSpline2 != null) {
                int i15 = i13 + 1;
                fArr[i15] = viewSpline2.get(fMin) + fArr[i15];
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
    public void endTrigger(boolean z8) {
        if (!"button".equals(Debug.getName(this.mView)) || this.mKeyTriggers == null) {
            return;
        }
        int i9 = 0;
        while (true) {
            KeyTrigger[] keyTriggerArr = this.mKeyTriggers;
            if (i9 >= keyTriggerArr.length) {
                return;
            }
            keyTriggerArr[i9].conditionallyFire(z8 ? -100.0f : 100.0f, this.mView);
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getAnimateRelativeTo() {
        return this.mStartMotionPath.mAnimateRelativeTo;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getAttributeValues(String str, float[] fArr, int i9) {
        ViewSpline viewSpline = this.mAttributesMap.get(str);
        if (viewSpline == null) {
            return -1;
        }
        for (int i10 = 0; i10 < fArr.length; i10++) {
            fArr[i10] = viewSpline.get(i10 / (fArr.length - 1));
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
    public MotionPaths getKeyFrame(int i9) {
        return this.mMotionPaths.get(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getKeyFrameInfo(int i9, int[] iArr) {
        float[] fArr = new float[2];
        ArrayList<Key> arrayList = this.mKeyList;
        int size = arrayList.size();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i10 < size) {
            int i13 = i10 + 1;
            Key key = arrayList.get(i10);
            int i14 = key.mType;
            if (i14 == i9 || i9 != -1) {
                iArr[i12] = 0;
                iArr[i12 + 1] = i14;
                int i15 = key.mFramePosition;
                iArr[i12 + 2] = i15;
                double d = i15 / 100.0f;
                this.mSpline[0].getPos(d, this.mInterpolateData);
                this.mStartMotionPath.getCenter(d, this.mInterpolateVariables, this.mInterpolateData, fArr, 0);
                iArr[i12 + 3] = Float.floatToIntBits(fArr[0]);
                int i16 = i12 + 4;
                iArr[i16] = Float.floatToIntBits(fArr[1]);
                if (key instanceof KeyPosition) {
                    KeyPosition keyPosition = (KeyPosition) key;
                    iArr[i12 + 5] = keyPosition.mPositionType;
                    iArr[i12 + 6] = Float.floatToIntBits(keyPosition.mPercentX);
                    i16 = i12 + 7;
                    iArr[i16] = Float.floatToIntBits(keyPosition.mPercentY);
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
        ArrayList<Key> arrayList = this.mKeyList;
        int size = arrayList.size();
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        while (i10 < size) {
            int i12 = i10 + 1;
            Key key = arrayList.get(i10);
            int i13 = key.mFramePosition;
            iArr[i9] = (key.mType * 1000) + i13;
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
    public KeyPositionBase getPositionKeyframe(int i9, int i10, float f8, float f9) {
        int i11;
        int i12;
        float f10;
        float f11;
        RectF rectF = new RectF();
        MotionPaths motionPaths = this.mStartMotionPath;
        float f12 = motionPaths.mX;
        rectF.left = f12;
        float f13 = motionPaths.mY;
        rectF.top = f13;
        rectF.right = f12 + motionPaths.mWidth;
        rectF.bottom = f13 + motionPaths.mHeight;
        RectF rectF2 = new RectF();
        MotionPaths motionPaths2 = this.mEndMotionPath;
        float f14 = motionPaths2.mX;
        rectF2.left = f14;
        float f15 = motionPaths2.mY;
        rectF2.top = f15;
        rectF2.right = f14 + motionPaths2.mWidth;
        rectF2.bottom = f15 + motionPaths2.mHeight;
        ArrayList<Key> arrayList = this.mKeyList;
        int size = arrayList.size();
        int i13 = 0;
        while (i13 < size) {
            int i14 = i13 + 1;
            Key key = arrayList.get(i13);
            if (key instanceof KeyPositionBase) {
                KeyPositionBase keyPositionBase = (KeyPositionBase) key;
                i11 = i9;
                i12 = i10;
                f10 = f8;
                f11 = f9;
                if (keyPositionBase.intersects(i11, i12, rectF, rectF2, f10, f11)) {
                    return keyPositionBase;
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
        HashMap<String, ViewSpline> map = this.mAttributesMap;
        ViewSpline viewSpline = map == null ? null : map.get("translationX");
        HashMap<String, ViewSpline> map2 = this.mAttributesMap;
        ViewSpline viewSpline2 = map2 == null ? null : map2.get("translationY");
        HashMap<String, ViewSpline> map3 = this.mAttributesMap;
        ViewSpline viewSpline3 = map3 == null ? null : map3.get(Key.ROTATION);
        HashMap<String, ViewSpline> map4 = this.mAttributesMap;
        ViewSpline viewSpline4 = map4 == null ? null : map4.get("scaleX");
        HashMap<String, ViewSpline> map5 = this.mAttributesMap;
        ViewSpline viewSpline5 = map5 == null ? null : map5.get("scaleY");
        HashMap<String, ViewOscillator> map6 = this.mCycleMap;
        ViewOscillator viewOscillator = map6 == null ? null : map6.get("translationX");
        HashMap<String, ViewOscillator> map7 = this.mCycleMap;
        ViewOscillator viewOscillator2 = map7 == null ? null : map7.get("translationY");
        HashMap<String, ViewOscillator> map8 = this.mCycleMap;
        ViewOscillator viewOscillator3 = map8 == null ? null : map8.get(Key.ROTATION);
        HashMap<String, ViewOscillator> map9 = this.mCycleMap;
        ViewOscillator viewOscillator4 = map9 == null ? null : map9.get("scaleX");
        HashMap<String, ViewOscillator> map10 = this.mCycleMap;
        ViewOscillator viewOscillator5 = map10 != null ? map10.get("scaleY") : null;
        VelocityMatrix velocityMatrix = new VelocityMatrix();
        velocityMatrix.clear();
        velocityMatrix.setRotationVelocity(viewSpline3, adjustedPosition);
        velocityMatrix.setTranslationVelocity(viewSpline, viewSpline2, adjustedPosition);
        velocityMatrix.setScaleVelocity(viewSpline4, viewSpline5, adjustedPosition);
        velocityMatrix.setRotationVelocity(viewOscillator3, adjustedPosition);
        velocityMatrix.setTranslationVelocity(viewOscillator, viewOscillator2, adjustedPosition);
        velocityMatrix.setScaleVelocity(viewOscillator4, viewOscillator5, adjustedPosition);
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
            velocityMatrix.setRotationVelocity(viewSpline3, adjustedPosition);
            velocityMatrix.setTranslationVelocity(viewSpline, viewSpline2, adjustedPosition);
            velocityMatrix.setScaleVelocity(viewSpline4, viewSpline5, adjustedPosition);
            velocityMatrix.setRotationVelocity(viewOscillator3, adjustedPosition);
            velocityMatrix.setTranslationVelocity(viewOscillator, viewOscillator2, adjustedPosition);
            velocityMatrix.setScaleVelocity(viewOscillator4, viewOscillator5, adjustedPosition);
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
    public View getView() {
        return this.mView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean interpolate(View view, float f8, long j9, KeyCache keyCache) {
        ViewTimeCycle$PathRotate viewTimeCycle$PathRotate;
        boolean pathRotate;
        View view2;
        View view3;
        float f9;
        double d;
        View view4 = view;
        float adjustedPosition = getAdjustedPosition(f8, null);
        int i9 = this.mQuantizeMotionSteps;
        if (i9 != Key.UNSET) {
            float f10 = 1.0f / i9;
            float fFloor = ((float) Math.floor(adjustedPosition / f10)) * f10;
            float f11 = (adjustedPosition % f10) / f10;
            if (!Float.isNaN(this.mQuantizeMotionPhase)) {
                f11 = (f11 + this.mQuantizeMotionPhase) % 1.0f;
            }
            Interpolator interpolator = this.mQuantizeMotionInterpolator;
            adjustedPosition = ((interpolator != null ? interpolator.getInterpolation(f11) : ((double) f11) > 0.5d ? 1.0f : 0.0f) * f10) + fFloor;
        }
        HashMap<String, ViewSpline> map = this.mAttributesMap;
        if (map != null) {
            Iterator<ViewSpline> it = map.values().iterator();
            while (it.hasNext()) {
                it.next().setProperty(view4, adjustedPosition);
            }
        }
        HashMap<String, ViewTimeCycle> map2 = this.mTimeCycleAttributesMap;
        if (map2 != null) {
            ViewTimeCycle$PathRotate viewTimeCycle$PathRotate2 = null;
            boolean property = false;
            for (ViewTimeCycle viewTimeCycle : map2.values()) {
                if (viewTimeCycle instanceof ViewTimeCycle$PathRotate) {
                    viewTimeCycle$PathRotate2 = (ViewTimeCycle$PathRotate) viewTimeCycle;
                } else {
                    property |= viewTimeCycle.setProperty(view4, adjustedPosition, j9, keyCache);
                    view4 = view;
                }
            }
            pathRotate = property;
            viewTimeCycle$PathRotate = viewTimeCycle$PathRotate2;
        } else {
            viewTimeCycle$PathRotate = null;
            pathRotate = false;
        }
        CurveFit[] curveFitArr = this.mSpline;
        if (curveFitArr != null) {
            double d9 = adjustedPosition;
            curveFitArr[0].getPos(d9, this.mInterpolateData);
            this.mSpline[0].getSlope(d9, this.mInterpolateVelocity);
            CurveFit curveFit = this.mArcSpline;
            if (curveFit != null) {
                double[] dArr = this.mInterpolateData;
                if (dArr.length > 0) {
                    curveFit.getPos(d9, dArr);
                    this.mArcSpline.getSlope(d9, this.mInterpolateVelocity);
                }
            }
            if (this.mNoMovement) {
                view3 = view;
                f9 = 0.0f;
                d = d9;
            } else {
                float f12 = adjustedPosition;
                d = d9;
                f9 = 0.0f;
                this.mStartMotionPath.setView(f12, view, this.mInterpolateVariables, this.mInterpolateData, this.mInterpolateVelocity, null, this.mForceMeasure);
                adjustedPosition = f12;
                view3 = view;
                this.mForceMeasure = false;
            }
            if (this.mTransformPivotTarget != Key.UNSET) {
                if (this.mTransformPivotView == null) {
                    this.mTransformPivotView = ((View) view3.getParent()).findViewById(this.mTransformPivotTarget);
                }
                View view5 = this.mTransformPivotView;
                if (view5 != null) {
                    float bottom = (this.mTransformPivotView.getBottom() + view5.getTop()) / 2.0f;
                    float right = (this.mTransformPivotView.getRight() + this.mTransformPivotView.getLeft()) / 2.0f;
                    if (view3.getRight() - view3.getLeft() > 0 && view3.getBottom() - view3.getTop() > 0) {
                        float left = right - view3.getLeft();
                        float top = bottom - view3.getTop();
                        view3.setPivotX(left);
                        view3.setPivotY(top);
                    }
                }
            }
            HashMap<String, ViewSpline> map3 = this.mAttributesMap;
            if (map3 != null) {
                for (ViewSpline viewSpline : map3.values()) {
                    if (viewSpline instanceof ViewSpline$PathRotate) {
                        double[] dArr2 = this.mInterpolateVelocity;
                        if (dArr2.length > 1) {
                            ((ViewSpline$PathRotate) viewSpline).setPathRotate(view3, adjustedPosition, dArr2[0], dArr2[1]);
                        }
                    }
                    view3 = view;
                }
            }
            if (viewTimeCycle$PathRotate != null) {
                double[] dArr3 = this.mInterpolateVelocity;
                view2 = view;
                float f13 = adjustedPosition;
                adjustedPosition = f13;
                pathRotate |= viewTimeCycle$PathRotate.setPathRotate(view2, keyCache, f13, j9, dArr3[0], dArr3[1]);
            } else {
                view2 = view;
            }
            int i10 = 1;
            while (true) {
                CurveFit[] curveFitArr2 = this.mSpline;
                if (i10 >= curveFitArr2.length) {
                    break;
                }
                curveFitArr2[i10].getPos(d, this.mValuesBuff);
                CustomSupport.setInterpolatedValue(this.mStartMotionPath.mAttributes.get(this.mAttributeNames[i10 - 1]), view2, this.mValuesBuff);
                i10++;
            }
            MotionConstrainedPoint motionConstrainedPoint = this.mStartPoint;
            if (motionConstrainedPoint.mVisibilityMode == 0) {
                if (adjustedPosition <= f9) {
                    view2.setVisibility(motionConstrainedPoint.mVisibility);
                } else {
                    MotionConstrainedPoint motionConstrainedPoint2 = this.mEndPoint;
                    if (adjustedPosition >= 1065353216) {
                        view2.setVisibility(motionConstrainedPoint2.mVisibility);
                    } else if (motionConstrainedPoint2.mVisibility != motionConstrainedPoint.mVisibility) {
                        view2.setVisibility(0);
                    }
                }
            }
            if (this.mKeyTriggers != null) {
                int i11 = 0;
                while (true) {
                    KeyTrigger[] keyTriggerArr = this.mKeyTriggers;
                    if (i11 >= keyTriggerArr.length) {
                        break;
                    }
                    keyTriggerArr[i11].conditionallyFire(adjustedPosition, view2);
                    i11++;
                }
            }
        } else {
            view2 = view;
            MotionPaths motionPaths = this.mStartMotionPath;
            float f14 = motionPaths.mX;
            MotionPaths motionPaths2 = this.mEndMotionPath;
            float fB = a.b(motionPaths2.mX, f14, adjustedPosition, f14);
            float f15 = motionPaths.mY;
            float fB2 = a.b(motionPaths2.mY, f15, adjustedPosition, f15);
            float f16 = motionPaths.mWidth;
            float f17 = motionPaths2.mWidth;
            float fB3 = a.b(f17, f16, adjustedPosition, f16);
            float f18 = motionPaths.mHeight;
            float f19 = motionPaths2.mHeight;
            float f20 = fB + 0.5f;
            int i12 = (int) f20;
            float f21 = fB2 + 0.5f;
            int i13 = (int) f21;
            int i14 = (int) (f20 + fB3);
            int iB = (int) (f21 + a.b(f19, f18, adjustedPosition, f18));
            int i15 = i14 - i12;
            int i16 = iB - i13;
            if (f17 != f16 || f19 != f18 || this.mForceMeasure) {
                view2.measure(View$MeasureSpec.makeMeasureSpec(i15, BasicMeasure.EXACTLY), View$MeasureSpec.makeMeasureSpec(i16, BasicMeasure.EXACTLY));
                this.mForceMeasure = false;
            }
            view2.layout(i12, i13, i14, iB);
        }
        HashMap<String, ViewOscillator> map4 = this.mCycleMap;
        if (map4 != null) {
            for (ViewOscillator viewOscillator : map4.values()) {
                if (viewOscillator instanceof ViewOscillator$PathRotateSet) {
                    double[] dArr4 = this.mInterpolateVelocity;
                    ((ViewOscillator$PathRotateSet) viewOscillator).setPathRotate(view2, adjustedPosition, dArr4[0], dArr4[1]);
                } else {
                    viewOscillator.setProperty(view2, adjustedPosition);
                }
            }
        }
        return pathRotate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String name() {
        return this.mView.getContext().getResources().getResourceEntryName(this.mView.getId());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void positionKeyframe(View view, KeyPositionBase keyPositionBase, float f8, float f9, String[] strArr, float[] fArr) {
        RectF rectF = new RectF();
        MotionPaths motionPaths = this.mStartMotionPath;
        float f10 = motionPaths.mX;
        rectF.left = f10;
        float f11 = motionPaths.mY;
        rectF.top = f11;
        rectF.right = f10 + motionPaths.mWidth;
        rectF.bottom = f11 + motionPaths.mHeight;
        RectF rectF2 = new RectF();
        MotionPaths motionPaths2 = this.mEndMotionPath;
        float f12 = motionPaths2.mX;
        rectF2.left = f12;
        float f13 = motionPaths2.mY;
        rectF2.top = f13;
        rectF2.right = f12 + motionPaths2.mWidth;
        rectF2.bottom = f13 + motionPaths2.mHeight;
        keyPositionBase.positionAttributes(view, rectF, rectF2, f8, f9, strArr, fArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void remeasure() {
        this.mForceMeasure = true;
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
    public void setBothStates(View view) {
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.mTime = 0.0f;
        motionPaths.mPosition = 0.0f;
        this.mNoMovement = true;
        motionPaths.setBounds(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.mEndMotionPath.setBounds(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.mStartPoint.setState(view);
        this.mEndPoint.setState(view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDrawPath(int i9) {
        this.mStartMotionPath.mDrawPath = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setEndState(Rect rect, ConstraintSet constraintSet, int i9, int i10) {
        MotionController motionController;
        int i11 = constraintSet.mRotate;
        if (i11 != 0) {
            motionController = this;
            motionController.rotate(rect, this.mTempRect, i11, i9, i10);
            rect = motionController.mTempRect;
        } else {
            motionController = this;
        }
        MotionPaths motionPaths = motionController.mEndMotionPath;
        motionPaths.mTime = 1.0f;
        motionPaths.mPosition = 1.0f;
        readView(motionPaths);
        motionController.mEndMotionPath.setBounds(rect.left, rect.top, rect.width(), rect.height());
        motionController.mEndMotionPath.applyParameters(constraintSet.getParameters(motionController.mId));
        motionController.mEndPoint.setState(rect, constraintSet, i11, motionController.mId);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPathMotionArc(int i9) {
        this.mPathMotionArc = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStartCurrentState(View view) {
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.mTime = 0.0f;
        motionPaths.mPosition = 0.0f;
        motionPaths.setBounds(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.mStartPoint.setState(view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStartState(ViewState viewState, View view, int i9, int i10, int i11) {
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
        this.mStartPoint.setState(rect, view, i9, viewState.rotation);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTransformPivotTarget(int i9) {
        this.mTransformPivotTarget = i9;
        this.mTransformPivotView = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setView(View view) {
        this.mView = view;
        this.mId = view.getId();
        ViewGroup$LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ConstraintLayout$LayoutParams) {
            this.mConstraintTag = ((ConstraintLayout$LayoutParams) layoutParams).getConstraintTag();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r1v17, resolved type: boolean */
    /* JADX DEBUG: Multi-variable search result rejected for r1v18, resolved type: boolean */
    /* JADX DEBUG: Multi-variable search result rejected for r1v42, resolved type: boolean */
    /* JADX WARN: Multi-variable type inference failed */
    public void setup(int i9, int i10, float f8, long j9) {
        ArrayList arrayList;
        int i11;
        String[] strArr;
        int i12;
        ConstraintAttribute constraintAttribute;
        ViewTimeCycle viewTimeCycleMakeSpline;
        ConstraintAttribute constraintAttribute2;
        Integer num;
        int i13;
        ViewSpline viewSplineMakeSpline;
        ConstraintAttribute constraintAttribute3;
        new HashSet();
        HashSet<String> hashSet = new HashSet<>();
        HashSet<String> hashSet2 = new HashSet<>();
        HashSet<String> hashSet3 = new HashSet<>();
        HashMap<String, Integer> map = new HashMap<>();
        int i14 = this.mPathMotionArc;
        if (i14 != Key.UNSET) {
            this.mStartMotionPath.mPathMotionArc = i14;
        }
        this.mStartPoint.different(this.mEndPoint, hashSet2);
        ArrayList<Key> arrayList2 = this.mKeyList;
        int i15 = 0;
        if (arrayList2 != null) {
            int size = arrayList2.size();
            int i16 = 0;
            arrayList = null;
            while (i16 < size) {
                Key key = arrayList2.get(i16);
                i16++;
                Key key2 = key;
                if (key2 instanceof KeyPosition) {
                    KeyPosition keyPosition = (KeyPosition) key2;
                    insertKey(new MotionPaths(i9, i10, keyPosition, this.mStartMotionPath, this.mEndMotionPath));
                    int i17 = keyPosition.mCurveFit;
                    if (i17 != Key.UNSET) {
                        this.mCurveFitType = i17;
                    }
                } else if (key2 instanceof KeyCycle) {
                    key2.getAttributeNames(hashSet3);
                } else if (key2 instanceof KeyTimeCycle) {
                    key2.getAttributeNames(hashSet);
                } else if (key2 instanceof KeyTrigger) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add((KeyTrigger) key2);
                } else {
                    key2.setInterpolation(map);
                    key2.getAttributeNames(hashSet2);
                }
            }
        } else {
            arrayList = null;
        }
        if (arrayList != null) {
            this.mKeyTriggers = (KeyTrigger[]) arrayList.toArray(new KeyTrigger[0]);
        }
        int i18 = 1;
        if (hashSet2.isEmpty()) {
            i11 = 1;
        } else {
            this.mAttributesMap = new HashMap<>();
            for (String str : hashSet2) {
                if (str.startsWith("CUSTOM,")) {
                    SparseArray sparseArray = new SparseArray();
                    String str2 = str.split(",")[i18];
                    ArrayList<Key> arrayList3 = this.mKeyList;
                    int size2 = arrayList3.size();
                    int i19 = i15;
                    while (i19 < size2) {
                        Key key3 = arrayList3.get(i19);
                        i19++;
                        int i20 = i18;
                        Key key4 = key3;
                        HashMap<String, ConstraintAttribute> map2 = key4.mCustomConstraints;
                        if (map2 != null && (constraintAttribute3 = map2.get(str2)) != null) {
                            sparseArray.append(key4.mFramePosition, constraintAttribute3);
                        }
                        i18 = i20;
                    }
                    i13 = i18;
                    viewSplineMakeSpline = ViewSpline.makeCustomSpline(str, (SparseArray<ConstraintAttribute>) sparseArray);
                } else {
                    i13 = i18;
                    viewSplineMakeSpline = ViewSpline.makeSpline(str);
                }
                if (viewSplineMakeSpline != null) {
                    viewSplineMakeSpline.setType(str);
                    this.mAttributesMap.put(str, viewSplineMakeSpline);
                }
                i18 = i13;
                i15 = 0;
            }
            i11 = i18;
            ArrayList<Key> arrayList4 = this.mKeyList;
            if (arrayList4 != null) {
                int size3 = arrayList4.size();
                int i21 = 0;
                while (i21 < size3) {
                    Key key5 = arrayList4.get(i21);
                    i21++;
                    Key key6 = key5;
                    if (key6 instanceof KeyAttributes) {
                        key6.addValues(this.mAttributesMap);
                    }
                }
            }
            this.mStartPoint.addValues(this.mAttributesMap, 0);
            this.mEndPoint.addValues(this.mAttributesMap, 100);
            for (String str3 : this.mAttributesMap.keySet()) {
                int iIntValue = (!map.containsKey(str3) || (num = map.get(str3)) == null) ? 0 : num.intValue();
                ViewSpline viewSpline = this.mAttributesMap.get(str3);
                if (viewSpline != null) {
                    viewSpline.setup(iIntValue);
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
                        SparseArray sparseArray2 = new SparseArray();
                        String str5 = str4.split(",")[i11];
                        ArrayList<Key> arrayList5 = this.mKeyList;
                        int size4 = arrayList5.size();
                        int i22 = 0;
                        while (i22 < size4) {
                            Key key7 = arrayList5.get(i22);
                            i22++;
                            Key key8 = key7;
                            HashMap<String, ConstraintAttribute> map3 = key8.mCustomConstraints;
                            if (map3 != null && (constraintAttribute2 = map3.get(str5)) != null) {
                                sparseArray2.append(key8.mFramePosition, constraintAttribute2);
                            }
                        }
                        viewTimeCycleMakeSpline = ViewTimeCycle.makeCustomSpline(str4, sparseArray2);
                    } else {
                        viewTimeCycleMakeSpline = ViewTimeCycle.makeSpline(str4, j9);
                    }
                    if (viewTimeCycleMakeSpline != null) {
                        viewTimeCycleMakeSpline.setType(str4);
                        this.mTimeCycleAttributesMap.put(str4, viewTimeCycleMakeSpline);
                    }
                }
            }
            ArrayList<Key> arrayList6 = this.mKeyList;
            if (arrayList6 != null) {
                int size5 = arrayList6.size();
                int i23 = 0;
                while (i23 < size5) {
                    Key key9 = arrayList6.get(i23);
                    i23++;
                    Key key10 = key9;
                    if (key10 instanceof KeyTimeCycle) {
                        ((KeyTimeCycle) key10).addTimeValues(this.mTimeCycleAttributesMap);
                    }
                }
            }
            for (String str6 : this.mTimeCycleAttributesMap.keySet()) {
                this.mTimeCycleAttributesMap.get(str6).setup(map.containsKey(str6) ? map.get(str6).intValue() : 0);
            }
        }
        int size6 = this.mMotionPaths.size();
        int i24 = size6 + 2;
        MotionPaths[] motionPathsArr = new MotionPaths[i24];
        motionPathsArr[0] = this.mStartMotionPath;
        motionPathsArr[size6 + 1] = this.mEndMotionPath;
        if (this.mMotionPaths.size() > 0 && this.mCurveFitType == -1) {
            this.mCurveFitType = 0;
        }
        ArrayList<MotionPaths> arrayList7 = this.mMotionPaths;
        int size7 = arrayList7.size();
        int i25 = i11;
        int i26 = 0;
        while (i26 < size7) {
            MotionPaths motionPaths = arrayList7.get(i26);
            i26++;
            motionPathsArr[i25] = motionPaths;
            i25++;
        }
        HashSet hashSet4 = new HashSet();
        for (String str7 : this.mEndMotionPath.mAttributes.keySet()) {
            if (this.mStartMotionPath.mAttributes.containsKey(str7)) {
                if (!hashSet2.contains("CUSTOM," + str7)) {
                    hashSet4.add(str7);
                }
            }
        }
        String[] strArr2 = (String[]) hashSet4.toArray(new String[0]);
        this.mAttributeNames = strArr2;
        this.mAttributeInterpolatorCount = new int[strArr2.length];
        int i27 = 0;
        while (true) {
            strArr = this.mAttributeNames;
            if (i27 >= strArr.length) {
                break;
            }
            String str8 = strArr[i27];
            this.mAttributeInterpolatorCount[i27] = 0;
            for (int i28 = 0; i28 < i24; i28++) {
                if (motionPathsArr[i28].mAttributes.containsKey(str8) && (constraintAttribute = motionPathsArr[i28].mAttributes.get(str8)) != null) {
                    int[] iArr = this.mAttributeInterpolatorCount;
                    iArr[i27] = constraintAttribute.numberOfInterpolatedValues() + iArr[i27];
                    break;
                }
            }
            i27++;
        }
        boolean z8 = motionPathsArr[0].mPathMotionArc != Key.UNSET ? i11 : 0;
        int length = 18 + strArr.length;
        boolean[] zArr = new boolean[length];
        for (int i29 = i11; i29 < i24; i29++) {
            motionPathsArr[i29].different(motionPathsArr[i29 - 1], zArr, this.mAttributeNames, z8);
        }
        int i30 = 0;
        for (int i31 = i11; i31 < length; i31++) {
            if (zArr[i31]) {
                i30++;
            }
        }
        this.mInterpolateVariables = new int[i30];
        int i32 = 2;
        int iMax = Math.max(2, i30);
        this.mInterpolateData = new double[iMax];
        this.mInterpolateVelocity = new double[iMax];
        int i33 = 0;
        for (int i34 = i11; i34 < length; i34++) {
            if (zArr[i34]) {
                this.mInterpolateVariables[i33] = i34;
                i33++;
            }
        }
        int[] iArr2 = new int[2];
        iArr2[i11] = this.mInterpolateVariables.length;
        iArr2[0] = i24;
        Class cls = Double.TYPE;
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) cls, iArr2);
        double[] dArr2 = new double[i24];
        for (int i35 = 0; i35 < i24; i35++) {
            motionPathsArr[i35].fillStandard(dArr[i35], this.mInterpolateVariables);
            dArr2[i35] = motionPathsArr[i35].mTime;
        }
        int i36 = 0;
        while (true) {
            int[] iArr3 = this.mInterpolateVariables;
            if (i36 >= iArr3.length) {
                break;
            }
            if (iArr3[i36] < MotionPaths.sNames.length) {
                String strP = a.p(new StringBuilder(), MotionPaths.sNames[this.mInterpolateVariables[i36]], " [");
                for (int i37 = 0; i37 < i24; i37++) {
                    StringBuilder sbU = a.u(strP);
                    sbU.append(dArr[i37][i36]);
                    strP = sbU.toString();
                }
            }
            i36++;
        }
        this.mSpline = new CurveFit[this.mAttributeNames.length + 1];
        int i38 = 0;
        while (true) {
            String[] strArr3 = this.mAttributeNames;
            if (i38 >= strArr3.length) {
                break;
            }
            String str9 = strArr3[i38];
            int i39 = 0;
            int i40 = 0;
            double[] dArr3 = null;
            double[][] dArr4 = null;
            while (i39 < i24) {
                if (motionPathsArr[i39].hasCustomData(str9)) {
                    if (dArr4 == null) {
                        dArr3 = new double[i24];
                        int[] iArr4 = new int[i32];
                        iArr4[i11] = motionPathsArr[i39].getCustomDataCount(str9);
                        i12 = 0;
                        iArr4[0] = i24;
                        dArr4 = (double[][]) Array.newInstance((Class<?>) cls, iArr4);
                    } else {
                        i12 = 0;
                    }
                    MotionPaths motionPaths2 = motionPathsArr[i39];
                    dArr3[i40] = motionPaths2.mTime;
                    motionPaths2.getCustomData(str9, dArr4[i40], i12);
                    i40++;
                }
                i39++;
                i38 = i38;
                i32 = 2;
            }
            int i41 = i38 + 1;
            this.mSpline[i41] = CurveFit.get(this.mCurveFitType, Arrays.copyOf(dArr3, i40), (double[][]) Arrays.copyOf(dArr4, i40));
            i38 = i41;
            i32 = 2;
        }
        int i42 = 0;
        this.mSpline[0] = CurveFit.get(this.mCurveFitType, dArr2, dArr);
        if (motionPathsArr[0].mPathMotionArc != Key.UNSET) {
            int[] iArr5 = new int[i24];
            double[] dArr5 = new double[i24];
            int[] iArr6 = new int[2];
            iArr6[i11] = 2;
            iArr6[0] = i24;
            double[][] dArr6 = (double[][]) Array.newInstance((Class<?>) cls, iArr6);
            for (int i43 = 0; i43 < i24; i43++) {
                MotionPaths motionPaths3 = motionPathsArr[i43];
                iArr5[i43] = motionPaths3.mPathMotionArc;
                dArr5[i43] = motionPaths3.mTime;
                double[] dArr7 = dArr6[i43];
                dArr7[0] = motionPaths3.mX;
                dArr7[i11] = motionPaths3.mY;
            }
            i42 = 0;
            this.mArcSpline = CurveFit.getArc(iArr5, dArr5, dArr6);
        }
        this.mCycleMap = new HashMap<>();
        if (this.mKeyList != null) {
            float preCycleDistance = Float.NaN;
            for (String str10 : hashSet3) {
                ViewOscillator viewOscillatorMakeSpline = ViewOscillator.makeSpline(str10);
                if (viewOscillatorMakeSpline != null) {
                    if (viewOscillatorMakeSpline.variesByPath() && Float.isNaN(preCycleDistance)) {
                        preCycleDistance = getPreCycleDistance();
                    }
                    viewOscillatorMakeSpline.setType(str10);
                    this.mCycleMap.put(str10, viewOscillatorMakeSpline);
                }
            }
            ArrayList<Key> arrayList8 = this.mKeyList;
            int size8 = arrayList8.size();
            int i44 = i42;
            while (i44 < size8) {
                Key key11 = arrayList8.get(i44);
                i44++;
                Key key12 = key11;
                if (key12 instanceof KeyCycle) {
                    ((KeyCycle) key12).addCycleValues(this.mCycleMap);
                }
            }
            Iterator<ViewOscillator> it = this.mCycleMap.values().iterator();
            while (it.hasNext()) {
                it.next().setup(preCycleDistance);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setupRelative(MotionController motionController) {
        this.mStartMotionPath.setupRelative(motionController, motionController.mStartMotionPath);
        this.mEndMotionPath.setupRelative(motionController, motionController.mEndMotionPath);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return " start: x: " + this.mStartMotionPath.mX + " y: " + this.mStartMotionPath.mY + " end: x: " + this.mEndMotionPath.mX + " y: " + this.mEndMotionPath.mY;
    }

    public void setStartState(Rect rect, ConstraintSet constraintSet, int i9, int i10) {
        MotionController motionController;
        Rect rect2;
        int i11 = constraintSet.mRotate;
        if (i11 != 0) {
            motionController = this;
            rect2 = rect;
            motionController.rotate(rect2, this.mTempRect, i11, i9, i10);
        } else {
            motionController = this;
            rect2 = rect;
        }
        MotionPaths motionPaths = motionController.mStartMotionPath;
        motionPaths.mTime = 0.0f;
        motionPaths.mPosition = 0.0f;
        readView(motionPaths);
        motionController.mStartMotionPath.setBounds(rect2.left, rect2.top, rect2.width(), rect2.height());
        ConstraintSet$Constraint parameters = constraintSet.getParameters(motionController.mId);
        motionController.mStartMotionPath.applyParameters(parameters);
        motionController.mMotionStagger = parameters.motion.mMotionStagger;
        motionController.mStartPoint.setState(rect2, constraintSet, i11, motionController.mId);
        motionController.mTransformPivotTarget = parameters.transform.transformPivotTarget;
        ConstraintSet$Motion constraintSet$Motion = parameters.motion;
        motionController.mQuantizeMotionSteps = constraintSet$Motion.mQuantizeMotionSteps;
        motionController.mQuantizeMotionPhase = constraintSet$Motion.mQuantizeMotionPhase;
        Context context = motionController.mView.getContext();
        ConstraintSet$Motion constraintSet$Motion2 = parameters.motion;
        motionController.mQuantizeMotionInterpolator = getInterpolator(context, constraintSet$Motion2.mQuantizeInterpolatorType, constraintSet$Motion2.mQuantizeInterpolatorString, constraintSet$Motion2.mQuantizeInterpolatorID);
    }
}
