package androidx.constraintlayout.core.state;

import ai.onnxruntime.b;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.motion.Motion;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.TypedBundle;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.motion.utils.TypedValues$PositionType;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Transition implements TypedValues {
    static final int ANTICIPATE = 6;
    static final int BOUNCE = 4;
    private static final boolean DEBUG = false;
    static final int EASE_IN = 1;
    static final int EASE_IN_OUT = 0;
    static final int EASE_OUT = 2;
    public static final int END = 1;
    public static final int INTERPOLATED = 2;
    private static final int INTERPOLATOR_REFERENCE_ID = -2;
    static final int LINEAR = 3;
    static final int OVERSHOOT = 5;
    private static final int SPLINE_STRING = -1;
    public static final int START = 0;
    int mParentEndHeight;
    int mParentEndWidth;
    int mParentInterpolateHeight;
    int mParentInterpolatedWidth;
    int mParentStartHeight;
    int mParentStartWidth;
    final CorePixelDp mToPixel;
    boolean mWrap;
    private HashMap<Integer, HashMap<String, Transition$KeyPosition>> mKeyPositions = new HashMap<>();
    private HashMap<String, Transition$WidgetState> mState = new HashMap<>();
    private TypedBundle mBundle = new TypedBundle();
    private int mDefaultInterpolator = 0;
    private String mDefaultInterpolatorString = null;
    private Easing mEasing = null;
    private int mAutoTransition = 0;
    private int mDuration = 400;
    private float mStagger = 0.0f;
    private Transition$OnSwipe mOnSwipe = null;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Transition(@NonNull CorePixelDp corePixelDp) {
        this.mToPixel = corePixelDp;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ float a(float f8) {
        return lambda$getInterpolator$1(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ float b(float f8) {
        return lambda$getInterpolator$7(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ float c(float f8) {
        return lambda$getInterpolator$5(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void calculateParentDimensions(float f8) {
        int i9 = this.mParentStartWidth;
        this.mParentInterpolatedWidth = (int) (((this.mParentEndWidth - i9) * f8) + i9 + 0.5f);
        int i10 = this.mParentStartHeight;
        this.mParentInterpolateHeight = (int) (((this.mParentEndHeight - i10) * f8) + i10 + 0.5f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ float d(String str, float f8) {
        return lambda$getInterpolator$0(str, f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ float e(float f8) {
        return lambda$getInterpolator$4(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ float f(float f8) {
        return lambda$getInterpolator$3(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ float g(float f8) {
        return lambda$getInterpolator$6(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Interpolator getInterpolator(int i9, String str) {
        switch (i9) {
            case -1:
                return new a(str, 0);
            case 0:
                return new b(16);
            case 1:
                return new b(17);
            case 2:
                return new b(18);
            case 3:
                return new b(19);
            case 4:
                return new b(22);
            case 5:
                return new b(21);
            case 6:
                return new b(20);
            default:
                return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ float h(float f8) {
        return lambda$getInterpolator$2(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ float lambda$getInterpolator$0(String str, float f8) {
        return (float) Easing.getInterpolator(str).get(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ float lambda$getInterpolator$1(float f8) {
        return (float) Easing.getInterpolator("standard").get(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ float lambda$getInterpolator$2(float f8) {
        return (float) Easing.getInterpolator("accelerate").get(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ float lambda$getInterpolator$3(float f8) {
        return (float) Easing.getInterpolator("decelerate").get(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ float lambda$getInterpolator$4(float f8) {
        return (float) Easing.getInterpolator("linear").get(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ float lambda$getInterpolator$5(float f8) {
        return (float) Easing.getInterpolator("anticipate").get(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ float lambda$getInterpolator$6(float f8) {
        return (float) Easing.getInterpolator("overshoot").get(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ float lambda$getInterpolator$7(float f8) {
        return (float) Easing.getInterpolator("spline(0.0, 0.2, 0.4, 0.6, 0.8 ,1.0, 0.8, 1.0, 0.9, 1.0)").get(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addCustomColor(int i9, String str, String str2, int i10) {
        getWidgetState(str, null, i9).getFrame(i9).addCustomColor(str2, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addCustomFloat(int i9, String str, String str2, float f8) {
        getWidgetState(str, null, i9).getFrame(i9).addCustomFloat(str2, f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addKeyAttribute(String str, TypedBundle typedBundle) {
        getWidgetState(str, null, 0).setKeyAttribute(typedBundle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addKeyCycle(String str, TypedBundle typedBundle) {
        getWidgetState(str, null, 0).setKeyCycle(typedBundle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addKeyPosition(String str, int i9, int i10, float f8, float f9) {
        TypedBundle typedBundle = new TypedBundle();
        typedBundle.add(TypedValues$PositionType.TYPE_POSITION_TYPE, 2);
        typedBundle.add(100, i9);
        typedBundle.add(TypedValues$PositionType.TYPE_PERCENT_X, f8);
        typedBundle.add(TypedValues$PositionType.TYPE_PERCENT_Y, f9);
        getWidgetState(str, null, 0).setKeyPosition(typedBundle);
        Transition$KeyPosition transition$KeyPosition = new Transition$KeyPosition(str, i9, i10, f8, f9);
        HashMap<String, Transition$KeyPosition> map = this.mKeyPositions.get(Integer.valueOf(i9));
        if (map == null) {
            map = new HashMap<>();
            this.mKeyPositions.put(Integer.valueOf(i9), map);
        }
        map.put(str, transition$KeyPosition);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void calcStagger() {
        float fMin;
        float fMax;
        float f8 = this.mStagger;
        if (f8 == 0.0f) {
            return;
        }
        boolean z8 = ((double) f8) < 0.0d;
        float fAbs = Math.abs(f8);
        Iterator<String> it = this.mState.keySet().iterator();
        do {
            fMin = Float.MAX_VALUE;
            fMax = -3.4028235E38f;
            if (!it.hasNext()) {
                Iterator<String> it2 = this.mState.keySet().iterator();
                while (it2.hasNext()) {
                    Motion motion = this.mState.get(it2.next()).mMotionControl;
                    float finalY = motion.getFinalY() + motion.getFinalX();
                    fMin = Math.min(fMin, finalY);
                    fMax = Math.max(fMax, finalY);
                }
                Iterator<String> it3 = this.mState.keySet().iterator();
                while (it3.hasNext()) {
                    Motion motion2 = this.mState.get(it3.next()).mMotionControl;
                    float finalY2 = motion2.getFinalY() + motion2.getFinalX();
                    float f9 = fMax - fMin;
                    float f10 = fAbs - (((finalY2 - fMin) * fAbs) / f9);
                    if (z8) {
                        f10 = fAbs - (((fMax - finalY2) / f9) * fAbs);
                    }
                    motion2.setStaggerScale(1.0f / (1.0f - fAbs));
                    motion2.setStaggerOffset(f10);
                }
                return;
            }
        } while (Float.isNaN(this.mState.get(it.next()).mMotionControl.getMotionStagger()));
        Iterator<String> it4 = this.mState.keySet().iterator();
        while (it4.hasNext()) {
            float motionStagger = this.mState.get(it4.next()).mMotionControl.getMotionStagger();
            if (!Float.isNaN(motionStagger)) {
                fMin = Math.min(fMin, motionStagger);
                fMax = Math.max(fMax, motionStagger);
            }
        }
        Iterator<String> it5 = this.mState.keySet().iterator();
        while (it5.hasNext()) {
            Motion motion3 = this.mState.get(it5.next()).mMotionControl;
            float motionStagger2 = motion3.getMotionStagger();
            if (!Float.isNaN(motionStagger2)) {
                float f11 = 1.0f / (1.0f - fAbs);
                float f12 = fMax - fMin;
                float f13 = fAbs - (((motionStagger2 - fMin) * fAbs) / f12);
                if (z8) {
                    f13 = fAbs - (((fMax - motionStagger2) / f12) * fAbs);
                }
                motion3.setStaggerScale(f11);
                motion3.setStaggerOffset(f13);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void clear() {
        this.mState.clear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean contains(String str) {
        return this.mState.containsKey(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Transition$OnSwipe createOnSwipe() {
        Transition$OnSwipe transition$OnSwipe = new Transition$OnSwipe();
        this.mOnSwipe = transition$OnSwipe;
        return transition$OnSwipe;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float dragToProgress(float f8, int i9, int i10, float f9, float f10) {
        float fAbs;
        float f11;
        Iterator<Transition$WidgetState> it = this.mState.values().iterator();
        Transition$WidgetState next = it.hasNext() ? it.next() : null;
        Transition$OnSwipe transition$OnSwipe = this.mOnSwipe;
        if (transition$OnSwipe == null || next == null) {
            if (next != null) {
                return (-f10) / next.mParentHeight;
            }
            return 1.0f;
        }
        String str = transition$OnSwipe.mAnchorId;
        if (str == null) {
            float[] direction = transition$OnSwipe.getDirection();
            int i11 = next.mParentHeight;
            float f12 = i11;
            float f13 = i11;
            float f14 = direction[0];
            return (f14 != 0.0f ? (Math.abs(f14) * f9) / f12 : (Math.abs(direction[1]) * f10) / f13) * this.mOnSwipe.getScale();
        }
        Transition$WidgetState transition$WidgetState = this.mState.get(str);
        float[] direction2 = this.mOnSwipe.getDirection();
        float[] side = this.mOnSwipe.getSide();
        float[] fArr = new float[2];
        transition$WidgetState.interpolate(i9, i10, f8, this);
        transition$WidgetState.mMotionControl.getDpDt(f8, side[0], side[1], fArr);
        float f15 = direction2[0];
        if (f15 != 0.0f) {
            fAbs = Math.abs(f15) * f9;
            f11 = fArr[0];
        } else {
            fAbs = Math.abs(direction2[1]) * f10;
            f11 = fArr[1];
        }
        return (fAbs / f11) * this.mOnSwipe.getScale();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void fillKeyPositions(WidgetFrame widgetFrame, float[] fArr, float[] fArr2, float[] fArr3) {
        Transition$KeyPosition transition$KeyPosition;
        int i9 = 0;
        for (int i10 = 0; i10 <= 100; i10++) {
            HashMap<String, Transition$KeyPosition> map = this.mKeyPositions.get(Integer.valueOf(i10));
            if (map != null && (transition$KeyPosition = map.get(widgetFrame.widget.stringId)) != null) {
                fArr[i9] = transition$KeyPosition.mX;
                fArr2[i9] = transition$KeyPosition.mY;
                fArr3[i9] = transition$KeyPosition.mFrame;
                i9++;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Transition$KeyPosition findNextPosition(String str, int i9) {
        Transition$KeyPosition transition$KeyPosition;
        while (i9 <= 100) {
            HashMap<String, Transition$KeyPosition> map = this.mKeyPositions.get(Integer.valueOf(i9));
            if (map != null && (transition$KeyPosition = map.get(str)) != null) {
                return transition$KeyPosition;
            }
            i9++;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Transition$KeyPosition findPreviousPosition(String str, int i9) {
        Transition$KeyPosition transition$KeyPosition;
        while (i9 >= 0) {
            HashMap<String, Transition$KeyPosition> map = this.mKeyPositions.get(Integer.valueOf(i9));
            if (map != null && (transition$KeyPosition = map.get(str)) != null) {
                return transition$KeyPosition;
            }
            i9--;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getAutoTransition() {
        return this.mAutoTransition;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WidgetFrame getEnd(String str) {
        Transition$WidgetState transition$WidgetState = this.mState.get(str);
        if (transition$WidgetState == null) {
            return null;
        }
        return transition$WidgetState.mEnd;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public int getId(String str) {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WidgetFrame getInterpolated(String str) {
        Transition$WidgetState transition$WidgetState = this.mState.get(str);
        if (transition$WidgetState == null) {
            return null;
        }
        return transition$WidgetState.mInterpolated;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getInterpolatedHeight() {
        return this.mParentInterpolateHeight;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getInterpolatedWidth() {
        return this.mParentInterpolatedWidth;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getKeyFrames(String str, float[] fArr, int[] iArr, int[] iArr2) {
        return this.mState.get(str).mMotionControl.buildKeyFrames(fArr, iArr, iArr2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Motion getMotion(String str) {
        return getWidgetState(str, null, 0).mMotionControl;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getNumberKeyPositions(WidgetFrame widgetFrame) {
        int i9 = 0;
        for (int i10 = 0; i10 <= 100; i10++) {
            HashMap<String, Transition$KeyPosition> map = this.mKeyPositions.get(Integer.valueOf(i10));
            if (map != null && map.get(widgetFrame.widget.stringId) != null) {
                i9++;
            }
        }
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float[] getPath(String str) {
        float[] fArr = new float[124];
        this.mState.get(str).mMotionControl.buildPath(fArr, 62);
        return fArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WidgetFrame getStart(String str) {
        Transition$WidgetState transition$WidgetState = this.mState.get(str);
        if (transition$WidgetState == null) {
            return null;
        }
        return transition$WidgetState.mStart;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getTouchUpProgress(long j9) {
        Transition$OnSwipe transition$OnSwipe = this.mOnSwipe;
        if (transition$OnSwipe != null) {
            return transition$OnSwipe.getTouchUpProgress(j9);
        }
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Transition$WidgetState getWidgetState(String str, ConstraintWidget constraintWidget, int i9) {
        Transition$WidgetState transition$WidgetState = this.mState.get(str);
        if (transition$WidgetState == null) {
            transition$WidgetState = new Transition$WidgetState();
            this.mBundle.applyDelta(transition$WidgetState.mMotionControl);
            transition$WidgetState.mMotionWidgetStart.updateMotion(transition$WidgetState.mMotionControl);
            this.mState.put(str, transition$WidgetState);
            if (constraintWidget != null) {
                transition$WidgetState.update(constraintWidget, i9);
            }
        }
        return transition$WidgetState;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasOnSwipe() {
        return this.mOnSwipe != null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasPositionKeyframes() {
        return this.mKeyPositions.size() > 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void interpolate(int i9, int i10, float f8) {
        if (this.mWrap) {
            calculateParentDimensions(f8);
        }
        Easing easing = this.mEasing;
        if (easing != null) {
            f8 = (float) easing.get(f8);
        }
        Iterator<String> it = this.mState.keySet().iterator();
        while (it.hasNext()) {
            this.mState.get(it.next()).interpolate(i9, i10, f8, this);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isEmpty() {
        return this.mState.isEmpty();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public boolean isFirstDownAccepted(float f8, float f9) {
        Transition$OnSwipe transition$OnSwipe = this.mOnSwipe;
        if (transition$OnSwipe == null) {
            return false;
        }
        String str = transition$OnSwipe.mLimitBoundsTo;
        if (str == null) {
            return true;
        }
        Transition$WidgetState transition$WidgetState = this.mState.get(str);
        if (transition$WidgetState == null) {
            System.err.println("mLimitBoundsTo target is null");
            return false;
        }
        WidgetFrame frame = transition$WidgetState.getFrame(2);
        return f8 >= ((float) frame.left) && f8 < ((float) frame.right) && f9 >= ((float) frame.top) && f9 < ((float) frame.bottom);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isTouchNotDone(float f8) {
        return this.mOnSwipe.isNotDone(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void resetProperties() {
        this.mOnSwipe = null;
        this.mBundle.clear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTouchUp(float f8, long j9, float f9, float f10) {
        Transition$OnSwipe transition$OnSwipe = this.mOnSwipe;
        if (transition$OnSwipe != null) {
            Transition$WidgetState transition$WidgetState = this.mState.get(transition$OnSwipe.mAnchorId);
            float[] fArr = new float[2];
            float[] direction = this.mOnSwipe.getDirection();
            float[] side = this.mOnSwipe.getSide();
            transition$WidgetState.mMotionControl.getDpDt(f8, side[0], side[1], fArr);
            if (Math.abs((direction[1] * fArr[1]) + (direction[0] * fArr[0])) < 0.01d) {
                fArr[0] = 0.01f;
                fArr[1] = 0.01f;
            }
            this.mOnSwipe.config(f8, (direction[0] != 0.0f ? f9 / fArr[0] : f10 / fArr[1]) * this.mOnSwipe.getScale(), j9, this.mDuration * 0.001f);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTransitionProperties(TypedBundle typedBundle) {
        typedBundle.applyDelta(this.mBundle);
        typedBundle.applyDelta(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i9, String str) {
        if (i9 != 705) {
            return false;
        }
        this.mDefaultInterpolatorString = str;
        this.mEasing = Easing.getInterpolator(str);
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void updateFrom(ConstraintWidgetContainer constraintWidgetContainer, int i9) {
        ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr = constraintWidgetContainer.mListDimensionBehaviors;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = constraintWidget$DimensionBehaviourArr[0];
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
        boolean z8 = constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour2;
        this.mWrap = z8;
        this.mWrap = z8 | (constraintWidget$DimensionBehaviourArr[1] == constraintWidget$DimensionBehaviour2);
        if (i9 == 0) {
            int width = constraintWidgetContainer.getWidth();
            this.mParentStartWidth = width;
            this.mParentInterpolatedWidth = width;
            int height = constraintWidgetContainer.getHeight();
            this.mParentStartHeight = height;
            this.mParentInterpolateHeight = height;
        } else {
            this.mParentEndWidth = constraintWidgetContainer.getWidth();
            this.mParentEndHeight = constraintWidgetContainer.getHeight();
        }
        ArrayList<ConstraintWidget> children = constraintWidgetContainer.getChildren();
        int size = children.size();
        Transition$WidgetState[] transition$WidgetStateArr = new Transition$WidgetState[size];
        for (int i10 = 0; i10 < size; i10++) {
            ConstraintWidget constraintWidget = children.get(i10);
            Transition$WidgetState widgetState = getWidgetState(constraintWidget.stringId, null, i9);
            transition$WidgetStateArr[i10] = widgetState;
            widgetState.update(constraintWidget, i9);
            String pathRelativeId = widgetState.getPathRelativeId();
            if (pathRelativeId != null) {
                widgetState.setPathRelative(getWidgetState(pathRelativeId, null, i9));
            }
        }
        calcStagger();
    }

    public void addKeyAttribute(String str, TypedBundle typedBundle, CustomVariable[] customVariableArr) {
        getWidgetState(str, null, 0).setKeyAttribute(typedBundle, customVariableArr);
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i9, boolean z8) {
        return false;
    }

    public WidgetFrame getEnd(ConstraintWidget constraintWidget) {
        return getWidgetState(constraintWidget.stringId, null, 1).mEnd;
    }

    public WidgetFrame getInterpolated(ConstraintWidget constraintWidget) {
        return getWidgetState(constraintWidget.stringId, null, 2).mInterpolated;
    }

    public WidgetFrame getStart(ConstraintWidget constraintWidget) {
        return getWidgetState(constraintWidget.stringId, null, 0).mStart;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i9, float f8) {
        if (i9 != 706) {
            return false;
        }
        this.mStagger = f8;
        return false;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i9, int i10) {
        return false;
    }

    private Transition$WidgetState getWidgetState(String str) {
        return this.mState.get(str);
    }

    public Interpolator getInterpolator() {
        return getInterpolator(this.mDefaultInterpolator, this.mDefaultInterpolatorString);
    }

    public void addKeyPosition(String str, TypedBundle typedBundle) {
        getWidgetState(str, null, 0).setKeyPosition(typedBundle);
    }
}
