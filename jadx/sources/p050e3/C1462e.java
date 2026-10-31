package p050e3;

import android.support.v4.media.C0090h;
import android.view.View;
import android.view.ViewParent;
import androidx.customview.widget.ViewDragHelper;
import com.google.android.material.behavior.SwipeDismissBehavior;
import p019b4.C0895f;

/* JADX INFO: renamed from: e3.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1462e extends ViewDragHelper.Callback {

    /* JADX INFO: renamed from: a */
    public int f3545a;

    /* JADX INFO: renamed from: b */
    public int f3546b = -1;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ SwipeDismissBehavior f3547c;

    public C1462e(SwipeDismissBehavior swipeDismissBehavior) {
        this.f3547c = swipeDismissBehavior;
    }

    @Override // androidx.customview.widget.ViewDragHelper.Callback
    public final int clampViewPositionHorizontal(View view, int i10, int i11) {
        int width;
        int width2;
        boolean z9 = view.getLayoutDirection() == 1;
        int i12 = this.f3547c.f2117e;
        if (i12 == 0) {
            width = this.f3545a;
            if (z9) {
                width -= view.getWidth();
                width2 = this.f3545a;
            } else {
                width2 = view.getWidth() + width;
            }
        } else {
            int i13 = this.f3545a;
            if (i12 != 1) {
                width = i13 - view.getWidth();
                width2 = view.getWidth() + this.f3545a;
            } else if (z9) {
                width2 = view.getWidth() + i13;
                width = i13;
            } else {
                width = i13 - view.getWidth();
                width2 = this.f3545a;
            }
        }
        return Math.min(Math.max(width, i10), width2);
    }

    @Override // androidx.customview.widget.ViewDragHelper.Callback
    public final int clampViewPositionVertical(View view, int i10, int i11) {
        return view.getTop();
    }

    @Override // androidx.customview.widget.ViewDragHelper.Callback
    public final int getViewHorizontalDragRange(View view) {
        return view.getWidth();
    }

    @Override // androidx.customview.widget.ViewDragHelper.Callback
    public final void onViewCaptured(View view, int i10) {
        this.f3546b = i10;
        this.f3545a = view.getLeft();
        ViewParent parent = view.getParent();
        if (parent != null) {
            SwipeDismissBehavior swipeDismissBehavior = this.f3547c;
            swipeDismissBehavior.f2116d = true;
            parent.requestDisallowInterceptTouchEvent(true);
            swipeDismissBehavior.f2116d = false;
        }
    }

    @Override // androidx.customview.widget.ViewDragHelper.Callback
    public final void onViewDragStateChanged(int i10) {
        if (this.f3547c.f2114b != null) {
            if (i10 == 0) {
                C0090h.m233j().m253t(null);
            } else if (i10 == 1 || i10 == 2) {
                C0090h.m233j().m250p(null);
            }
        }
    }

    @Override // androidx.customview.widget.ViewDragHelper.Callback
    public final void onViewPositionChanged(View view, int i10, int i11, int i12, int i13) {
        float width = view.getWidth();
        SwipeDismissBehavior swipeDismissBehavior = this.f3547c;
        float f8 = width * swipeDismissBehavior.f2119g;
        float width2 = view.getWidth() * swipeDismissBehavior.f2120h;
        float fAbs = Math.abs(i10 - this.f3545a);
        if (fAbs <= f8) {
            view.setAlpha(1.0f);
        } else if (fAbs >= width2) {
            view.setAlpha(0.0f);
        } else {
            view.setAlpha(Math.min(Math.max(0.0f, 1.0f - ((fAbs - f8) / (width2 - f8))), 1.0f));
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0050  */
    /* JADX WARN: Code duplicated, block: B:29:0x0054  */
    /* JADX WARN: Code duplicated, block: B:32:0x005d  */
    /* JADX WARN: Code duplicated, block: B:33:0x005f  */
    /* JADX WARN: Code duplicated, block: B:35:0x0065  */
    @Override // androidx.customview.widget.ViewDragHelper.Callback
    public final void onViewReleased(View view, float f8, float f10) {
        int i10;
        int left;
        int i11;
        C0895f c0895f;
        this.f3546b = -1;
        int width = view.getWidth();
        boolean z9 = false;
        SwipeDismissBehavior swipeDismissBehavior = this.f3547c;
        if (f8 != 0.0f) {
            boolean z10 = view.getLayoutDirection() == 1;
            int i12 = swipeDismissBehavior.f2117e;
            if (i12 != 2 && (i12 != 0 ? i12 != 1 || (!z10 ? f8 < 0.0f : f8 > 0.0f) : !z10 ? f8 > 0.0f : f8 < 0.0f)) {
                i10 = this.f3545a;
            } else {
                if (f8 >= 0.0f) {
                    left = view.getLeft();
                    i11 = this.f3545a;
                    if (left < i11) {
                        i10 = this.f3545a - width;
                    } else {
                        i10 = i11 + width;
                    }
                } else {
                    i10 = this.f3545a - width;
                }
                z9 = true;
            }
        } else {
            if (Math.abs(view.getLeft() - this.f3545a) >= Math.round(view.getWidth() * swipeDismissBehavior.f2118f)) {
                if (f8 >= 0.0f) {
                    left = view.getLeft();
                    i11 = this.f3545a;
                    if (left < i11) {
                        i10 = this.f3545a - width;
                    } else {
                        i10 = i11 + width;
                    }
                } else {
                    i10 = this.f3545a - width;
                }
                z9 = true;
            } else {
                i10 = this.f3545a;
            }
        }
        if (swipeDismissBehavior.f2113a.settleCapturedViewAt(i10, view.getTop())) {
            view.postOnAnimation(new RunnableC1464g(swipeDismissBehavior, view, z9, 0));
        } else {
            if (!z9 || (c0895f = swipeDismissBehavior.f2114b) == null) {
                return;
            }
            c0895f.m1026a(view);
        }
    }

    @Override // androidx.customview.widget.ViewDragHelper.Callback
    public final boolean tryCaptureView(View view, int i10) {
        int i11 = this.f3546b;
        return (i11 == -1 || i11 == i10) && this.f3547c.mo1753a(view);
    }
}
