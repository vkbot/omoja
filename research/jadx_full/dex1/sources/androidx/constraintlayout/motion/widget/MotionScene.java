package androidx.constraintlayout.motion.widget;

import ai.onnxruntime.a;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.RectF;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.TypedValues$MotionScene;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.R$id;
import androidx.constraintlayout.widget.R$styleable;
import androidx.constraintlayout.widget.StateSet;
import j1.i;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map$Entry;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MotionScene {
    static final int ANTICIPATE = 6;
    static final int BOUNCE = 4;
    private static final String CONSTRAINTSET_TAG = "ConstraintSet";
    private static final boolean DEBUG = false;
    private static final boolean DEBUG_DESKTOP = false;
    static final int EASE_IN = 1;
    static final int EASE_IN_OUT = 0;
    static final int EASE_OUT = 2;
    private static final String INCLUDE_TAG = "include";
    private static final String INCLUDE_TAG_UC = "Include";
    private static final int INTERPOLATOR_REFERENCE_ID = -2;
    private static final String KEYFRAMESET_TAG = "KeyFrameSet";
    public static final int LAYOUT_CALL_MEASURE = 2;
    public static final int LAYOUT_HONOR_REQUEST = 1;
    public static final int LAYOUT_IGNORE_REQUEST = 0;
    static final int LINEAR = 3;
    private static final int MIN_DURATION = 8;
    private static final String MOTIONSCENE_TAG = "MotionScene";
    private static final String ONCLICK_TAG = "OnClick";
    private static final String ONSWIPE_TAG = "OnSwipe";
    static final int OVERSHOOT = 5;
    private static final int SPLINE_STRING = -1;
    private static final String STATESET_TAG = "StateSet";
    private static final String TAG = "MotionScene";
    static final int TRANSITION_BACKWARD = 0;
    static final int TRANSITION_FORWARD = 1;
    private static final String TRANSITION_TAG = "Transition";
    public static final int UNSET = -1;
    private static final String VIEW_TRANSITION = "ViewTransition";
    private MotionEvent mLastTouchDown;
    float mLastTouchX;
    float mLastTouchY;
    private final MotionLayout mMotionLayout;
    private boolean mRtl;
    private MotionLayout$MotionTracker mVelocityTracker;
    final ViewTransitionController mViewTransitionController;
    StateSet mStateSet = null;
    MotionScene$Transition mCurrentTransition = null;
    private boolean mDisableAutoTransition = false;
    private ArrayList<MotionScene$Transition> mTransitionList = new ArrayList<>();
    private MotionScene$Transition mDefaultTransition = null;
    private ArrayList<MotionScene$Transition> mAbstractTransitionList = new ArrayList<>();
    private SparseArray<ConstraintSet> mConstraintSetMap = new SparseArray<>();
    private HashMap<String, Integer> mConstraintSetIdMap = new HashMap<>();
    private SparseIntArray mDeriveMap = new SparseIntArray();
    private int mDefaultDuration = 400;
    private int mLayoutDuringTransition = 0;
    private boolean mIgnoreTouch = false;
    private boolean mMotionOutsideRegion = false;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MotionScene(Context context, MotionLayout motionLayout, int i9) {
        this.mMotionLayout = motionLayout;
        this.mViewTransitionController = new ViewTransitionController(motionLayout);
        load(context, i9);
        this.mConstraintSetMap.put(R$id.motion_base, new ConstraintSet());
        this.mConstraintSetIdMap.put("motion_base", Integer.valueOf(R$id.motion_base));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$1000(MotionScene motionScene) {
        return motionScene.mLayoutDuringTransition;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ SparseArray access$1100(MotionScene motionScene) {
        return motionScene.mConstraintSetMap;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$1200(MotionScene motionScene, Context context, int i9) {
        return motionScene.parseInclude(context, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ MotionLayout access$700(MotionScene motionScene) {
        return motionScene.mMotionLayout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$900(MotionScene motionScene) {
        return motionScene.mDefaultDuration;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getId(Context context, String str) {
        int identifier;
        if (str.contains("/")) {
            identifier = context.getResources().getIdentifier(str.substring(str.indexOf(47) + 1), "id", context.getPackageName());
        } else {
            identifier = -1;
        }
        if (identifier == -1) {
            if (str.length() > 1) {
                return Integer.parseInt(str.substring(1));
            }
            Log.e(TypedValues$MotionScene.NAME, "error in parsing id");
        }
        return identifier;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getIndex(MotionScene$Transition motionScene$Transition) {
        int iAccess$300 = MotionScene$Transition.access$300(motionScene$Transition);
        if (iAccess$300 == -1) {
            i.k("The transition must have an id");
            return 0;
        }
        for (int i9 = 0; i9 < this.mTransitionList.size(); i9++) {
            if (MotionScene$Transition.access$300(this.mTransitionList.get(i9)) == iAccess$300) {
                return i9;
            }
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String getLine(Context context, int i9, XmlPullParser xmlPullParser) {
        return ".(" + Debug.getName(context, i9) + ".xml:" + xmlPullParser.getLineNumber() + ") \"" + xmlPullParser.getName() + "\"";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getRealID(int i9) {
        int iStateGetConstraintID;
        StateSet stateSet = this.mStateSet;
        return (stateSet == null || (iStateGetConstraintID = stateSet.stateGetConstraintID(i9, -1, -1)) == -1) ? i9 : iStateGetConstraintID;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean hasCycleDependency(int i9) {
        int i10 = this.mDeriveMap.get(i9);
        int size = this.mDeriveMap.size();
        while (i10 > 0) {
            if (i10 == i9) {
                return true;
            }
            int i11 = size - 1;
            if (size < 0) {
                return true;
            }
            i10 = this.mDeriveMap.get(i10);
            size = i11;
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean isProcessingTouch() {
        return this.mVelocityTracker != null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private void load(Context context, int i9) {
        XmlResourceParser xml = context.getResources().getXml(i9);
        try {
            MotionScene$Transition motionScene$Transition = null;
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 2) {
                    String name = xml.getName();
                    switch (name.hashCode()) {
                        case -1349929691:
                            if (name.equals(CONSTRAINTSET_TAG)) {
                                parseConstraintSet(context, xml);
                            }
                            break;
                        case -1239391468:
                            if (name.equals("KeyFrameSet")) {
                                KeyFrames keyFrames = new KeyFrames(context, xml);
                                if (motionScene$Transition != null) {
                                    MotionScene$Transition.access$1400(motionScene$Transition).add(keyFrames);
                                }
                            }
                            break;
                        case -687739768:
                            if (name.equals(INCLUDE_TAG_UC)) {
                                parseInclude(context, xml);
                            }
                            break;
                        case 61998586:
                            if (name.equals("ViewTransition")) {
                                this.mViewTransitionController.add(new ViewTransition(context, xml));
                            }
                            break;
                        case 269306229:
                            if (name.equals(TRANSITION_TAG)) {
                                ArrayList<MotionScene$Transition> arrayList = this.mTransitionList;
                                motionScene$Transition = new MotionScene$Transition(this, context, xml);
                                arrayList.add(motionScene$Transition);
                                if (this.mCurrentTransition == null && !MotionScene$Transition.access$1300(motionScene$Transition)) {
                                    this.mCurrentTransition = motionScene$Transition;
                                    if (MotionScene$Transition.access$200(motionScene$Transition) != null) {
                                        MotionScene$Transition.access$200(this.mCurrentTransition).setRTL(this.mRtl);
                                    }
                                }
                                if (MotionScene$Transition.access$1300(motionScene$Transition)) {
                                    if (MotionScene$Transition.access$000(motionScene$Transition) == -1) {
                                        this.mDefaultTransition = motionScene$Transition;
                                    } else {
                                        this.mAbstractTransitionList.add(motionScene$Transition);
                                    }
                                    this.mTransitionList.remove(motionScene$Transition);
                                }
                            }
                            break;
                        case 312750793:
                            if (name.equals(ONCLICK_TAG) && motionScene$Transition != null && !this.mMotionLayout.isInEditMode()) {
                                motionScene$Transition.addOnClick(context, xml);
                            }
                            break;
                        case 327855227:
                            if (name.equals(ONSWIPE_TAG)) {
                                if (motionScene$Transition == null) {
                                    Log.v(TypedValues$MotionScene.NAME, " OnSwipe (" + context.getResources().getResourceEntryName(i9) + ".xml:" + xml.getLineNumber() + ")");
                                }
                                if (motionScene$Transition != null) {
                                    MotionScene$Transition.access$202(motionScene$Transition, new TouchResponse(context, this.mMotionLayout, xml));
                                }
                            }
                            break;
                        case 793277014:
                            if (name.equals(TypedValues$MotionScene.NAME)) {
                                parseMotionSceneTags(context, xml);
                            }
                            break;
                        case 1382829617:
                            if (name.equals(STATESET_TAG)) {
                                this.mStateSet = new StateSet(context, xml);
                            }
                            break;
                        case 1942574248:
                            if (name.equals(INCLUDE_TAG)) {
                                parseInclude(context, xml);
                            }
                            break;
                    }
                }
            }
        } catch (IOException e) {
            Log.e(TypedValues$MotionScene.NAME, "Error parsing resource: " + i9, e);
        } catch (XmlPullParserException e6) {
            Log.e(TypedValues$MotionScene.NAME, "Error parsing resource: " + i9, e6);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int parseConstraintSet(Context context, XmlPullParser xmlPullParser) {
        ConstraintSet constraintSet = new ConstraintSet();
        constraintSet.setForceId(false);
        int attributeCount = xmlPullParser.getAttributeCount();
        int id = -1;
        int id2 = -1;
        for (int i9 = 0; i9 < attributeCount; i9++) {
            String attributeName = xmlPullParser.getAttributeName(i9);
            String attributeValue = xmlPullParser.getAttributeValue(i9);
            attributeName.getClass();
            switch (attributeName) {
                case "deriveConstraintsFrom":
                    id2 = getId(context, attributeValue);
                    break;
                case "constraintRotate":
                    try {
                        constraintSet.mRotate = Integer.parseInt(attributeValue);
                        break;
                    } catch (NumberFormatException unused) {
                        attributeValue.getClass();
                        switch (attributeValue) {
                            case "x_left":
                                constraintSet.mRotate = 4;
                                break;
                            case "left":
                                constraintSet.mRotate = 2;
                                break;
                            case "none":
                                constraintSet.mRotate = 0;
                                break;
                            case "right":
                                constraintSet.mRotate = 1;
                                break;
                            case "x_right":
                                constraintSet.mRotate = 3;
                                break;
                        }
                    }
                    break;
                case "id":
                    id = getId(context, attributeValue);
                    this.mConstraintSetIdMap.put(stripID(attributeValue), Integer.valueOf(id));
                    constraintSet.mIdString = Debug.getName(context, id);
                    break;
                case "stateLabels":
                    constraintSet.setStateLabels(attributeValue);
                    break;
            }
        }
        if (id != -1) {
            if (this.mMotionLayout.mDebugPath != 0) {
                constraintSet.setValidateOnParse(true);
            }
            constraintSet.load(context, xmlPullParser);
            if (id2 != -1) {
                this.mDeriveMap.put(id, id2);
            }
            this.mConstraintSetMap.put(id, constraintSet);
        }
        return id;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int parseInclude(Context context, int i9) {
        XmlResourceParser xml = context.getResources().getXml(i9);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                String name = xml.getName();
                if (2 == eventType && CONSTRAINTSET_TAG.equals(name)) {
                    return parseConstraintSet(context, xml);
                }
            }
            return -1;
        } catch (IOException e) {
            Log.e(TypedValues$MotionScene.NAME, "Error parsing resource: " + i9, e);
            return -1;
        } catch (XmlPullParserException e6) {
            Log.e(TypedValues$MotionScene.NAME, "Error parsing resource: " + i9, e6);
            return -1;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void parseMotionSceneTags(Context context, XmlPullParser xmlPullParser) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.MotionScene);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i9 = 0; i9 < indexCount; i9++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i9);
            if (index == R$styleable.MotionScene_defaultDuration) {
                int i10 = typedArrayObtainStyledAttributes.getInt(index, this.mDefaultDuration);
                this.mDefaultDuration = i10;
                if (i10 < 8) {
                    this.mDefaultDuration = 8;
                }
            } else if (index == R$styleable.MotionScene_layoutDuringTransition) {
                this.mLayoutDuringTransition = typedArrayObtainStyledAttributes.getInteger(index, 0);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void readConstraintChain(int i9, MotionLayout motionLayout) {
        ConstraintSet constraintSet = this.mConstraintSetMap.get(i9);
        constraintSet.derivedState = constraintSet.mIdString;
        int i10 = this.mDeriveMap.get(i9);
        if (i10 > 0) {
            readConstraintChain(i10, motionLayout);
            ConstraintSet constraintSet2 = this.mConstraintSetMap.get(i10);
            if (constraintSet2 == null) {
                Log.e(TypedValues$MotionScene.NAME, "ERROR! invalid deriveConstraintsFrom: @id/" + Debug.getName(this.mMotionLayout.getContext(), i10));
                return;
            } else {
                constraintSet.derivedState += "/" + constraintSet2.derivedState;
                constraintSet.readFallback(constraintSet2);
            }
        } else {
            constraintSet.derivedState = a.p(new StringBuilder(), constraintSet.derivedState, "  layout");
            constraintSet.readFallback(motionLayout);
        }
        constraintSet.applyDeltaFrom(constraintSet);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String stripID(String str) {
        if (str == null) {
            return "";
        }
        int iIndexOf = str.indexOf(47);
        return iIndexOf < 0 ? str : str.substring(iIndexOf + 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addOnClickListeners(MotionLayout motionLayout, int i9) {
        ArrayList<MotionScene$Transition> arrayList = this.mTransitionList;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            MotionScene$Transition motionScene$Transition = arrayList.get(i10);
            i10++;
            MotionScene$Transition motionScene$Transition2 = motionScene$Transition;
            if (MotionScene$Transition.access$400(motionScene$Transition2).size() > 0) {
                ArrayList arrayListAccess$400 = MotionScene$Transition.access$400(motionScene$Transition2);
                int size2 = arrayListAccess$400.size();
                int i11 = 0;
                while (i11 < size2) {
                    Object obj = arrayListAccess$400.get(i11);
                    i11++;
                    ((MotionScene$Transition$TransitionOnClick) obj).removeOnClickListeners(motionLayout);
                }
            }
        }
        ArrayList<MotionScene$Transition> arrayList2 = this.mAbstractTransitionList;
        int size3 = arrayList2.size();
        int i12 = 0;
        while (i12 < size3) {
            MotionScene$Transition motionScene$Transition3 = arrayList2.get(i12);
            i12++;
            MotionScene$Transition motionScene$Transition4 = motionScene$Transition3;
            if (MotionScene$Transition.access$400(motionScene$Transition4).size() > 0) {
                ArrayList arrayListAccess$401 = MotionScene$Transition.access$400(motionScene$Transition4);
                int size4 = arrayListAccess$401.size();
                int i13 = 0;
                while (i13 < size4) {
                    Object obj2 = arrayListAccess$401.get(i13);
                    i13++;
                    ((MotionScene$Transition$TransitionOnClick) obj2).removeOnClickListeners(motionLayout);
                }
            }
        }
        ArrayList<MotionScene$Transition> arrayList3 = this.mTransitionList;
        int size5 = arrayList3.size();
        int i14 = 0;
        while (i14 < size5) {
            MotionScene$Transition motionScene$Transition5 = arrayList3.get(i14);
            i14++;
            MotionScene$Transition motionScene$Transition6 = motionScene$Transition5;
            if (MotionScene$Transition.access$400(motionScene$Transition6).size() > 0) {
                ArrayList arrayListAccess$402 = MotionScene$Transition.access$400(motionScene$Transition6);
                int size6 = arrayListAccess$402.size();
                int i15 = 0;
                while (i15 < size6) {
                    Object obj3 = arrayListAccess$402.get(i15);
                    i15++;
                    ((MotionScene$Transition$TransitionOnClick) obj3).addOnClickListeners(motionLayout, i9, motionScene$Transition6);
                }
            }
        }
        ArrayList<MotionScene$Transition> arrayList4 = this.mAbstractTransitionList;
        int size7 = arrayList4.size();
        int i16 = 0;
        while (i16 < size7) {
            MotionScene$Transition motionScene$Transition7 = arrayList4.get(i16);
            i16++;
            MotionScene$Transition motionScene$Transition8 = motionScene$Transition7;
            if (MotionScene$Transition.access$400(motionScene$Transition8).size() > 0) {
                ArrayList arrayListAccess$403 = MotionScene$Transition.access$400(motionScene$Transition8);
                int size8 = arrayListAccess$403.size();
                int i17 = 0;
                while (i17 < size8) {
                    Object obj4 = arrayListAccess$403.get(i17);
                    i17++;
                    ((MotionScene$Transition$TransitionOnClick) obj4).addOnClickListeners(motionLayout, i9, motionScene$Transition8);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addTransition(MotionScene$Transition motionScene$Transition) {
        int index = getIndex(motionScene$Transition);
        ArrayList<MotionScene$Transition> arrayList = this.mTransitionList;
        if (index == -1) {
            arrayList.add(motionScene$Transition);
        } else {
            arrayList.set(index, motionScene$Transition);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean applyViewTransition(int i9, MotionController motionController) {
        return this.mViewTransitionController.applyViewTransition(i9, motionController);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean autoTransition(MotionLayout motionLayout, int i9) {
        MotionScene$Transition motionScene$Transition;
        if (isProcessingTouch() || this.mDisableAutoTransition) {
            return false;
        }
        ArrayList<MotionScene$Transition> arrayList = this.mTransitionList;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            MotionScene$Transition motionScene$Transition2 = arrayList.get(i10);
            i10++;
            MotionScene$Transition motionScene$Transition3 = motionScene$Transition2;
            if (MotionScene$Transition.access$600(motionScene$Transition3) != 0 && ((motionScene$Transition = this.mCurrentTransition) != motionScene$Transition3 || !motionScene$Transition.isTransitionFlag(2))) {
                if (i9 == MotionScene$Transition.access$100(motionScene$Transition3) && (MotionScene$Transition.access$600(motionScene$Transition3) == 4 || MotionScene$Transition.access$600(motionScene$Transition3) == 2)) {
                    MotionLayout$TransitionState motionLayout$TransitionState = MotionLayout$TransitionState.FINISHED;
                    motionLayout.setState(motionLayout$TransitionState);
                    motionLayout.setTransition(motionScene$Transition3);
                    if (MotionScene$Transition.access$600(motionScene$Transition3) == 4) {
                        motionLayout.transitionToEnd();
                        motionLayout.setState(MotionLayout$TransitionState.SETUP);
                        motionLayout.setState(MotionLayout$TransitionState.MOVING);
                    } else {
                        motionLayout.setProgress(1.0f);
                        motionLayout.evaluate(true);
                        motionLayout.setState(MotionLayout$TransitionState.SETUP);
                        motionLayout.setState(MotionLayout$TransitionState.MOVING);
                        motionLayout.setState(motionLayout$TransitionState);
                        motionLayout.onNewStateAttachHandlers();
                    }
                    return true;
                }
                if (i9 == MotionScene$Transition.access$000(motionScene$Transition3) && (MotionScene$Transition.access$600(motionScene$Transition3) == 3 || MotionScene$Transition.access$600(motionScene$Transition3) == 1)) {
                    MotionLayout$TransitionState motionLayout$TransitionState2 = MotionLayout$TransitionState.FINISHED;
                    motionLayout.setState(motionLayout$TransitionState2);
                    motionLayout.setTransition(motionScene$Transition3);
                    if (MotionScene$Transition.access$600(motionScene$Transition3) == 3) {
                        motionLayout.transitionToStart();
                        motionLayout.setState(MotionLayout$TransitionState.SETUP);
                        motionLayout.setState(MotionLayout$TransitionState.MOVING);
                    } else {
                        motionLayout.setProgress(0.0f);
                        motionLayout.evaluate(true);
                        motionLayout.setState(MotionLayout$TransitionState.SETUP);
                        motionLayout.setState(MotionLayout$TransitionState.MOVING);
                        motionLayout.setState(motionLayout$TransitionState2);
                        motionLayout.onNewStateAttachHandlers();
                    }
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MotionScene$Transition bestTransitionFor(int i9, float f8, float f9, MotionEvent motionEvent) {
        if (i9 == -1) {
            return this.mCurrentTransition;
        }
        List<MotionScene$Transition> transitionsWithState = getTransitionsWithState(i9);
        RectF rectF = new RectF();
        float f10 = 0.0f;
        MotionScene$Transition motionScene$Transition = null;
        for (MotionScene$Transition motionScene$Transition2 : transitionsWithState) {
            if (!MotionScene$Transition.access$500(motionScene$Transition2) && MotionScene$Transition.access$200(motionScene$Transition2) != null) {
                MotionScene$Transition.access$200(motionScene$Transition2).setRTL(this.mRtl);
                RectF touchRegion = MotionScene$Transition.access$200(motionScene$Transition2).getTouchRegion(this.mMotionLayout, rectF);
                if (touchRegion == null || motionEvent == null || touchRegion.contains(motionEvent.getX(), motionEvent.getY())) {
                    RectF limitBoundsTo = MotionScene$Transition.access$200(motionScene$Transition2).getLimitBoundsTo(this.mMotionLayout, rectF);
                    if (limitBoundsTo == null || motionEvent == null || limitBoundsTo.contains(motionEvent.getX(), motionEvent.getY())) {
                        float fDot = MotionScene$Transition.access$200(motionScene$Transition2).dot(f8, f9);
                        if (MotionScene$Transition.access$200(motionScene$Transition2).mIsRotateMode && motionEvent != null) {
                            float x8 = motionEvent.getX() - MotionScene$Transition.access$200(motionScene$Transition2).mRotateCenterX;
                            float y8 = motionEvent.getY() - MotionScene$Transition.access$200(motionScene$Transition2).mRotateCenterY;
                            fDot = ((float) (Math.atan2(f9 + y8, f8 + x8) - Math.atan2(x8, y8))) * 10.0f;
                        }
                        float f11 = fDot * (MotionScene$Transition.access$000(motionScene$Transition2) == i9 ? -1.0f : 1.1f);
                        if (f11 > f10) {
                            motionScene$Transition = motionScene$Transition2;
                            f10 = f11;
                        }
                    }
                }
            }
        }
        return motionScene$Transition;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void disableAutoTransition(boolean z8) {
        this.mDisableAutoTransition = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void enableViewTransition(int i9, boolean z8) {
        this.mViewTransitionController.enableViewTransition(i9, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int gatPathMotionArc() {
        MotionScene$Transition motionScene$Transition = this.mCurrentTransition;
        if (motionScene$Transition != null) {
            return MotionScene$Transition.access$1900(motionScene$Transition);
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getAutoCompleteMode() {
        MotionScene$Transition motionScene$Transition = this.mCurrentTransition;
        if (motionScene$Transition == null || MotionScene$Transition.access$200(motionScene$Transition) == null) {
            return 0;
        }
        return MotionScene$Transition.access$200(this.mCurrentTransition).getAutoCompleteMode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintSet getConstraintSet(int i9, int i10, int i11) {
        int iStateGetConstraintID;
        StateSet stateSet = this.mStateSet;
        if (stateSet != null && (iStateGetConstraintID = stateSet.stateGetConstraintID(i9, i10, i11)) != -1) {
            i9 = iStateGetConstraintID;
        }
        if (this.mConstraintSetMap.get(i9) != null) {
            return this.mConstraintSetMap.get(i9);
        }
        Log.e(TypedValues$MotionScene.NAME, "Warning could not find ConstraintSet id/" + Debug.getName(this.mMotionLayout.getContext(), i9) + " In MotionScene");
        SparseArray<ConstraintSet> sparseArray = this.mConstraintSetMap;
        return sparseArray.get(sparseArray.keyAt(0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int[] getConstraintSetIds() {
        int size = this.mConstraintSetMap.size();
        int[] iArr = new int[size];
        for (int i9 = 0; i9 < size; i9++) {
            iArr[i9] = this.mConstraintSetMap.keyAt(i9);
        }
        return iArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ArrayList<MotionScene$Transition> getDefinedTransitions() {
        return this.mTransitionList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getDuration() {
        MotionScene$Transition motionScene$Transition = this.mCurrentTransition;
        return motionScene$Transition != null ? MotionScene$Transition.access$1800(motionScene$Transition) : this.mDefaultDuration;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getEndId() {
        MotionScene$Transition motionScene$Transition = this.mCurrentTransition;
        if (motionScene$Transition == null) {
            return -1;
        }
        return MotionScene$Transition.access$000(motionScene$Transition);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Interpolator getInterpolator() {
        int iAccess$1500 = MotionScene$Transition.access$1500(this.mCurrentTransition);
        if (iAccess$1500 == -2) {
            return AnimationUtils.loadInterpolator(this.mMotionLayout.getContext(), MotionScene$Transition.access$1700(this.mCurrentTransition));
        }
        if (iAccess$1500 == -1) {
            return new MotionScene$1(this, Easing.getInterpolator(MotionScene$Transition.access$1600(this.mCurrentTransition)));
        }
        if (iAccess$1500 == 0) {
            return new AccelerateDecelerateInterpolator();
        }
        if (iAccess$1500 == 1) {
            return new AccelerateInterpolator();
        }
        if (iAccess$1500 == 2) {
            return new DecelerateInterpolator();
        }
        if (iAccess$1500 == 4) {
            return new BounceInterpolator();
        }
        if (iAccess$1500 == 5) {
            return new OvershootInterpolator();
        }
        if (iAccess$1500 != 6) {
            return null;
        }
        return new AnticipateInterpolator();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Key getKeyFrame(Context context, int i9, int i10, int i11) {
        MotionScene$Transition motionScene$Transition = this.mCurrentTransition;
        if (motionScene$Transition == null) {
            return null;
        }
        ArrayList arrayListAccess$1400 = MotionScene$Transition.access$1400(motionScene$Transition);
        int size = arrayListAccess$1400.size();
        int i12 = 0;
        while (i12 < size) {
            Object obj = arrayListAccess$1400.get(i12);
            i12++;
            KeyFrames keyFrames = (KeyFrames) obj;
            for (Integer num : keyFrames.getKeys()) {
                if (i10 == num.intValue()) {
                    ArrayList<Key> keyFramesForView = keyFrames.getKeyFramesForView(num.intValue());
                    int size2 = keyFramesForView.size();
                    int i13 = 0;
                    while (i13 < size2) {
                        Key key = keyFramesForView.get(i13);
                        i13++;
                        Key key2 = key;
                        if (key2.mFramePosition == i11 && key2.mType == i9) {
                            return key2;
                        }
                    }
                }
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void getKeyFrames(MotionController motionController) {
        MotionScene$Transition motionScene$Transition = this.mCurrentTransition;
        int i9 = 0;
        if (motionScene$Transition != null) {
            ArrayList arrayListAccess$1400 = MotionScene$Transition.access$1400(motionScene$Transition);
            int size = arrayListAccess$1400.size();
            while (i9 < size) {
                Object obj = arrayListAccess$1400.get(i9);
                i9++;
                ((KeyFrames) obj).addFrames(motionController);
            }
            return;
        }
        MotionScene$Transition motionScene$Transition2 = this.mDefaultTransition;
        if (motionScene$Transition2 != null) {
            ArrayList arrayListAccess$1401 = MotionScene$Transition.access$1400(motionScene$Transition2);
            int size2 = arrayListAccess$1401.size();
            while (i9 < size2) {
                Object obj2 = arrayListAccess$1401.get(i9);
                i9++;
                ((KeyFrames) obj2).addFrames(motionController);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int[] getMatchingStateLabels(String... strArr) {
        int size = this.mConstraintSetMap.size();
        int[] iArr = new int[size];
        int i9 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            ConstraintSet constraintSetValueAt = this.mConstraintSetMap.valueAt(i10);
            int iKeyAt = this.mConstraintSetMap.keyAt(i10);
            if (constraintSetValueAt.matchesLabels(strArr)) {
                constraintSetValueAt.getStateLabels();
                iArr[i9] = iKeyAt;
                i9++;
            }
        }
        return Arrays.copyOf(iArr, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getMaxAcceleration() {
        MotionScene$Transition motionScene$Transition = this.mCurrentTransition;
        if (motionScene$Transition == null || MotionScene$Transition.access$200(motionScene$Transition) == null) {
            return 0.0f;
        }
        return MotionScene$Transition.access$200(this.mCurrentTransition).getMaxAcceleration();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getMaxVelocity() {
        MotionScene$Transition motionScene$Transition = this.mCurrentTransition;
        if (motionScene$Transition == null || MotionScene$Transition.access$200(motionScene$Transition) == null) {
            return 0.0f;
        }
        return MotionScene$Transition.access$200(this.mCurrentTransition).getMaxVelocity();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getMoveWhenScrollAtTop() {
        MotionScene$Transition motionScene$Transition = this.mCurrentTransition;
        if (motionScene$Transition == null || MotionScene$Transition.access$200(motionScene$Transition) == null) {
            return false;
        }
        return MotionScene$Transition.access$200(this.mCurrentTransition).getMoveWhenScrollAtTop();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getPathPercent(View view, int i9) {
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getProgressDirection(float f8, float f9) {
        MotionScene$Transition motionScene$Transition = this.mCurrentTransition;
        if (motionScene$Transition == null || MotionScene$Transition.access$200(motionScene$Transition) == null) {
            return 0.0f;
        }
        return MotionScene$Transition.access$200(this.mCurrentTransition).getProgressDirection(f8, f9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getSpringBoundary() {
        MotionScene$Transition motionScene$Transition = this.mCurrentTransition;
        if (motionScene$Transition == null || MotionScene$Transition.access$200(motionScene$Transition) == null) {
            return 0;
        }
        return MotionScene$Transition.access$200(this.mCurrentTransition).getSpringBoundary();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getSpringDamping() {
        MotionScene$Transition motionScene$Transition = this.mCurrentTransition;
        if (motionScene$Transition == null || MotionScene$Transition.access$200(motionScene$Transition) == null) {
            return 0.0f;
        }
        return MotionScene$Transition.access$200(this.mCurrentTransition).getSpringDamping();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getSpringMass() {
        MotionScene$Transition motionScene$Transition = this.mCurrentTransition;
        if (motionScene$Transition == null || MotionScene$Transition.access$200(motionScene$Transition) == null) {
            return 0.0f;
        }
        return MotionScene$Transition.access$200(this.mCurrentTransition).getSpringMass();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getSpringStiffiness() {
        MotionScene$Transition motionScene$Transition = this.mCurrentTransition;
        if (motionScene$Transition == null || MotionScene$Transition.access$200(motionScene$Transition) == null) {
            return 0.0f;
        }
        return MotionScene$Transition.access$200(this.mCurrentTransition).getSpringStiffness();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getSpringStopThreshold() {
        MotionScene$Transition motionScene$Transition = this.mCurrentTransition;
        if (motionScene$Transition == null || MotionScene$Transition.access$200(motionScene$Transition) == null) {
            return 0.0f;
        }
        return MotionScene$Transition.access$200(this.mCurrentTransition).getSpringStopThreshold();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getStaggered() {
        MotionScene$Transition motionScene$Transition = this.mCurrentTransition;
        if (motionScene$Transition != null) {
            return MotionScene$Transition.access$2000(motionScene$Transition);
        }
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getStartId() {
        MotionScene$Transition motionScene$Transition = this.mCurrentTransition;
        if (motionScene$Transition == null) {
            return -1;
        }
        return MotionScene$Transition.access$100(motionScene$Transition);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MotionScene$Transition getTransitionById(int i9) {
        ArrayList<MotionScene$Transition> arrayList = this.mTransitionList;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            MotionScene$Transition motionScene$Transition = arrayList.get(i10);
            i10++;
            MotionScene$Transition motionScene$Transition2 = motionScene$Transition;
            if (MotionScene$Transition.access$300(motionScene$Transition2) == i9) {
                return motionScene$Transition2;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getTransitionDirection(int i9) {
        ArrayList<MotionScene$Transition> arrayList = this.mTransitionList;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            MotionScene$Transition motionScene$Transition = arrayList.get(i10);
            i10++;
            if (MotionScene$Transition.access$100(motionScene$Transition) == i9) {
                return 0;
            }
        }
        return 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public List<MotionScene$Transition> getTransitionsWithState(int i9) {
        int realID = getRealID(i9);
        ArrayList arrayList = new ArrayList();
        ArrayList<MotionScene$Transition> arrayList2 = this.mTransitionList;
        int size = arrayList2.size();
        int i10 = 0;
        while (i10 < size) {
            MotionScene$Transition motionScene$Transition = arrayList2.get(i10);
            i10++;
            MotionScene$Transition motionScene$Transition2 = motionScene$Transition;
            if (MotionScene$Transition.access$100(motionScene$Transition2) == realID || MotionScene$Transition.access$000(motionScene$Transition2) == realID) {
                arrayList.add(motionScene$Transition2);
            }
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasKeyFramePosition(View view, int i9) {
        MotionScene$Transition motionScene$Transition = this.mCurrentTransition;
        if (motionScene$Transition == null) {
            return false;
        }
        ArrayList arrayListAccess$1400 = MotionScene$Transition.access$1400(motionScene$Transition);
        int size = arrayListAccess$1400.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayListAccess$1400.get(i10);
            i10++;
            ArrayList<Key> keyFramesForView = ((KeyFrames) obj).getKeyFramesForView(view.getId());
            int size2 = keyFramesForView.size();
            int i11 = 0;
            while (i11 < size2) {
                Key key = keyFramesForView.get(i11);
                i11++;
                if (key.mFramePosition == i9) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isViewTransitionEnabled(int i9) {
        return this.mViewTransitionController.isViewTransitionEnabled(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int lookUpConstraintId(String str) {
        Integer num = this.mConstraintSetIdMap.get(str);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String lookUpConstraintName(int i9) {
        for (Map$Entry<String, Integer> map$Entry : this.mConstraintSetIdMap.entrySet()) {
            Integer value = map$Entry.getValue();
            if (value != null && value.intValue() == i9) {
                return map$Entry.getKey();
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void processScrollMove(float f8, float f9) {
        MotionScene$Transition motionScene$Transition = this.mCurrentTransition;
        if (motionScene$Transition == null || MotionScene$Transition.access$200(motionScene$Transition) == null) {
            return;
        }
        MotionScene$Transition.access$200(this.mCurrentTransition).scrollMove(f8, f9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void processScrollUp(float f8, float f9) {
        MotionScene$Transition motionScene$Transition = this.mCurrentTransition;
        if (motionScene$Transition == null || MotionScene$Transition.access$200(motionScene$Transition) == null) {
            return;
        }
        MotionScene$Transition.access$200(this.mCurrentTransition).scrollUp(f8, f9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void processTouchEvent(MotionEvent motionEvent, int i9, MotionLayout motionLayout) {
        MotionLayout$MotionTracker motionLayout$MotionTracker;
        MotionEvent motionEvent2;
        RectF rectF = new RectF();
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = this.mMotionLayout.obtainVelocityTracker();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        if (i9 != -1) {
            int action = motionEvent.getAction();
            boolean z8 = false;
            if (action == 0) {
                this.mLastTouchX = motionEvent.getRawX();
                this.mLastTouchY = motionEvent.getRawY();
                this.mLastTouchDown = motionEvent;
                this.mIgnoreTouch = false;
                if (MotionScene$Transition.access$200(this.mCurrentTransition) != null) {
                    RectF limitBoundsTo = MotionScene$Transition.access$200(this.mCurrentTransition).getLimitBoundsTo(this.mMotionLayout, rectF);
                    if (limitBoundsTo != null && !limitBoundsTo.contains(this.mLastTouchDown.getX(), this.mLastTouchDown.getY())) {
                        this.mLastTouchDown = null;
                        this.mIgnoreTouch = true;
                        return;
                    }
                    RectF touchRegion = MotionScene$Transition.access$200(this.mCurrentTransition).getTouchRegion(this.mMotionLayout, rectF);
                    if (touchRegion == null || touchRegion.contains(this.mLastTouchDown.getX(), this.mLastTouchDown.getY())) {
                        this.mMotionOutsideRegion = false;
                    } else {
                        this.mMotionOutsideRegion = true;
                    }
                    MotionScene$Transition.access$200(this.mCurrentTransition).setDown(this.mLastTouchX, this.mLastTouchY);
                    return;
                }
                return;
            }
            if (action == 2 && !this.mIgnoreTouch) {
                float rawY = motionEvent.getRawY() - this.mLastTouchY;
                float rawX = motionEvent.getRawX() - this.mLastTouchX;
                if ((rawX == 0.0d && rawY == 0.0d) || (motionEvent2 = this.mLastTouchDown) == null) {
                    return;
                }
                MotionScene$Transition motionScene$TransitionBestTransitionFor = bestTransitionFor(i9, rawX, rawY, motionEvent2);
                if (motionScene$TransitionBestTransitionFor != null) {
                    motionLayout.setTransition(motionScene$TransitionBestTransitionFor);
                    RectF touchRegion2 = MotionScene$Transition.access$200(this.mCurrentTransition).getTouchRegion(this.mMotionLayout, rectF);
                    if (touchRegion2 != null && !touchRegion2.contains(this.mLastTouchDown.getX(), this.mLastTouchDown.getY())) {
                        z8 = true;
                    }
                    this.mMotionOutsideRegion = z8;
                    MotionScene$Transition.access$200(this.mCurrentTransition).setUpTouchEvent(this.mLastTouchX, this.mLastTouchY);
                }
            }
        }
        if (this.mIgnoreTouch) {
            return;
        }
        MotionScene$Transition motionScene$Transition = this.mCurrentTransition;
        if (motionScene$Transition != null && MotionScene$Transition.access$200(motionScene$Transition) != null && !this.mMotionOutsideRegion) {
            MotionScene$Transition.access$200(this.mCurrentTransition).processTouchEvent(motionEvent, this.mVelocityTracker, i9, this);
        }
        this.mLastTouchX = motionEvent.getRawX();
        this.mLastTouchY = motionEvent.getRawY();
        if (motionEvent.getAction() != 1 || (motionLayout$MotionTracker = this.mVelocityTracker) == null) {
            return;
        }
        motionLayout$MotionTracker.recycle();
        this.mVelocityTracker = null;
        int i10 = motionLayout.mCurrentState;
        if (i10 != -1) {
            autoTransition(motionLayout, i10);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void readFallback(MotionLayout motionLayout) {
        for (int i9 = 0; i9 < this.mConstraintSetMap.size(); i9++) {
            int iKeyAt = this.mConstraintSetMap.keyAt(i9);
            if (hasCycleDependency(iKeyAt)) {
                Log.e(TypedValues$MotionScene.NAME, "Cannot be derived from yourself");
                return;
            }
            readConstraintChain(iKeyAt, motionLayout);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeTransition(MotionScene$Transition motionScene$Transition) {
        int index = getIndex(motionScene$Transition);
        if (index != -1) {
            this.mTransitionList.remove(index);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setConstraintSet(int i9, ConstraintSet constraintSet) {
        this.mConstraintSetMap.put(i9, constraintSet);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDuration(int i9) {
        MotionScene$Transition motionScene$Transition = this.mCurrentTransition;
        if (motionScene$Transition != null) {
            motionScene$Transition.setDuration(i9);
        } else {
            this.mDefaultDuration = i9;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setKeyframe(View view, int i9, String str, Object obj) {
        MotionScene$Transition motionScene$Transition = this.mCurrentTransition;
        if (motionScene$Transition == null) {
            return;
        }
        ArrayList arrayListAccess$1400 = MotionScene$Transition.access$1400(motionScene$Transition);
        int size = arrayListAccess$1400.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj2 = arrayListAccess$1400.get(i10);
            i10++;
            ArrayList<Key> keyFramesForView = ((KeyFrames) obj2).getKeyFramesForView(view.getId());
            int size2 = keyFramesForView.size();
            int i11 = 0;
            while (i11 < size2) {
                Key key = keyFramesForView.get(i11);
                i11++;
                if (key.mFramePosition == i9 && obj != null) {
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRtl(boolean z8) {
        this.mRtl = z8;
        MotionScene$Transition motionScene$Transition = this.mCurrentTransition;
        if (motionScene$Transition == null || MotionScene$Transition.access$200(motionScene$Transition) == null) {
            return;
        }
        MotionScene$Transition.access$200(this.mCurrentTransition).setRTL(this.mRtl);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:22:0x0037  */
    /* JADX WARN: Code duplicated, block: B:38:0x0077  */
    /* JADX WARN: Code duplicated, block: B:43:0x0094  */
    /* JADX WARN: Code duplicated, block: B:46:0x006d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:0x0085 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x0075 A[SYNTHETIC] */
    public void setTransition(int i9, int i10) {
        int iStateGetConstraintID;
        int iStateGetConstraintID2;
        MotionScene$Transition motionScene$Transition;
        ArrayList<MotionScene$Transition> arrayList;
        int size;
        int i11;
        int i12;
        MotionScene$Transition motionScene$Transition2;
        ArrayList<MotionScene$Transition> arrayList2;
        int size2;
        MotionScene$Transition motionScene$Transition3;
        MotionScene$Transition motionScene$Transition4;
        MotionScene$Transition motionScene$Transition5;
        StateSet stateSet = this.mStateSet;
        if (stateSet != null) {
            iStateGetConstraintID = stateSet.stateGetConstraintID(i9, -1, -1);
            if (iStateGetConstraintID == -1) {
                iStateGetConstraintID = i9;
            }
            iStateGetConstraintID2 = this.mStateSet.stateGetConstraintID(i10, -1, -1);
            if (iStateGetConstraintID2 == -1) {
            }
            motionScene$Transition = this.mCurrentTransition;
            if (motionScene$Transition == null && MotionScene$Transition.access$000(motionScene$Transition) == i10 && MotionScene$Transition.access$100(this.mCurrentTransition) == i9) {
                return;
            }
            arrayList = this.mTransitionList;
            size = arrayList.size();
            i11 = 0;
            i12 = 0;
            while (true) {
                if (i12 < size) {
                    motionScene$Transition2 = this.mDefaultTransition;
                    arrayList2 = this.mAbstractTransitionList;
                    size2 = arrayList2.size();
                    while (i11 < size2) {
                        MotionScene$Transition motionScene$Transition6 = arrayList2.get(i11);
                        i11++;
                        motionScene$Transition4 = motionScene$Transition6;
                        if (MotionScene$Transition.access$000(motionScene$Transition4) == i10) {
                            motionScene$Transition2 = motionScene$Transition4;
                        }
                    }
                    motionScene$Transition3 = new MotionScene$Transition(this, motionScene$Transition2);
                    MotionScene$Transition.access$102(motionScene$Transition3, iStateGetConstraintID);
                    MotionScene$Transition.access$002(motionScene$Transition3, iStateGetConstraintID2);
                    if (iStateGetConstraintID != -1) {
                        this.mTransitionList.add(motionScene$Transition3);
                    }
                    this.mCurrentTransition = motionScene$Transition3;
                    return;
                }
                MotionScene$Transition motionScene$Transition7 = arrayList.get(i12);
                i12++;
                motionScene$Transition5 = motionScene$Transition7;
                if ((MotionScene$Transition.access$000(motionScene$Transition5) != iStateGetConstraintID2 && MotionScene$Transition.access$100(motionScene$Transition5) == iStateGetConstraintID) || (MotionScene$Transition.access$000(motionScene$Transition5) == i10 && MotionScene$Transition.access$100(motionScene$Transition5) == i9)) {
                    break;
                }
            }
            this.mCurrentTransition = motionScene$Transition5;
            if (motionScene$Transition5 != null || MotionScene$Transition.access$200(motionScene$Transition5) == null) {
            }
            MotionScene$Transition.access$200(this.mCurrentTransition).setRTL(this.mRtl);
            return;
        }
        iStateGetConstraintID = i9;
        iStateGetConstraintID2 = i10;
        motionScene$Transition = this.mCurrentTransition;
        if (motionScene$Transition == null) {
        }
        arrayList = this.mTransitionList;
        size = arrayList.size();
        i11 = 0;
        i12 = 0;
        while (true) {
            if (i12 < size) {
                motionScene$Transition2 = this.mDefaultTransition;
                arrayList2 = this.mAbstractTransitionList;
                size2 = arrayList2.size();
                while (i11 < size2) {
                    MotionScene$Transition motionScene$Transition8 = arrayList2.get(i11);
                    i11++;
                    motionScene$Transition4 = motionScene$Transition8;
                    if (MotionScene$Transition.access$000(motionScene$Transition4) == i10) {
                        motionScene$Transition2 = motionScene$Transition4;
                    }
                }
                motionScene$Transition3 = new MotionScene$Transition(this, motionScene$Transition2);
                MotionScene$Transition.access$102(motionScene$Transition3, iStateGetConstraintID);
                MotionScene$Transition.access$002(motionScene$Transition3, iStateGetConstraintID2);
                if (iStateGetConstraintID != -1) {
                    this.mTransitionList.add(motionScene$Transition3);
                }
                this.mCurrentTransition = motionScene$Transition3;
                return;
            }
            MotionScene$Transition motionScene$Transition9 = arrayList.get(i12);
            i12++;
            motionScene$Transition5 = motionScene$Transition9;
            if (MotionScene$Transition.access$000(motionScene$Transition5) != iStateGetConstraintID2) {
            }
        }
        this.mCurrentTransition = motionScene$Transition5;
        if (motionScene$Transition5 != null) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setupTouch() {
        MotionScene$Transition motionScene$Transition = this.mCurrentTransition;
        if (motionScene$Transition == null || MotionScene$Transition.access$200(motionScene$Transition) == null) {
            return;
        }
        MotionScene$Transition.access$200(this.mCurrentTransition).setupTouch();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean supportTouch() {
        ArrayList<MotionScene$Transition> arrayList = this.mTransitionList;
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            MotionScene$Transition motionScene$Transition = arrayList.get(i9);
            i9++;
            if (MotionScene$Transition.access$200(motionScene$Transition) != null) {
                return true;
            }
        }
        MotionScene$Transition motionScene$Transition2 = this.mCurrentTransition;
        return (motionScene$Transition2 == null || MotionScene$Transition.access$200(motionScene$Transition2) == null) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean validateLayout(MotionLayout motionLayout) {
        return motionLayout == this.mMotionLayout && motionLayout.mScene == this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void viewTransition(int i9, View... viewArr) {
        this.mViewTransitionController.viewTransition(i9, viewArr);
    }

    public ConstraintSet getConstraintSet(int i9) {
        return getConstraintSet(i9, -1, -1);
    }

    public ConstraintSet getConstraintSet(Context context, String str) {
        for (int i9 = 0; i9 < this.mConstraintSetMap.size(); i9++) {
            int iKeyAt = this.mConstraintSetMap.keyAt(i9);
            if (str.equals(context.getResources().getResourceName(iKeyAt))) {
                return this.mConstraintSetMap.get(iKeyAt);
            }
        }
        return null;
    }

    private void parseInclude(Context context, XmlPullParser xmlPullParser) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.include);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i9 = 0; i9 < indexCount; i9++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i9);
            if (index == R$styleable.include_constraintSet) {
                parseInclude(context, typedArrayObtainStyledAttributes.getResourceId(index, -1));
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public MotionScene(MotionLayout motionLayout) {
        this.mMotionLayout = motionLayout;
        this.mViewTransitionController = new ViewTransitionController(motionLayout);
    }

    public void setTransition(MotionScene$Transition motionScene$Transition) {
        this.mCurrentTransition = motionScene$Transition;
        if (motionScene$Transition == null || MotionScene$Transition.access$200(motionScene$Transition) == null) {
            return;
        }
        MotionScene$Transition.access$200(this.mCurrentTransition).setRTL(this.mRtl);
    }

    public void onLayout(boolean z8, int i9, int i10, int i11, int i12) {
    }
}
