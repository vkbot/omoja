package p235x0;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import java.util.function.Consumer;

/* JADX INFO: renamed from: x0.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnTouchListenerC3548b implements View.OnTouchListener {

    /* JADX INFO: renamed from: b */
    public float f10526b;

    /* JADX INFO: renamed from: c */
    public float f10527c;

    /* JADX INFO: renamed from: d */
    public int f10528d;

    /* JADX INFO: renamed from: e */
    public int f10529e;

    /* JADX INFO: renamed from: f */
    public boolean f10530f;

    /* JADX INFO: renamed from: g */
    public final /* synthetic */ C3559m f10531g;

    /* JADX INFO: renamed from: h */
    public final /* synthetic */ C3549c f10532h;

    public ViewOnTouchListenerC3548b(C3549c c3549c, C3559m c3559m) {
        this.f10532h = c3549c;
        this.f10531g = c3559m;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        Consumer consumer;
        int actionMasked = motionEvent.getActionMasked();
        C3549c c3549c = this.f10532h;
        if (actionMasked == 0) {
            this.f10526b = motionEvent.getRawX();
            this.f10527c = motionEvent.getRawY();
            this.f10530f = false;
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            this.f10528d = layoutParams.leftMargin;
            this.f10529e = layoutParams.topMargin;
            c3549c.getParent().requestDisallowInterceptTouchEvent(true);
            return true;
        }
        int actionMasked2 = motionEvent.getActionMasked();
        C3559m c3559m = this.f10531g;
        if (actionMasked2 == 2) {
            if (Math.hypot(motionEvent.getRawX() - this.f10526b, motionEvent.getRawY() - this.f10527c) > ViewConfiguration.get(c3549c.getContext()).getScaledTouchSlop()) {
                this.f10530f = true;
            }
            if (this.f10530f) {
                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) view.getLayoutParams();
                float fM5668o = c3549c.m5668o() * c3549c.getResources().getDisplayMetrics().density;
                int iM5675a = C3561o.m5675a(Math.round((((motionEvent.getRawX() + this.f10528d) - this.f10526b) / fM5668o) / 8.0f) * 8, 0, c3549c.m5659c() - (c3559m == null ? 64 : c3559m.m5674b()));
                int iM5675a2 = C3561o.m5675a(Math.round((((motionEvent.getRawY() + this.f10529e) - this.f10527c) / fM5668o) / 8.0f) * 8, c3549c.f10537e ? 40 : 0, c3549c.m5658b() - (c3559m != null ? c3559m.m5673a() : 64));
                layoutParams2.leftMargin = c3549c.m5669p(iM5675a);
                layoutParams2.topMargin = c3549c.m5669p(iM5675a2);
                view.setLayoutParams(layoutParams2);
                if (c3559m == null) {
                    C3561o c3561o = c3549c.f10535c;
                    c3561o.f10607n = iM5675a;
                    c3561o.f10608o = iM5675a2;
                    c3561o.f10613t = false;
                    return true;
                }
                if (c3549c.f10537e) {
                    c3559m.f10584g = iM5675a;
                    c3559m.f10585h = iM5675a2;
                    return true;
                }
                c3559m.f10586i = iM5675a;
                c3559m.f10587j = iM5675a2;
                return true;
            }
        } else if (motionEvent.getActionMasked() == 1 || motionEvent.getActionMasked() == 3) {
            c3549c.getParent().requestDisallowInterceptTouchEvent(false);
            if (motionEvent.getActionMasked() == 1 && !this.f10530f && c3559m != null && (consumer = c3549c.f10546n) != null) {
                consumer.accept(c3559m);
            }
            Runnable runnable = c3549c.f10545m;
            if (runnable != null) {
                runnable.run();
            }
        }
        return true;
    }
}
