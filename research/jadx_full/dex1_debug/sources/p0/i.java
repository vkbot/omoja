package p0;

import android.os.Handler;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnTouchListener;
import android.view.WindowManager;
import android.view.WindowManager$LayoutParams;
import e0.m;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i implements View$OnTouchListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f4561b;
    public float c;
    public int d;
    public int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f4562f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ j f4563g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i(j jVar) {
        this.f4563g = jVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:43:0x015d  */
    @Override // android.view.View$OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        j jVar = this.f4563g;
        e eVar = jVar.f4567b;
        if (!jVar.f4573k) {
            WindowManager windowManager = jVar.f4569g;
            WindowManager$LayoutParams windowManager$LayoutParams = jVar.f4570h;
            if (windowManager != null && windowManager$LayoutParams != null) {
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked == 0) {
                    this.f4561b = motionEvent.getRawX();
                    this.c = motionEvent.getRawY();
                    this.d = windowManager$LayoutParams.x;
                    this.e = windowManager$LayoutParams.y;
                    this.f4562f = false;
                    return true;
                }
                if (actionMasked == 1) {
                    int i9 = windowManager$LayoutParams.x;
                    int i10 = windowManager$LayoutParams.y;
                    eVar.getClass();
                    h0.b.o().saveInt(e.f4553f, Math.max(0, i9));
                    h0.b.o().saveInt(e.f4554g, Math.max(0, i10));
                    if (!this.f4562f) {
                        Handler handler = jVar.d;
                        g gVar = jVar.f4568f;
                        handler.removeCallbacks(gVar);
                        jVar.f4572j++;
                        Log.i(j.f4564l, m.h(new byte[]{-100, 80, -124, 105, -109, 64, -50, -94, -123, 84, -54, 111, -36, 86, -52, -65, -37}, new byte[]{-26, 63, -22, 12, -77, 35, -94, -53}) + jVar.f4572j);
                        if (jVar.f4571i != null) {
                            eVar.getClass();
                            if (e.e() && jVar.f4572j >= 4) {
                                jVar.f4571i.animate().cancel();
                                jVar.f4571i.animate().alpha((Math.min(1.0f, Math.max(0, jVar.f4572j - 4) / Math.max(1, 10)) * 0.56000006f) + 0.16f).setDuration(160L).start();
                                jVar.g(m.h(new byte[]{-23, 83, -118, -39, 106, 90, -93, -8, -5}, new byte[]{-54, 18, -53, -24, 91, 107, -110, -55}));
                            }
                        }
                        if (jVar.f4572j >= 14) {
                            eVar.getClass();
                            if (!e.e()) {
                                handler.postDelayed(gVar, 1300L);
                            } else if (!jVar.f4573k) {
                                jVar.f4573k = true;
                                handler.removeCallbacks(gVar);
                                jVar.i(0, 1);
                                jVar.e.execute(new g(jVar, 1));
                                return true;
                            }
                        } else {
                            handler.postDelayed(gVar, 1300L);
                        }
                    }
                } else if (actionMasked == 2) {
                    windowManager$LayoutParams.x = Math.max(0, Math.round(motionEvent.getRawX() - this.f4561b) + this.d);
                    windowManager$LayoutParams.y = Math.max(0, Math.round(motionEvent.getRawY() - this.c) + this.e);
                    windowManager.updateViewLayout(view, windowManager$LayoutParams);
                    this.f4562f = this.f4562f || Math.abs(motionEvent.getRawX() - this.f4561b) > ((float) jVar.c(4)) || Math.abs(motionEvent.getRawY() - this.c) > ((float) jVar.c(4));
                    return true;
                }
            }
            return false;
        }
        return true;
    }
}
