package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.motion.utils.TypedValues$TriggerType;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.R$styleable;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class KeyTrigger extends Key {
    public static final String CROSS = "CROSS";
    public static final int KEY_TYPE = 5;
    static final String NAME = "KeyTrigger";
    public static final String NEGATIVE_CROSS = "negativeCross";
    public static final String POSITIVE_CROSS = "positiveCross";
    public static final String POST_LAYOUT = "postLayout";
    private static final String TAG = "KeyTrigger";
    public static final String TRIGGER_COLLISION_ID = "triggerCollisionId";
    public static final String TRIGGER_COLLISION_VIEW = "triggerCollisionView";
    public static final String TRIGGER_ID = "triggerID";
    public static final String TRIGGER_RECEIVER = "triggerReceiver";
    public static final String TRIGGER_SLACK = "triggerSlack";
    public static final String VIEW_TRANSITION_ON_CROSS = "viewTransitionOnCross";
    public static final String VIEW_TRANSITION_ON_NEGATIVE_CROSS = "viewTransitionOnNegativeCross";
    public static final String VIEW_TRANSITION_ON_POSITIVE_CROSS = "viewTransitionOnPositiveCross";
    RectF mCollisionRect;
    private String mCross;
    private int mCurveFit;
    private boolean mFireCrossReset;
    private float mFireLastPos;
    private boolean mFireNegativeReset;
    private boolean mFirePositiveReset;
    private float mFireThreshold;
    HashMap<String, Method> mMethodHashMap;
    private String mNegativeCross;
    private String mPositiveCross;
    private boolean mPostLayout;
    RectF mTargetRect;
    private int mTriggerCollisionId;
    private View mTriggerCollisionView;
    private int mTriggerID;
    private int mTriggerReceiver;
    float mTriggerSlack = 0.1f;
    int mViewTransitionOnCross;
    int mViewTransitionOnNegativeCross;
    int mViewTransitionOnPositiveCross;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public KeyTrigger() {
        int i9 = Key.UNSET;
        this.mViewTransitionOnNegativeCross = i9;
        this.mViewTransitionOnPositiveCross = i9;
        this.mViewTransitionOnCross = i9;
        this.mCollisionRect = new RectF();
        this.mTargetRect = new RectF();
        this.mMethodHashMap = new HashMap<>();
        this.mCurveFit = -1;
        this.mCross = null;
        int i10 = Key.UNSET;
        this.mTriggerReceiver = i10;
        this.mNegativeCross = null;
        this.mPositiveCross = null;
        this.mTriggerID = i10;
        this.mTriggerCollisionId = i10;
        this.mTriggerCollisionView = null;
        this.mFireCrossReset = true;
        this.mFireNegativeReset = true;
        this.mFirePositiveReset = true;
        this.mFireThreshold = Float.NaN;
        this.mPostLayout = false;
        this.mType = 5;
        this.mCustomConstraints = new HashMap<>();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ float access$002(KeyTrigger keyTrigger, float f8) {
        keyTrigger.mFireThreshold = f8;
        return f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ String access$102(KeyTrigger keyTrigger, String str) {
        keyTrigger.mNegativeCross = str;
        return str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ String access$202(KeyTrigger keyTrigger, String str) {
        keyTrigger.mPositiveCross = str;
        return str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ String access$302(KeyTrigger keyTrigger, String str) {
        keyTrigger.mCross = str;
        return str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$400(KeyTrigger keyTrigger) {
        return keyTrigger.mTriggerID;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$402(KeyTrigger keyTrigger, int i9) {
        keyTrigger.mTriggerID = i9;
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$500(KeyTrigger keyTrigger) {
        return keyTrigger.mTriggerCollisionId;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$502(KeyTrigger keyTrigger, int i9) {
        keyTrigger.mTriggerCollisionId = i9;
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean access$600(KeyTrigger keyTrigger) {
        return keyTrigger.mPostLayout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean access$602(KeyTrigger keyTrigger, boolean z8) {
        keyTrigger.mPostLayout = z8;
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$700(KeyTrigger keyTrigger) {
        return keyTrigger.mTriggerReceiver;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$702(KeyTrigger keyTrigger, int i9) {
        keyTrigger.mTriggerReceiver = i9;
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void fire(String str, View view) {
        Method method;
        if (str == null) {
            return;
        }
        if (str.startsWith(".")) {
            fireCustom(str, view);
            return;
        }
        if (this.mMethodHashMap.containsKey(str)) {
            method = this.mMethodHashMap.get(str);
            if (method == null) {
                return;
            }
        } else {
            method = null;
        }
        if (method == null) {
            try {
                method = view.getClass().getMethod(str, null);
                this.mMethodHashMap.put(str, method);
            } catch (NoSuchMethodException unused) {
                this.mMethodHashMap.put(str, null);
                Log.e(TypedValues$TriggerType.NAME, "Could not find method \"" + str + "\"on class " + view.getClass().getSimpleName() + " " + Debug.getName(view));
                return;
            }
        }
        try {
            method.invoke(view, null);
        } catch (Exception unused2) {
            Log.e(TypedValues$TriggerType.NAME, "Exception in call \"" + this.mCross + "\"on class " + view.getClass().getSimpleName() + " " + Debug.getName(view));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void fireCustom(String str, View view) {
        boolean z8 = str.length() == 1;
        if (!z8) {
            str = str.substring(1).toLowerCase(Locale.ROOT);
        }
        for (String str2 : this.mCustomConstraints.keySet()) {
            String lowerCase = str2.toLowerCase(Locale.ROOT);
            if (z8 || lowerCase.matches(str)) {
                ConstraintAttribute constraintAttribute = this.mCustomConstraints.get(str2);
                if (constraintAttribute != null) {
                    constraintAttribute.applyCustom(view);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setUpRect(RectF rectF, View view, boolean z8) {
        rectF.top = view.getTop();
        rectF.bottom = view.getBottom();
        rectF.left = view.getLeft();
        rectF.right = view.getRight();
        if (z8) {
            view.getMatrix().mapRect(rectF);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.motion.widget.Key
    public Key clone() {
        return new KeyTrigger().copy(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:36:0x0088  */
    /* JADX WARN: Code duplicated, block: B:41:0x009a  */
    /* JADX WARN: Code duplicated, block: B:43:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:47:0x00af  */
    /* JADX WARN: Code duplicated, block: B:49:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:52:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:54:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:56:0x00d0  */
    public void conditionallyFire(float f8, View view) {
        boolean z8;
        boolean z9;
        float f9;
        boolean z10;
        boolean z11;
        float f10;
        float f11;
        boolean z12;
        float f12;
        boolean z13 = true;
        boolean z14 = false;
        if (this.mTriggerCollisionId != Key.UNSET) {
            if (this.mTriggerCollisionView == null) {
                this.mTriggerCollisionView = ((ViewGroup) view.getParent()).findViewById(this.mTriggerCollisionId);
            }
            setUpRect(this.mCollisionRect, this.mTriggerCollisionView, this.mPostLayout);
            setUpRect(this.mTargetRect, view, this.mPostLayout);
            boolean zIntersect = this.mCollisionRect.intersect(this.mTargetRect);
            boolean z15 = this.mFireCrossReset;
            if (zIntersect) {
                if (z15) {
                    this.mFireCrossReset = false;
                    z8 = true;
                } else {
                    z8 = false;
                }
                if (this.mFirePositiveReset) {
                    this.mFirePositiveReset = false;
                    z12 = true;
                } else {
                    z12 = false;
                }
                this.mFireNegativeReset = true;
            } else {
                if (z15) {
                    z8 = false;
                } else {
                    this.mFireCrossReset = true;
                    z8 = true;
                }
                if (this.mFireNegativeReset) {
                    this.mFireNegativeReset = false;
                    z10 = true;
                } else {
                    z10 = false;
                }
                this.mFirePositiveReset = true;
                z14 = z10;
                z12 = false;
            }
        } else {
            boolean z16 = this.mFireCrossReset;
            float f13 = this.mFireThreshold;
            if (z16) {
                if ((this.mFireLastPos - f13) * (f8 - f13) < 0.0f) {
                    this.mFireCrossReset = false;
                    z8 = true;
                }
                z9 = this.mFireNegativeReset;
                f9 = this.mFireThreshold;
                if (z9) {
                    f12 = f8 - f9;
                    if ((this.mFireLastPos - f9) * f12 >= 0.0f && f12 < 0.0f) {
                        this.mFireNegativeReset = false;
                        z10 = true;
                    }
                    z11 = this.mFirePositiveReset;
                    f10 = this.mFireThreshold;
                    if (z11) {
                        f11 = f8 - f10;
                        if ((this.mFireLastPos - f10) * f11 < 0.0f || f11 <= 0.0f) {
                            z13 = false;
                        } else {
                            this.mFirePositiveReset = false;
                        }
                        z14 = z10;
                        z12 = z13;
                    } else {
                        if (Math.abs(f8 - f10) > this.mTriggerSlack) {
                            this.mFirePositiveReset = true;
                        }
                        z14 = z10;
                        z12 = false;
                    }
                } else if (Math.abs(f8 - f9) > this.mTriggerSlack) {
                    this.mFireNegativeReset = true;
                }
                z10 = false;
                z11 = this.mFirePositiveReset;
                f10 = this.mFireThreshold;
                if (z11) {
                    f11 = f8 - f10;
                    if ((this.mFireLastPos - f10) * f11 < 0.0f) {
                        z13 = false;
                    } else {
                        z13 = false;
                    }
                    z14 = z10;
                    z12 = z13;
                } else {
                    if (Math.abs(f8 - f10) > this.mTriggerSlack) {
                        this.mFirePositiveReset = true;
                    }
                    z14 = z10;
                    z12 = false;
                }
            } else if (Math.abs(f8 - f13) > this.mTriggerSlack) {
                this.mFireCrossReset = true;
            }
            z8 = false;
            z9 = this.mFireNegativeReset;
            f9 = this.mFireThreshold;
            if (z9) {
                f12 = f8 - f9;
                if ((this.mFireLastPos - f9) * f12 >= 0.0f) {
                }
                z11 = this.mFirePositiveReset;
                f10 = this.mFireThreshold;
                if (z11) {
                    f11 = f8 - f10;
                    if ((this.mFireLastPos - f10) * f11 < 0.0f) {
                        z13 = false;
                    } else {
                        z13 = false;
                    }
                    z14 = z10;
                    z12 = z13;
                } else {
                    if (Math.abs(f8 - f10) > this.mTriggerSlack) {
                        this.mFirePositiveReset = true;
                    }
                    z14 = z10;
                    z12 = false;
                }
            } else if (Math.abs(f8 - f9) > this.mTriggerSlack) {
                this.mFireNegativeReset = true;
            }
            z10 = false;
            z11 = this.mFirePositiveReset;
            f10 = this.mFireThreshold;
            if (z11) {
                f11 = f8 - f10;
                if ((this.mFireLastPos - f10) * f11 < 0.0f) {
                    z13 = false;
                } else {
                    z13 = false;
                }
                z14 = z10;
                z12 = z13;
            } else {
                if (Math.abs(f8 - f10) > this.mTriggerSlack) {
                    this.mFirePositiveReset = true;
                }
                z14 = z10;
                z12 = false;
            }
        }
        this.mFireLastPos = f8;
        if (z14 || z8 || z12) {
            ((MotionLayout) view.getParent()).fireTrigger(this.mTriggerID, z12, f8);
        }
        View viewFindViewById = this.mTriggerReceiver == Key.UNSET ? view : ((MotionLayout) view.getParent()).findViewById(this.mTriggerReceiver);
        if (z14) {
            String str = this.mNegativeCross;
            if (str != null) {
                fire(str, viewFindViewById);
            }
            if (this.mViewTransitionOnNegativeCross != Key.UNSET) {
                ((MotionLayout) view.getParent()).viewTransition(this.mViewTransitionOnNegativeCross, viewFindViewById);
            }
        }
        if (z12) {
            String str2 = this.mPositiveCross;
            if (str2 != null) {
                fire(str2, viewFindViewById);
            }
            if (this.mViewTransitionOnPositiveCross != Key.UNSET) {
                ((MotionLayout) view.getParent()).viewTransition(this.mViewTransitionOnPositiveCross, viewFindViewById);
            }
        }
        if (z8) {
            String str3 = this.mCross;
            if (str3 != null) {
                fire(str3, viewFindViewById);
            }
            if (this.mViewTransitionOnCross != Key.UNSET) {
                ((MotionLayout) view.getParent()).viewTransition(this.mViewTransitionOnCross, viewFindViewById);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.motion.widget.Key
    public Key copy(Key key) {
        super.copy(key);
        KeyTrigger keyTrigger = (KeyTrigger) key;
        this.mCurveFit = keyTrigger.mCurveFit;
        this.mCross = keyTrigger.mCross;
        this.mTriggerReceiver = keyTrigger.mTriggerReceiver;
        this.mNegativeCross = keyTrigger.mNegativeCross;
        this.mPositiveCross = keyTrigger.mPositiveCross;
        this.mTriggerID = keyTrigger.mTriggerID;
        this.mTriggerCollisionId = keyTrigger.mTriggerCollisionId;
        this.mTriggerCollisionView = keyTrigger.mTriggerCollisionView;
        this.mTriggerSlack = keyTrigger.mTriggerSlack;
        this.mFireCrossReset = keyTrigger.mFireCrossReset;
        this.mFireNegativeReset = keyTrigger.mFireNegativeReset;
        this.mFirePositiveReset = keyTrigger.mFirePositiveReset;
        this.mFireThreshold = keyTrigger.mFireThreshold;
        this.mFireLastPos = keyTrigger.mFireLastPos;
        this.mPostLayout = keyTrigger.mPostLayout;
        this.mCollisionRect = keyTrigger.mCollisionRect;
        this.mTargetRect = keyTrigger.mTargetRect;
        this.mMethodHashMap = keyTrigger.mMethodHashMap;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getCurveFit() {
        return this.mCurveFit;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.motion.widget.Key
    public void load(Context context, AttributeSet attributeSet) {
        KeyTrigger$Loader.read(this, context.obtainStyledAttributes(attributeSet, R$styleable.KeyTrigger), context);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.motion.widget.Key
    public void setValue(String str, Object obj) {
        str.getClass();
        switch (str) {
            case "positiveCross":
                this.mPositiveCross = obj.toString();
                break;
            case "viewTransitionOnPositiveCross":
                this.mViewTransitionOnPositiveCross = toInt(obj);
                break;
            case "triggerCollisionId":
                this.mTriggerCollisionId = toInt(obj);
                break;
            case "triggerID":
                this.mTriggerID = toInt(obj);
                break;
            case "negativeCross":
                this.mNegativeCross = obj.toString();
                break;
            case "triggerCollisionView":
                this.mTriggerCollisionView = (View) obj;
                break;
            case "viewTransitionOnNegativeCross":
                this.mViewTransitionOnNegativeCross = toInt(obj);
                break;
            case "CROSS":
                this.mCross = obj.toString();
                break;
            case "triggerSlack":
                this.mTriggerSlack = toFloat(obj);
                break;
            case "viewTransitionOnCross":
                this.mViewTransitionOnCross = toInt(obj);
                break;
            case "postLayout":
                this.mPostLayout = toBoolean(obj);
                break;
            case "triggerReceiver":
                this.mTriggerReceiver = toInt(obj);
                break;
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* JADX INFO: renamed from: clone */
    public /* bridge */ /* synthetic */ Object mo29clone() {
        return clone();
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void addValues(HashMap<String, ViewSpline> map) {
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void getAttributeNames(HashSet<String> hashSet) {
    }
}
