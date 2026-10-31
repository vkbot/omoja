package androidx.appcompat.graphics.drawable;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.StateSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AnimatedStateListDrawableCompat$AnimatedStateListState extends StateListDrawableCompat$StateListState {
    private static final long REVERSED_BIT = 4294967296L;
    private static final long REVERSIBLE_FLAG_BIT = 8589934592L;
    SparseArrayCompat<Integer> mStateIds;
    LongSparseArray<Long> mTransitions;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AnimatedStateListDrawableCompat$AnimatedStateListState(@Nullable AnimatedStateListDrawableCompat$AnimatedStateListState animatedStateListDrawableCompat$AnimatedStateListState, @NonNull AnimatedStateListDrawableCompat animatedStateListDrawableCompat, @Nullable Resources resources) {
        super(animatedStateListDrawableCompat$AnimatedStateListState, animatedStateListDrawableCompat, resources);
        if (animatedStateListDrawableCompat$AnimatedStateListState != null) {
            this.mTransitions = animatedStateListDrawableCompat$AnimatedStateListState.mTransitions;
            this.mStateIds = animatedStateListDrawableCompat$AnimatedStateListState.mStateIds;
        } else {
            this.mTransitions = new LongSparseArray<>();
            this.mStateIds = new SparseArrayCompat<>();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static long generateTransitionKey(int i9, int i10) {
        return ((long) i10) | (((long) i9) << 32);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int addStateSet(@NonNull int[] iArr, @NonNull Drawable drawable, int i9) {
        int iAddStateSet = super.addStateSet(iArr, drawable);
        this.mStateIds.put(iAddStateSet, Integer.valueOf(i9));
        return iAddStateSet;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int addTransition(int i9, int i10, @NonNull Drawable drawable, boolean z8) {
        int iAddChild = addChild(drawable);
        long jGenerateTransitionKey = generateTransitionKey(i9, i10);
        long j9 = z8 ? REVERSIBLE_FLAG_BIT : 0L;
        long j10 = iAddChild;
        this.mTransitions.append(jGenerateTransitionKey, Long.valueOf(j10 | j9));
        if (z8) {
            this.mTransitions.append(generateTransitionKey(i10, i9), Long.valueOf(REVERSED_BIT | j10 | j9));
        }
        return iAddChild;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getKeyframeIdAt(int i9) {
        if (i9 < 0) {
            return 0;
        }
        return this.mStateIds.get(i9, 0).intValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int indexOfKeyframe(@NonNull int[] iArr) {
        int iIndexOfStateSet = super.indexOfStateSet(iArr);
        return iIndexOfStateSet >= 0 ? iIndexOfStateSet : super.indexOfStateSet(StateSet.WILD_CARD);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int indexOfTransition(int i9, int i10) {
        return (int) this.mTransitions.get(generateTransitionKey(i9, i10), -1L).longValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isTransitionReversed(int i9, int i10) {
        return (this.mTransitions.get(generateTransitionKey(i9, i10), -1L).longValue() & REVERSED_BIT) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat$StateListState, androidx.appcompat.graphics.drawable.DrawableContainerCompat$DrawableContainerState
    public void mutate() {
        this.mTransitions = this.mTransitions.clone();
        this.mStateIds = this.mStateIds.clone();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat$StateListState, android.graphics.drawable.Drawable$ConstantState
    @NonNull
    public Drawable newDrawable() {
        return new AnimatedStateListDrawableCompat(this, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean transitionHasReversibleFlag(int i9, int i10) {
        return (this.mTransitions.get(generateTransitionKey(i9, i10), -1L).longValue() & REVERSIBLE_FLAG_BIT) != 0;
    }

    @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat$StateListState, android.graphics.drawable.Drawable$ConstantState
    @NonNull
    public Drawable newDrawable(Resources resources) {
        return new AnimatedStateListDrawableCompat(this, resources);
    }
}
