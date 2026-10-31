package androidx.transition;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.core.content.res.TypedArrayUtils;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class TransitionSet extends Transition {
    private static final int FLAG_CHANGE_EPICENTER = 8;
    private static final int FLAG_CHANGE_INTERPOLATOR = 1;
    private static final int FLAG_CHANGE_PATH_MOTION = 4;
    private static final int FLAG_CHANGE_PROPAGATION = 2;
    public static final int ORDERING_SEQUENTIAL = 1;
    public static final int ORDERING_TOGETHER = 0;
    private int mChangeFlags;
    int mCurrentListeners;
    private boolean mPlayTogether;
    boolean mStarted;
    ArrayList<Transition> mTransitions;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TransitionSet(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTransitions = new ArrayList<>();
        this.mPlayTogether = true;
        this.mStarted = false;
        this.mChangeFlags = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.TRANSITION_SET);
        setOrdering(TypedArrayUtils.getNamedInt(typedArrayObtainStyledAttributes, (XmlResourceParser) attributeSet, "transitionOrdering", 0, 0));
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void addTransitionInternal(@NonNull Transition transition) {
        this.mTransitions.add(transition);
        transition.mParent = this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int indexOfTransition(long j9) {
        int i9 = 1;
        while (true) {
            int size = this.mTransitions.size();
            ArrayList<Transition> arrayList = this.mTransitions;
            if (i9 >= size) {
                return arrayList.size() - 1;
            }
            if (arrayList.get(i9).mSeekOffsetInParent > j9) {
                return i9 - 1;
            }
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setupStartEndListeners() {
        TransitionSet$TransitionSetListener transitionSet$TransitionSetListener = new TransitionSet$TransitionSetListener(this);
        ArrayList<Transition> arrayList = this.mTransitions;
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Transition transition = arrayList.get(i9);
            i9++;
            transition.addListener(transitionSet$TransitionSetListener);
        }
        this.mCurrentListeners = this.mTransitions.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet addListener(@NonNull Transition$TransitionListener transition$TransitionListener) {
        return (TransitionSet) super.addListener(transition$TransitionListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet addTarget(@NonNull View view) {
        for (int i9 = 0; i9 < this.mTransitions.size(); i9++) {
            this.mTransitions.get(i9).addTarget(view);
        }
        return (TransitionSet) super.addTarget(view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public TransitionSet addTransition(@NonNull Transition transition) {
        addTransitionInternal(transition);
        long j9 = this.mDuration;
        if (j9 >= 0) {
            transition.setDuration(j9);
        }
        if ((this.mChangeFlags & 1) != 0) {
            transition.setInterpolator(getInterpolator());
        }
        if ((this.mChangeFlags & 2) != 0) {
            transition.setPropagation(getPropagation());
        }
        if ((this.mChangeFlags & 4) != 0) {
            transition.setPathMotion(getPathMotion());
        }
        if ((this.mChangeFlags & 8) != 0) {
            transition.setEpicenterCallback(getEpicenterCallback());
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void cancel() {
        super.cancel();
        int size = this.mTransitions.size();
        for (int i9 = 0; i9 < size; i9++) {
            this.mTransitions.get(i9).cancel();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        if (isValidTarget(transitionValues.view)) {
            ArrayList<Transition> arrayList = this.mTransitions;
            int size = arrayList.size();
            int i9 = 0;
            while (i9 < size) {
                Transition transition = arrayList.get(i9);
                i9++;
                Transition transition2 = transition;
                if (transition2.isValidTarget(transitionValues.view)) {
                    transition2.captureEndValues(transitionValues);
                    transitionValues.mTargetedTransitions.add(transition2);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    public void capturePropagationValues(TransitionValues transitionValues) {
        super.capturePropagationValues(transitionValues);
        int size = this.mTransitions.size();
        for (int i9 = 0; i9 < size; i9++) {
            this.mTransitions.get(i9).capturePropagationValues(transitionValues);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        if (isValidTarget(transitionValues.view)) {
            ArrayList<Transition> arrayList = this.mTransitions;
            int size = arrayList.size();
            int i9 = 0;
            while (i9 < size) {
                Transition transition = arrayList.get(i9);
                i9++;
                Transition transition2 = transition;
                if (transition2.isValidTarget(transitionValues.view)) {
                    transition2.captureStartValues(transitionValues);
                    transitionValues.mTargetedTransitions.add(transition2);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    @NonNull
    public Transition clone() {
        TransitionSet transitionSet = (TransitionSet) super.clone();
        transitionSet.mTransitions = new ArrayList<>();
        int size = this.mTransitions.size();
        for (int i9 = 0; i9 < size; i9++) {
            transitionSet.addTransitionInternal(this.mTransitions.get(i9).clone());
        }
        return transitionSet;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    public void createAnimators(@NonNull ViewGroup viewGroup, @NonNull TransitionValuesMaps transitionValuesMaps, @NonNull TransitionValuesMaps transitionValuesMaps2, @NonNull ArrayList<TransitionValues> arrayList, @NonNull ArrayList<TransitionValues> arrayList2) {
        long startDelay = getStartDelay();
        int size = this.mTransitions.size();
        for (int i9 = 0; i9 < size; i9++) {
            Transition transition = this.mTransitions.get(i9);
            if (startDelay > 0 && (this.mPlayTogether || i9 == 0)) {
                long startDelay2 = transition.getStartDelay();
                if (startDelay2 > 0) {
                    transition.setStartDelay(startDelay2 + startDelay);
                } else {
                    transition.setStartDelay(startDelay);
                }
            }
            transition.createAnimators(viewGroup, transitionValuesMaps, transitionValuesMaps2, arrayList, arrayList2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    @NonNull
    public Transition excludeTarget(@NonNull View view, boolean z8) {
        for (int i9 = 0; i9 < this.mTransitions.size(); i9++) {
            this.mTransitions.get(i9).excludeTarget(view, z8);
        }
        return super.excludeTarget(view, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void forceToEnd(ViewGroup viewGroup) {
        super.forceToEnd(viewGroup);
        int size = this.mTransitions.size();
        for (int i9 = 0; i9 < size; i9++) {
            this.mTransitions.get(i9).forceToEnd(viewGroup);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getOrdering() {
        return !this.mPlayTogether ? 1 : 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Transition getTransitionAt(int i9) {
        if (i9 < 0 || i9 >= this.mTransitions.size()) {
            return null;
        }
        return this.mTransitions.get(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getTransitionCount() {
        return this.mTransitions.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    public boolean hasAnimators() {
        for (int i9 = 0; i9 < this.mTransitions.size(); i9++) {
            if (this.mTransitions.get(i9).hasAnimators()) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    public boolean isSeekingSupported() {
        int size = this.mTransitions.size();
        for (int i9 = 0; i9 < size; i9++) {
            if (!this.mTransitions.get(i9).isSeekingSupported()) {
                return false;
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void pause(@Nullable View view) {
        super.pause(view);
        int size = this.mTransitions.size();
        for (int i9 = 0; i9 < size; i9++) {
            this.mTransitions.get(i9).pause(view);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    @RequiresApi(34)
    public void prepareAnimatorsForSeeking() {
        this.mTotalDuration = 0L;
        TransitionSet$2 transitionSet$2 = new TransitionSet$2(this);
        for (int i9 = 0; i9 < this.mTransitions.size(); i9++) {
            Transition transition = this.mTransitions.get(i9);
            transition.addListener(transitionSet$2);
            transition.prepareAnimatorsForSeeking();
            long totalDurationMillis = transition.getTotalDurationMillis();
            boolean z8 = this.mPlayTogether;
            long j9 = this.mTotalDuration;
            if (z8) {
                this.mTotalDuration = Math.max(j9, totalDurationMillis);
            } else {
                transition.mSeekOffsetInParent = j9;
                this.mTotalDuration = j9 + totalDurationMillis;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet removeListener(@NonNull Transition$TransitionListener transition$TransitionListener) {
        return (TransitionSet) super.removeListener(transition$TransitionListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet removeTarget(@IdRes int i9) {
        for (int i10 = 0; i10 < this.mTransitions.size(); i10++) {
            this.mTransitions.get(i10).removeTarget(i9);
        }
        return (TransitionSet) super.removeTarget(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public TransitionSet removeTransition(@NonNull Transition transition) {
        this.mTransitions.remove(transition);
        transition.mParent = null;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void resume(@Nullable View view) {
        super.resume(view);
        int size = this.mTransitions.size();
        for (int i9 = 0; i9 < size; i9++) {
            this.mTransitions.get(i9).resume(view);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void runAnimators() {
        ArrayList<Transition> arrayList;
        if (this.mTransitions.isEmpty()) {
            start();
            end();
            return;
        }
        setupStartEndListeners();
        int i9 = 0;
        if (this.mPlayTogether) {
            ArrayList<Transition> arrayList2 = this.mTransitions;
            int size = arrayList2.size();
            while (i9 < size) {
                Transition transition = arrayList2.get(i9);
                i9++;
                transition.runAnimators();
            }
            return;
        }
        int i10 = 1;
        while (true) {
            int size2 = this.mTransitions.size();
            arrayList = this.mTransitions;
            if (i10 >= size2) {
                break;
            }
            arrayList.get(i10 - 1).addListener(new TransitionSet$1(this, this.mTransitions.get(i10)));
            i10++;
        }
        Transition transition2 = arrayList.get(0);
        if (transition2 != null) {
            transition2.runAnimators();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    public void setCanRemoveViews(boolean z8) {
        super.setCanRemoveViews(z8);
        int size = this.mTransitions.size();
        for (int i9 = 0; i9 < size; i9++) {
            this.mTransitions.get(i9).setCanRemoveViews(z8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:48:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:56:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:65:? A[RETURN, SYNTHETIC] */
    @Override // androidx.transition.Transition
    @RequiresApi(34)
    public void setCurrentPlayTimeMillis(long j9, long j10) {
        long j11;
        long totalDurationMillis = getTotalDurationMillis();
        long j12 = 0;
        if (this.mParent != null) {
            if (j9 < 0 && j10 < 0) {
                return;
            }
            if (j9 > totalDurationMillis && j10 > totalDurationMillis) {
                return;
            }
        }
        boolean z8 = j9 < j10;
        if ((j9 >= 0 && j10 < 0) || (j9 <= totalDurationMillis && j10 > totalDurationMillis)) {
            this.mEnded = false;
            notifyListeners(Transition$TransitionNotification.ON_START, z8);
        }
        if (!this.mPlayTogether) {
            int iIndexOfTransition = indexOfTransition(j10);
            if (j9 >= j10) {
                while (true) {
                    if (iIndexOfTransition < this.mTransitions.size()) {
                        Transition transition = this.mTransitions.get(iIndexOfTransition);
                        long j13 = transition.mSeekOffsetInParent;
                        j11 = j12;
                        long j14 = j9 - j13;
                        if (j14 < j11) {
                            break;
                        }
                        transition.setCurrentPlayTimeMillis(j14, j10 - j13);
                        iIndexOfTransition++;
                        j12 = j11;
                    }
                }
            } else {
                j11 = 0;
                while (iIndexOfTransition >= 0) {
                    Transition transition2 = this.mTransitions.get(iIndexOfTransition);
                    long j15 = transition2.mSeekOffsetInParent;
                    long j16 = j9 - j15;
                    transition2.setCurrentPlayTimeMillis(j16, j10 - j15);
                    if (j16 >= 0) {
                        break;
                    } else {
                        iIndexOfTransition--;
                    }
                }
            }
            if (this.mParent != null) {
                if ((j9 > totalDurationMillis || j10 > totalDurationMillis) && (j9 >= 0 || j10 < j11)) {
                    return;
                }
                if (j9 > totalDurationMillis) {
                    this.mEnded = true;
                }
                notifyListeners(Transition$TransitionNotification.ON_END, z8);
            }
        }
        for (int i9 = 0; i9 < this.mTransitions.size(); i9++) {
            this.mTransitions.get(i9).setCurrentPlayTimeMillis(j9, j10);
        }
        j11 = j12;
        if (this.mParent != null) {
            if (j9 > totalDurationMillis) {
                return;
            } else {
                return;
            }
            if (j9 > totalDurationMillis) {
                this.mEnded = true;
            }
            notifyListeners(Transition$TransitionNotification.ON_END, z8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet setDuration(long j9) {
        ArrayList<Transition> arrayList;
        super.setDuration(j9);
        if (this.mDuration >= 0 && (arrayList = this.mTransitions) != null) {
            int size = arrayList.size();
            for (int i9 = 0; i9 < size; i9++) {
                this.mTransitions.get(i9).setDuration(j9);
            }
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    public void setEpicenterCallback(@Nullable Transition$EpicenterCallback transition$EpicenterCallback) {
        super.setEpicenterCallback(transition$EpicenterCallback);
        this.mChangeFlags |= 8;
        int size = this.mTransitions.size();
        for (int i9 = 0; i9 < size; i9++) {
            this.mTransitions.get(i9).setEpicenterCallback(transition$EpicenterCallback);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet setInterpolator(@Nullable TimeInterpolator timeInterpolator) {
        this.mChangeFlags |= 1;
        ArrayList<Transition> arrayList = this.mTransitions;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i9 = 0; i9 < size; i9++) {
                this.mTransitions.get(i9).setInterpolator(timeInterpolator);
            }
        }
        return (TransitionSet) super.setInterpolator(timeInterpolator);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public TransitionSet setOrdering(int i9) {
        if (i9 == 0) {
            this.mPlayTogether = true;
            return this;
        }
        if (i9 != 1) {
            throw new AndroidRuntimeException(ai.onnxruntime.a.e(i9, "Invalid parameter for TransitionSet ordering: "));
        }
        this.mPlayTogether = false;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    public void setPathMotion(@Nullable PathMotion pathMotion) {
        super.setPathMotion(pathMotion);
        this.mChangeFlags |= 4;
        if (this.mTransitions != null) {
            for (int i9 = 0; i9 < this.mTransitions.size(); i9++) {
                this.mTransitions.get(i9).setPathMotion(pathMotion);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    public void setPropagation(@Nullable TransitionPropagation transitionPropagation) {
        super.setPropagation(transitionPropagation);
        this.mChangeFlags |= 2;
        int size = this.mTransitions.size();
        for (int i9 = 0; i9 < size; i9++) {
            this.mTransitions.get(i9).setPropagation(transitionPropagation);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet setStartDelay(long j9) {
        return (TransitionSet) super.setStartDelay(j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    public String toString(String str) {
        String string = super.toString(str);
        for (int i9 = 0; i9 < this.mTransitions.size(); i9++) {
            StringBuilder sbW = ai.onnxruntime.a.w(string, "\n");
            sbW.append(this.mTransitions.get(i9).toString(str + "  "));
            string = sbW.toString();
        }
        return string;
    }

    @Override // androidx.transition.Transition
    @NonNull
    public /* bridge */ /* synthetic */ Transition addListener(@NonNull Transition$TransitionListener transition$TransitionListener) {
        return addListener(transition$TransitionListener);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public /* bridge */ /* synthetic */ Transition removeListener(@NonNull Transition$TransitionListener transition$TransitionListener) {
        return removeListener(transition$TransitionListener);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public /* bridge */ /* synthetic */ Transition setStartDelay(long j9) {
        return setStartDelay(j9);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public Transition excludeTarget(@NonNull String str, boolean z8) {
        for (int i9 = 0; i9 < this.mTransitions.size(); i9++) {
            this.mTransitions.get(i9).excludeTarget(str, z8);
        }
        return super.excludeTarget(str, z8);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public /* bridge */ /* synthetic */ Transition addTarget(@NonNull View view) {
        return addTarget(view);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public /* bridge */ /* synthetic */ Transition removeTarget(@NonNull View view) {
        return removeTarget(view);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public /* bridge */ /* synthetic */ Transition addTarget(@NonNull Class cls) {
        return addTarget((Class<?>) cls);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public Transition excludeTarget(int i9, boolean z8) {
        for (int i10 = 0; i10 < this.mTransitions.size(); i10++) {
            this.mTransitions.get(i10).excludeTarget(i9, z8);
        }
        return super.excludeTarget(i9, z8);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public /* bridge */ /* synthetic */ Transition removeTarget(@NonNull Class cls) {
        return removeTarget((Class<?>) cls);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public /* bridge */ /* synthetic */ Transition addTarget(@NonNull String str) {
        return addTarget(str);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public /* bridge */ /* synthetic */ Transition removeTarget(@NonNull String str) {
        return removeTarget(str);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public /* bridge */ /* synthetic */ Transition addTarget(@IdRes int i9) {
        return addTarget(i9);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public /* bridge */ /* synthetic */ Transition removeTarget(@IdRes int i9) {
        return removeTarget(i9);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet addTarget(@IdRes int i9) {
        for (int i10 = 0; i10 < this.mTransitions.size(); i10++) {
            this.mTransitions.get(i10).addTarget(i9);
        }
        return (TransitionSet) super.addTarget(i9);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public Transition excludeTarget(@NonNull Class<?> cls, boolean z8) {
        for (int i9 = 0; i9 < this.mTransitions.size(); i9++) {
            this.mTransitions.get(i9).excludeTarget(cls, z8);
        }
        return super.excludeTarget(cls, z8);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet removeTarget(@NonNull View view) {
        for (int i9 = 0; i9 < this.mTransitions.size(); i9++) {
            this.mTransitions.get(i9).removeTarget(view);
        }
        return (TransitionSet) super.removeTarget(view);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet addTarget(@NonNull String str) {
        for (int i9 = 0; i9 < this.mTransitions.size(); i9++) {
            this.mTransitions.get(i9).addTarget(str);
        }
        return (TransitionSet) super.addTarget(str);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet removeTarget(@NonNull Class<?> cls) {
        for (int i9 = 0; i9 < this.mTransitions.size(); i9++) {
            this.mTransitions.get(i9).removeTarget(cls);
        }
        return (TransitionSet) super.removeTarget(cls);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public /* bridge */ /* synthetic */ Transition setDuration(long j9) {
        return setDuration(j9);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public /* bridge */ /* synthetic */ Transition setInterpolator(@Nullable TimeInterpolator timeInterpolator) {
        return setInterpolator(timeInterpolator);
    }

    public TransitionSet() {
        this.mTransitions = new ArrayList<>();
        this.mPlayTogether = true;
        this.mStarted = false;
        this.mChangeFlags = 0;
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet addTarget(@NonNull Class<?> cls) {
        for (int i9 = 0; i9 < this.mTransitions.size(); i9++) {
            this.mTransitions.get(i9).addTarget(cls);
        }
        return (TransitionSet) super.addTarget(cls);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet removeTarget(@NonNull String str) {
        for (int i9 = 0; i9 < this.mTransitions.size(); i9++) {
            this.mTransitions.get(i9).removeTarget(str);
        }
        return (TransitionSet) super.removeTarget(str);
    }

    @Override // androidx.transition.Transition
    @NonNull
    /* JADX INFO: renamed from: clone */
    public /* bridge */ /* synthetic */ Object mo82clone() {
        return clone();
    }
}
