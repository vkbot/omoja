package androidx.appcompat.graphics.drawable;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.StateSet;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class StateListDrawableCompat$StateListState extends DrawableContainerCompat$DrawableContainerState {
    int[][] mStateSets;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public StateListDrawableCompat$StateListState(StateListDrawableCompat$StateListState stateListDrawableCompat$StateListState, StateListDrawableCompat stateListDrawableCompat, Resources resources) {
        super(stateListDrawableCompat$StateListState, stateListDrawableCompat, resources);
        if (stateListDrawableCompat$StateListState != null) {
            this.mStateSets = stateListDrawableCompat$StateListState.mStateSets;
        } else {
            this.mStateSets = new int[getCapacity()][];
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int addStateSet(int[] iArr, Drawable drawable) {
        int iAddChild = addChild(drawable);
        this.mStateSets[iAddChild] = iArr;
        return iAddChild;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat$DrawableContainerState
    public void growArray(int i9, int i10) {
        super.growArray(i9, i10);
        int[][] iArr = new int[i10][];
        System.arraycopy(this.mStateSets, 0, iArr, 0, i9);
        this.mStateSets = iArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int indexOfStateSet(int[] iArr) {
        int[][] iArr2 = this.mStateSets;
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            if (StateSet.stateSetMatches(iArr2[i9], iArr)) {
                return i9;
            }
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat$DrawableContainerState
    public void mutate() {
        int[][] iArr = this.mStateSets;
        int[][] iArr2 = new int[iArr.length][];
        for (int length = iArr.length - 1; length >= 0; length--) {
            int[] iArr3 = this.mStateSets[length];
            iArr2[length] = iArr3 != null ? (int[]) iArr3.clone() : null;
        }
        this.mStateSets = iArr2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable$ConstantState
    @NonNull
    public Drawable newDrawable() {
        return new StateListDrawableCompat(this, null);
    }

    @Override // android.graphics.drawable.Drawable$ConstantState
    @NonNull
    public Drawable newDrawable(Resources resources) {
        return new StateListDrawableCompat(this, resources);
    }
}
