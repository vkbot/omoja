package androidx.transition;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import j1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SidePropagation extends VisibilityPropagation {
    private float mPropagationSpeed = 3.0f;
    private int mSide = 80;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:6:0x0010  */
    /* JADX WARN: Code duplicated, block: B:7:0x0012  */
    private int distance(View view, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        int i17 = this.mSide;
        if (i17 == 8388611) {
            if (view.getLayoutDirection() == 1) {
                i17 = 5;
            } else {
                i17 = 3;
            }
        } else if (i17 == 8388613) {
            if (view.getLayoutDirection() == 1) {
                i17 = 3;
            } else {
                i17 = 5;
            }
        }
        if (i17 == 3) {
            return Math.abs(i12 - i10) + (i15 - i9);
        }
        if (i17 == 5) {
            return Math.abs(i12 - i10) + (i9 - i13);
        }
        if (i17 == 48) {
            return Math.abs(i11 - i9) + (i16 - i10);
        }
        if (i17 != 80) {
            return 0;
        }
        return Math.abs(i11 - i9) + (i10 - i14);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getMaxDistance(ViewGroup viewGroup) {
        int i9 = this.mSide;
        return (i9 == 3 || i9 == 5 || i9 == 8388611 || i9 == 8388613) ? viewGroup.getWidth() : viewGroup.getHeight();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.TransitionPropagation
    public long getStartDelay(@NonNull ViewGroup viewGroup, @NonNull Transition transition, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        int i9;
        int i10;
        int iCenterY;
        int i11;
        TransitionValues transitionValues3 = transitionValues;
        if (transitionValues3 == null && transitionValues2 == null) {
            return 0L;
        }
        Rect epicenter = transition.getEpicenter();
        if (transitionValues2 == null || getViewVisibility(transitionValues3) == 0) {
            i9 = -1;
        } else {
            transitionValues3 = transitionValues2;
            i9 = 1;
        }
        int viewX = getViewX(transitionValues3);
        int viewY = getViewY(transitionValues3);
        int[] iArr = new int[2];
        viewGroup.getLocationOnScreen(iArr);
        int iRound = Math.round(viewGroup.getTranslationX()) + iArr[0];
        int iRound2 = Math.round(viewGroup.getTranslationY()) + iArr[1];
        int width = viewGroup.getWidth() + iRound;
        int height = viewGroup.getHeight() + iRound2;
        if (epicenter != null) {
            int iCenterX = epicenter.centerX();
            i11 = height;
            iCenterY = epicenter.centerY();
            i10 = iCenterX;
        } else {
            i10 = (iRound + width) / 2;
            iCenterY = (iRound2 + height) / 2;
            i11 = height;
        }
        float fDistance = distance(viewGroup, viewX, viewY, i10, iCenterY, iRound, iRound2, width, i11) / getMaxDistance(viewGroup);
        long duration = transition.getDuration();
        if (duration < 0) {
            duration = 300;
        }
        return Math.round(((duration * ((long) i9)) / this.mPropagationSpeed) * fDistance);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPropagationSpeed(float f8) {
        if (f8 != 0.0f) {
            this.mPropagationSpeed = f8;
        } else {
            i.k("propagationSpeed may not be 0");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSide(int i9) {
        this.mSide = i9;
    }
}
