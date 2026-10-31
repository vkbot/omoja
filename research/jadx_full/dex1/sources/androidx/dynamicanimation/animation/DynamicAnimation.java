package androidx.dynamicanimation.animation;

import android.util.AndroidRuntimeException;
import androidx.annotation.FloatRange;
import androidx.annotation.MainThread;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.annotation.VisibleForTesting;
import androidx.constraintlayout.motion.widget.Key;
import androidx.dynamicanimation.animation.DynamicAnimation;
import j1.i;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class DynamicAnimation<T extends DynamicAnimation<T>> implements AnimationHandler$AnimationFrameCallback {
    public static final float MIN_VISIBLE_CHANGE_ALPHA = 0.00390625f;
    public static final float MIN_VISIBLE_CHANGE_PIXELS = 1.0f;
    public static final float MIN_VISIBLE_CHANGE_ROTATION_DEGREES = 0.1f;
    public static final float MIN_VISIBLE_CHANGE_SCALE = 0.002f;
    private static final float THRESHOLD_MULTIPLIER = 0.75f;
    private static final float UNSET = Float.MAX_VALUE;
    private AnimationHandler mAnimationHandler;
    private final ArrayList<DynamicAnimation$OnAnimationEndListener> mEndListeners;
    private long mLastFrameTime;
    float mMaxValue;
    float mMinValue;
    private float mMinVisibleChange;
    final FloatPropertyCompat mProperty;
    boolean mRunning;
    boolean mStartValueIsSet;
    final Object mTarget;
    private final ArrayList<DynamicAnimation$OnAnimationUpdateListener> mUpdateListeners;
    float mValue;
    float mVelocity;
    public static final DynamicAnimation$ViewProperty TRANSLATION_X = new DynamicAnimation$1("translationX");
    public static final DynamicAnimation$ViewProperty TRANSLATION_Y = new DynamicAnimation$2("translationY");
    public static final DynamicAnimation$ViewProperty TRANSLATION_Z = new DynamicAnimation$3("translationZ");
    public static final DynamicAnimation$ViewProperty SCALE_X = new DynamicAnimation$4("scaleX");
    public static final DynamicAnimation$ViewProperty SCALE_Y = new DynamicAnimation$5("scaleY");
    public static final DynamicAnimation$ViewProperty ROTATION = new DynamicAnimation$6(Key.ROTATION);
    public static final DynamicAnimation$ViewProperty ROTATION_X = new DynamicAnimation$7("rotationX");
    public static final DynamicAnimation$ViewProperty ROTATION_Y = new DynamicAnimation$8("rotationY");
    public static final DynamicAnimation$ViewProperty X = new DynamicAnimation$9("x");
    public static final DynamicAnimation$ViewProperty Y = new DynamicAnimation$10("y");
    public static final DynamicAnimation$ViewProperty Z = new DynamicAnimation$11("z");
    public static final DynamicAnimation$ViewProperty ALPHA = new DynamicAnimation$12("alpha");
    public static final DynamicAnimation$ViewProperty SCROLL_X = new DynamicAnimation$13("scrollX");
    public static final DynamicAnimation$ViewProperty SCROLL_Y = new DynamicAnimation$14("scrollY");

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public <K> DynamicAnimation(K k6, FloatPropertyCompat<K> floatPropertyCompat) {
        this.mVelocity = 0.0f;
        this.mValue = Float.MAX_VALUE;
        this.mStartValueIsSet = false;
        this.mRunning = false;
        this.mMaxValue = Float.MAX_VALUE;
        this.mMinValue = -Float.MAX_VALUE;
        this.mLastFrameTime = 0L;
        this.mEndListeners = new ArrayList<>();
        this.mUpdateListeners = new ArrayList<>();
        this.mTarget = k6;
        this.mProperty = floatPropertyCompat;
        if (floatPropertyCompat == ROTATION || floatPropertyCompat == ROTATION_X || floatPropertyCompat == ROTATION_Y) {
            this.mMinVisibleChange = 0.1f;
            return;
        }
        if (floatPropertyCompat == ALPHA) {
            this.mMinVisibleChange = 0.00390625f;
        } else if (floatPropertyCompat == SCALE_X || floatPropertyCompat == SCALE_Y) {
            this.mMinVisibleChange = 0.002f;
        } else {
            this.mMinVisibleChange = 1.0f;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void endAnimationInternal(boolean z8) {
        int i9 = 0;
        this.mRunning = false;
        getAnimationHandler().removeCallback(this);
        this.mLastFrameTime = 0L;
        this.mStartValueIsSet = false;
        while (true) {
            int size = this.mEndListeners.size();
            ArrayList<DynamicAnimation$OnAnimationEndListener> arrayList = this.mEndListeners;
            if (i9 >= size) {
                removeNullEntries(arrayList);
                return;
            } else {
                if (arrayList.get(i9) != null) {
                    this.mEndListeners.get(i9).onAnimationEnd(this, z8, this.mValue, this.mVelocity);
                }
                i9++;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private float getPropertyValue() {
        return this.mProperty.getValue(this.mTarget);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static <T> void removeEntry(ArrayList<T> arrayList, T t) {
        int iIndexOf = arrayList.indexOf(t);
        if (iIndexOf >= 0) {
            arrayList.set(iIndexOf, null);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static <T> void removeNullEntries(ArrayList<T> arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == null) {
                arrayList.remove(size);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void startAnimationInternal() {
        if (this.mRunning) {
            return;
        }
        this.mRunning = true;
        if (!this.mStartValueIsSet) {
            this.mValue = getPropertyValue();
        }
        float f8 = this.mValue;
        if (f8 > this.mMaxValue || f8 < this.mMinValue) {
            i.k("Starting value need to be in between min value and max value");
        } else {
            getAnimationHandler().addAnimationFrameCallback(this, 0L);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public T addEndListener(DynamicAnimation$OnAnimationEndListener dynamicAnimation$OnAnimationEndListener) {
        if (!this.mEndListeners.contains(dynamicAnimation$OnAnimationEndListener)) {
            this.mEndListeners.add(dynamicAnimation$OnAnimationEndListener);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public T addUpdateListener(DynamicAnimation$OnAnimationUpdateListener dynamicAnimation$OnAnimationUpdateListener) {
        if (isRunning()) {
            androidx.navigation.b.g("Error: Update listeners must be added beforethe animation.");
            return null;
        }
        if (!this.mUpdateListeners.contains(dynamicAnimation$OnAnimationUpdateListener)) {
            this.mUpdateListeners.add(dynamicAnimation$OnAnimationUpdateListener);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public void cancel() {
        if (!getAnimationHandler().isCurrentThread()) {
            throw new AndroidRuntimeException("Animations may only be canceled from the same thread as the animation handler");
        }
        if (this.mRunning) {
            endAnimationInternal(true);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.dynamicanimation.animation.AnimationHandler$AnimationFrameCallback
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public boolean doAnimationFrame(long j9) {
        long j10 = this.mLastFrameTime;
        if (j10 == 0) {
            this.mLastFrameTime = j9;
            setPropertyValue(this.mValue);
            return false;
        }
        long j11 = j9 - j10;
        this.mLastFrameTime = j9;
        float durationScale = getAnimationHandler().getDurationScale();
        boolean zUpdateValueAndVelocity = updateValueAndVelocity(durationScale == 0.0f ? 2147483647L : (long) (j11 / durationScale));
        float fMin = Math.min(this.mValue, this.mMaxValue);
        this.mValue = fMin;
        float fMax = Math.max(fMin, this.mMinValue);
        this.mValue = fMax;
        setPropertyValue(fMax);
        if (zUpdateValueAndVelocity) {
            endAnimationInternal(false);
        }
        return zUpdateValueAndVelocity;
    }

    public abstract float getAcceleration(float f8, float f9);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @VisibleForTesting
    public AnimationHandler getAnimationHandler() {
        AnimationHandler animationHandler = this.mAnimationHandler;
        return animationHandler != null ? animationHandler : AnimationHandler.getInstance();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getMinimumVisibleChange() {
        return this.mMinVisibleChange;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FrameCallbackScheduler getScheduler() {
        AnimationHandler animationHandler = this.mAnimationHandler;
        return animationHandler != null ? animationHandler.getScheduler() : AnimationHandler.getInstance().getScheduler();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getValueThreshold() {
        return this.mMinVisibleChange * 0.75f;
    }

    public abstract boolean isAtEquilibrium(float f8, float f9);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isRunning() {
        return this.mRunning;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeEndListener(DynamicAnimation$OnAnimationEndListener dynamicAnimation$OnAnimationEndListener) {
        removeEntry(this.mEndListeners, dynamicAnimation$OnAnimationEndListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeUpdateListener(DynamicAnimation$OnAnimationUpdateListener dynamicAnimation$OnAnimationUpdateListener) {
        removeEntry(this.mUpdateListeners, dynamicAnimation$OnAnimationUpdateListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public T setMaxValue(float f8) {
        this.mMaxValue = f8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public T setMinValue(float f8) {
        this.mMinValue = f8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public T setMinimumVisibleChange(@FloatRange(from = 0.0d, fromInclusive = false) float f8) {
        if (f8 <= 0.0f) {
            i.k("Minimum visible change must be positive.");
            return null;
        }
        this.mMinVisibleChange = f8;
        setValueThreshold(f8 * 0.75f);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPropertyValue(float f8) {
        this.mProperty.setValue(this.mTarget, f8);
        int i9 = 0;
        while (true) {
            int size = this.mUpdateListeners.size();
            ArrayList<DynamicAnimation$OnAnimationUpdateListener> arrayList = this.mUpdateListeners;
            if (i9 >= size) {
                removeNullEntries(arrayList);
                return;
            } else {
                if (arrayList.get(i9) != null) {
                    this.mUpdateListeners.get(i9).onAnimationUpdate(this, this.mValue, this.mVelocity);
                }
                i9++;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setScheduler(FrameCallbackScheduler frameCallbackScheduler) {
        AnimationHandler animationHandler = this.mAnimationHandler;
        if (animationHandler == null || animationHandler.getScheduler() != frameCallbackScheduler) {
            if (this.mRunning) {
                throw new AndroidRuntimeException("Animations are still running and the animationhandler should not be set at this timming");
            }
            this.mAnimationHandler = new AnimationHandler(frameCallbackScheduler);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public T setStartValue(float f8) {
        this.mValue = f8;
        this.mStartValueIsSet = true;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public T setStartVelocity(float f8) {
        this.mVelocity = f8;
        return this;
    }

    public abstract void setValueThreshold(float f8);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public void start() {
        if (!getAnimationHandler().isCurrentThread()) {
            throw new AndroidRuntimeException("Animations may only be started on the same thread as the animation handler");
        }
        if (this.mRunning) {
            return;
        }
        startAnimationInternal();
    }

    public abstract boolean updateValueAndVelocity(long j9);

    public DynamicAnimation(FloatValueHolder floatValueHolder) {
        this.mVelocity = 0.0f;
        this.mValue = Float.MAX_VALUE;
        this.mStartValueIsSet = false;
        this.mRunning = false;
        this.mMaxValue = Float.MAX_VALUE;
        this.mMinValue = -Float.MAX_VALUE;
        this.mLastFrameTime = 0L;
        this.mEndListeners = new ArrayList<>();
        this.mUpdateListeners = new ArrayList<>();
        this.mTarget = null;
        this.mProperty = new DynamicAnimation$15(this, "FloatValueHolder", floatValueHolder);
        this.mMinVisibleChange = 1.0f;
    }
}
