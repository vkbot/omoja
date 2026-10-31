package androidx.constraintlayout.motion.widget;

import ai.onnxruntime.a;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Xml;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.R$styleable;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MotionScene$Transition {
    public static final int AUTO_ANIMATE_TO_END = 4;
    public static final int AUTO_ANIMATE_TO_START = 3;
    public static final int AUTO_JUMP_TO_END = 2;
    public static final int AUTO_JUMP_TO_START = 1;
    public static final int AUTO_NONE = 0;
    public static final int INTERPOLATE_ANTICIPATE = 6;
    public static final int INTERPOLATE_BOUNCE = 4;
    public static final int INTERPOLATE_EASE_IN = 1;
    public static final int INTERPOLATE_EASE_IN_OUT = 0;
    public static final int INTERPOLATE_EASE_OUT = 2;
    public static final int INTERPOLATE_LINEAR = 3;
    public static final int INTERPOLATE_OVERSHOOT = 5;
    public static final int INTERPOLATE_REFERENCE_ID = -2;
    public static final int INTERPOLATE_SPLINE_STRING = -1;
    static final int TRANSITION_FLAG_FIRST_DRAW = 1;
    static final int TRANSITION_FLAG_INTERCEPT_TOUCH = 4;
    static final int TRANSITION_FLAG_INTRA_AUTO = 2;
    private int mAutoTransition;
    private int mConstraintSetEnd;
    private int mConstraintSetStart;
    private int mDefaultInterpolator;
    private int mDefaultInterpolatorID;
    private String mDefaultInterpolatorString;
    private boolean mDisable;
    private int mDuration;
    private int mId;
    private boolean mIsAbstract;
    private ArrayList<KeyFrames> mKeyFramesList;
    private int mLayoutDuringTransition;
    private final MotionScene mMotionScene;
    private ArrayList<MotionScene$Transition$TransitionOnClick> mOnClicks;
    private int mPathMotionArc;
    private float mStagger;
    private TouchResponse mTouchResponse;
    private int mTransitionFlags;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MotionScene$Transition(MotionScene motionScene, MotionScene$Transition motionScene$Transition) {
        this.mId = -1;
        this.mIsAbstract = false;
        this.mConstraintSetEnd = -1;
        this.mConstraintSetStart = -1;
        this.mDefaultInterpolator = 0;
        this.mDefaultInterpolatorString = null;
        this.mDefaultInterpolatorID = -1;
        this.mDuration = 400;
        this.mStagger = 0.0f;
        this.mKeyFramesList = new ArrayList<>();
        this.mTouchResponse = null;
        this.mOnClicks = new ArrayList<>();
        this.mAutoTransition = 0;
        this.mDisable = false;
        this.mPathMotionArc = -1;
        this.mLayoutDuringTransition = 0;
        this.mTransitionFlags = 0;
        this.mMotionScene = motionScene;
        this.mDuration = MotionScene.access$900(motionScene);
        if (motionScene$Transition != null) {
            this.mPathMotionArc = motionScene$Transition.mPathMotionArc;
            this.mDefaultInterpolator = motionScene$Transition.mDefaultInterpolator;
            this.mDefaultInterpolatorString = motionScene$Transition.mDefaultInterpolatorString;
            this.mDefaultInterpolatorID = motionScene$Transition.mDefaultInterpolatorID;
            this.mDuration = motionScene$Transition.mDuration;
            this.mKeyFramesList = motionScene$Transition.mKeyFramesList;
            this.mStagger = motionScene$Transition.mStagger;
            this.mLayoutDuringTransition = motionScene$Transition.mLayoutDuringTransition;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$000(MotionScene$Transition motionScene$Transition) {
        return motionScene$Transition.mConstraintSetEnd;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$002(MotionScene$Transition motionScene$Transition, int i9) {
        motionScene$Transition.mConstraintSetEnd = i9;
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$100(MotionScene$Transition motionScene$Transition) {
        return motionScene$Transition.mConstraintSetStart;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$102(MotionScene$Transition motionScene$Transition, int i9) {
        motionScene$Transition.mConstraintSetStart = i9;
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean access$1300(MotionScene$Transition motionScene$Transition) {
        return motionScene$Transition.mIsAbstract;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ ArrayList access$1400(MotionScene$Transition motionScene$Transition) {
        return motionScene$Transition.mKeyFramesList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$1500(MotionScene$Transition motionScene$Transition) {
        return motionScene$Transition.mDefaultInterpolator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ String access$1600(MotionScene$Transition motionScene$Transition) {
        return motionScene$Transition.mDefaultInterpolatorString;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$1700(MotionScene$Transition motionScene$Transition) {
        return motionScene$Transition.mDefaultInterpolatorID;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$1800(MotionScene$Transition motionScene$Transition) {
        return motionScene$Transition.mDuration;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$1900(MotionScene$Transition motionScene$Transition) {
        return motionScene$Transition.mPathMotionArc;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ TouchResponse access$200(MotionScene$Transition motionScene$Transition) {
        return motionScene$Transition.mTouchResponse;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ float access$2000(MotionScene$Transition motionScene$Transition) {
        return motionScene$Transition.mStagger;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ TouchResponse access$202(MotionScene$Transition motionScene$Transition, TouchResponse touchResponse) {
        motionScene$Transition.mTouchResponse = touchResponse;
        return touchResponse;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$300(MotionScene$Transition motionScene$Transition) {
        return motionScene$Transition.mId;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ ArrayList access$400(MotionScene$Transition motionScene$Transition) {
        return motionScene$Transition.mOnClicks;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean access$500(MotionScene$Transition motionScene$Transition) {
        return motionScene$Transition.mDisable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$600(MotionScene$Transition motionScene$Transition) {
        return motionScene$Transition.mAutoTransition;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ MotionScene access$800(MotionScene$Transition motionScene$Transition) {
        return motionScene$Transition.mMotionScene;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void fill(MotionScene motionScene, Context context, TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        for (int i9 = 0; i9 < indexCount; i9++) {
            int index = typedArray.getIndex(i9);
            if (index == R$styleable.Transition_constraintSetEnd) {
                this.mConstraintSetEnd = typedArray.getResourceId(index, -1);
                String resourceTypeName = context.getResources().getResourceTypeName(this.mConstraintSetEnd);
                if ("layout".equals(resourceTypeName)) {
                    ConstraintSet constraintSet = new ConstraintSet();
                    constraintSet.load(context, this.mConstraintSetEnd);
                    MotionScene.access$1100(motionScene).append(this.mConstraintSetEnd, constraintSet);
                } else if ("xml".equals(resourceTypeName)) {
                    this.mConstraintSetEnd = MotionScene.access$1200(motionScene, context, this.mConstraintSetEnd);
                }
            } else if (index == R$styleable.Transition_constraintSetStart) {
                this.mConstraintSetStart = typedArray.getResourceId(index, this.mConstraintSetStart);
                String resourceTypeName2 = context.getResources().getResourceTypeName(this.mConstraintSetStart);
                if ("layout".equals(resourceTypeName2)) {
                    ConstraintSet constraintSet2 = new ConstraintSet();
                    constraintSet2.load(context, this.mConstraintSetStart);
                    MotionScene.access$1100(motionScene).append(this.mConstraintSetStart, constraintSet2);
                } else if ("xml".equals(resourceTypeName2)) {
                    this.mConstraintSetStart = MotionScene.access$1200(motionScene, context, this.mConstraintSetStart);
                }
            } else if (index == R$styleable.Transition_motionInterpolator) {
                int i10 = typedArray.peekValue(index).type;
                if (i10 == 1) {
                    int resourceId = typedArray.getResourceId(index, -1);
                    this.mDefaultInterpolatorID = resourceId;
                    if (resourceId != -1) {
                        this.mDefaultInterpolator = -2;
                    }
                } else if (i10 == 3) {
                    String string = typedArray.getString(index);
                    this.mDefaultInterpolatorString = string;
                    if (string != null) {
                        if (string.indexOf("/") > 0) {
                            this.mDefaultInterpolatorID = typedArray.getResourceId(index, -1);
                            this.mDefaultInterpolator = -2;
                        } else {
                            this.mDefaultInterpolator = -1;
                        }
                    }
                } else {
                    this.mDefaultInterpolator = typedArray.getInteger(index, this.mDefaultInterpolator);
                }
            } else if (index == R$styleable.Transition_duration) {
                int i11 = typedArray.getInt(index, this.mDuration);
                this.mDuration = i11;
                if (i11 < 8) {
                    this.mDuration = 8;
                }
            } else if (index == R$styleable.Transition_staggered) {
                this.mStagger = typedArray.getFloat(index, this.mStagger);
            } else if (index == R$styleable.Transition_autoTransition) {
                this.mAutoTransition = typedArray.getInteger(index, this.mAutoTransition);
            } else if (index == R$styleable.Transition_android_id) {
                this.mId = typedArray.getResourceId(index, this.mId);
            } else if (index == R$styleable.Transition_transitionDisable) {
                this.mDisable = typedArray.getBoolean(index, this.mDisable);
            } else if (index == R$styleable.Transition_pathMotionArc) {
                this.mPathMotionArc = typedArray.getInteger(index, -1);
            } else if (index == R$styleable.Transition_layoutDuringTransition) {
                this.mLayoutDuringTransition = typedArray.getInteger(index, 0);
            } else if (index == R$styleable.Transition_transitionFlags) {
                this.mTransitionFlags = typedArray.getInteger(index, 0);
            }
        }
        if (this.mConstraintSetStart == -1) {
            this.mIsAbstract = true;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void fillFromAttributeList(MotionScene motionScene, Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Transition);
        fill(motionScene, context, typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addKeyFrame(KeyFrames keyFrames) {
        this.mKeyFramesList.add(keyFrames);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addOnClick(int i9, int i10) {
        ArrayList<MotionScene$Transition$TransitionOnClick> arrayList = this.mOnClicks;
        int size = arrayList.size();
        int i11 = 0;
        while (i11 < size) {
            MotionScene$Transition$TransitionOnClick motionScene$Transition$TransitionOnClick = arrayList.get(i11);
            i11++;
            MotionScene$Transition$TransitionOnClick motionScene$Transition$TransitionOnClick2 = motionScene$Transition$TransitionOnClick;
            if (motionScene$Transition$TransitionOnClick2.mTargetId == i9) {
                motionScene$Transition$TransitionOnClick2.mMode = i10;
                return;
            }
        }
        this.mOnClicks.add(new MotionScene$Transition$TransitionOnClick(this, i9, i10));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String debugString(Context context) {
        String resourceEntryName = this.mConstraintSetStart == -1 ? "null" : context.getResources().getResourceEntryName(this.mConstraintSetStart);
        if (this.mConstraintSetEnd == -1) {
            return a.C(resourceEntryName, " -> null");
        }
        StringBuilder sbW = a.w(resourceEntryName, " -> ");
        sbW.append(context.getResources().getResourceEntryName(this.mConstraintSetEnd));
        return sbW.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getAutoTransition() {
        return this.mAutoTransition;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getDuration() {
        return this.mDuration;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getEndConstraintSetId() {
        return this.mConstraintSetEnd;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getId() {
        return this.mId;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public List<KeyFrames> getKeyFrameList() {
        return this.mKeyFramesList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getLayoutDuringTransition() {
        return this.mLayoutDuringTransition;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public List<MotionScene$Transition$TransitionOnClick> getOnClickList() {
        return this.mOnClicks;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getPathMotionArc() {
        return this.mPathMotionArc;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getStagger() {
        return this.mStagger;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getStartConstraintSetId() {
        return this.mConstraintSetStart;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TouchResponse getTouchResponse() {
        return this.mTouchResponse;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isEnabled() {
        return !this.mDisable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isTransitionFlag(int i9) {
        return (i9 & this.mTransitionFlags) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeOnClick(int i9) {
        MotionScene$Transition$TransitionOnClick motionScene$Transition$TransitionOnClick;
        ArrayList<MotionScene$Transition$TransitionOnClick> arrayList = this.mOnClicks;
        int size = arrayList.size();
        int i10 = 0;
        do {
            if (i10 >= size) {
                motionScene$Transition$TransitionOnClick = null;
                break;
            } else {
                MotionScene$Transition$TransitionOnClick motionScene$Transition$TransitionOnClick2 = arrayList.get(i10);
                i10++;
                motionScene$Transition$TransitionOnClick = motionScene$Transition$TransitionOnClick2;
            }
        } while (motionScene$Transition$TransitionOnClick.mTargetId != i9);
        if (motionScene$Transition$TransitionOnClick != null) {
            this.mOnClicks.remove(motionScene$Transition$TransitionOnClick);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setAutoTransition(int i9) {
        this.mAutoTransition = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDuration(int i9) {
        this.mDuration = Math.max(i9, 8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setEnabled(boolean z8) {
        this.mDisable = !z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setInterpolatorInfo(int i9, String str, int i10) {
        this.mDefaultInterpolator = i9;
        this.mDefaultInterpolatorString = str;
        this.mDefaultInterpolatorID = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLayoutDuringTransition(int i9) {
        this.mLayoutDuringTransition = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOnSwipe(OnSwipe onSwipe) {
        this.mTouchResponse = onSwipe == null ? null : new TouchResponse(MotionScene.access$700(this.mMotionScene), onSwipe);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOnTouchUp(int i9) {
        TouchResponse touchResponse = getTouchResponse();
        if (touchResponse != null) {
            touchResponse.setTouchUpMode(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPathMotionArc(int i9) {
        this.mPathMotionArc = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStagger(float f8) {
        this.mStagger = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTransitionFlag(int i9) {
        this.mTransitionFlags = i9;
    }

    public void addOnClick(Context context, XmlPullParser xmlPullParser) {
        this.mOnClicks.add(new MotionScene$Transition$TransitionOnClick(context, this, xmlPullParser));
    }

    public MotionScene$Transition(int i9, MotionScene motionScene, int i10, int i11) {
        this.mId = -1;
        this.mIsAbstract = false;
        this.mConstraintSetEnd = -1;
        this.mConstraintSetStart = -1;
        this.mDefaultInterpolator = 0;
        this.mDefaultInterpolatorString = null;
        this.mDefaultInterpolatorID = -1;
        this.mDuration = 400;
        this.mStagger = 0.0f;
        this.mKeyFramesList = new ArrayList<>();
        this.mTouchResponse = null;
        this.mOnClicks = new ArrayList<>();
        this.mAutoTransition = 0;
        this.mDisable = false;
        this.mPathMotionArc = -1;
        this.mLayoutDuringTransition = 0;
        this.mTransitionFlags = 0;
        this.mId = i9;
        this.mMotionScene = motionScene;
        this.mConstraintSetStart = i10;
        this.mConstraintSetEnd = i11;
        this.mDuration = MotionScene.access$900(motionScene);
        this.mLayoutDuringTransition = MotionScene.access$1000(motionScene);
    }

    public MotionScene$Transition(MotionScene motionScene, Context context, XmlPullParser xmlPullParser) {
        this.mId = -1;
        this.mIsAbstract = false;
        this.mConstraintSetEnd = -1;
        this.mConstraintSetStart = -1;
        this.mDefaultInterpolator = 0;
        this.mDefaultInterpolatorString = null;
        this.mDefaultInterpolatorID = -1;
        this.mDuration = 400;
        this.mStagger = 0.0f;
        this.mKeyFramesList = new ArrayList<>();
        this.mTouchResponse = null;
        this.mOnClicks = new ArrayList<>();
        this.mAutoTransition = 0;
        this.mDisable = false;
        this.mPathMotionArc = -1;
        this.mLayoutDuringTransition = 0;
        this.mTransitionFlags = 0;
        this.mDuration = MotionScene.access$900(motionScene);
        this.mLayoutDuringTransition = MotionScene.access$1000(motionScene);
        this.mMotionScene = motionScene;
        fillFromAttributeList(motionScene, context, Xml.asAttributeSet(xmlPullParser));
    }
}
