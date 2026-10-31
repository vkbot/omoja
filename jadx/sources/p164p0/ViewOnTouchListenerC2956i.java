package p164p0;

import android.os.Handler;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import p047e0.AbstractC1387m;
import p078h0.C1652b;

/* JADX INFO: renamed from: p0.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnTouchListenerC2956i implements View.OnTouchListener {

    /* JADX INFO: renamed from: b */
    public float f8219b;

    /* JADX INFO: renamed from: c */
    public float f8220c;

    /* JADX INFO: renamed from: d */
    public int f8221d;

    /* JADX INFO: renamed from: e */
    public int f8222e;

    /* JADX INFO: renamed from: f */
    public boolean f8223f;

    /* JADX INFO: renamed from: g */
    public final /* synthetic */ C2957j f8224g;

    public ViewOnTouchListenerC2956i(C2957j c2957j) {
        this.f8224g = c2957j;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x015d  */
    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        C2957j c2957j = this.f8224g;
        C2952e c2952e = c2957j.f8228b;
        int i10 = 1;
        if (!c2957j.f8237k) {
            WindowManager windowManager = c2957j.f8233g;
            WindowManager.LayoutParams layoutParams = c2957j.f8234h;
            if (windowManager != null && layoutParams != null) {
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked == 0) {
                    this.f8219b = motionEvent.getRawX();
                    this.f8220c = motionEvent.getRawY();
                    this.f8221d = layoutParams.x;
                    this.f8222e = layoutParams.y;
                    this.f8223f = false;
                    return true;
                }
                if (actionMasked == 1) {
                    int i11 = layoutParams.x;
                    int i12 = layoutParams.y;
                    c2952e.getClass();
                    C1652b.m2745o().saveInt(C2952e.f8205f, Math.max(0, i11));
                    C1652b.m2745o().saveInt(C2952e.f8206g, Math.max(0, i12));
                    if (!this.f8223f) {
                        Handler handler = c2957j.f8230d;
                        RunnableC2954g runnableC2954g = c2957j.f8232f;
                        handler.removeCallbacks(runnableC2954g);
                        c2957j.f8236j++;
                        Log.i(C2957j.f8225l, AbstractC1387m.m2421h(new byte[]{-100, 80, -124, 105, -109, 64, -50, -94, -123, 84, -54, 111, -36, 86, -52, -65, -37}, new byte[]{-26, 63, -22, 12, -77, 35, -94, -53}) + c2957j.f8236j);
                        if (c2957j.f8235i != null) {
                            c2952e.getClass();
                            if (C2952e.m4727e() && c2957j.f8236j >= 4) {
                                c2957j.f8235i.animate().cancel();
                                c2957j.f8235i.animate().alpha((Math.min(1.0f, Math.max(0, c2957j.f8236j - 4) / Math.max(1, 10)) * 0.56000006f) + 0.16f).setDuration(160L).start();
                                c2957j.m4744g(AbstractC1387m.m2421h(new byte[]{-23, 83, -118, -39, 106, 90, -93, -8, -5}, new byte[]{-54, 18, -53, -24, 91, 107, -110, -55}));
                            }
                        }
                        if (c2957j.f8236j >= 14) {
                            c2952e.getClass();
                            if (!C2952e.m4727e()) {
                                handler.postDelayed(runnableC2954g, 1300L);
                            } else if (!c2957j.f8237k) {
                                c2957j.f8237k = true;
                                handler.removeCallbacks(runnableC2954g);
                                c2957j.m4746i(0, 1);
                                c2957j.f8231e.execute(new RunnableC2954g(c2957j, i10));
                                return true;
                            }
                        } else {
                            handler.postDelayed(runnableC2954g, 1300L);
                        }
                    }
                } else if (actionMasked == 2) {
                    layoutParams.x = Math.max(0, Math.round(motionEvent.getRawX() - this.f8219b) + this.f8221d);
                    layoutParams.y = Math.max(0, Math.round(motionEvent.getRawY() - this.f8220c) + this.f8222e);
                    windowManager.updateViewLayout(view, layoutParams);
                    this.f8223f = this.f8223f || Math.abs(motionEvent.getRawX() - this.f8219b) > ((float) c2957j.m4740c(4)) || Math.abs(motionEvent.getRawY() - this.f8220c) > ((float) c2957j.m4740c(4));
                    return true;
                }
            }
            return false;
        }
        return true;
    }
}
