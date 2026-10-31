package androidx.transition;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class SidePropagation extends VisibilityPropagation {
    private float mPropagationSpeed = 3.0f;
    private int mSide = 80;

    /* JADX WARN: Code duplicated, block: B:6:0x0010  */
    /* JADX WARN: Code duplicated, block: B:7:0x0012  */
    private int distance(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        int i18 = this.mSide;
        if (i18 == 8388611) {
            if (view.getLayoutDirection() == 1) {
                i18 = 5;
            } else {
                i18 = 3;
            }
        } else if (i18 == 8388613) {
            if (view.getLayoutDirection() == 1) {
                i18 = 3;
            } else {
                i18 = 5;
            }
        }
        if (i18 == 3) {
            return Math.abs(i13 - i11) + (i16 - i10);
        }
        if (i18 == 5) {
            return Math.abs(i13 - i11) + (i10 - i14);
        }
        if (i18 == 48) {
            return Math.abs(i12 - i10) + (i17 - i11);
        }
        if (i18 != 80) {
            return 0;
        }
        return Math.abs(i12 - i10) + (i11 - i15);
    }

    private int getMaxDistance(ViewGroup viewGroup) {
        int i10 = this.mSide;
        return (i10 == 3 || i10 == 5 || i10 == 8388611 || i10 == 8388613) ? viewGroup.getWidth() : viewGroup.getHeight();
    }

    @Override // androidx.transition.TransitionPropagation
    public long getStartDelay(@NonNull ViewGroup viewGroup, @NonNull Transition transition, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        int i10;
        int i11;
        int iCenterY;
        int i12;
        TransitionValues transitionValues3 = transitionValues;
        if (transitionValues3 == null && transitionValues2 == null) {
            return 0L;
        }
        Rect epicenter = transition.getEpicenter();
        if (transitionValues2 == null || getViewVisibility(transitionValues3) == 0) {
            i10 = -1;
        } else {
            transitionValues3 = transitionValues2;
            i10 = 1;
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
            i12 = height;
            iCenterY = epicenter.centerY();
            i11 = iCenterX;
        } else {
            i11 = (iRound + width) / 2;
            iCenterY = (iRound2 + height) / 2;
            i12 = height;
        }
        float fDistance = distance(viewGroup, viewX, viewY, i11, iCenterY, iRound, iRound2, width, i12) / getMaxDistance(viewGroup);
        long duration = transition.getDuration();
        if (duration < 0) {
            duration = 300;
        }
        return Math.round(((duration * ((long) i10)) / this.mPropagationSpeed) * fDistance);
    }

    public void setPropagationSpeed(float f8) {
        if (f8 != 0.0f) {
            this.mPropagationSpeed = f8;
        } else {
            C1929i.m3029k("propagationSpeed may not be 0");
        }
    }

    public void setSide(int i10) {
        this.mSide = i10;
    }
}
