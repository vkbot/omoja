package e3;

import android.support.v4.media.h;
import android.view.View;
import android.view.ViewParent;
import androidx.customview.widget.ViewDragHelper$Callback;
import com.google.android.material.behavior.SwipeDismissBehavior;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e extends ViewDragHelper$Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2034a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2035b = -1;
    public final /* synthetic */ SwipeDismissBehavior c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(SwipeDismissBehavior swipeDismissBehavior) {
        this.c = swipeDismissBehavior;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public final int clampViewPositionHorizontal(View view, int i9, int i10) {
        int width;
        int width2;
        boolean z8 = view.getLayoutDirection() == 1;
        int i11 = this.c.e;
        if (i11 == 0) {
            width = this.f2034a;
            if (z8) {
                width -= view.getWidth();
                width2 = this.f2034a;
            } else {
                width2 = view.getWidth() + width;
            }
        } else {
            int i12 = this.f2034a;
            if (i11 != 1) {
                width = i12 - view.getWidth();
                width2 = view.getWidth() + this.f2034a;
            } else if (z8) {
                width2 = view.getWidth() + i12;
                width = i12;
            } else {
                width = i12 - view.getWidth();
                width2 = this.f2034a;
            }
        }
        return Math.min(Math.max(width, i9), width2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public final int clampViewPositionVertical(View view, int i9, int i10) {
        return view.getTop();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public final int getViewHorizontalDragRange(View view) {
        return view.getWidth();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public final void onViewCaptured(View view, int i9) {
        this.f2035b = i9;
        this.f2034a = view.getLeft();
        ViewParent parent = view.getParent();
        if (parent != null) {
            SwipeDismissBehavior swipeDismissBehavior = this.c;
            swipeDismissBehavior.d = true;
            parent.requestDisallowInterceptTouchEvent(true);
            swipeDismissBehavior.d = false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public final void onViewDragStateChanged(int i9) {
        if (this.c.f1153b != null) {
            if (i9 == 0) {
                h.j().t(null);
            } else if (i9 == 1 || i9 == 2) {
                h.j().p(null);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public final void onViewPositionChanged(View view, int i9, int i10, int i11, int i12) {
        float width = view.getWidth();
        SwipeDismissBehavior swipeDismissBehavior = this.c;
        float f8 = width * swipeDismissBehavior.f1155g;
        float width2 = view.getWidth() * swipeDismissBehavior.f1156h;
        float fAbs = Math.abs(i9 - this.f2034a);
        if (fAbs <= f8) {
            view.setAlpha(1.0f);
        } else if (fAbs >= width2) {
            view.setAlpha(0.0f);
        } else {
            view.setAlpha(Math.min(Math.max(0.0f, 1.0f - ((fAbs - f8) / (width2 - f8))), 1.0f));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:27:0x0050  */
    /* JADX WARN: Code duplicated, block: B:29:0x0054  */
    /* JADX WARN: Code duplicated, block: B:32:0x005d  */
    /* JADX WARN: Code duplicated, block: B:33:0x005f  */
    /* JADX WARN: Code duplicated, block: B:35:0x0065  */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public final void onViewReleased(View view, float f8, float f9) {
        int i9;
        int left;
        int i10;
        b4.f fVar;
        this.f2035b = -1;
        int width = view.getWidth();
        boolean z8 = false;
        SwipeDismissBehavior swipeDismissBehavior = this.c;
        if (f8 != 0.0f) {
            boolean z9 = view.getLayoutDirection() == 1;
            int i11 = swipeDismissBehavior.e;
            if (i11 != 2 && (i11 != 0 ? i11 != 1 || (!z9 ? f8 < 0.0f : f8 > 0.0f) : !z9 ? f8 > 0.0f : f8 < 0.0f)) {
                i9 = this.f2034a;
            } else {
                if (f8 >= 0.0f) {
                    left = view.getLeft();
                    i10 = this.f2034a;
                    if (left < i10) {
                        i9 = this.f2034a - width;
                    } else {
                        i9 = i10 + width;
                    }
                } else {
                    i9 = this.f2034a - width;
                }
                z8 = true;
            }
        } else {
            if (Math.abs(view.getLeft() - this.f2034a) >= Math.round(view.getWidth() * swipeDismissBehavior.f1154f)) {
                if (f8 >= 0.0f) {
                    left = view.getLeft();
                    i10 = this.f2034a;
                    if (left < i10) {
                        i9 = this.f2034a - width;
                    } else {
                        i9 = i10 + width;
                    }
                } else {
                    i9 = this.f2034a - width;
                }
                z8 = true;
            } else {
                i9 = this.f2034a;
            }
        }
        if (swipeDismissBehavior.f1152a.settleCapturedViewAt(i9, view.getTop())) {
            view.postOnAnimation(new g(swipeDismissBehavior, view, z8, 0));
        } else {
            if (!z8 || (fVar = swipeDismissBehavior.f1153b) == null) {
                return;
            }
            fVar.a(view);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public final boolean tryCaptureView(View view, int i9) {
        int i10 = this.f2035b;
        return (i10 == -1 || i10 == i9) && this.c.a(view);
    }
}
