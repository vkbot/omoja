package t1;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.example.navistart.LounchB;
import com.example.navistart.ModernMainActivity;
import com.google.protobuf.q;
import e0.p3;
import e0.x1;
import kotlin.io.encoding.Base64;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class j extends LinearLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f5355b;
    public final Handler c;
    public final i d;
    public final i e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f5356f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ImageView f5357g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ImageView f5358h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ImageView f5359i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ImageView f5360j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ImageView f5361k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ImageView f5362l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ImageView f5363m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ImageView f5364n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final ImageView f5365o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final FrameLayout f5366p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final FrameLayout f5367q;
    public final FrameLayout r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final FrameLayout f5368s;
    public final FrameLayout t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final FrameLayout f5369u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final FrameLayout f5370v;
    public final FrameLayout w;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public j(LounchB lounchB) {
        super(lounchB, null);
        this.f5356f = false;
        View.inflate(lounchB, 2131493097, this);
        this.f5357g = (ImageView) findViewById(2131296618);
        this.f5366p = (FrameLayout) findViewById(2131296863);
        this.f5367q = (FrameLayout) findViewById(2131296856);
        this.r = (FrameLayout) findViewById(2131296859);
        this.f5368s = (FrameLayout) findViewById(2131296862);
        this.t = (FrameLayout) findViewById(2131296864);
        this.f5369u = (FrameLayout) findViewById(2131296865);
        this.f5370v = (FrameLayout) findViewById(2131296857);
        this.w = (FrameLayout) findViewById(2131296858);
        this.f5358h = (ImageView) findViewById(2131296484);
        this.f5359i = (ImageView) findViewById(2131296479);
        this.f5360j = (ImageView) findViewById(2131296482);
        this.f5361k = (ImageView) findViewById(2131296483);
        this.f5362l = (ImageView) findViewById(2131296485);
        this.f5363m = (ImageView) findViewById(2131296486);
        this.f5364n = (ImageView) findViewById(2131296480);
        this.f5365o = (ImageView) findViewById(2131296481);
        g(false, false, false, false, false, false, false, false);
        this.f5355b = new Handler();
        this.d = new i(this, 0);
        Handler handler = new Handler();
        this.c = handler;
        i iVar = new i(this, 1);
        this.e = iVar;
        handler.removeCallbacks(iVar);
        this.c.postDelayed(this.e, 10000L);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(j jVar) {
        if (jVar.f5356f) {
            return;
        }
        jVar.setCenterImageHide(true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Boolean c() {
        StringBuilder sb = new StringBuilder();
        u0.a aVarO = h0.b.o();
        byte[] bArr = e0.m.f1896j;
        String[] strArr = p3.f1924a;
        q.s(bArr, aVarO, "", sb);
        q.r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strG = q.g(sb, x1.f1989q);
        u0.a aVarO2 = h0.b.o();
        byte[] bArr2 = e0.m.f1892f;
        if (q.w(bArr2, aVarO2, "", strG)) {
            return Boolean.valueOf(q.d(Long.MAX_VALUE, h0.b.a().j()) < Long.parseLong(new String(q.x(new byte[]{Base64.padSymbol}, new byte[]{13, 51, -84, 27, -34, 103, -70, 0}, h0.b.o(), q.h(e0.m.f1893g, h0.b.o(), new String(bArr2)), 0))));
        }
        return Boolean.FALSE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void f(View view, Runnable runnable) {
        if (c().booleanValue()) {
            view.setOnClickListener(new f1.c(runnable, 1));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setCenterImageHide(boolean z8) {
        ImageView imageView = this.f5357g;
        if (imageView != null) {
            if (z8) {
                imageView.animate().alpha(0.3f).setDuration(300L).start();
            } else {
                imageView.animate().alpha(1.0f).setDuration(300L).start();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b() {
        if (c().booleanValue()) {
            int iLoadInt = h0.b.o().loadInt(e0.m.h(new byte[]{7, 81, 82, -32, 31, 44, 78, -79, 15, 123, 91, -3, 17, 27, 79, -99, 8, 81, 74, -32, 25, 29, 72}, new byte[]{106, 36, 62, -108, 118, 115, 59, -62}), 8);
            if (this.f5356f) {
                g(false, false, false, false, false, false, false, false);
                this.f5356f = false;
                Handler handler = this.c;
                i iVar = this.e;
                handler.removeCallbacks(iVar);
                handler.postDelayed(iVar, 10000L);
                return;
            }
            if (iLoadInt == 8) {
                g(true, true, true, true, true, true, true, true);
            } else if (iLoadInt == 6) {
                g(true, true, true, true, false, false, false, false);
            }
            this.f5356f = true;
            Handler handler2 = this.f5355b;
            i iVar2 = this.d;
            handler2.removeCallbacks(iVar2);
            handler2.postDelayed(iVar2, 10000L);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(Context context) {
        if (!c().booleanValue()) {
            y5.k.u(context, new Intent(context, (Class<?>) ModernMainActivity.class).addFlags(268435456), null);
        } else {
            b();
            setCenterImageHide(false);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e(Runnable runnable, Runnable runnable2, Runnable runnable3, Runnable runnable4, Runnable runnable5, Runnable runnable6, Runnable runnable7, Runnable runnable8) {
        f(this.f5366p, runnable);
        f(this.f5367q, runnable2);
        f(this.r, runnable3);
        f(this.f5368s, runnable4);
        f(this.t, runnable5);
        f(this.f5369u, runnable6);
        f(this.f5370v, runnable7);
        f(this.w, runnable8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g(boolean z8, boolean z9, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15) {
        h(this.f5366p, z8);
        h(this.f5367q, z9);
        h(this.r, z10);
        h(this.f5368s, z11);
        h(this.t, z12);
        h(this.f5369u, z13);
        h(this.f5370v, z14);
        h(this.w, z15);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void h(View view, boolean z8) {
        ImageView imageView = this.f5357g;
        if (!z8 || view.getVisibility() == 0) {
            if (z8 || view.getVisibility() != 0) {
                return;
            }
            view.animate().scaleX(0.5f).scaleY(0.5f).alpha(0.0f).setDuration(600L).setInterpolator(new AnticipateInterpolator()).withEndAction(new s3.o(1, view)).start();
            if (imageView != null) {
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(imageView, e0.m.h(new byte[]{85, 20, 25, -19, 65, -14}, new byte[]{38, 119, 120, -127, 36, -86, 32, 28}), 1.0f, 0.95f, 1.0f);
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(imageView, e0.m.h(new byte[]{57, -91, -81, -46, -99, 40}, new byte[]{74, -58, -50, -66, -8, 113, -111, -91}), 1.0f, 0.95f, 1.0f);
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
                animatorSet.setDuration(250L);
                animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
                animatorSet.start();
                return;
            }
            return;
        }
        view.setScaleX(0.5f);
        view.setScaleY(0.5f);
        view.setAlpha(0.0f);
        view.setVisibility(0);
        view.animate().scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setDuration(800L).setInterpolator(new OvershootInterpolator()).start();
        if (imageView != null) {
            ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(imageView, e0.m.h(new byte[]{82, -90, -91, -40, -72, -28}, new byte[]{33, -59, -60, -76, -35, -68, 44, -98}), 1.0f, 1.1f, 1.0f);
            ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(imageView, e0.m.h(new byte[]{55, 72, 98, -15, -45, 110}, new byte[]{68, 43, 3, -99, -74, 55, 38, 97}), 1.0f, 1.1f, 1.0f);
            AnimatorSet animatorSet2 = new AnimatorSet();
            animatorSet2.playTogether(objectAnimatorOfFloat3, objectAnimatorOfFloat4);
            animatorSet2.setDuration(300L);
            animatorSet2.setInterpolator(new AccelerateDecelerateInterpolator());
            animatorSet2.start();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setImageRun(Drawable[] drawableArr) {
        this.f5358h.setImageDrawable(drawableArr[0]);
        this.f5359i.setImageDrawable(drawableArr[1]);
        this.f5360j.setImageDrawable(drawableArr[2]);
        this.f5361k.setImageDrawable(drawableArr[3]);
        this.f5362l.setImageDrawable(drawableArr[4]);
        this.f5363m.setImageDrawable(drawableArr[5]);
        this.f5364n.setImageDrawable(drawableArr[6]);
        this.f5365o.setImageDrawable(drawableArr[7]);
    }
}
