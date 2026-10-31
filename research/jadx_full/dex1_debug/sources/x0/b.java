package x0;

import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnTouchListener;
import android.view.ViewConfiguration;
import android.widget.FrameLayout$LayoutParams;
import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b implements View$OnTouchListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f5959b;
    public float c;
    public int d;
    public int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f5960f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ m f5961g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ c f5962h;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(c cVar, m mVar) {
        this.f5962h = cVar;
        this.f5961g = mVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        Consumer consumer;
        int actionMasked = motionEvent.getActionMasked();
        c cVar = this.f5962h;
        if (actionMasked == 0) {
            this.f5959b = motionEvent.getRawX();
            this.c = motionEvent.getRawY();
            this.f5960f = false;
            FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams) view.getLayoutParams();
            this.d = frameLayout$LayoutParams.leftMargin;
            this.e = frameLayout$LayoutParams.topMargin;
            cVar.getParent().requestDisallowInterceptTouchEvent(true);
            return true;
        }
        int actionMasked2 = motionEvent.getActionMasked();
        m mVar = this.f5961g;
        if (actionMasked2 == 2) {
            if (Math.hypot(motionEvent.getRawX() - this.f5959b, motionEvent.getRawY() - this.c) > ViewConfiguration.get(cVar.getContext()).getScaledTouchSlop()) {
                this.f5960f = true;
            }
            if (this.f5960f) {
                FrameLayout$LayoutParams frameLayout$LayoutParams2 = (FrameLayout$LayoutParams) view.getLayoutParams();
                float fO = cVar.o() * cVar.getResources().getDisplayMetrics().density;
                int iA = o.a(Math.round((((motionEvent.getRawX() + this.d) - this.f5959b) / fO) / 8.0f) * 8, 0, cVar.c() - (mVar == null ? 64 : mVar.b()));
                int iA2 = o.a(Math.round((((motionEvent.getRawY() + this.e) - this.c) / fO) / 8.0f) * 8, cVar.e ? 40 : 0, cVar.b() - (mVar != null ? mVar.a() : 64));
                frameLayout$LayoutParams2.leftMargin = cVar.p(iA);
                frameLayout$LayoutParams2.topMargin = cVar.p(iA2);
                view.setLayoutParams(frameLayout$LayoutParams2);
                if (mVar == null) {
                    o oVar = cVar.c;
                    oVar.f6013n = iA;
                    oVar.f6014o = iA2;
                    oVar.t = false;
                    return true;
                }
                if (cVar.e) {
                    mVar.f5996g = iA;
                    mVar.f5997h = iA2;
                    return true;
                }
                mVar.f5998i = iA;
                mVar.f5999j = iA2;
                return true;
            }
        } else if (motionEvent.getActionMasked() == 1 || motionEvent.getActionMasked() == 3) {
            cVar.getParent().requestDisallowInterceptTouchEvent(false);
            if (motionEvent.getActionMasked() == 1 && !this.f5960f && mVar != null && (consumer = cVar.f5973n) != null) {
                consumer.accept(mVar);
            }
            Runnable runnable = cVar.f5972m;
            if (runnable != null) {
                runnable.run();
            }
        }
        return true;
    }
}
