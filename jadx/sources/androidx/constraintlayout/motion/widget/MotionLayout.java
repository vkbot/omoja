package androidx.constraintlayout.motion.widget;

import ai.onnxruntime.AbstractC0074a;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.view.Display;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.TextView;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Flow;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.Helper;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.core.widgets.Placeholder;
import androidx.constraintlayout.core.widgets.VirtualLayout;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.constraintlayout.motion.utils.StopLogic;
import androidx.constraintlayout.motion.utils.ViewState;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.C0306R;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintLayoutStates;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.Constraints;
import androidx.constraintlayout.widget.StateSet;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.ViewCompat;
import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class MotionLayout extends ConstraintLayout implements NestedScrollingParent3 {
    private static final boolean DEBUG = false;
    public static final int DEBUG_SHOW_NONE = 0;
    public static final int DEBUG_SHOW_PATH = 2;
    public static final int DEBUG_SHOW_PROGRESS = 1;
    private static final float EPSILON = 1.0E-5f;
    public static boolean IS_IN_EDIT_MODE = false;
    static final int MAX_KEY_FRAMES = 50;
    static final String TAG = "MotionLayout";
    public static final int TOUCH_UP_COMPLETE = 0;
    public static final int TOUCH_UP_COMPLETE_TO_END = 2;
    public static final int TOUCH_UP_COMPLETE_TO_START = 1;
    public static final int TOUCH_UP_DECELERATE = 4;
    public static final int TOUCH_UP_DECELERATE_AND_COMPLETE = 5;
    public static final int TOUCH_UP_NEVER_TO_END = 7;
    public static final int TOUCH_UP_NEVER_TO_START = 6;
    public static final int TOUCH_UP_STOP = 3;
    public static final int VELOCITY_LAYOUT = 1;
    public static final int VELOCITY_POST_LAYOUT = 0;
    public static final int VELOCITY_STATIC_LAYOUT = 3;
    public static final int VELOCITY_STATIC_POST_LAYOUT = 2;
    private long mAnimationStartTime;
    private int mBeginState;
    private RectF mBoundsCheck;
    int mCurrentState;
    int mDebugPath;
    private DecelerateInterpolator mDecelerateLogic;
    private ArrayList<MotionHelper> mDecoratorsHelpers;
    private boolean mDelayedApply;
    private DesignTool mDesignTool;
    DevModeDraw mDevModeDraw;
    private int mEndState;
    int mEndWrapHeight;
    int mEndWrapWidth;
    boolean mFirstDown;
    HashMap<View, MotionController> mFrameArrayList;
    private int mFrames;
    int mHeightMeasureMode;
    private boolean mInLayout;
    private boolean mInRotation;
    boolean mInTransition;
    boolean mIndirectTransition;
    private boolean mInteractionEnabled;
    Interpolator mInterpolator;
    private Matrix mInverseMatrix;
    boolean mIsAnimating;
    private boolean mKeepAnimating;
    private KeyCache mKeyCache;
    private long mLastDrawTime;
    private float mLastFps;
    private int mLastHeightMeasureSpec;
    int mLastLayoutHeight;
    int mLastLayoutWidth;
    private float mLastPos;
    float mLastVelocity;
    private int mLastWidthMeasureSpec;
    private float mLastY;
    private float mListenerPosition;
    private int mListenerState;
    protected boolean mMeasureDuringTransition;
    Model mModel;
    private boolean mNeedsFireTransitionCompleted;
    int mOldHeight;
    int mOldWidth;
    private Runnable mOnComplete;
    private ArrayList<MotionHelper> mOnHideHelpers;
    private ArrayList<MotionHelper> mOnShowHelpers;
    float mPostInterpolationPosition;
    HashMap<View, ViewState> mPreRotate;
    private int mPreRotateHeight;
    private int mPreRotateWidth;
    private int mPreviouseRotation;
    Interpolator mProgressInterpolator;
    private View mRegionView;
    int mRotatMode;
    MotionScene mScene;
    private int[] mScheduledTransitionTo;
    int mScheduledTransitions;
    float mScrollTargetDT;
    float mScrollTargetDX;
    float mScrollTargetDY;
    long mScrollTargetTime;
    int mStartWrapHeight;
    int mStartWrapWidth;
    private StateCache mStateCache;
    private StopLogic mStopLogic;
    Rect mTempRect;
    private boolean mTemporalInterpolator;
    ArrayList<Integer> mTransitionCompleted;
    private float mTransitionDuration;
    float mTransitionGoalPosition;
    private boolean mTransitionInstantly;
    float mTransitionLastPosition;
    private long mTransitionLastTime;
    private TransitionListener mTransitionListener;
    private CopyOnWriteArrayList<TransitionListener> mTransitionListeners;
    float mTransitionPosition;
    TransitionState mTransitionState;
    boolean mUndergoingMotion;
    int mWidthMeasureMode;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public class DecelerateInterpolator extends MotionInterpolator {
        float mMaxA;
        float mInitialV = 0.0f;
        float mCurrentP = 0.0f;

        public DecelerateInterpolator() {
        }

        public void config(float f8, float f10, float f11) {
            this.mInitialV = f8;
            this.mCurrentP = f10;
            this.mMaxA = f11;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionInterpolator, android.animation.TimeInterpolator
        public float getInterpolation(float f8) {
            float f10 = this.mInitialV;
            float f11 = this.mMaxA;
            if (f10 > 0.0f) {
                if (f10 / f11 < f8) {
                    f8 = f10 / f11;
                }
                MotionLayout.this.mLastVelocity = f10 - (f11 * f8);
                return ((f10 * f8) - (((f11 * f8) * f8) / 2.0f)) + this.mCurrentP;
            }
            if ((-f10) / f11 < f8) {
                f8 = (-f10) / f11;
            }
            MotionLayout.this.mLastVelocity = (f11 * f8) + f10;
            return (((f11 * f8) * f8) / 2.0f) + (f10 * f8) + this.mCurrentP;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionInterpolator
        public float getVelocity() {
            return MotionLayout.this.mLastVelocity;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public class DevModeDraw {
        private static final int DEBUG_PATH_TICKS_PER_MS = 16;
        DashPathEffect mDashPathEffect;
        Paint mFillPaint;
        int mKeyFrameCount;
        float[] mKeyFramePoints;
        Paint mPaint;
        Paint mPaintGraph;
        Paint mPaintKeyframes;
        Path mPath;
        int[] mPathMode;
        float[] mPoints;
        private float[] mRectangle;
        int mShadowTranslate;
        Paint mTextPaint;
        final int mRedColor = -21965;
        final int mKeyframeColor = -2067046;
        final int mGraphColor = -13391360;
        final int mShadowColor = 1996488704;
        final int mDiamondSize = 10;
        Rect mBounds = new Rect();
        boolean mPresentationMode = false;

        public DevModeDraw() {
            this.mShadowTranslate = 1;
            Paint paint = new Paint();
            this.mPaint = paint;
            paint.setAntiAlias(true);
            this.mPaint.setColor(-21965);
            this.mPaint.setStrokeWidth(2.0f);
            Paint paint2 = this.mPaint;
            Paint.Style style = Paint.Style.STROKE;
            paint2.setStyle(style);
            Paint paint3 = new Paint();
            this.mPaintKeyframes = paint3;
            paint3.setAntiAlias(true);
            this.mPaintKeyframes.setColor(-2067046);
            this.mPaintKeyframes.setStrokeWidth(2.0f);
            this.mPaintKeyframes.setStyle(style);
            Paint paint4 = new Paint();
            this.mPaintGraph = paint4;
            paint4.setAntiAlias(true);
            this.mPaintGraph.setColor(-13391360);
            this.mPaintGraph.setStrokeWidth(2.0f);
            this.mPaintGraph.setStyle(style);
            Paint paint5 = new Paint();
            this.mTextPaint = paint5;
            paint5.setAntiAlias(true);
            this.mTextPaint.setColor(-13391360);
            this.mTextPaint.setTextSize(MotionLayout.this.getContext().getResources().getDisplayMetrics().density * 12.0f);
            this.mRectangle = new float[8];
            Paint paint6 = new Paint();
            this.mFillPaint = paint6;
            paint6.setAntiAlias(true);
            DashPathEffect dashPathEffect = new DashPathEffect(new float[]{4.0f, 8.0f}, 0.0f);
            this.mDashPathEffect = dashPathEffect;
            this.mPaintGraph.setPathEffect(dashPathEffect);
            this.mKeyFramePoints = new float[100];
            this.mPathMode = new int[50];
            if (this.mPresentationMode) {
                this.mPaint.setStrokeWidth(8.0f);
                this.mFillPaint.setStrokeWidth(8.0f);
                this.mPaintKeyframes.setStrokeWidth(8.0f);
                this.mShadowTranslate = 4;
            }
        }

        private void drawBasicPath(Canvas canvas) {
            canvas.drawLines(this.mPoints, this.mPaint);
        }

        private void drawPathAsConfigured(Canvas canvas) {
            boolean z9 = false;
            boolean z10 = false;
            for (int i10 = 0; i10 < this.mKeyFrameCount; i10++) {
                int i11 = this.mPathMode[i10];
                if (i11 == 1) {
                    z9 = true;
                }
                if (i11 == 0) {
                    z10 = true;
                }
            }
            if (z9) {
                drawPathRelative(canvas);
            }
            if (z10) {
                drawPathCartesian(canvas);
            }
        }

        private void drawPathCartesian(Canvas canvas) {
            float[] fArr = this.mPoints;
            float f8 = fArr[0];
            float f10 = fArr[1];
            float f11 = fArr[fArr.length - 2];
            float f12 = fArr[fArr.length - 1];
            canvas.drawLine(Math.min(f8, f11), Math.max(f10, f12), Math.max(f8, f11), Math.max(f10, f12), this.mPaintGraph);
            canvas.drawLine(Math.min(f8, f11), Math.min(f10, f12), Math.min(f8, f11), Math.max(f10, f12), this.mPaintGraph);
        }

        private void drawPathCartesianTicks(Canvas canvas, float f8, float f10) {
            float[] fArr = this.mPoints;
            float f11 = fArr[0];
            float f12 = fArr[1];
            float f13 = fArr[fArr.length - 2];
            float f14 = fArr[fArr.length - 1];
            float fMin = Math.min(f11, f13);
            float fMax = Math.max(f12, f14);
            float fMin2 = f8 - Math.min(f11, f13);
            float fMax2 = Math.max(f12, f14) - f10;
            String str = "" + (((int) (((double) ((fMin2 * 100.0f) / Math.abs(f13 - f11))) + 0.5d)) / 100.0f);
            getTextBounds(str, this.mTextPaint);
            canvas.drawText(str, ((fMin2 / 2.0f) - (this.mBounds.width() / 2)) + fMin, f10 - 20.0f, this.mTextPaint);
            canvas.drawLine(f8, f10, Math.min(f11, f13), f10, this.mPaintGraph);
            String str2 = "" + (((int) (((double) ((fMax2 * 100.0f) / Math.abs(f14 - f12))) + 0.5d)) / 100.0f);
            getTextBounds(str2, this.mTextPaint);
            canvas.drawText(str2, f8 + 5.0f, fMax - ((fMax2 / 2.0f) - (this.mBounds.height() / 2)), this.mTextPaint);
            canvas.drawLine(f8, f10, f8, Math.max(f12, f14), this.mPaintGraph);
        }

        private void drawPathRelative(Canvas canvas) {
            float[] fArr = this.mPoints;
            canvas.drawLine(fArr[0], fArr[1], fArr[fArr.length - 2], fArr[fArr.length - 1], this.mPaintGraph);
        }

        private void drawPathRelativeTicks(Canvas canvas, float f8, float f10) {
            float[] fArr = this.mPoints;
            float f11 = fArr[0];
            float f12 = fArr[1];
            float f13 = fArr[fArr.length - 2];
            float f14 = fArr[fArr.length - 1];
            float fHypot = (float) Math.hypot(f11 - f13, f12 - f14);
            float f15 = f13 - f11;
            float f16 = f14 - f12;
            float f17 = (((f10 - f12) * f16) + ((f8 - f11) * f15)) / (fHypot * fHypot);
            float f18 = f11 + (f15 * f17);
            float f19 = (f17 * f16) + f12;
            Path path = new Path();
            path.moveTo(f8, f10);
            path.lineTo(f18, f19);
            float fHypot2 = (float) Math.hypot(f18 - f8, f19 - f10);
            String str = "" + (((int) ((fHypot2 * 100.0f) / fHypot)) / 100.0f);
            getTextBounds(str, this.mTextPaint);
            canvas.drawTextOnPath(str, path, (fHypot2 / 2.0f) - (this.mBounds.width() / 2), -20.0f, this.mTextPaint);
            canvas.drawLine(f8, f10, f18, f19, this.mPaintGraph);
        }

        private void drawPathScreenTicks(Canvas canvas, float f8, float f10, int i10, int i11) {
            String str = "" + (((int) (((double) (((f8 - (i10 / 2)) * 100.0f) / (MotionLayout.this.getWidth() - i10))) + 0.5d)) / 100.0f);
            getTextBounds(str, this.mTextPaint);
            canvas.drawText(str, ((f8 / 2.0f) - (this.mBounds.width() / 2)) + 0.0f, f10 - 20.0f, this.mTextPaint);
            canvas.drawLine(f8, f10, Math.min(0.0f, 1.0f), f10, this.mPaintGraph);
            String str2 = "" + (((int) (((double) (((f10 - (i11 / 2)) * 100.0f) / (MotionLayout.this.getHeight() - i11))) + 0.5d)) / 100.0f);
            getTextBounds(str2, this.mTextPaint);
            canvas.drawText(str2, 5.0f + f8, 0.0f - ((f10 / 2.0f) - (this.mBounds.height() / 2)), this.mTextPaint);
            canvas.drawLine(f8, f10, f8, Math.max(0.0f, 1.0f), this.mPaintGraph);
        }

        private void drawRectangle(Canvas canvas, MotionController motionController) {
            this.mPath.reset();
            for (int i10 = 0; i10 <= 50; i10++) {
                motionController.buildRect(i10 / 50, this.mRectangle, 0);
                Path path = this.mPath;
                float[] fArr = this.mRectangle;
                path.moveTo(fArr[0], fArr[1]);
                Path path2 = this.mPath;
                float[] fArr2 = this.mRectangle;
                path2.lineTo(fArr2[2], fArr2[3]);
                Path path3 = this.mPath;
                float[] fArr3 = this.mRectangle;
                path3.lineTo(fArr3[4], fArr3[5]);
                Path path4 = this.mPath;
                float[] fArr4 = this.mRectangle;
                path4.lineTo(fArr4[6], fArr4[7]);
                this.mPath.close();
            }
            this.mPaint.setColor(1140850688);
            canvas.translate(2.0f, 2.0f);
            canvas.drawPath(this.mPath, this.mPaint);
            canvas.translate(-2.0f, -2.0f);
            this.mPaint.setColor(SupportMenu.CATEGORY_MASK);
            canvas.drawPath(this.mPath, this.mPaint);
        }

        private void drawTicks(Canvas canvas, int i10, int i11, MotionController motionController) {
            int width;
            int height;
            View view = motionController.mView;
            if (view != null) {
                width = view.getWidth();
                height = motionController.mView.getHeight();
            } else {
                width = 0;
                height = 0;
            }
            for (int i12 = 1; i12 < i11 - 1; i12++) {
                if (i10 != 4 || this.mPathMode[i12 - 1] != 0) {
                    float[] fArr = this.mKeyFramePoints;
                    int i13 = i12 * 2;
                    float f8 = fArr[i13];
                    float f10 = fArr[i13 + 1];
                    this.mPath.reset();
                    this.mPath.moveTo(f8, f10 + 10.0f);
                    this.mPath.lineTo(f8 + 10.0f, f10);
                    this.mPath.lineTo(f8, f10 - 10.0f);
                    this.mPath.lineTo(f8 - 10.0f, f10);
                    this.mPath.close();
                    int i14 = i12 - 1;
                    motionController.getKeyFrame(i14);
                    if (i10 == 4) {
                        int i15 = this.mPathMode[i14];
                        if (i15 == 1) {
                            drawPathRelativeTicks(canvas, f8 - 0.0f, f10 - 0.0f);
                        } else if (i15 == 0) {
                            drawPathCartesianTicks(canvas, f8 - 0.0f, f10 - 0.0f);
                        } else if (i15 == 2) {
                            drawPathScreenTicks(canvas, f8 - 0.0f, f10 - 0.0f, width, height);
                        }
                        canvas.drawPath(this.mPath, this.mFillPaint);
                    }
                    if (i10 == 2) {
                        drawPathRelativeTicks(canvas, f8 - 0.0f, f10 - 0.0f);
                    }
                    if (i10 == 3) {
                        drawPathCartesianTicks(canvas, f8 - 0.0f, f10 - 0.0f);
                    }
                    if (i10 == 6) {
                        drawPathScreenTicks(canvas, f8 - 0.0f, f10 - 0.0f, width, height);
                    }
                    canvas.drawPath(this.mPath, this.mFillPaint);
                }
            }
            float[] fArr2 = this.mPoints;
            if (fArr2.length > 1) {
                canvas.drawCircle(fArr2[0], fArr2[1], 8.0f, this.mPaintKeyframes);
                float[] fArr3 = this.mPoints;
                canvas.drawCircle(fArr3[fArr3.length - 2], fArr3[fArr3.length - 1], 8.0f, this.mPaintKeyframes);
            }
        }

        private void drawTranslation(Canvas canvas, float f8, float f10, float f11, float f12) {
            canvas.drawRect(f8, f10, f11, f12, this.mPaintGraph);
            canvas.drawLine(f8, f10, f11, f12, this.mPaintGraph);
        }

        public void draw(Canvas canvas, HashMap<View, MotionController> map, int i10, int i11) {
            if (map == null || map.size() == 0) {
                return;
            }
            canvas.save();
            if (!MotionLayout.this.isInEditMode() && (i11 & 1) == 2) {
                String str = MotionLayout.this.getContext().getResources().getResourceName(MotionLayout.this.mEndState) + ":" + MotionLayout.this.getProgress();
                canvas.drawText(str, 10.0f, MotionLayout.this.getHeight() - 30, this.mTextPaint);
                canvas.drawText(str, 11.0f, MotionLayout.this.getHeight() - 29, this.mPaint);
            }
            for (MotionController motionController : map.values()) {
                int drawPath = motionController.getDrawPath();
                if (i11 > 0 && drawPath == 0) {
                    drawPath = 1;
                }
                if (drawPath != 0) {
                    this.mKeyFrameCount = motionController.buildKeyFrames(this.mKeyFramePoints, this.mPathMode);
                    if (drawPath >= 1) {
                        int i12 = i10 / 16;
                        float[] fArr = this.mPoints;
                        if (fArr == null || fArr.length != i12 * 2) {
                            this.mPoints = new float[i12 * 2];
                            this.mPath = new Path();
                        }
                        int i13 = this.mShadowTranslate;
                        canvas.translate(i13, i13);
                        this.mPaint.setColor(1996488704);
                        this.mFillPaint.setColor(1996488704);
                        this.mPaintKeyframes.setColor(1996488704);
                        this.mPaintGraph.setColor(1996488704);
                        motionController.buildPath(this.mPoints, i12);
                        drawAll(canvas, drawPath, this.mKeyFrameCount, motionController);
                        this.mPaint.setColor(-21965);
                        this.mPaintKeyframes.setColor(-2067046);
                        this.mFillPaint.setColor(-2067046);
                        this.mPaintGraph.setColor(-13391360);
                        int i14 = this.mShadowTranslate;
                        canvas.translate(-i14, -i14);
                        drawAll(canvas, drawPath, this.mKeyFrameCount, motionController);
                        if (drawPath == 5) {
                            drawRectangle(canvas, motionController);
                        }
                    }
                }
            }
            canvas.restore();
        }

        public void drawAll(Canvas canvas, int i10, int i11, MotionController motionController) {
            if (i10 == 4) {
                drawPathAsConfigured(canvas);
            }
            if (i10 == 2) {
                drawPathRelative(canvas);
            }
            if (i10 == 3) {
                drawPathCartesian(canvas);
            }
            drawBasicPath(canvas);
            drawTicks(canvas, i10, i11, motionController);
        }

        public void getTextBounds(String str, Paint paint) {
            paint.getTextBounds(str, 0, str.length(), this.mBounds);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public class Model {
        int mEndId;
        int mStartId;
        ConstraintWidgetContainer mLayoutStart = new ConstraintWidgetContainer();
        ConstraintWidgetContainer mLayoutEnd = new ConstraintWidgetContainer();
        ConstraintSet mStart = null;
        ConstraintSet mEnd = null;

        public Model() {
        }

        private void computeStartEndSize(int i10, int i11) {
            int optimizationLevel = MotionLayout.this.getOptimizationLevel();
            MotionLayout motionLayout = MotionLayout.this;
            if (motionLayout.mCurrentState == motionLayout.getStartState()) {
                MotionLayout motionLayout2 = MotionLayout.this;
                ConstraintWidgetContainer constraintWidgetContainer = this.mLayoutEnd;
                ConstraintSet constraintSet = this.mEnd;
                motionLayout2.resolveSystem(constraintWidgetContainer, optimizationLevel, (constraintSet == null || constraintSet.mRotate == 0) ? i10 : i11, (constraintSet == null || constraintSet.mRotate == 0) ? i11 : i10);
                ConstraintSet constraintSet2 = this.mStart;
                if (constraintSet2 != null) {
                    MotionLayout motionLayout3 = MotionLayout.this;
                    ConstraintWidgetContainer constraintWidgetContainer2 = this.mLayoutStart;
                    int i12 = constraintSet2.mRotate;
                    int i13 = i12 == 0 ? i10 : i11;
                    if (i12 == 0) {
                        i10 = i11;
                    }
                    motionLayout3.resolveSystem(constraintWidgetContainer2, optimizationLevel, i13, i10);
                    return;
                }
                return;
            }
            ConstraintSet constraintSet3 = this.mStart;
            if (constraintSet3 != null) {
                MotionLayout motionLayout4 = MotionLayout.this;
                ConstraintWidgetContainer constraintWidgetContainer3 = this.mLayoutStart;
                int i14 = constraintSet3.mRotate;
                motionLayout4.resolveSystem(constraintWidgetContainer3, optimizationLevel, i14 == 0 ? i10 : i11, i14 == 0 ? i11 : i10);
            }
            MotionLayout motionLayout5 = MotionLayout.this;
            ConstraintWidgetContainer constraintWidgetContainer4 = this.mLayoutEnd;
            ConstraintSet constraintSet4 = this.mEnd;
            int i15 = (constraintSet4 == null || constraintSet4.mRotate == 0) ? i10 : i11;
            if (constraintSet4 == null || constraintSet4.mRotate == 0) {
                i10 = i11;
            }
            motionLayout5.resolveSystem(constraintWidgetContainer4, optimizationLevel, i15, i10);
        }

        private void debugLayout(String str, ConstraintWidgetContainer constraintWidgetContainer) {
            View view = (View) constraintWidgetContainer.getCompanionWidget();
            StringBuilder sbM172w = AbstractC0074a.m172w(str, " ");
            sbM172w.append(Debug.getName(view));
            String string = sbM172w.toString();
            Log.v(MotionLayout.TAG, string + "  ========= " + constraintWidgetContainer);
            int size = constraintWidgetContainer.getChildren().size();
            for (int i10 = 0; i10 < size; i10++) {
                String str2 = string + "[" + i10 + "] ";
                ConstraintWidget constraintWidget = constraintWidgetContainer.getChildren().get(i10);
                String strConcat = (constraintWidget.mTop.mTarget != null ? ExifInterface.GPS_DIRECTION_TRUE : "_").concat(constraintWidget.mBottom.mTarget != null ? "B" : "_").concat(constraintWidget.mLeft.mTarget != null ? "L" : "_").concat(constraintWidget.mRight.mTarget != null ? "R" : "_");
                View view2 = (View) constraintWidget.getCompanionWidget();
                String name = Debug.getName(view2);
                if (view2 instanceof TextView) {
                    StringBuilder sbM172w2 = AbstractC0074a.m172w(name, "(");
                    sbM172w2.append((Object) ((TextView) view2).getText());
                    sbM172w2.append(")");
                    name = sbM172w2.toString();
                }
                Log.v(MotionLayout.TAG, str2 + "  " + name + " " + constraintWidget + " " + strConcat);
            }
            Log.v(MotionLayout.TAG, string.concat(" done. "));
        }

        private void debugLayoutParam(String str, ConstraintLayout.LayoutParams layoutParams) {
            Log.v(MotionLayout.TAG, str + " ".concat(layoutParams.startToStart != -1 ? "SS" : "__").concat(layoutParams.startToEnd != -1 ? "|SE" : "|__").concat(layoutParams.endToStart != -1 ? "|ES" : "|__").concat(layoutParams.endToEnd != -1 ? "|EE" : "|__").concat(layoutParams.leftToLeft != -1 ? "|LL" : "|__").concat(layoutParams.leftToRight != -1 ? "|LR" : "|__").concat(layoutParams.rightToLeft != -1 ? "|RL" : "|__").concat(layoutParams.rightToRight != -1 ? "|RR" : "|__").concat(layoutParams.topToTop != -1 ? "|TT" : "|__").concat(layoutParams.topToBottom != -1 ? "|TB" : "|__").concat(layoutParams.bottomToTop != -1 ? "|BT" : "|__").concat(layoutParams.bottomToBottom != -1 ? "|BB" : "|__"));
        }

        private void debugWidget(String str, ConstraintWidget constraintWidget) {
            String strConcat;
            String strConcat2;
            String strConcat3;
            ConstraintAnchor constraintAnchor = constraintWidget.mTop.mTarget;
            String str2 = ExifInterface.GPS_DIRECTION_TRUE;
            String strConcat4 = "__";
            if (constraintAnchor != null) {
                strConcat = ExifInterface.GPS_DIRECTION_TRUE.concat(constraintAnchor.mType == ConstraintAnchor.Type.TOP ? ExifInterface.GPS_DIRECTION_TRUE : "B");
            } else {
                strConcat = "__";
            }
            String strConcat5 = " ".concat(strConcat);
            ConstraintAnchor constraintAnchor2 = constraintWidget.mBottom.mTarget;
            if (constraintAnchor2 != null) {
                if (constraintAnchor2.mType != ConstraintAnchor.Type.TOP) {
                    str2 = "B";
                }
                strConcat2 = "B".concat(str2);
            } else {
                strConcat2 = "__";
            }
            String strConcat6 = strConcat5.concat(strConcat2);
            ConstraintAnchor constraintAnchor3 = constraintWidget.mLeft.mTarget;
            if (constraintAnchor3 != null) {
                strConcat3 = "L".concat(constraintAnchor3.mType == ConstraintAnchor.Type.LEFT ? "L" : "R");
            } else {
                strConcat3 = "__";
            }
            String strConcat7 = strConcat6.concat(strConcat3);
            ConstraintAnchor constraintAnchor4 = constraintWidget.mRight.mTarget;
            if (constraintAnchor4 != null) {
                strConcat4 = "R".concat(constraintAnchor4.mType != ConstraintAnchor.Type.LEFT ? "R" : "L");
            }
            Log.v(MotionLayout.TAG, str + strConcat7.concat(strConcat4) + " ---  " + constraintWidget);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void setupConstraintWidget(ConstraintWidgetContainer constraintWidgetContainer, ConstraintSet constraintSet) {
            SparseArray<ConstraintWidget> sparseArray = new SparseArray<>();
            Constraints.LayoutParams layoutParams = new Constraints.LayoutParams(-2, -2);
            sparseArray.clear();
            int i10 = 0;
            sparseArray.put(0, constraintWidgetContainer);
            sparseArray.put(MotionLayout.this.getId(), constraintWidgetContainer);
            if (constraintSet != null && constraintSet.mRotate != 0) {
                MotionLayout motionLayout = MotionLayout.this;
                motionLayout.resolveSystem(this.mLayoutEnd, motionLayout.getOptimizationLevel(), View.MeasureSpec.makeMeasureSpec(MotionLayout.this.getHeight(), BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(MotionLayout.this.getWidth(), BasicMeasure.EXACTLY));
            }
            ArrayList<ConstraintWidget> children = constraintWidgetContainer.getChildren();
            int size = children.size();
            int i11 = 0;
            while (i11 < size) {
                ConstraintWidget constraintWidget = children.get(i11);
                i11++;
                ConstraintWidget constraintWidget2 = constraintWidget;
                constraintWidget2.setAnimated(true);
                sparseArray.put(((View) constraintWidget2.getCompanionWidget()).getId(), constraintWidget2);
            }
            ArrayList<ConstraintWidget> children2 = constraintWidgetContainer.getChildren();
            int size2 = children2.size();
            int i12 = 0;
            while (i12 < size2) {
                int i13 = i12 + 1;
                ConstraintWidget constraintWidget3 = children2.get(i12);
                View view = (View) constraintWidget3.getCompanionWidget();
                constraintSet.applyToLayoutParams(view.getId(), layoutParams);
                constraintWidget3.setWidth(constraintSet.getWidth(view.getId()));
                constraintWidget3.setHeight(constraintSet.getHeight(view.getId()));
                if (view instanceof ConstraintHelper) {
                    constraintSet.applyToHelper((ConstraintHelper) view, constraintWidget3, layoutParams, sparseArray);
                    if (view instanceof Barrier) {
                        ((Barrier) view).validateParams();
                    }
                }
                layoutParams.resolveLayoutDirection(MotionLayout.this.getLayoutDirection());
                MotionLayout.this.applyConstraintsFromLayoutParams(false, view, constraintWidget3, layoutParams, sparseArray);
                if (constraintSet.getVisibilityMode(view.getId()) == 1) {
                    constraintWidget3.setVisibility(view.getVisibility());
                } else {
                    constraintWidget3.setVisibility(constraintSet.getVisibility(view.getId()));
                }
                i12 = i13;
            }
            ArrayList<ConstraintWidget> children3 = constraintWidgetContainer.getChildren();
            int size3 = children3.size();
            while (i10 < size3) {
                ConstraintWidget constraintWidget4 = children3.get(i10);
                i10++;
                ConstraintWidget constraintWidget5 = constraintWidget4;
                if (constraintWidget5 instanceof VirtualLayout) {
                    ConstraintHelper constraintHelper = (ConstraintHelper) constraintWidget5.getCompanionWidget();
                    Helper helper = (Helper) constraintWidget5;
                    constraintHelper.updatePreLayout(constraintWidgetContainer, helper, sparseArray);
                    ((VirtualLayout) helper).captureWidgets();
                }
            }
        }

        /* JADX WARN: Code duplicated, block: B:24:0x00dd  */
        /* JADX WARN: Code duplicated, block: B:26:0x00e7  */
        /* JADX WARN: Code duplicated, block: B:27:0x00fd  */
        /* JADX WARN: Code duplicated, block: B:29:0x0101  */
        /* JADX WARN: Code duplicated, block: B:40:0x012f A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:42:0x012f A[SYNTHETIC] */
        /* JADX WARN: Instruction removed from duplicated block: B:29:0x0101, please report this as an issue */
        public void build() {
            String str;
            ConstraintWidget widget;
            MotionLayout motionLayout;
            int childCount = MotionLayout.this.getChildCount();
            MotionLayout.this.mFrameArrayList.clear();
            SparseArray sparseArray = new SparseArray();
            int[] iArr = new int[childCount];
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = MotionLayout.this.getChildAt(i10);
                MotionController motionController = new MotionController(childAt);
                int id = childAt.getId();
                iArr[i10] = id;
                sparseArray.put(id, motionController);
                MotionLayout.this.mFrameArrayList.put(childAt, motionController);
            }
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt2 = MotionLayout.this.getChildAt(i11);
                MotionController motionController2 = MotionLayout.this.mFrameArrayList.get(childAt2);
                if (motionController2 != null) {
                    if (this.mStart != null) {
                        ConstraintWidget widget2 = getWidget(this.mLayoutStart, childAt2);
                        MotionLayout motionLayout2 = MotionLayout.this;
                        if (widget2 != null) {
                            motionController2.setStartState(motionLayout2.toRect(widget2), this.mStart, MotionLayout.this.getWidth(), MotionLayout.this.getHeight());
                        } else if (motionLayout2.mDebugPath != 0) {
                            Log.e(MotionLayout.TAG, Debug.getLocation() + "no widget for  " + Debug.getName(childAt2) + " (" + childAt2.getClass().getName() + ")");
                        }
                    } else {
                        if (MotionLayout.this.mInRotation) {
                            ViewState viewState = MotionLayout.this.mPreRotate.get(childAt2);
                            MotionLayout motionLayout3 = MotionLayout.this;
                            int i12 = motionLayout3.mRotatMode;
                            int i13 = motionLayout3.mPreRotateWidth;
                            int i14 = MotionLayout.this.mPreRotateHeight;
                            str = MotionLayout.TAG;
                            motionController2.setStartState(viewState, childAt2, i12, i13, i14);
                        }
                        if (this.mEnd != null) {
                            widget = getWidget(this.mLayoutEnd, childAt2);
                            motionLayout = MotionLayout.this;
                            if (widget != null) {
                                motionController2.setEndState(motionLayout.toRect(widget), this.mEnd, MotionLayout.this.getWidth(), MotionLayout.this.getHeight());
                            } else if (motionLayout.mDebugPath != 0) {
                                Log.e(str, Debug.getLocation() + "no widget for  " + Debug.getName(childAt2) + " (" + childAt2.getClass().getName() + ")");
                            }
                        }
                    }
                    str = MotionLayout.TAG;
                    if (this.mEnd != null) {
                        widget = getWidget(this.mLayoutEnd, childAt2);
                        motionLayout = MotionLayout.this;
                        if (widget != null) {
                            motionController2.setEndState(motionLayout.toRect(widget), this.mEnd, MotionLayout.this.getWidth(), MotionLayout.this.getHeight());
                        } else if (motionLayout.mDebugPath != 0) {
                            Log.e(str, Debug.getLocation() + "no widget for  " + Debug.getName(childAt2) + " (" + childAt2.getClass().getName() + ")");
                        }
                    }
                }
            }
            for (int i15 = 0; i15 < childCount; i15++) {
                MotionController motionController3 = (MotionController) sparseArray.get(iArr[i15]);
                int animateRelativeTo = motionController3.getAnimateRelativeTo();
                if (animateRelativeTo != -1) {
                    motionController3.setupRelative((MotionController) sparseArray.get(animateRelativeTo));
                }
            }
        }

        public void copy(ConstraintWidgetContainer constraintWidgetContainer, ConstraintWidgetContainer constraintWidgetContainer2) {
            ConstraintWidget helperWidget;
            ArrayList<ConstraintWidget> children = constraintWidgetContainer.getChildren();
            HashMap<ConstraintWidget, ConstraintWidget> map = new HashMap<>();
            map.put(constraintWidgetContainer, constraintWidgetContainer2);
            constraintWidgetContainer2.getChildren().clear();
            constraintWidgetContainer2.copy(constraintWidgetContainer, map);
            int size = children.size();
            int i10 = 0;
            int i11 = 0;
            while (i11 < size) {
                ConstraintWidget constraintWidget = children.get(i11);
                i11++;
                ConstraintWidget constraintWidget2 = constraintWidget;
                if (constraintWidget2 instanceof androidx.constraintlayout.core.widgets.Barrier) {
                    helperWidget = new androidx.constraintlayout.core.widgets.Barrier();
                } else if (constraintWidget2 instanceof Guideline) {
                    helperWidget = new Guideline();
                } else if (constraintWidget2 instanceof Flow) {
                    helperWidget = new Flow();
                } else if (constraintWidget2 instanceof Placeholder) {
                    helperWidget = new Placeholder();
                } else {
                    helperWidget = constraintWidget2 instanceof Helper ? new HelperWidget() : new ConstraintWidget();
                }
                constraintWidgetContainer2.add(helperWidget);
                map.put(constraintWidget2, helperWidget);
            }
            int size2 = children.size();
            while (i10 < size2) {
                ConstraintWidget constraintWidget3 = children.get(i10);
                i10++;
                ConstraintWidget constraintWidget4 = constraintWidget3;
                map.get(constraintWidget4).copy(constraintWidget4, map);
            }
        }

        public ConstraintWidget getWidget(ConstraintWidgetContainer constraintWidgetContainer, View view) {
            if (constraintWidgetContainer.getCompanionWidget() == view) {
                return constraintWidgetContainer;
            }
            ArrayList<ConstraintWidget> children = constraintWidgetContainer.getChildren();
            int size = children.size();
            for (int i10 = 0; i10 < size; i10++) {
                ConstraintWidget constraintWidget = children.get(i10);
                if (constraintWidget.getCompanionWidget() == view) {
                    return constraintWidget;
                }
            }
            return null;
        }

        public void initFrom(ConstraintWidgetContainer constraintWidgetContainer, ConstraintSet constraintSet, ConstraintSet constraintSet2) {
            this.mStart = constraintSet;
            this.mEnd = constraintSet2;
            this.mLayoutStart = new ConstraintWidgetContainer();
            this.mLayoutEnd = new ConstraintWidgetContainer();
            this.mLayoutStart.setMeasurer(((ConstraintLayout) MotionLayout.this).mLayoutWidget.getMeasurer());
            this.mLayoutEnd.setMeasurer(((ConstraintLayout) MotionLayout.this).mLayoutWidget.getMeasurer());
            this.mLayoutStart.removeAllChildren();
            this.mLayoutEnd.removeAllChildren();
            copy(((ConstraintLayout) MotionLayout.this).mLayoutWidget, this.mLayoutStart);
            copy(((ConstraintLayout) MotionLayout.this).mLayoutWidget, this.mLayoutEnd);
            if (MotionLayout.this.mTransitionLastPosition > 0.5d) {
                if (constraintSet != null) {
                    setupConstraintWidget(this.mLayoutStart, constraintSet);
                }
                setupConstraintWidget(this.mLayoutEnd, constraintSet2);
            } else {
                setupConstraintWidget(this.mLayoutEnd, constraintSet2);
                if (constraintSet != null) {
                    setupConstraintWidget(this.mLayoutStart, constraintSet);
                }
            }
            this.mLayoutStart.setRtl(MotionLayout.this.isRtl());
            this.mLayoutStart.updateHierarchy();
            this.mLayoutEnd.setRtl(MotionLayout.this.isRtl());
            this.mLayoutEnd.updateHierarchy();
            ViewGroup.LayoutParams layoutParams = MotionLayout.this.getLayoutParams();
            if (layoutParams != null) {
                if (layoutParams.width == -2) {
                    ConstraintWidgetContainer constraintWidgetContainer2 = this.mLayoutStart;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    constraintWidgetContainer2.setHorizontalDimensionBehaviour(dimensionBehaviour);
                    this.mLayoutEnd.setHorizontalDimensionBehaviour(dimensionBehaviour);
                }
                if (layoutParams.height == -2) {
                    ConstraintWidgetContainer constraintWidgetContainer3 = this.mLayoutStart;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    constraintWidgetContainer3.setVerticalDimensionBehaviour(dimensionBehaviour2);
                    this.mLayoutEnd.setVerticalDimensionBehaviour(dimensionBehaviour2);
                }
            }
        }

        public boolean isNotConfiguredWith(int i10, int i11) {
            return (i10 == this.mStartId && i11 == this.mEndId) ? false : true;
        }

        public void measure(int i10, int i11) {
            int mode = View.MeasureSpec.getMode(i10);
            int mode2 = View.MeasureSpec.getMode(i11);
            MotionLayout motionLayout = MotionLayout.this;
            motionLayout.mWidthMeasureMode = mode;
            motionLayout.mHeightMeasureMode = mode2;
            computeStartEndSize(i10, i11);
            if (!(MotionLayout.this.getParent() instanceof MotionLayout) || mode != 1073741824 || mode2 != 1073741824) {
                computeStartEndSize(i10, i11);
                MotionLayout.this.mStartWrapWidth = this.mLayoutStart.getWidth();
                MotionLayout.this.mStartWrapHeight = this.mLayoutStart.getHeight();
                MotionLayout.this.mEndWrapWidth = this.mLayoutEnd.getWidth();
                MotionLayout.this.mEndWrapHeight = this.mLayoutEnd.getHeight();
                MotionLayout motionLayout2 = MotionLayout.this;
                motionLayout2.mMeasureDuringTransition = (motionLayout2.mStartWrapWidth == motionLayout2.mEndWrapWidth && motionLayout2.mStartWrapHeight == motionLayout2.mEndWrapHeight) ? false : true;
            }
            MotionLayout motionLayout3 = MotionLayout.this;
            int i12 = motionLayout3.mStartWrapWidth;
            int i13 = motionLayout3.mStartWrapHeight;
            int i14 = motionLayout3.mWidthMeasureMode;
            if (i14 == Integer.MIN_VALUE || i14 == 0) {
                i12 = (int) ((motionLayout3.mPostInterpolationPosition * (motionLayout3.mEndWrapWidth - i12)) + i12);
            }
            int i15 = i12;
            int i16 = motionLayout3.mHeightMeasureMode;
            if (i16 == Integer.MIN_VALUE || i16 == 0) {
                i13 = (int) ((motionLayout3.mPostInterpolationPosition * (motionLayout3.mEndWrapHeight - i13)) + i13);
            }
            MotionLayout.this.resolveMeasuredDimension(i10, i11, i15, i13, this.mLayoutStart.isWidthMeasuredTooSmall() || this.mLayoutEnd.isWidthMeasuredTooSmall(), this.mLayoutStart.isHeightMeasuredTooSmall() || this.mLayoutEnd.isHeightMeasuredTooSmall());
        }

        public void reEvaluateState() {
            measure(MotionLayout.this.mLastWidthMeasureSpec, MotionLayout.this.mLastHeightMeasureSpec);
            MotionLayout.this.setupMotionViews();
        }

        public void setMeasuredId(int i10, int i11) {
            this.mStartId = i10;
            this.mEndId = i11;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public interface MotionTracker {
        void addMovement(MotionEvent motionEvent);

        void clear();

        void computeCurrentVelocity(int i10);

        void computeCurrentVelocity(int i10, float f8);

        float getXVelocity();

        float getXVelocity(int i10);

        float getYVelocity();

        float getYVelocity(int i10);

        void recycle();
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public class StateCache {
        float mProgress = Float.NaN;
        float mVelocity = Float.NaN;
        int mStartState = -1;
        int mEndState = -1;
        final String mKeyProgress = "motion.progress";
        final String mKeyVelocity = "motion.velocity";
        final String mKeyStartState = "motion.StartState";
        final String mKeyEndState = "motion.EndState";

        public StateCache() {
        }

        public void apply() {
            int i10 = this.mStartState;
            if (i10 != -1 || this.mEndState != -1) {
                if (i10 == -1) {
                    MotionLayout.this.transitionToState(this.mEndState);
                } else {
                    int i11 = this.mEndState;
                    MotionLayout motionLayout = MotionLayout.this;
                    if (i11 == -1) {
                        motionLayout.setState(i10, -1, -1);
                    } else {
                        motionLayout.setTransition(i10, i11);
                    }
                }
                MotionLayout.this.setState(TransitionState.SETUP);
            }
            if (Float.isNaN(this.mVelocity)) {
                if (Float.isNaN(this.mProgress)) {
                    return;
                }
                MotionLayout.this.setProgress(this.mProgress);
            } else {
                MotionLayout.this.setProgress(this.mProgress, this.mVelocity);
                this.mProgress = Float.NaN;
                this.mVelocity = Float.NaN;
                this.mStartState = -1;
                this.mEndState = -1;
            }
        }

        public Bundle getTransitionState() {
            Bundle bundle = new Bundle();
            bundle.putFloat("motion.progress", this.mProgress);
            bundle.putFloat("motion.velocity", this.mVelocity);
            bundle.putInt("motion.StartState", this.mStartState);
            bundle.putInt("motion.EndState", this.mEndState);
            return bundle;
        }

        public void recordState() {
            this.mEndState = MotionLayout.this.mEndState;
            this.mStartState = MotionLayout.this.mBeginState;
            this.mVelocity = MotionLayout.this.getVelocity();
            this.mProgress = MotionLayout.this.getProgress();
        }

        public void setEndState(int i10) {
            this.mEndState = i10;
        }

        public void setProgress(float f8) {
            this.mProgress = f8;
        }

        public void setStartState(int i10) {
            this.mStartState = i10;
        }

        public void setTransitionState(Bundle bundle) {
            this.mProgress = bundle.getFloat("motion.progress");
            this.mVelocity = bundle.getFloat("motion.velocity");
            this.mStartState = bundle.getInt("motion.StartState");
            this.mEndState = bundle.getInt("motion.EndState");
        }

        public void setVelocity(float f8) {
            this.mVelocity = f8;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public interface TransitionListener {
        void onTransitionChange(MotionLayout motionLayout, int i10, int i11, float f8);

        void onTransitionCompleted(MotionLayout motionLayout, int i10);

        void onTransitionStarted(MotionLayout motionLayout, int i10, int i11);

        void onTransitionTrigger(MotionLayout motionLayout, int i10, boolean z9, float f8);
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public enum TransitionState {
        UNDEFINED,
        SETUP,
        MOVING,
        FINISHED
    }

    public MotionLayout(@NonNull Context context) {
        super(context);
        this.mProgressInterpolator = null;
        this.mLastVelocity = 0.0f;
        this.mBeginState = -1;
        this.mCurrentState = -1;
        this.mEndState = -1;
        this.mLastWidthMeasureSpec = 0;
        this.mLastHeightMeasureSpec = 0;
        this.mInteractionEnabled = true;
        this.mFrameArrayList = new HashMap<>();
        this.mAnimationStartTime = 0L;
        this.mTransitionDuration = 1.0f;
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mTransitionGoalPosition = 0.0f;
        this.mInTransition = false;
        this.mIndirectTransition = false;
        this.mDebugPath = 0;
        this.mTemporalInterpolator = false;
        this.mStopLogic = new StopLogic();
        this.mDecelerateLogic = new DecelerateInterpolator();
        this.mFirstDown = true;
        this.mUndergoingMotion = false;
        this.mKeepAnimating = false;
        this.mOnShowHelpers = null;
        this.mOnHideHelpers = null;
        this.mDecoratorsHelpers = null;
        this.mTransitionListeners = null;
        this.mFrames = 0;
        this.mLastDrawTime = -1L;
        this.mLastFps = 0.0f;
        this.mListenerState = 0;
        this.mListenerPosition = 0.0f;
        this.mIsAnimating = false;
        this.mMeasureDuringTransition = false;
        this.mKeyCache = new KeyCache();
        this.mInLayout = false;
        this.mOnComplete = null;
        this.mScheduledTransitionTo = null;
        this.mScheduledTransitions = 0;
        this.mInRotation = false;
        this.mRotatMode = 0;
        this.mPreRotate = new HashMap<>();
        this.mTempRect = new Rect();
        this.mDelayedApply = false;
        this.mTransitionState = TransitionState.UNDEFINED;
        this.mModel = new Model();
        this.mNeedsFireTransitionCompleted = false;
        this.mBoundsCheck = new RectF();
        this.mRegionView = null;
        this.mInverseMatrix = null;
        this.mTransitionCompleted = new ArrayList<>();
        init(null);
    }

    private boolean callTransformedTouchEvent(View view, MotionEvent motionEvent, float f8, float f10) {
        Matrix matrix = view.getMatrix();
        if (matrix.isIdentity()) {
            motionEvent.offsetLocation(f8, f10);
            boolean zOnTouchEvent = view.onTouchEvent(motionEvent);
            motionEvent.offsetLocation(-f8, -f10);
            return zOnTouchEvent;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        motionEventObtain.offsetLocation(f8, f10);
        if (this.mInverseMatrix == null) {
            this.mInverseMatrix = new Matrix();
        }
        matrix.invert(this.mInverseMatrix);
        motionEventObtain.transform(this.mInverseMatrix);
        boolean zOnTouchEvent2 = view.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
        return zOnTouchEvent2;
    }

    private void checkStructure() {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            Log.e(TAG, "CHECK: motion scene not set! set \"app:layoutDescription=\"@xml/file\"");
            return;
        }
        int startId = motionScene.getStartId();
        MotionScene motionScene2 = this.mScene;
        checkStructure(startId, motionScene2.getConstraintSet(motionScene2.getStartId()));
        SparseIntArray sparseIntArray = new SparseIntArray();
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        ArrayList<MotionScene.Transition> definedTransitions = this.mScene.getDefinedTransitions();
        int size = definedTransitions.size();
        int i10 = 0;
        while (i10 < size) {
            MotionScene.Transition transition = definedTransitions.get(i10);
            i10++;
            MotionScene.Transition transition2 = transition;
            if (transition2 == this.mScene.mCurrentTransition) {
                Log.v(TAG, "CHECK: CURRENT");
            }
            checkStructure(transition2);
            int startConstraintSetId = transition2.getStartConstraintSetId();
            int endConstraintSetId = transition2.getEndConstraintSetId();
            String name = Debug.getName(getContext(), startConstraintSetId);
            String name2 = Debug.getName(getContext(), endConstraintSetId);
            if (sparseIntArray.get(startConstraintSetId) == endConstraintSetId) {
                Log.e(TAG, "CHECK: two transitions with the same start and end " + name + "->" + name2);
            }
            if (sparseIntArray2.get(endConstraintSetId) == startConstraintSetId) {
                Log.e(TAG, "CHECK: you can't have reverse transitions" + name + "->" + name2);
            }
            sparseIntArray.put(startConstraintSetId, endConstraintSetId);
            sparseIntArray2.put(endConstraintSetId, startConstraintSetId);
            if (this.mScene.getConstraintSet(startConstraintSetId) == null) {
                Log.e(TAG, " no such constraintSetStart " + name);
            }
            if (this.mScene.getConstraintSet(endConstraintSetId) == null) {
                Log.e(TAG, " no such constraintSetEnd " + name);
            }
        }
    }

    private void computeCurrentPositions() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            MotionController motionController = this.mFrameArrayList.get(childAt);
            if (motionController != null) {
                motionController.setStartCurrentState(childAt);
            }
        }
    }

    private void debugPos() {
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            Log.v(TAG, " " + Debug.getLocation() + " " + Debug.getName(this) + " " + Debug.getName(getContext(), this.mCurrentState) + " " + Debug.getName(childAt) + childAt.getLeft() + " " + childAt.getTop());
        }
    }

    private void evaluateLayout() {
        boolean z9;
        float fSignum = Math.signum(this.mTransitionGoalPosition - this.mTransitionLastPosition);
        long nanoTime = getNanoTime();
        Interpolator interpolator = this.mInterpolator;
        float interpolation = this.mTransitionLastPosition + (!(interpolator instanceof StopLogic) ? (((nanoTime - this.mTransitionLastTime) * fSignum) * 1.0E-9f) / this.mTransitionDuration : 0.0f);
        if (this.mTransitionInstantly) {
            interpolation = this.mTransitionGoalPosition;
        }
        if ((fSignum <= 0.0f || interpolation < this.mTransitionGoalPosition) && (fSignum > 0.0f || interpolation > this.mTransitionGoalPosition)) {
            z9 = false;
        } else {
            interpolation = this.mTransitionGoalPosition;
            z9 = true;
        }
        if (interpolator != null && !z9) {
            interpolation = this.mTemporalInterpolator ? interpolator.getInterpolation((nanoTime - this.mAnimationStartTime) * 1.0E-9f) : interpolator.getInterpolation(interpolation);
        }
        if ((fSignum > 0.0f && interpolation >= this.mTransitionGoalPosition) || (fSignum <= 0.0f && interpolation <= this.mTransitionGoalPosition)) {
            interpolation = this.mTransitionGoalPosition;
        }
        this.mPostInterpolationPosition = interpolation;
        int childCount = getChildCount();
        long nanoTime2 = getNanoTime();
        Interpolator interpolator2 = this.mProgressInterpolator;
        if (interpolator2 != null) {
            interpolation = interpolator2.getInterpolation(interpolation);
        }
        float f8 = interpolation;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            MotionController motionController = this.mFrameArrayList.get(childAt);
            if (motionController != null) {
                motionController.interpolate(childAt, f8, nanoTime2, this.mKeyCache);
            }
        }
        if (this.mMeasureDuringTransition) {
            requestLayout();
        }
    }

    private void fireTransitionChange() {
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList;
        if ((this.mTransitionListener == null && ((copyOnWriteArrayList = this.mTransitionListeners) == null || copyOnWriteArrayList.isEmpty())) || this.mListenerPosition == this.mTransitionPosition) {
            return;
        }
        if (this.mListenerState != -1) {
            fireTransitionStarted();
            this.mIsAnimating = true;
        }
        this.mListenerState = -1;
        float f8 = this.mTransitionPosition;
        this.mListenerPosition = f8;
        TransitionListener transitionListener = this.mTransitionListener;
        if (transitionListener != null) {
            transitionListener.onTransitionChange(this, this.mBeginState, this.mEndState, f8);
        }
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList2 = this.mTransitionListeners;
        if (copyOnWriteArrayList2 != null) {
            Iterator<TransitionListener> it = copyOnWriteArrayList2.iterator();
            while (it.hasNext()) {
                it.next().onTransitionChange(this, this.mBeginState, this.mEndState, this.mTransitionPosition);
            }
        }
        this.mIsAnimating = true;
    }

    private void fireTransitionStarted() {
        TransitionListener transitionListener = this.mTransitionListener;
        if (transitionListener != null) {
            transitionListener.onTransitionStarted(this, this.mBeginState, this.mEndState);
        }
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList = this.mTransitionListeners;
        if (copyOnWriteArrayList != null) {
            Iterator<TransitionListener> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                it.next().onTransitionStarted(this, this.mBeginState, this.mEndState);
            }
        }
    }

    private boolean handlesTouchEvent(float f8, float f10, View view, MotionEvent motionEvent) {
        boolean z9;
        if (!(view instanceof ViewGroup)) {
            z9 = false;
            break;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount() - 1;
        while (true) {
            if (childCount < 0) {
                z9 = false;
                break;
            }
            View childAt = viewGroup.getChildAt(childCount);
            if (handlesTouchEvent((childAt.getLeft() + f8) - view.getScrollX(), (childAt.getTop() + f10) - view.getScrollY(), childAt, motionEvent)) {
                z9 = true;
                break;
            }
            childCount--;
        }
        if (!z9) {
            this.mBoundsCheck.set(f8, f10, (view.getRight() + f8) - view.getLeft(), (view.getBottom() + f10) - view.getTop());
            if ((motionEvent.getAction() != 0 || this.mBoundsCheck.contains(motionEvent.getX(), motionEvent.getY())) && callTransformedTouchEvent(view, motionEvent, -f8, -f10)) {
                return true;
            }
        }
        return z9;
    }

    private void init(AttributeSet attributeSet) {
        MotionScene motionScene;
        IS_IN_EDIT_MODE = isInEditMode();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0306R.styleable.MotionLayout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            boolean z9 = true;
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == C0306R.styleable.MotionLayout_layoutDescription) {
                    this.mScene = new MotionScene(getContext(), this, typedArrayObtainStyledAttributes.getResourceId(index, -1));
                } else if (index == C0306R.styleable.MotionLayout_currentState) {
                    this.mCurrentState = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                } else if (index == C0306R.styleable.MotionLayout_motionProgress) {
                    this.mTransitionGoalPosition = typedArrayObtainStyledAttributes.getFloat(index, 0.0f);
                    this.mInTransition = true;
                } else if (index == C0306R.styleable.MotionLayout_applyMotionScene) {
                    z9 = typedArrayObtainStyledAttributes.getBoolean(index, z9);
                } else if (index == C0306R.styleable.MotionLayout_showPaths) {
                    if (this.mDebugPath == 0) {
                        this.mDebugPath = typedArrayObtainStyledAttributes.getBoolean(index, false) ? 2 : 0;
                    }
                } else if (index == C0306R.styleable.MotionLayout_motionDebug) {
                    this.mDebugPath = typedArrayObtainStyledAttributes.getInt(index, 0);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            if (this.mScene == null) {
                Log.e(TAG, "WARNING NO app:layoutDescription tag");
            }
            if (!z9) {
                this.mScene = null;
            }
        }
        if (this.mDebugPath != 0) {
            checkStructure();
        }
        if (this.mCurrentState != -1 || (motionScene = this.mScene) == null) {
            return;
        }
        this.mCurrentState = motionScene.getStartId();
        this.mBeginState = this.mScene.getStartId();
        this.mEndState = this.mScene.getEndId();
    }

    private void processTransitionCompleted() {
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList;
        if (this.mTransitionListener == null && ((copyOnWriteArrayList = this.mTransitionListeners) == null || copyOnWriteArrayList.isEmpty())) {
            return;
        }
        int i10 = 0;
        this.mIsAnimating = false;
        ArrayList<Integer> arrayList = this.mTransitionCompleted;
        int size = arrayList.size();
        while (i10 < size) {
            Integer num = arrayList.get(i10);
            i10++;
            Integer num2 = num;
            TransitionListener transitionListener = this.mTransitionListener;
            if (transitionListener != null) {
                transitionListener.onTransitionCompleted(this, num2.intValue());
            }
            CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList2 = this.mTransitionListeners;
            if (copyOnWriteArrayList2 != null) {
                Iterator<TransitionListener> it = copyOnWriteArrayList2.iterator();
                while (it.hasNext()) {
                    it.next().onTransitionCompleted(this, num2.intValue());
                }
            }
        }
        this.mTransitionCompleted.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupMotionViews() {
        int childCount = getChildCount();
        this.mModel.build();
        this.mInTransition = true;
        SparseArray sparseArray = new SparseArray();
        int i10 = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            sparseArray.put(childAt.getId(), this.mFrameArrayList.get(childAt));
        }
        int width = getWidth();
        int height = getHeight();
        int iGatPathMotionArc = this.mScene.gatPathMotionArc();
        if (iGatPathMotionArc != -1) {
            for (int i12 = 0; i12 < childCount; i12++) {
                MotionController motionController = this.mFrameArrayList.get(getChildAt(i12));
                if (motionController != null) {
                    motionController.setPathMotionArc(iGatPathMotionArc);
                }
            }
        }
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        int[] iArr = new int[this.mFrameArrayList.size()];
        int i13 = 0;
        for (int i14 = 0; i14 < childCount; i14++) {
            MotionController motionController2 = this.mFrameArrayList.get(getChildAt(i14));
            if (motionController2.getAnimateRelativeTo() != -1) {
                sparseBooleanArray.put(motionController2.getAnimateRelativeTo(), true);
                iArr[i13] = motionController2.getAnimateRelativeTo();
                i13++;
            }
        }
        if (this.mDecoratorsHelpers != null) {
            for (int i15 = 0; i15 < i13; i15++) {
                MotionController motionController3 = this.mFrameArrayList.get(findViewById(iArr[i15]));
                if (motionController3 != null) {
                    this.mScene.getKeyFrames(motionController3);
                }
            }
            ArrayList<MotionHelper> arrayList = this.mDecoratorsHelpers;
            int size = arrayList.size();
            int i16 = 0;
            while (i16 < size) {
                MotionHelper motionHelper = arrayList.get(i16);
                i16++;
                motionHelper.onPreSetup(this, this.mFrameArrayList);
            }
            for (int i17 = 0; i17 < i13; i17++) {
                MotionController motionController4 = this.mFrameArrayList.get(findViewById(iArr[i17]));
                if (motionController4 != null) {
                    motionController4.setup(width, height, this.mTransitionDuration, getNanoTime());
                }
            }
        } else {
            for (int i18 = 0; i18 < i13; i18++) {
                MotionController motionController5 = this.mFrameArrayList.get(findViewById(iArr[i18]));
                if (motionController5 != null) {
                    this.mScene.getKeyFrames(motionController5);
                    motionController5.setup(width, height, this.mTransitionDuration, getNanoTime());
                }
            }
        }
        for (int i19 = 0; i19 < childCount; i19++) {
            View childAt2 = getChildAt(i19);
            MotionController motionController6 = this.mFrameArrayList.get(childAt2);
            if (!sparseBooleanArray.get(childAt2.getId()) && motionController6 != null) {
                this.mScene.getKeyFrames(motionController6);
                motionController6.setup(width, height, this.mTransitionDuration, getNanoTime());
            }
        }
        float staggered = this.mScene.getStaggered();
        if (staggered != 0.0f) {
            boolean z9 = ((double) staggered) < 0.0d;
            float fAbs = Math.abs(staggered);
            float fMax = -3.4028235E38f;
            float fMin = Float.MAX_VALUE;
            float fMax2 = -3.4028235E38f;
            float fMin2 = Float.MAX_VALUE;
            for (int i20 = 0; i20 < childCount; i20++) {
                MotionController motionController7 = this.mFrameArrayList.get(getChildAt(i20));
                if (!Float.isNaN(motionController7.mMotionStagger)) {
                    for (int i21 = 0; i21 < childCount; i21++) {
                        MotionController motionController8 = this.mFrameArrayList.get(getChildAt(i21));
                        if (!Float.isNaN(motionController8.mMotionStagger)) {
                            fMin = Math.min(fMin, motionController8.mMotionStagger);
                            fMax = Math.max(fMax, motionController8.mMotionStagger);
                        }
                    }
                    while (i10 < childCount) {
                        MotionController motionController9 = this.mFrameArrayList.get(getChildAt(i10));
                        if (!Float.isNaN(motionController9.mMotionStagger)) {
                            motionController9.mStaggerScale = 1.0f / (1.0f - fAbs);
                            float f8 = motionController9.mMotionStagger;
                            if (z9) {
                                motionController9.mStaggerOffset = fAbs - (((fMax - f8) / (fMax - fMin)) * fAbs);
                            } else {
                                motionController9.mStaggerOffset = fAbs - (((f8 - fMin) * fAbs) / (fMax - fMin));
                            }
                        }
                        i10++;
                    }
                    return;
                }
                float finalX = motionController7.getFinalX();
                float finalY = motionController7.getFinalY();
                float f10 = z9 ? finalY - finalX : finalY + finalX;
                fMin2 = Math.min(fMin2, f10);
                fMax2 = Math.max(fMax2, f10);
            }
            while (i10 < childCount) {
                MotionController motionController10 = this.mFrameArrayList.get(getChildAt(i10));
                float finalX2 = motionController10.getFinalX();
                float finalY2 = motionController10.getFinalY();
                float f11 = z9 ? finalY2 - finalX2 : finalY2 + finalX2;
                motionController10.mStaggerScale = 1.0f / (1.0f - fAbs);
                motionController10.mStaggerOffset = fAbs - (((f11 - fMin2) * fAbs) / (fMax2 - fMin2));
                i10++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect toRect(ConstraintWidget constraintWidget) {
        this.mTempRect.top = constraintWidget.getY();
        this.mTempRect.left = constraintWidget.getX();
        Rect rect = this.mTempRect;
        int width = constraintWidget.getWidth();
        Rect rect2 = this.mTempRect;
        rect.right = width + rect2.left;
        int height = constraintWidget.getHeight();
        Rect rect3 = this.mTempRect;
        rect2.bottom = height + rect3.top;
        return rect3;
    }

    private static boolean willJump(float f8, float f10, float f11) {
        if (f8 > 0.0f) {
            float f12 = f8 / f11;
            return ((f8 * f12) - (((f11 * f12) * f12) / 2.0f)) + f10 > 1.0f;
        }
        float f13 = (-f8) / f11;
        return ((((f11 * f13) * f13) / 2.0f) + (f8 * f13)) + f10 < 0.0f;
    }

    public void addTransitionListener(TransitionListener transitionListener) {
        if (this.mTransitionListeners == null) {
            this.mTransitionListeners = new CopyOnWriteArrayList<>();
        }
        this.mTransitionListeners.add(transitionListener);
    }

    public void animateTo(float f8) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return;
        }
        float f10 = this.mTransitionLastPosition;
        float f11 = this.mTransitionPosition;
        if (f10 != f11 && this.mTransitionInstantly) {
            this.mTransitionLastPosition = f11;
        }
        float f12 = this.mTransitionLastPosition;
        if (f12 == f8) {
            return;
        }
        this.mTemporalInterpolator = false;
        this.mTransitionGoalPosition = f8;
        this.mTransitionDuration = motionScene.getDuration() / 1000.0f;
        setProgress(this.mTransitionGoalPosition);
        this.mInterpolator = null;
        this.mProgressInterpolator = this.mScene.getInterpolator();
        this.mTransitionInstantly = false;
        this.mAnimationStartTime = getNanoTime();
        this.mInTransition = true;
        this.mTransitionPosition = f12;
        this.mTransitionLastPosition = f12;
        invalidate();
    }

    public boolean applyViewTransition(int i10, MotionController motionController) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            return motionScene.applyViewTransition(i10, motionController);
        }
        return false;
    }

    public ConstraintSet cloneConstraintSet(int i10) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return null;
        }
        ConstraintSet constraintSet = motionScene.getConstraintSet(i10);
        ConstraintSet constraintSet2 = new ConstraintSet();
        constraintSet2.clone(constraintSet);
        return constraintSet2;
    }

    public void disableAutoTransition(boolean z9) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return;
        }
        motionScene.disableAutoTransition(z9);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        ViewTransitionController viewTransitionController;
        ArrayList<MotionHelper> arrayList = this.mDecoratorsHelpers;
        int i10 = 0;
        if (arrayList != null) {
            int size = arrayList.size();
            int i11 = 0;
            while (i11 < size) {
                MotionHelper motionHelper = arrayList.get(i11);
                i11++;
                motionHelper.onPreDraw(canvas);
            }
        }
        evaluate(false);
        MotionScene motionScene = this.mScene;
        if (motionScene != null && (viewTransitionController = motionScene.mViewTransitionController) != null) {
            viewTransitionController.animate();
        }
        super.dispatchDraw(canvas);
        if (this.mScene == null) {
            return;
        }
        if ((this.mDebugPath & 1) == 1 && !isInEditMode()) {
            this.mFrames++;
            long nanoTime = getNanoTime();
            long j10 = this.mLastDrawTime;
            if (j10 != -1) {
                long j11 = nanoTime - j10;
                if (j11 > 200000000) {
                    this.mLastFps = ((int) ((this.mFrames / (j11 * 1.0E-9f)) * 100.0f)) / 100.0f;
                    this.mFrames = 0;
                    this.mLastDrawTime = nanoTime;
                }
            } else {
                this.mLastDrawTime = nanoTime;
            }
            Paint paint = new Paint();
            paint.setTextSize(42.0f);
            float progress = ((int) (getProgress() * 1000.0f)) / 10.0f;
            StringBuilder sbM170u = AbstractC0074a.m170u(this.mLastFps + " fps " + Debug.getState(this, this.mBeginState) + " -> ");
            sbM170u.append(Debug.getState(this, this.mEndState));
            sbM170u.append(" (progress: ");
            sbM170u.append(progress);
            sbM170u.append(" ) state=");
            int i12 = this.mCurrentState;
            sbM170u.append(i12 == -1 ? "undefined" : Debug.getState(this, i12));
            String string = sbM170u.toString();
            paint.setColor(ViewCompat.MEASURED_STATE_MASK);
            canvas.drawText(string, 11.0f, getHeight() - 29, paint);
            paint.setColor(-7864184);
            canvas.drawText(string, 10.0f, getHeight() - 30, paint);
        }
        if (this.mDebugPath > 1) {
            if (this.mDevModeDraw == null) {
                this.mDevModeDraw = new DevModeDraw();
            }
            this.mDevModeDraw.draw(canvas, this.mFrameArrayList, this.mScene.getDuration(), this.mDebugPath);
        }
        ArrayList<MotionHelper> arrayList2 = this.mDecoratorsHelpers;
        if (arrayList2 != null) {
            int size2 = arrayList2.size();
            while (i10 < size2) {
                MotionHelper motionHelper2 = arrayList2.get(i10);
                i10++;
                motionHelper2.onPostDraw(canvas);
            }
        }
    }

    public void enableTransition(int i10, boolean z9) {
        MotionScene.Transition transition = getTransition(i10);
        if (z9) {
            transition.setEnabled(true);
            return;
        }
        MotionScene motionScene = this.mScene;
        if (transition == motionScene.mCurrentTransition) {
            for (MotionScene.Transition transition2 : motionScene.getTransitionsWithState(this.mCurrentState)) {
                if (transition2.isEnabled()) {
                    this.mScene.mCurrentTransition = transition2;
                    break;
                }
            }
        }
        transition.setEnabled(false);
    }

    public void enableViewTransition(int i10, boolean z9) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            motionScene.enableViewTransition(i10, z9);
        }
    }

    public void endTrigger(boolean z9) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            MotionController motionController = this.mFrameArrayList.get(getChildAt(i10));
            if (motionController != null) {
                motionController.endTrigger(z9);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:117:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:127:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:129:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:143:0x0219  */
    /* JADX WARN: Code duplicated, block: B:180:0x018d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x00e2 A[PHI: r3
  0x00e2: PHI (r3v50 float) = (r3v49 float), (r3v51 float), (r3v51 float) binds: [B:47:0x00ae, B:58:0x00d6, B:60:0x00da] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:72:0x0111  */
    /* JADX WARN: Code duplicated, block: B:74:0x0118  */
    /* JADX WARN: Code duplicated, block: B:86:0x0136  */
    /* JADX WARN: Code duplicated, block: B:89:0x014d  */
    /* JADX WARN: Code duplicated, block: B:90:0x0150  */
    /* JADX WARN: Code duplicated, block: B:93:0x015a  */
    /* JADX WARN: Code duplicated, block: B:96:0x0171  */
    /* JADX WARN: Code duplicated, block: B:98:0x0180  */
    public void evaluate(boolean z9) {
        boolean z10;
        char c;
        int childCount;
        long nanoTime;
        Interpolator interpolator;
        float interpolation;
        Interpolator interpolator2;
        int i10;
        int i11;
        int i12;
        int i13;
        View childAt;
        MotionController motionController;
        boolean z11;
        if (this.mTransitionLastTime == -1) {
            this.mTransitionLastTime = getNanoTime();
        }
        float f8 = this.mTransitionLastPosition;
        if (f8 > 0.0f && f8 < 1.0f) {
            this.mCurrentState = -1;
        }
        boolean z12 = false;
        if (this.mKeepAnimating || (this.mInTransition && (z9 || this.mTransitionGoalPosition != f8))) {
            float fSignum = Math.signum(this.mTransitionGoalPosition - f8);
            long nanoTime2 = getNanoTime();
            Interpolator interpolator3 = this.mInterpolator;
            float f10 = !(interpolator3 instanceof MotionInterpolator) ? (((nanoTime2 - this.mTransitionLastTime) * fSignum) * 1.0E-9f) / this.mTransitionDuration : 0.0f;
            float f11 = this.mTransitionLastPosition + f10;
            if (this.mTransitionInstantly) {
                f11 = this.mTransitionGoalPosition;
            }
            if ((fSignum <= 0.0f || f11 < this.mTransitionGoalPosition) && (fSignum > 0.0f || f11 > this.mTransitionGoalPosition)) {
                z10 = false;
            } else {
                f11 = this.mTransitionGoalPosition;
                this.mInTransition = false;
                z10 = true;
            }
            this.mTransitionLastPosition = f11;
            this.mTransitionPosition = f11;
            this.mTransitionLastTime = nanoTime2;
            if (interpolator3 == null || z10) {
                this.mLastVelocity = f10;
            } else {
                if (this.mTemporalInterpolator) {
                    float interpolation2 = interpolator3.getInterpolation((nanoTime2 - this.mAnimationStartTime) * 1.0E-9f);
                    Interpolator interpolator4 = this.mInterpolator;
                    StopLogic stopLogic = this.mStopLogic;
                    c = interpolator4 == stopLogic ? stopLogic.isStopped() ? (char) 2 : (char) 1 : (char) 0;
                    this.mTransitionLastPosition = interpolation2;
                    this.mTransitionLastTime = nanoTime2;
                    Interpolator interpolator5 = this.mInterpolator;
                    if (interpolator5 instanceof MotionInterpolator) {
                        float velocity = ((MotionInterpolator) interpolator5).getVelocity();
                        this.mLastVelocity = velocity;
                        if (Math.abs(velocity) * this.mTransitionDuration <= EPSILON && c == 2) {
                            this.mInTransition = false;
                        }
                        if (velocity > 0.0f && interpolation2 >= 1.0f) {
                            this.mTransitionLastPosition = 1.0f;
                            this.mInTransition = false;
                            interpolation2 = 1.0f;
                        }
                        if (velocity >= 0.0f || interpolation2 > 0.0f) {
                            f11 = interpolation2;
                        } else {
                            this.mTransitionLastPosition = 0.0f;
                            this.mInTransition = false;
                            f11 = 0.0f;
                        }
                    } else {
                        f11 = interpolation2;
                    }
                } else {
                    float interpolation3 = interpolator3.getInterpolation(f11);
                    Interpolator interpolator6 = this.mInterpolator;
                    if (interpolator6 instanceof MotionInterpolator) {
                        this.mLastVelocity = ((MotionInterpolator) interpolator6).getVelocity();
                    } else {
                        this.mLastVelocity = ((interpolator6.getInterpolation(f11 + f10) - interpolation3) * fSignum) / f10;
                    }
                    f11 = interpolation3;
                }
                if (Math.abs(this.mLastVelocity) > EPSILON) {
                    setState(TransitionState.MOVING);
                }
                if (c != 1) {
                    if ((fSignum <= 0.0f && f11 >= this.mTransitionGoalPosition) || (fSignum <= 0.0f && f11 <= this.mTransitionGoalPosition)) {
                        f11 = this.mTransitionGoalPosition;
                        this.mInTransition = false;
                    }
                    if (f11 < 1.0f || f11 <= 0.0f) {
                        this.mInTransition = false;
                        setState(TransitionState.FINISHED);
                    }
                }
                childCount = getChildCount();
                this.mKeepAnimating = false;
                nanoTime = getNanoTime();
                this.mPostInterpolationPosition = f11;
                interpolator = this.mProgressInterpolator;
                if (interpolator == null) {
                    interpolation = f11;
                } else {
                    interpolation = interpolator.getInterpolation(f11);
                }
                interpolator2 = this.mProgressInterpolator;
                if (interpolator2 != null) {
                    float interpolation4 = interpolator2.getInterpolation((fSignum / this.mTransitionDuration) + f11);
                    this.mLastVelocity = interpolation4;
                    this.mLastVelocity = interpolation4 - this.mProgressInterpolator.getInterpolation(f11);
                }
                for (i10 = 0; i10 < childCount; i10++) {
                    childAt = getChildAt(i10);
                    motionController = this.mFrameArrayList.get(childAt);
                    if (motionController != null) {
                        this.mKeepAnimating |= motionController.interpolate(childAt, interpolation, nanoTime, this.mKeyCache);
                    }
                }
                boolean z13 = (fSignum <= 0.0f && f11 >= this.mTransitionGoalPosition) || (fSignum <= 0.0f && f11 <= this.mTransitionGoalPosition);
                if (!this.mKeepAnimating && !this.mInTransition && z13) {
                    setState(TransitionState.FINISHED);
                }
                if (this.mMeasureDuringTransition) {
                    requestLayout();
                }
                this.mKeepAnimating = (!z13) | this.mKeepAnimating;
                if (f11 <= 0.0f && (i13 = this.mBeginState) != -1 && this.mCurrentState != i13) {
                    this.mCurrentState = i13;
                    this.mScene.getConstraintSet(i13).applyCustomAttributes(this);
                    setState(TransitionState.FINISHED);
                    z12 = true;
                }
                if (f11 >= 1.0d) {
                    i11 = this.mCurrentState;
                    i12 = this.mEndState;
                    if (i11 != i12) {
                        this.mCurrentState = i12;
                        this.mScene.getConstraintSet(i12).applyCustomAttributes(this);
                        setState(TransitionState.FINISHED);
                        z12 = true;
                    }
                }
                if (!this.mKeepAnimating || this.mInTransition) {
                    invalidate();
                } else if ((fSignum > 0.0f && f11 == 1.0f) || (fSignum < 0.0f && f11 == 0.0f)) {
                    setState(TransitionState.FINISHED);
                }
                if (!this.mKeepAnimating && !this.mInTransition && ((fSignum > 0.0f && f11 == 1.0f) || (fSignum < 0.0f && f11 == 0.0f))) {
                    onNewStateAttachHandlers();
                }
            }
            c = 0;
            if (Math.abs(this.mLastVelocity) > EPSILON) {
                setState(TransitionState.MOVING);
            }
            if (c != 1) {
                if (fSignum <= 0.0f) {
                    f11 = this.mTransitionGoalPosition;
                    this.mInTransition = false;
                } else {
                    f11 = this.mTransitionGoalPosition;
                    this.mInTransition = false;
                }
                if (f11 < 1.0f) {
                    this.mInTransition = false;
                    setState(TransitionState.FINISHED);
                } else {
                    this.mInTransition = false;
                    setState(TransitionState.FINISHED);
                }
            }
            childCount = getChildCount();
            this.mKeepAnimating = false;
            nanoTime = getNanoTime();
            this.mPostInterpolationPosition = f11;
            interpolator = this.mProgressInterpolator;
            if (interpolator == null) {
                interpolation = f11;
            } else {
                interpolation = interpolator.getInterpolation(f11);
            }
            interpolator2 = this.mProgressInterpolator;
            if (interpolator2 != null) {
                float interpolation5 = interpolator2.getInterpolation((fSignum / this.mTransitionDuration) + f11);
                this.mLastVelocity = interpolation5;
                this.mLastVelocity = interpolation5 - this.mProgressInterpolator.getInterpolation(f11);
            }
            while (i10 < childCount) {
                childAt = getChildAt(i10);
                motionController = this.mFrameArrayList.get(childAt);
                if (motionController != null) {
                    this.mKeepAnimating |= motionController.interpolate(childAt, interpolation, nanoTime, this.mKeyCache);
                }
            }
            if (fSignum <= 0.0f) {
            }
            if (!this.mKeepAnimating) {
                setState(TransitionState.FINISHED);
            }
            if (this.mMeasureDuringTransition) {
                requestLayout();
            }
            this.mKeepAnimating = (!z13) | this.mKeepAnimating;
            if (f11 <= 0.0f) {
                this.mCurrentState = i13;
                this.mScene.getConstraintSet(i13).applyCustomAttributes(this);
                setState(TransitionState.FINISHED);
                z12 = true;
            }
            if (f11 >= 1.0d) {
                i11 = this.mCurrentState;
                i12 = this.mEndState;
                if (i11 != i12) {
                    this.mCurrentState = i12;
                    this.mScene.getConstraintSet(i12).applyCustomAttributes(this);
                    setState(TransitionState.FINISHED);
                    z12 = true;
                }
            }
            if (this.mKeepAnimating) {
                invalidate();
            } else {
                invalidate();
            }
            if (!this.mKeepAnimating) {
                onNewStateAttachHandlers();
            }
        }
        float f12 = this.mTransitionLastPosition;
        if (f12 < 1.0f) {
            if (f12 <= 0.0f) {
                int i14 = this.mCurrentState;
                int i15 = this.mBeginState;
                z11 = i14 == i15 ? z12 : true;
                this.mCurrentState = i15;
            }
            this.mNeedsFireTransitionCompleted |= z12;
            if (z12 && !this.mInLayout) {
                requestLayout();
            }
            this.mTransitionPosition = this.mTransitionLastPosition;
        }
        int i16 = this.mCurrentState;
        int i17 = this.mEndState;
        z11 = i16 == i17 ? z12 : true;
        this.mCurrentState = i17;
        z12 = z11;
        this.mNeedsFireTransitionCompleted |= z12;
        if (z12) {
            requestLayout();
        }
        this.mTransitionPosition = this.mTransitionLastPosition;
    }

    public void fireTransitionCompleted() {
        int iIntValue;
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList;
        if ((this.mTransitionListener != null || ((copyOnWriteArrayList = this.mTransitionListeners) != null && !copyOnWriteArrayList.isEmpty())) && this.mListenerState == -1) {
            this.mListenerState = this.mCurrentState;
            if (this.mTransitionCompleted.isEmpty()) {
                iIntValue = -1;
            } else {
                ArrayList<Integer> arrayList = this.mTransitionCompleted;
                iIntValue = arrayList.get(arrayList.size() - 1).intValue();
            }
            int i10 = this.mCurrentState;
            if (iIntValue != i10 && i10 != -1) {
                this.mTransitionCompleted.add(Integer.valueOf(i10));
            }
        }
        processTransitionCompleted();
        Runnable runnable = this.mOnComplete;
        if (runnable != null) {
            runnable.run();
            this.mOnComplete = null;
        }
        int[] iArr = this.mScheduledTransitionTo;
        if (iArr == null || this.mScheduledTransitions <= 0) {
            return;
        }
        transitionToState(iArr[0]);
        int[] iArr2 = this.mScheduledTransitionTo;
        System.arraycopy(iArr2, 1, iArr2, 0, iArr2.length - 1);
        this.mScheduledTransitions--;
    }

    public void fireTrigger(int i10, boolean z9, float f8) {
        TransitionListener transitionListener = this.mTransitionListener;
        if (transitionListener != null) {
            transitionListener.onTransitionTrigger(this, i10, z9, f8);
        }
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList = this.mTransitionListeners;
        if (copyOnWriteArrayList != null) {
            Iterator<TransitionListener> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                it.next().onTransitionTrigger(this, i10, z9, f8);
            }
        }
    }

    public void getAnchorDpDt(int i10, float f8, float f10, float f11, float[] fArr) {
        HashMap<View, MotionController> map = this.mFrameArrayList;
        View viewById = getViewById(i10);
        MotionController motionController = map.get(viewById);
        if (motionController != null) {
            motionController.getDpDt(f8, f10, f11, fArr);
            float y9 = viewById.getY();
            this.mLastPos = f8;
            this.mLastY = y9;
            return;
        }
        Log.w(TAG, "WARNING could not find view id " + (viewById == null ? AbstractC0074a.m154e(i10, "") : viewById.getContext().getResources().getResourceName(i10)));
    }

    public ConstraintSet getConstraintSet(int i10) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return null;
        }
        return motionScene.getConstraintSet(i10);
    }

    @IdRes
    public int[] getConstraintSetIds() {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return null;
        }
        return motionScene.getConstraintSetIds();
    }

    public String getConstraintSetNames(int i10) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return null;
        }
        return motionScene.lookUpConstraintName(i10);
    }

    public int getCurrentState() {
        return this.mCurrentState;
    }

    public ArrayList<MotionScene.Transition> getDefinedTransitions() {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return null;
        }
        return motionScene.getDefinedTransitions();
    }

    public DesignTool getDesignTool() {
        if (this.mDesignTool == null) {
            this.mDesignTool = new DesignTool(this);
        }
        return this.mDesignTool;
    }

    public int getEndState() {
        return this.mEndState;
    }

    public int[] getMatchingConstraintSetIds(String... strArr) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return null;
        }
        return motionScene.getMatchingStateLabels(strArr);
    }

    public MotionController getMotionController(int i10) {
        return this.mFrameArrayList.get(findViewById(i10));
    }

    public long getNanoTime() {
        return System.nanoTime();
    }

    public float getProgress() {
        return this.mTransitionLastPosition;
    }

    public MotionScene getScene() {
        return this.mScene;
    }

    public int getStartState() {
        return this.mBeginState;
    }

    public float getTargetPosition() {
        return this.mTransitionGoalPosition;
    }

    public MotionScene.Transition getTransition(int i10) {
        return this.mScene.getTransitionById(i10);
    }

    public Bundle getTransitionState() {
        if (this.mStateCache == null) {
            this.mStateCache = new StateCache();
        }
        this.mStateCache.recordState();
        return this.mStateCache.getTransitionState();
    }

    public long getTransitionTimeMs() {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            this.mTransitionDuration = motionScene.getDuration() / 1000.0f;
        }
        return (long) (this.mTransitionDuration * 1000.0f);
    }

    public float getVelocity() {
        return this.mLastVelocity;
    }

    public void getViewVelocity(View view, float f8, float f10, float[] fArr, int i10) {
        float interpolation;
        float[] fArr2;
        float velocity = this.mLastVelocity;
        float f11 = this.mTransitionLastPosition;
        if (this.mInterpolator != null) {
            float fSignum = Math.signum(this.mTransitionGoalPosition - f11);
            float interpolation2 = this.mInterpolator.getInterpolation(this.mTransitionLastPosition + EPSILON);
            interpolation = this.mInterpolator.getInterpolation(this.mTransitionLastPosition);
            velocity = (((interpolation2 - interpolation) / EPSILON) * fSignum) / this.mTransitionDuration;
        } else {
            interpolation = f11;
        }
        Interpolator interpolator = this.mInterpolator;
        if (interpolator instanceof MotionInterpolator) {
            velocity = ((MotionInterpolator) interpolator).getVelocity();
        }
        MotionController motionController = this.mFrameArrayList.get(view);
        if ((i10 & 1) == 0) {
            fArr2 = fArr;
            motionController.getPostLayoutDvDp(interpolation, view.getWidth(), view.getHeight(), f8, f10, fArr2);
        } else {
            fArr2 = fArr;
            motionController.getDpDt(interpolation, f8, f10, fArr2);
        }
        if (i10 < 2) {
            fArr2[0] = fArr2[0] * velocity;
            fArr2[1] = fArr2[1] * velocity;
        }
    }

    public boolean isDelayedApplicationOfInitialState() {
        return this.mDelayedApply;
    }

    public boolean isInRotation() {
        return this.mInRotation;
    }

    public boolean isInteractionEnabled() {
        return this.mInteractionEnabled;
    }

    public boolean isViewTransitionEnabled(int i10) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            return motionScene.isViewTransitionEnabled(i10);
        }
        return false;
    }

    public void jumpToState(int i10) {
        if (!isAttachedToWindow()) {
            this.mCurrentState = i10;
        }
        if (this.mBeginState == i10) {
            setProgress(0.0f);
        } else if (this.mEndState == i10) {
            setProgress(1.0f);
        } else {
            setTransition(i10, i10);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void loadLayoutDescription(int i10) {
        MotionScene.Transition transition;
        if (i10 == 0) {
            this.mScene = null;
            return;
        }
        try {
            MotionScene motionScene = new MotionScene(getContext(), this, i10);
            this.mScene = motionScene;
            if (this.mCurrentState == -1) {
                this.mCurrentState = motionScene.getStartId();
                this.mBeginState = this.mScene.getStartId();
                this.mEndState = this.mScene.getEndId();
            }
            if (!isAttachedToWindow()) {
                this.mScene = null;
                return;
            }
            try {
                Display display = getDisplay();
                int i11 = 0;
                this.mPreviouseRotation = display == null ? 0 : display.getRotation();
                MotionScene motionScene2 = this.mScene;
                if (motionScene2 != null) {
                    ConstraintSet constraintSet = motionScene2.getConstraintSet(this.mCurrentState);
                    this.mScene.readFallback(this);
                    ArrayList<MotionHelper> arrayList = this.mDecoratorsHelpers;
                    if (arrayList != null) {
                        int size = arrayList.size();
                        while (i11 < size) {
                            MotionHelper motionHelper = arrayList.get(i11);
                            i11++;
                            motionHelper.onFinishedMotionScene(this);
                        }
                    }
                    if (constraintSet != null) {
                        constraintSet.applyTo(this);
                    }
                    this.mBeginState = this.mCurrentState;
                }
                onNewStateAttachHandlers();
                StateCache stateCache = this.mStateCache;
                if (stateCache != null) {
                    if (this.mDelayedApply) {
                        post(new Runnable() { // from class: androidx.constraintlayout.motion.widget.MotionLayout.1
                            @Override // java.lang.Runnable
                            public void run() {
                                MotionLayout.this.mStateCache.apply();
                            }
                        });
                        return;
                    } else {
                        stateCache.apply();
                        return;
                    }
                }
                MotionScene motionScene3 = this.mScene;
                if (motionScene3 == null || (transition = motionScene3.mCurrentTransition) == null || transition.getAutoTransition() != 4) {
                    return;
                }
                transitionToEnd();
                setState(TransitionState.SETUP);
                setState(TransitionState.MOVING);
            } catch (Exception e) {
                throw new IllegalArgumentException("unable to parse MotionScene file", e);
            }
        } catch (Exception e6) {
            throw new IllegalArgumentException("unable to parse MotionScene file", e6);
        }
    }

    public int lookUpConstraintId(String str) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return 0;
        }
        return motionScene.lookUpConstraintId(str);
    }

    public MotionTracker obtainVelocityTracker() {
        return MyTracker.obtain();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        MotionScene.Transition transition;
        int i10;
        super.onAttachedToWindow();
        Display display = getDisplay();
        if (display != null) {
            this.mPreviouseRotation = display.getRotation();
        }
        MotionScene motionScene = this.mScene;
        if (motionScene != null && (i10 = this.mCurrentState) != -1) {
            ConstraintSet constraintSet = motionScene.getConstraintSet(i10);
            this.mScene.readFallback(this);
            ArrayList<MotionHelper> arrayList = this.mDecoratorsHelpers;
            if (arrayList != null) {
                int size = arrayList.size();
                int i11 = 0;
                while (i11 < size) {
                    MotionHelper motionHelper = arrayList.get(i11);
                    i11++;
                    motionHelper.onFinishedMotionScene(this);
                }
            }
            if (constraintSet != null) {
                constraintSet.applyTo(this);
            }
            this.mBeginState = this.mCurrentState;
        }
        onNewStateAttachHandlers();
        StateCache stateCache = this.mStateCache;
        if (stateCache != null) {
            if (this.mDelayedApply) {
                post(new Runnable() { // from class: androidx.constraintlayout.motion.widget.MotionLayout.4
                    @Override // java.lang.Runnable
                    public void run() {
                        MotionLayout.this.mStateCache.apply();
                    }
                });
                return;
            } else {
                stateCache.apply();
                return;
            }
        }
        MotionScene motionScene2 = this.mScene;
        if (motionScene2 == null || (transition = motionScene2.mCurrentTransition) == null || transition.getAutoTransition() != 4) {
            return;
        }
        transitionToEnd();
        setState(TransitionState.SETUP);
        setState(TransitionState.MOVING);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        TouchResponse touchResponse;
        int touchRegionId;
        RectF touchRegion;
        MotionScene motionScene = this.mScene;
        if (motionScene != null && this.mInteractionEnabled) {
            ViewTransitionController viewTransitionController = motionScene.mViewTransitionController;
            if (viewTransitionController != null) {
                viewTransitionController.touchEvent(motionEvent);
            }
            MotionScene.Transition transition = this.mScene.mCurrentTransition;
            if (transition != null && transition.isEnabled() && (touchResponse = transition.getTouchResponse()) != null && ((motionEvent.getAction() != 0 || (touchRegion = touchResponse.getTouchRegion(this, new RectF())) == null || touchRegion.contains(motionEvent.getX(), motionEvent.getY())) && (touchRegionId = touchResponse.getTouchRegionId()) != -1)) {
                View view = this.mRegionView;
                if (view == null || view.getId() != touchRegionId) {
                    this.mRegionView = findViewById(touchRegionId);
                }
                View view2 = this.mRegionView;
                if (view2 != null) {
                    this.mBoundsCheck.set(view2.getLeft(), this.mRegionView.getTop(), this.mRegionView.getRight(), this.mRegionView.getBottom());
                    if (this.mBoundsCheck.contains(motionEvent.getX(), motionEvent.getY()) && !handlesTouchEvent(this.mRegionView.getLeft(), this.mRegionView.getTop(), this.mRegionView, motionEvent)) {
                        return onTouchEvent(motionEvent);
                    }
                }
            }
        }
        return false;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z9, int i10, int i11, int i12, int i13) throws Throwable {
        MotionLayout motionLayout;
        this.mInLayout = true;
        try {
            if (this.mScene == null) {
                super.onLayout(z9, i10, i11, i12, i13);
                this.mInLayout = false;
                return;
            }
            motionLayout = this;
            int i14 = i12 - i10;
            int i15 = i13 - i11;
            try {
                if (motionLayout.mLastLayoutWidth != i14 || motionLayout.mLastLayoutHeight != i15) {
                    rebuildScene();
                    evaluate(true);
                }
                motionLayout.mLastLayoutWidth = i14;
                motionLayout.mLastLayoutHeight = i15;
                motionLayout.mOldWidth = i14;
                motionLayout.mOldHeight = i15;
                motionLayout.mInLayout = false;
                return;
            } catch (Throwable th) {
                th = th;
            }
        } catch (Throwable th2) {
            th = th2;
            motionLayout = this;
        }
        Throwable th3 = th;
        motionLayout.mInLayout = false;
        throw th3;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        if (this.mScene == null) {
            super.onMeasure(i10, i11);
            return;
        }
        boolean z9 = false;
        boolean z10 = (this.mLastWidthMeasureSpec == i10 && this.mLastHeightMeasureSpec == i11) ? false : true;
        if (this.mNeedsFireTransitionCompleted) {
            this.mNeedsFireTransitionCompleted = false;
            onNewStateAttachHandlers();
            processTransitionCompleted();
            z10 = true;
        }
        if (this.mDirtyHierarchy) {
            z10 = true;
        }
        this.mLastWidthMeasureSpec = i10;
        this.mLastHeightMeasureSpec = i11;
        int startId = this.mScene.getStartId();
        int endId = this.mScene.getEndId();
        if ((z10 || this.mModel.isNotConfiguredWith(startId, endId)) && this.mBeginState != -1) {
            super.onMeasure(i10, i11);
            this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(startId), this.mScene.getConstraintSet(endId));
            this.mModel.reEvaluateState();
            this.mModel.setMeasuredId(startId, endId);
        } else {
            if (z10) {
                super.onMeasure(i10, i11);
            }
            z9 = true;
        }
        if (this.mMeasureDuringTransition || z9) {
            int paddingBottom = getPaddingBottom() + getPaddingTop();
            int width = this.mLayoutWidget.getWidth() + getPaddingRight() + getPaddingLeft();
            int height = this.mLayoutWidget.getHeight() + paddingBottom;
            int i12 = this.mWidthMeasureMode;
            if (i12 == Integer.MIN_VALUE || i12 == 0) {
                int i13 = this.mStartWrapWidth;
                width = (int) ((this.mPostInterpolationPosition * (this.mEndWrapWidth - i13)) + i13);
                requestLayout();
            }
            int i14 = this.mHeightMeasureMode;
            if (i14 == Integer.MIN_VALUE || i14 == 0) {
                int i15 = this.mStartWrapHeight;
                height = (int) ((this.mPostInterpolationPosition * (this.mEndWrapHeight - i15)) + i15);
                requestLayout();
            }
            setMeasuredDimension(width, height);
        }
        evaluateLayout();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(@NonNull View view, float f8, float f10, boolean z9) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(@NonNull View view, float f8, float f10) {
        return false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedPreScroll(@NonNull final View view, int i10, int i11, @NonNull int[] iArr, int i12) {
        MotionScene.Transition transition;
        TouchResponse touchResponse;
        int touchRegionId;
        MotionScene motionScene = this.mScene;
        if (motionScene == null || (transition = motionScene.mCurrentTransition) == null || !transition.isEnabled()) {
            return;
        }
        int i13 = -1;
        if (!transition.isEnabled() || (touchResponse = transition.getTouchResponse()) == null || (touchRegionId = touchResponse.getTouchRegionId()) == -1 || view.getId() == touchRegionId) {
            if (motionScene.getMoveWhenScrollAtTop()) {
                TouchResponse touchResponse2 = transition.getTouchResponse();
                if (touchResponse2 != null && (touchResponse2.getFlags() & 4) != 0) {
                    i13 = i11;
                }
                float f8 = this.mTransitionPosition;
                if ((f8 == 1.0f || f8 == 0.0f) && view.canScrollVertically(i13)) {
                    return;
                }
            }
            if (transition.getTouchResponse() != null && (transition.getTouchResponse().getFlags() & 1) != 0) {
                float progressDirection = motionScene.getProgressDirection(i10, i11);
                float f10 = this.mTransitionLastPosition;
                if ((f10 <= 0.0f && progressDirection < 0.0f) || (f10 >= 1.0f && progressDirection > 0.0f)) {
                    view.setNestedScrollingEnabled(false);
                    view.post(new Runnable() { // from class: androidx.constraintlayout.motion.widget.MotionLayout.3
                        @Override // java.lang.Runnable
                        public void run() {
                            view.setNestedScrollingEnabled(true);
                        }
                    });
                    return;
                }
            }
            float f11 = this.mTransitionPosition;
            long nanoTime = getNanoTime();
            float f12 = i10;
            this.mScrollTargetDX = f12;
            float f13 = i11;
            this.mScrollTargetDY = f13;
            this.mScrollTargetDT = (float) ((nanoTime - this.mScrollTargetTime) * 1.0E-9d);
            this.mScrollTargetTime = nanoTime;
            motionScene.processScrollMove(f12, f13);
            if (f11 != this.mTransitionPosition) {
                iArr[0] = i10;
                iArr[1] = i11;
            }
            evaluate(false);
            if (iArr[0] == 0 && iArr[1] == 0) {
                return;
            }
            this.mUndergoingMotion = true;
        }
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public void onNestedScroll(@NonNull View view, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
        if (this.mUndergoingMotion || i10 != 0 || i11 != 0) {
            iArr[0] = iArr[0] + i12;
            iArr[1] = iArr[1] + i13;
        }
        this.mUndergoingMotion = false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int i10, int i11) {
        this.mScrollTargetTime = getNanoTime();
        this.mScrollTargetDT = 0.0f;
        this.mScrollTargetDX = 0.0f;
        this.mScrollTargetDY = 0.0f;
    }

    public void onNewStateAttachHandlers() {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return;
        }
        if (motionScene.autoTransition(this, this.mCurrentState)) {
            requestLayout();
            return;
        }
        int i10 = this.mCurrentState;
        if (i10 != -1) {
            this.mScene.addOnClickListeners(this, i10);
        }
        if (this.mScene.supportTouch()) {
            this.mScene.setupTouch();
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i10) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            motionScene.setRtl(isRtl());
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public boolean onStartNestedScroll(@NonNull View view, @NonNull View view2, int i10, int i11) {
        MotionScene.Transition transition;
        MotionScene motionScene = this.mScene;
        return (motionScene == null || (transition = motionScene.mCurrentTransition) == null || transition.getTouchResponse() == null || (this.mScene.mCurrentTransition.getTouchResponse().getFlags() & 2) != 0) ? false : true;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onStopNestedScroll(@NonNull View view, int i10) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            float f8 = this.mScrollTargetDT;
            if (f8 == 0.0f) {
                return;
            }
            motionScene.processScrollUp(this.mScrollTargetDX / f8, this.mScrollTargetDY / f8);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null || !this.mInteractionEnabled || !motionScene.supportTouch()) {
            return super.onTouchEvent(motionEvent);
        }
        MotionScene.Transition transition = this.mScene.mCurrentTransition;
        if (transition != null && !transition.isEnabled()) {
            return super.onTouchEvent(motionEvent);
        }
        this.mScene.processTouchEvent(motionEvent, getCurrentState(), this);
        if (this.mScene.mCurrentTransition.isTransitionFlag(4)) {
            return this.mScene.mCurrentTransition.getTouchResponse().isDragStarted();
        }
        return true;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        if (view instanceof MotionHelper) {
            MotionHelper motionHelper = (MotionHelper) view;
            if (this.mTransitionListeners == null) {
                this.mTransitionListeners = new CopyOnWriteArrayList<>();
            }
            this.mTransitionListeners.add(motionHelper);
            if (motionHelper.isUsedOnShow()) {
                if (this.mOnShowHelpers == null) {
                    this.mOnShowHelpers = new ArrayList<>();
                }
                this.mOnShowHelpers.add(motionHelper);
            }
            if (motionHelper.isUseOnHide()) {
                if (this.mOnHideHelpers == null) {
                    this.mOnHideHelpers = new ArrayList<>();
                }
                this.mOnHideHelpers.add(motionHelper);
            }
            if (motionHelper.isDecorator()) {
                if (this.mDecoratorsHelpers == null) {
                    this.mDecoratorsHelpers = new ArrayList<>();
                }
                this.mDecoratorsHelpers.add(motionHelper);
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        ArrayList<MotionHelper> arrayList = this.mOnShowHelpers;
        if (arrayList != null) {
            arrayList.remove(view);
        }
        ArrayList<MotionHelper> arrayList2 = this.mOnHideHelpers;
        if (arrayList2 != null) {
            arrayList2.remove(view);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void parseLayoutDescription(int i10) {
        this.mConstraintLayoutSpec = null;
    }

    @Deprecated
    public void rebuildMotion() {
        Log.e(TAG, "This method is deprecated. Please call rebuildScene() instead.");
        rebuildScene();
    }

    public void rebuildScene() {
        this.mModel.reEvaluateState();
        invalidate();
    }

    public boolean removeTransitionListener(TransitionListener transitionListener) {
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList = this.mTransitionListeners;
        if (copyOnWriteArrayList == null) {
            return false;
        }
        return copyOnWriteArrayList.remove(transitionListener);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View, android.view.ViewParent
    public void requestLayout() {
        MotionScene motionScene;
        MotionScene.Transition transition;
        if (!this.mMeasureDuringTransition && this.mCurrentState == -1 && (motionScene = this.mScene) != null && (transition = motionScene.mCurrentTransition) != null) {
            int layoutDuringTransition = transition.getLayoutDuringTransition();
            if (layoutDuringTransition == 0) {
                return;
            }
            if (layoutDuringTransition == 2) {
                int childCount = getChildCount();
                for (int i10 = 0; i10 < childCount; i10++) {
                    this.mFrameArrayList.get(getChildAt(i10)).remeasure();
                }
                return;
            }
        }
        super.requestLayout();
    }

    public void rotateTo(int i10, int i11) {
        this.mInRotation = true;
        this.mPreRotateWidth = getWidth();
        this.mPreRotateHeight = getHeight();
        int rotation = getDisplay().getRotation();
        this.mRotatMode = (rotation + 1) % 4 <= (this.mPreviouseRotation + 1) % 4 ? 2 : 1;
        this.mPreviouseRotation = rotation;
        int childCount = getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            ViewState viewState = this.mPreRotate.get(childAt);
            if (viewState == null) {
                viewState = new ViewState();
                this.mPreRotate.put(childAt, viewState);
            }
            viewState.getState(childAt);
        }
        this.mBeginState = -1;
        this.mEndState = i10;
        this.mScene.setTransition(-1, i10);
        this.mModel.initFrom(this.mLayoutWidget, null, this.mScene.getConstraintSet(this.mEndState));
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        invalidate();
        transitionToEnd(new Runnable() { // from class: androidx.constraintlayout.motion.widget.MotionLayout.2
            @Override // java.lang.Runnable
            public void run() {
                MotionLayout.this.mInRotation = false;
            }
        });
        if (i11 > 0) {
            this.mTransitionDuration = i11 / 1000.0f;
        }
    }

    public void scheduleTransitionTo(int i10) {
        if (getCurrentState() == -1) {
            transitionToState(i10);
            return;
        }
        int[] iArr = this.mScheduledTransitionTo;
        if (iArr == null) {
            this.mScheduledTransitionTo = new int[4];
        } else if (iArr.length <= this.mScheduledTransitions) {
            this.mScheduledTransitionTo = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.mScheduledTransitionTo;
        int i11 = this.mScheduledTransitions;
        this.mScheduledTransitions = i11 + 1;
        iArr2[i11] = i10;
    }

    public void setDebugMode(int i10) {
        this.mDebugPath = i10;
        invalidate();
    }

    public void setDelayedApplicationOfInitialState(boolean z9) {
        this.mDelayedApply = z9;
    }

    public void setInteractionEnabled(boolean z9) {
        this.mInteractionEnabled = z9;
    }

    public void setInterpolatedProgress(float f8) {
        if (this.mScene != null) {
            setState(TransitionState.MOVING);
            Interpolator interpolator = this.mScene.getInterpolator();
            if (interpolator != null) {
                setProgress(interpolator.getInterpolation(f8));
                return;
            }
        }
        setProgress(f8);
    }

    public void setOnHide(float f8) {
        ArrayList<MotionHelper> arrayList = this.mOnHideHelpers;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.mOnHideHelpers.get(i10).setProgress(f8);
            }
        }
    }

    public void setOnShow(float f8) {
        ArrayList<MotionHelper> arrayList = this.mOnShowHelpers;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.mOnShowHelpers.get(i10).setProgress(f8);
            }
        }
    }

    public void setProgress(float f8) {
        if (f8 < 0.0f || f8 > 1.0f) {
            Log.w(TAG, "Warning! Progress is defined for values between 0.0 and 1.0 inclusive");
        }
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new StateCache();
            }
            this.mStateCache.setProgress(f8);
            return;
        }
        if (f8 <= 0.0f) {
            if (this.mTransitionLastPosition == 1.0f && this.mCurrentState == this.mEndState) {
                setState(TransitionState.MOVING);
            }
            this.mCurrentState = this.mBeginState;
            if (this.mTransitionLastPosition == 0.0f) {
                setState(TransitionState.FINISHED);
            }
        } else if (f8 >= 1.0f) {
            if (this.mTransitionLastPosition == 0.0f && this.mCurrentState == this.mBeginState) {
                setState(TransitionState.MOVING);
            }
            this.mCurrentState = this.mEndState;
            if (this.mTransitionLastPosition == 1.0f) {
                setState(TransitionState.FINISHED);
            }
        } else {
            this.mCurrentState = -1;
            setState(TransitionState.MOVING);
        }
        if (this.mScene == null) {
            return;
        }
        this.mTransitionInstantly = true;
        this.mTransitionGoalPosition = f8;
        this.mTransitionPosition = f8;
        this.mTransitionLastTime = -1L;
        this.mAnimationStartTime = -1L;
        this.mInterpolator = null;
        this.mInTransition = true;
        invalidate();
    }

    public void setScene(MotionScene motionScene) {
        this.mScene = motionScene;
        motionScene.setRtl(isRtl());
        rebuildScene();
    }

    public void setStartState(int i10) {
        if (isAttachedToWindow()) {
            this.mCurrentState = i10;
            return;
        }
        if (this.mStateCache == null) {
            this.mStateCache = new StateCache();
        }
        this.mStateCache.setStartState(i10);
        this.mStateCache.setEndState(i10);
    }

    public void setState(TransitionState transitionState) {
        TransitionState transitionState2 = TransitionState.FINISHED;
        if (transitionState == transitionState2 && this.mCurrentState == -1) {
            return;
        }
        TransitionState transitionState3 = this.mTransitionState;
        this.mTransitionState = transitionState;
        TransitionState transitionState4 = TransitionState.MOVING;
        if (transitionState3 == transitionState4 && transitionState == transitionState4) {
            fireTransitionChange();
        }
        int iOrdinal = transitionState3.ordinal();
        if (iOrdinal != 0 && iOrdinal != 1) {
            if (iOrdinal == 2 && transitionState == transitionState2) {
                fireTransitionCompleted();
                return;
            }
            return;
        }
        if (transitionState == transitionState4) {
            fireTransitionChange();
        }
        if (transitionState == transitionState2) {
            fireTransitionCompleted();
        }
    }

    public void setTransition(int i10) {
        float f8;
        if (this.mScene != null) {
            MotionScene.Transition transition = getTransition(i10);
            this.mBeginState = transition.getStartConstraintSetId();
            this.mEndState = transition.getEndConstraintSetId();
            if (!isAttachedToWindow()) {
                if (this.mStateCache == null) {
                    this.mStateCache = new StateCache();
                }
                this.mStateCache.setStartState(this.mBeginState);
                this.mStateCache.setEndState(this.mEndState);
                return;
            }
            int i11 = this.mCurrentState;
            if (i11 == this.mBeginState) {
                f8 = 0.0f;
            } else {
                f8 = i11 == this.mEndState ? 1.0f : Float.NaN;
            }
            this.mScene.setTransition(transition);
            this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(this.mBeginState), this.mScene.getConstraintSet(this.mEndState));
            rebuildScene();
            if (this.mTransitionLastPosition != f8) {
                if (f8 == 0.0f) {
                    endTrigger(true);
                    this.mScene.getConstraintSet(this.mBeginState).applyTo(this);
                } else if (f8 == 1.0f) {
                    endTrigger(false);
                    this.mScene.getConstraintSet(this.mEndState).applyTo(this);
                }
            }
            this.mTransitionLastPosition = Float.isNaN(f8) ? 0.0f : f8;
            if (!Float.isNaN(f8)) {
                setProgress(f8);
                return;
            }
            Log.v(TAG, Debug.getLocation() + " transitionToStart ");
            transitionToStart();
        }
    }

    public void setTransitionDuration(int i10) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            Log.e(TAG, "MotionScene not defined");
        } else {
            motionScene.setDuration(i10);
        }
    }

    public void setTransitionListener(TransitionListener transitionListener) {
        this.mTransitionListener = transitionListener;
    }

    public void setTransitionState(Bundle bundle) {
        if (this.mStateCache == null) {
            this.mStateCache = new StateCache();
        }
        this.mStateCache.setTransitionState(bundle);
        if (isAttachedToWindow()) {
            this.mStateCache.apply();
        }
    }

    @Override // android.view.View
    public String toString() {
        Context context = getContext();
        return Debug.getName(context, this.mBeginState) + "->" + Debug.getName(context, this.mEndState) + " (pos:" + this.mTransitionLastPosition + " Dpos/Dt:" + this.mLastVelocity;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x003b  */
    /* JADX WARN: Code duplicated, block: B:33:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:36:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:37:0x00c6  */
    public void touchAnimateTo(int i10, float f8, float f10) {
        float f11;
        int autoCompleteMode;
        StopLogic stopLogic;
        if (this.mScene == null || this.mTransitionLastPosition == f8) {
            return;
        }
        this.mTemporalInterpolator = true;
        this.mAnimationStartTime = getNanoTime();
        this.mTransitionDuration = this.mScene.getDuration() / 1000.0f;
        this.mTransitionGoalPosition = f8;
        this.mInTransition = true;
        if (i10 == 0 || i10 == 1 || i10 == 2) {
            if (i10 != 1 || i10 == 7) {
                f11 = 0.0f;
            } else {
                if (i10 == 2 || i10 == 6) {
                    f8 = 1.0f;
                }
                f11 = f8;
            }
            autoCompleteMode = this.mScene.getAutoCompleteMode();
            stopLogic = this.mStopLogic;
            if (autoCompleteMode == 0) {
                stopLogic.config(this.mTransitionLastPosition, f11, f10, this.mTransitionDuration, this.mScene.getMaxAcceleration(), this.mScene.getMaxVelocity());
            } else {
                stopLogic.springConfig(this.mTransitionLastPosition, f11, f10, this.mScene.getSpringMass(), this.mScene.getSpringStiffiness(), this.mScene.getSpringDamping(), this.mScene.getSpringStopThreshold(), this.mScene.getSpringBoundary());
            }
            int i11 = this.mCurrentState;
            this.mTransitionGoalPosition = f11;
            this.mCurrentState = i11;
            this.mInterpolator = this.mStopLogic;
        } else if (i10 == 4) {
            this.mDecelerateLogic.config(f10, this.mTransitionLastPosition, this.mScene.getMaxAcceleration());
            this.mInterpolator = this.mDecelerateLogic;
        } else if (i10 != 5) {
            if (i10 == 6 || i10 == 7) {
                if (i10 != 1) {
                    f11 = 0.0f;
                } else {
                    f11 = 0.0f;
                }
                autoCompleteMode = this.mScene.getAutoCompleteMode();
                stopLogic = this.mStopLogic;
                if (autoCompleteMode == 0) {
                    stopLogic.config(this.mTransitionLastPosition, f11, f10, this.mTransitionDuration, this.mScene.getMaxAcceleration(), this.mScene.getMaxVelocity());
                } else {
                    stopLogic.springConfig(this.mTransitionLastPosition, f11, f10, this.mScene.getSpringMass(), this.mScene.getSpringStiffiness(), this.mScene.getSpringDamping(), this.mScene.getSpringStopThreshold(), this.mScene.getSpringBoundary());
                }
                int i12 = this.mCurrentState;
                this.mTransitionGoalPosition = f11;
                this.mCurrentState = i12;
                this.mInterpolator = this.mStopLogic;
            }
        } else if (willJump(f10, this.mTransitionLastPosition, this.mScene.getMaxAcceleration())) {
            this.mDecelerateLogic.config(f10, this.mTransitionLastPosition, this.mScene.getMaxAcceleration());
            this.mInterpolator = this.mDecelerateLogic;
        } else {
            this.mStopLogic.config(this.mTransitionLastPosition, f8, f10, this.mTransitionDuration, this.mScene.getMaxAcceleration(), this.mScene.getMaxVelocity());
            this.mLastVelocity = 0.0f;
            int i13 = this.mCurrentState;
            this.mTransitionGoalPosition = f8;
            this.mCurrentState = i13;
            this.mInterpolator = this.mStopLogic;
        }
        this.mTransitionInstantly = false;
        this.mAnimationStartTime = getNanoTime();
        invalidate();
    }

    public void touchSpringTo(float f8, float f10) {
        if (this.mScene == null || this.mTransitionLastPosition == f8) {
            return;
        }
        this.mTemporalInterpolator = true;
        this.mAnimationStartTime = getNanoTime();
        this.mTransitionDuration = this.mScene.getDuration() / 1000.0f;
        this.mTransitionGoalPosition = f8;
        this.mInTransition = true;
        this.mStopLogic.springConfig(this.mTransitionLastPosition, f8, f10, this.mScene.getSpringMass(), this.mScene.getSpringStiffiness(), this.mScene.getSpringDamping(), this.mScene.getSpringStopThreshold(), this.mScene.getSpringBoundary());
        int i10 = this.mCurrentState;
        this.mTransitionGoalPosition = f8;
        this.mCurrentState = i10;
        this.mInterpolator = this.mStopLogic;
        this.mTransitionInstantly = false;
        this.mAnimationStartTime = getNanoTime();
        invalidate();
    }

    public void transitionToEnd() {
        animateTo(1.0f);
        this.mOnComplete = null;
    }

    public void transitionToStart(Runnable runnable) {
        animateTo(0.0f);
        this.mOnComplete = runnable;
    }

    public void transitionToState(int i10, int i11, int i12, int i13) {
        StateSet stateSet;
        int iConvertToConstraintSet;
        MotionScene motionScene = this.mScene;
        if (motionScene != null && (stateSet = motionScene.mStateSet) != null && (iConvertToConstraintSet = stateSet.convertToConstraintSet(this.mCurrentState, i10, i11, i12)) != -1) {
            i10 = iConvertToConstraintSet;
        }
        int i14 = this.mCurrentState;
        if (i14 == i10) {
            return;
        }
        if (this.mBeginState == i10) {
            animateTo(0.0f);
            if (i13 > 0) {
                this.mTransitionDuration = i13 / 1000.0f;
                return;
            }
            return;
        }
        if (this.mEndState == i10) {
            animateTo(1.0f);
            if (i13 > 0) {
                this.mTransitionDuration = i13 / 1000.0f;
                return;
            }
            return;
        }
        this.mEndState = i10;
        if (i14 != -1) {
            setTransition(i14, i10);
            animateTo(1.0f);
            this.mTransitionLastPosition = 0.0f;
            transitionToEnd();
            if (i13 > 0) {
                this.mTransitionDuration = i13 / 1000.0f;
                return;
            }
            return;
        }
        this.mTemporalInterpolator = false;
        this.mTransitionGoalPosition = 1.0f;
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mTransitionLastTime = getNanoTime();
        this.mAnimationStartTime = getNanoTime();
        this.mTransitionInstantly = false;
        this.mInterpolator = null;
        if (i13 == -1) {
            this.mTransitionDuration = this.mScene.getDuration() / 1000.0f;
        }
        this.mBeginState = -1;
        this.mScene.setTransition(-1, this.mEndState);
        SparseArray sparseArray = new SparseArray();
        if (i13 == 0) {
            this.mTransitionDuration = this.mScene.getDuration() / 1000.0f;
        } else if (i13 > 0) {
            this.mTransitionDuration = i13 / 1000.0f;
        }
        int childCount = getChildCount();
        this.mFrameArrayList.clear();
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt = getChildAt(i15);
            this.mFrameArrayList.put(childAt, new MotionController(childAt));
            sparseArray.put(childAt.getId(), this.mFrameArrayList.get(childAt));
        }
        this.mInTransition = true;
        this.mModel.initFrom(this.mLayoutWidget, null, this.mScene.getConstraintSet(i10));
        rebuildScene();
        this.mModel.build();
        computeCurrentPositions();
        int width = getWidth();
        int height = getHeight();
        if (this.mDecoratorsHelpers != null) {
            for (int i16 = 0; i16 < childCount; i16++) {
                MotionController motionController = this.mFrameArrayList.get(getChildAt(i16));
                if (motionController != null) {
                    this.mScene.getKeyFrames(motionController);
                }
            }
            ArrayList<MotionHelper> arrayList = this.mDecoratorsHelpers;
            int size = arrayList.size();
            int i17 = 0;
            while (i17 < size) {
                MotionHelper motionHelper = arrayList.get(i17);
                i17++;
                motionHelper.onPreSetup(this, this.mFrameArrayList);
            }
            for (int i18 = 0; i18 < childCount; i18++) {
                MotionController motionController2 = this.mFrameArrayList.get(getChildAt(i18));
                if (motionController2 != null) {
                    motionController2.setup(width, height, this.mTransitionDuration, getNanoTime());
                }
            }
        } else {
            for (int i19 = 0; i19 < childCount; i19++) {
                MotionController motionController3 = this.mFrameArrayList.get(getChildAt(i19));
                if (motionController3 != null) {
                    this.mScene.getKeyFrames(motionController3);
                    motionController3.setup(width, height, this.mTransitionDuration, getNanoTime());
                }
            }
        }
        float staggered = this.mScene.getStaggered();
        if (staggered != 0.0f) {
            float fMin = Float.MAX_VALUE;
            float fMax = -3.4028235E38f;
            for (int i20 = 0; i20 < childCount; i20++) {
                MotionController motionController4 = this.mFrameArrayList.get(getChildAt(i20));
                float finalY = motionController4.getFinalY() + motionController4.getFinalX();
                fMin = Math.min(fMin, finalY);
                fMax = Math.max(fMax, finalY);
            }
            for (int i21 = 0; i21 < childCount; i21++) {
                MotionController motionController5 = this.mFrameArrayList.get(getChildAt(i21));
                float finalX = motionController5.getFinalX();
                float finalY2 = motionController5.getFinalY();
                motionController5.mStaggerScale = 1.0f / (1.0f - staggered);
                motionController5.mStaggerOffset = staggered - ((((finalX + finalY2) - fMin) * staggered) / (fMax - fMin));
            }
        }
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mInTransition = true;
        invalidate();
    }

    public void updateState() {
        this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(this.mBeginState), this.mScene.getConstraintSet(this.mEndState));
        rebuildScene();
    }

    public void updateStateAnimate(int i10, ConstraintSet constraintSet, int i11) {
        if (this.mScene != null && this.mCurrentState == i10) {
            updateState(C0306R.id.view_transition, getConstraintSet(i10));
            setState(C0306R.id.view_transition, -1, -1);
            updateState(i10, constraintSet);
            MotionScene.Transition transition = new MotionScene.Transition(-1, this.mScene, C0306R.id.view_transition, i10);
            transition.setDuration(i11);
            setTransition(transition);
            transitionToEnd();
        }
    }

    public void viewTransition(int i10, View... viewArr) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            motionScene.viewTransition(i10, viewArr);
        } else {
            Log.e(TAG, " no motionScene");
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class MyTracker implements MotionTracker {
        private static MyTracker sMe = new MyTracker();
        VelocityTracker mTracker;

        private MyTracker() {
        }

        public static MyTracker obtain() {
            sMe.mTracker = VelocityTracker.obtain();
            return sMe;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void addMovement(MotionEvent motionEvent) {
            VelocityTracker velocityTracker = this.mTracker;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void clear() {
            VelocityTracker velocityTracker = this.mTracker;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void computeCurrentVelocity(int i10) {
            VelocityTracker velocityTracker = this.mTracker;
            if (velocityTracker != null) {
                velocityTracker.computeCurrentVelocity(i10);
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public float getXVelocity() {
            VelocityTracker velocityTracker = this.mTracker;
            if (velocityTracker != null) {
                return velocityTracker.getXVelocity();
            }
            return 0.0f;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public float getYVelocity() {
            VelocityTracker velocityTracker = this.mTracker;
            if (velocityTracker != null) {
                return velocityTracker.getYVelocity();
            }
            return 0.0f;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void recycle() {
            VelocityTracker velocityTracker = this.mTracker;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.mTracker = null;
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void computeCurrentVelocity(int i10, float f8) {
            VelocityTracker velocityTracker = this.mTracker;
            if (velocityTracker != null) {
                velocityTracker.computeCurrentVelocity(i10, f8);
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public float getXVelocity(int i10) {
            VelocityTracker velocityTracker = this.mTracker;
            if (velocityTracker != null) {
                return velocityTracker.getXVelocity(i10);
            }
            return 0.0f;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public float getYVelocity(int i10) {
            if (this.mTracker != null) {
                return getYVelocity(i10);
            }
            return 0.0f;
        }
    }

    public void transitionToStart() {
        animateTo(0.0f);
    }

    public void transitionToEnd(Runnable runnable) {
        animateTo(1.0f);
        this.mOnComplete = runnable;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScroll(@NonNull View view, int i10, int i11, int i12, int i13, int i14) {
    }

    public void updateState(int i10, ConstraintSet constraintSet) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            motionScene.setConstraintSet(i10, constraintSet);
        }
        updateState();
        if (this.mCurrentState == i10) {
            constraintSet.applyTo(this);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void setState(int i10, int i11, int i12) {
        setState(TransitionState.SETUP);
        this.mCurrentState = i10;
        this.mBeginState = -1;
        this.mEndState = -1;
        ConstraintLayoutStates constraintLayoutStates = this.mConstraintLayoutSpec;
        if (constraintLayoutStates != null) {
            constraintLayoutStates.updateConstraints(i10, i11, i12);
            return;
        }
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            motionScene.getConstraintSet(i10).applyTo(this);
        }
    }

    public void setProgress(float f8, float f10) {
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new StateCache();
            }
            this.mStateCache.setProgress(f8);
            this.mStateCache.setVelocity(f10);
            return;
        }
        setProgress(f8);
        setState(TransitionState.MOVING);
        this.mLastVelocity = f10;
        if (f10 != 0.0f) {
            animateTo(f10 > 0.0f ? 1.0f : 0.0f);
        } else {
            if (f8 == 0.0f || f8 == 1.0f) {
                return;
            }
            animateTo(f8 > 0.5f ? 1.0f : 0.0f);
        }
    }

    public MotionLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mProgressInterpolator = null;
        this.mLastVelocity = 0.0f;
        this.mBeginState = -1;
        this.mCurrentState = -1;
        this.mEndState = -1;
        this.mLastWidthMeasureSpec = 0;
        this.mLastHeightMeasureSpec = 0;
        this.mInteractionEnabled = true;
        this.mFrameArrayList = new HashMap<>();
        this.mAnimationStartTime = 0L;
        this.mTransitionDuration = 1.0f;
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mTransitionGoalPosition = 0.0f;
        this.mInTransition = false;
        this.mIndirectTransition = false;
        this.mDebugPath = 0;
        this.mTemporalInterpolator = false;
        this.mStopLogic = new StopLogic();
        this.mDecelerateLogic = new DecelerateInterpolator();
        this.mFirstDown = true;
        this.mUndergoingMotion = false;
        this.mKeepAnimating = false;
        this.mOnShowHelpers = null;
        this.mOnHideHelpers = null;
        this.mDecoratorsHelpers = null;
        this.mTransitionListeners = null;
        this.mFrames = 0;
        this.mLastDrawTime = -1L;
        this.mLastFps = 0.0f;
        this.mListenerState = 0;
        this.mListenerPosition = 0.0f;
        this.mIsAnimating = false;
        this.mMeasureDuringTransition = false;
        this.mKeyCache = new KeyCache();
        this.mInLayout = false;
        this.mOnComplete = null;
        this.mScheduledTransitionTo = null;
        this.mScheduledTransitions = 0;
        this.mInRotation = false;
        this.mRotatMode = 0;
        this.mPreRotate = new HashMap<>();
        this.mTempRect = new Rect();
        this.mDelayedApply = false;
        this.mTransitionState = TransitionState.UNDEFINED;
        this.mModel = new Model();
        this.mNeedsFireTransitionCompleted = false;
        this.mBoundsCheck = new RectF();
        this.mRegionView = null;
        this.mInverseMatrix = null;
        this.mTransitionCompleted = new ArrayList<>();
        init(attributeSet);
    }

    public void setTransition(int i10, int i11) {
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new StateCache();
            }
            this.mStateCache.setStartState(i10);
            this.mStateCache.setEndState(i11);
            return;
        }
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            this.mBeginState = i10;
            this.mEndState = i11;
            motionScene.setTransition(i10, i11);
            this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(i10), this.mScene.getConstraintSet(i11));
            rebuildScene();
            this.mTransitionLastPosition = 0.0f;
            transitionToStart();
        }
    }

    public void setTransition(MotionScene.Transition transition) {
        this.mScene.setTransition(transition);
        setState(TransitionState.SETUP);
        if (this.mCurrentState == this.mScene.getEndId()) {
            this.mTransitionLastPosition = 1.0f;
            this.mTransitionPosition = 1.0f;
            this.mTransitionGoalPosition = 1.0f;
        } else {
            this.mTransitionLastPosition = 0.0f;
            this.mTransitionPosition = 0.0f;
            this.mTransitionGoalPosition = 0.0f;
        }
        this.mTransitionLastTime = transition.isTransitionFlag(1) ? -1L : getNanoTime();
        int startId = this.mScene.getStartId();
        int endId = this.mScene.getEndId();
        if (startId == this.mBeginState && endId == this.mEndState) {
            return;
        }
        this.mBeginState = startId;
        this.mEndState = endId;
        this.mScene.setTransition(startId, endId);
        this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(this.mBeginState), this.mScene.getConstraintSet(this.mEndState));
        this.mModel.setMeasuredId(this.mBeginState, this.mEndState);
        this.mModel.reEvaluateState();
        rebuildScene();
    }

    private void checkStructure(int i10, ConstraintSet constraintSet) {
        String name = Debug.getName(getContext(), i10);
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            int id = childAt.getId();
            if (id == -1) {
                StringBuilder sbM173x = AbstractC0074a.m173x("CHECK: ", name, " ALL VIEWS SHOULD HAVE ID's ");
                sbM173x.append(childAt.getClass().getName());
                sbM173x.append(" does not!");
                Log.w(TAG, sbM173x.toString());
            }
            if (constraintSet.getConstraint(id) == null) {
                StringBuilder sbM173x2 = AbstractC0074a.m173x("CHECK: ", name, " NO CONSTRAINTS for ");
                sbM173x2.append(Debug.getName(childAt));
                Log.w(TAG, sbM173x2.toString());
            }
        }
        int[] knownIds = constraintSet.getKnownIds();
        for (int i12 = 0; i12 < knownIds.length; i12++) {
            int i13 = knownIds[i12];
            String name2 = Debug.getName(getContext(), i13);
            if (findViewById(knownIds[i12]) == null) {
                Log.w(TAG, "CHECK: " + name + " NO View matches id " + name2);
            }
            if (constraintSet.getHeight(i13) == -1) {
                Log.w(TAG, "CHECK: " + name + "(" + name2 + ") no LAYOUT_HEIGHT");
            }
            if (constraintSet.getWidth(i13) == -1) {
                Log.w(TAG, "CHECK: " + name + "(" + name2 + ") no LAYOUT_HEIGHT");
            }
        }
    }

    public MotionLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mProgressInterpolator = null;
        this.mLastVelocity = 0.0f;
        this.mBeginState = -1;
        this.mCurrentState = -1;
        this.mEndState = -1;
        this.mLastWidthMeasureSpec = 0;
        this.mLastHeightMeasureSpec = 0;
        this.mInteractionEnabled = true;
        this.mFrameArrayList = new HashMap<>();
        this.mAnimationStartTime = 0L;
        this.mTransitionDuration = 1.0f;
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mTransitionGoalPosition = 0.0f;
        this.mInTransition = false;
        this.mIndirectTransition = false;
        this.mDebugPath = 0;
        this.mTemporalInterpolator = false;
        this.mStopLogic = new StopLogic();
        this.mDecelerateLogic = new DecelerateInterpolator();
        this.mFirstDown = true;
        this.mUndergoingMotion = false;
        this.mKeepAnimating = false;
        this.mOnShowHelpers = null;
        this.mOnHideHelpers = null;
        this.mDecoratorsHelpers = null;
        this.mTransitionListeners = null;
        this.mFrames = 0;
        this.mLastDrawTime = -1L;
        this.mLastFps = 0.0f;
        this.mListenerState = 0;
        this.mListenerPosition = 0.0f;
        this.mIsAnimating = false;
        this.mMeasureDuringTransition = false;
        this.mKeyCache = new KeyCache();
        this.mInLayout = false;
        this.mOnComplete = null;
        this.mScheduledTransitionTo = null;
        this.mScheduledTransitions = 0;
        this.mInRotation = false;
        this.mRotatMode = 0;
        this.mPreRotate = new HashMap<>();
        this.mTempRect = new Rect();
        this.mDelayedApply = false;
        this.mTransitionState = TransitionState.UNDEFINED;
        this.mModel = new Model();
        this.mNeedsFireTransitionCompleted = false;
        this.mBoundsCheck = new RectF();
        this.mRegionView = null;
        this.mInverseMatrix = null;
        this.mTransitionCompleted = new ArrayList<>();
        init(attributeSet);
    }

    private void checkStructure(MotionScene.Transition transition) {
        if (transition.getStartConstraintSetId() == transition.getEndConstraintSetId()) {
            Log.e(TAG, "CHECK: start and end constraint set should not be the same!");
        }
    }

    public void transitionToState(int i10, int i11) {
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new StateCache();
            }
            this.mStateCache.setEndState(i10);
            return;
        }
        transitionToState(i10, -1, -1, i11);
    }

    public void transitionToState(int i10, int i11, int i12) {
        transitionToState(i10, i11, i12, -1);
    }

    public void transitionToState(int i10) {
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new StateCache();
            }
            this.mStateCache.setEndState(i10);
            return;
        }
        transitionToState(i10, -1, -1);
    }
}
