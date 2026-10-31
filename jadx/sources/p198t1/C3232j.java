package p198t1;

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
import com.example.navistart.R;
import com.google.protobuf.AbstractC1178q;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1406p3;
import p047e0.C1440x1;
import p058f1.ViewOnClickListenerC1530c;
import p078h0.C1652b;
import p192s3.RunnableC3201o;
import p206u0.C3277a;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: t1.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3232j extends LinearLayout {

    /* JADX INFO: renamed from: b */
    public final Handler f9465b;

    /* JADX INFO: renamed from: c */
    public final Handler f9466c;

    /* JADX INFO: renamed from: d */
    public final RunnableC3231i f9467d;

    /* JADX INFO: renamed from: e */
    public final RunnableC3231i f9468e;

    /* JADX INFO: renamed from: f */
    public boolean f9469f;

    /* JADX INFO: renamed from: g */
    public final ImageView f9470g;

    /* JADX INFO: renamed from: h */
    public final ImageView f9471h;

    /* JADX INFO: renamed from: i */
    public final ImageView f9472i;

    /* JADX INFO: renamed from: j */
    public final ImageView f9473j;

    /* JADX INFO: renamed from: k */
    public final ImageView f9474k;

    /* JADX INFO: renamed from: l */
    public final ImageView f9475l;

    /* JADX INFO: renamed from: m */
    public final ImageView f9476m;

    /* JADX INFO: renamed from: n */
    public final ImageView f9477n;

    /* JADX INFO: renamed from: o */
    public final ImageView f9478o;

    /* JADX INFO: renamed from: p */
    public final FrameLayout f9479p;

    /* JADX INFO: renamed from: q */
    public final FrameLayout f9480q;

    /* JADX INFO: renamed from: r */
    public final FrameLayout f9481r;

    /* JADX INFO: renamed from: s */
    public final FrameLayout f9482s;

    /* JADX INFO: renamed from: t */
    public final FrameLayout f9483t;

    /* JADX INFO: renamed from: u */
    public final FrameLayout f9484u;

    /* JADX INFO: renamed from: v */
    public final FrameLayout f9485v;

    /* JADX INFO: renamed from: w */
    public final FrameLayout f9486w;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v53, types: [t1.i] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Runnable, t1.i] */
    public C3232j(LounchB lounchB) {
        super(lounchB, null);
        this.f9469f = false;
        View.inflate(lounchB, R.layout.multibutton, this);
        this.f9470g = (ImageView) findViewById(R.id.centerImage);
        this.f9479p = (FrameLayout) findViewById(R.id.imgTop);
        this.f9480q = (FrameLayout) findViewById(R.id.imgBottom);
        this.f9481r = (FrameLayout) findViewById(R.id.imgLeft);
        this.f9482s = (FrameLayout) findViewById(R.id.imgRight);
        this.f9483t = (FrameLayout) findViewById(R.id.imgTopLeft);
        this.f9484u = (FrameLayout) findViewById(R.id.imgTopRight);
        this.f9485v = (FrameLayout) findViewById(R.id.imgBottomLeft);
        this.f9486w = (FrameLayout) findViewById(R.id.imgBottomRight);
        this.f9471h = (ImageView) findViewById(R.id.badgeTop);
        this.f9472i = (ImageView) findViewById(R.id.badgeBottom);
        this.f9473j = (ImageView) findViewById(R.id.badgeLeft);
        this.f9474k = (ImageView) findViewById(R.id.badgeRight);
        this.f9475l = (ImageView) findViewById(R.id.badgeTopLeft);
        this.f9476m = (ImageView) findViewById(R.id.badgeTopRight);
        this.f9477n = (ImageView) findViewById(R.id.badgeBottomLeft);
        this.f9478o = (ImageView) findViewById(R.id.badgeBottomRight);
        final int i10 = 0;
        m5173g(false, false, false, false, false, false, false, false);
        this.f9465b = new Handler();
        this.f9467d = new Runnable(this) { // from class: t1.i

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C3232j f9464c;

            {
                this.f9464c = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i10) {
                    case 0:
                        C3232j c3232j = this.f9464c;
                        if (c3232j.f9469f) {
                            c3232j.m5170b();
                        }
                        break;
                    default:
                        C3232j.m5167a(this.f9464c);
                        break;
                }
            }
        };
        Handler handler = new Handler();
        this.f9466c = handler;
        final int i11 = 1;
        ?? r1 = new Runnable(this) { // from class: t1.i

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C3232j f9464c;

            {
                this.f9464c = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i11) {
                    case 0:
                        C3232j c3232j = this.f9464c;
                        if (c3232j.f9469f) {
                            c3232j.m5170b();
                        }
                        break;
                    default:
                        C3232j.m5167a(this.f9464c);
                        break;
                }
            }
        };
        this.f9468e = r1;
        handler.removeCallbacks(r1);
        this.f9466c.postDelayed(this.f9468e, 10000L);
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ void m5167a(C3232j c3232j) {
        if (c3232j.f9469f) {
            return;
        }
        c3232j.setCenterImageHide(true);
    }

    /* JADX INFO: renamed from: c */
    public static Boolean m5168c() {
        StringBuilder sb = new StringBuilder();
        C3277a c3277aM2745o = C1652b.m2745o();
        byte[] bArr = AbstractC1387m.f3322j;
        String[] strArr = AbstractC1406p3.f3368a;
        AbstractC1178q.m2085s(bArr, c3277aM2745o, "", sb);
        AbstractC1178q.m2084r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strM2073g = AbstractC1178q.m2073g(sb, C1440x1.f3470q);
        C3277a c3277aM2745o2 = C1652b.m2745o();
        byte[] bArr2 = AbstractC1387m.f3318f;
        if (AbstractC1178q.m2089w(bArr2, c3277aM2745o2, "", strM2073g)) {
            return Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{Base64.padSymbol}, new byte[]{13, 51, -84, 27, -34, 103, -70, 0}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0))));
        }
        return Boolean.FALSE;
    }

    /* JADX INFO: renamed from: f */
    public static void m5169f(View view, Runnable runnable) {
        if (m5168c().booleanValue()) {
            view.setOnClickListener(new ViewOnClickListenerC1530c(runnable, 1));
        }
    }

    private void setCenterImageHide(boolean z9) {
        ImageView imageView = this.f9470g;
        if (imageView != null) {
            if (z9) {
                imageView.animate().alpha(0.3f).setDuration(300L).start();
            } else {
                imageView.animate().alpha(1.0f).setDuration(300L).start();
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m5170b() {
        if (m5168c().booleanValue()) {
            int iLoadInt = C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{7, 81, 82, -32, 31, 44, 78, -79, 15, 123, 91, -3, 17, 27, 79, -99, 8, 81, 74, -32, 25, 29, 72}, new byte[]{106, 36, 62, -108, 118, 115, 59, -62}), 8);
            if (this.f9469f) {
                m5173g(false, false, false, false, false, false, false, false);
                this.f9469f = false;
                Handler handler = this.f9466c;
                RunnableC3231i runnableC3231i = this.f9468e;
                handler.removeCallbacks(runnableC3231i);
                handler.postDelayed(runnableC3231i, 10000L);
                return;
            }
            if (iLoadInt == 8) {
                m5173g(true, true, true, true, true, true, true, true);
            } else if (iLoadInt == 6) {
                m5173g(true, true, true, true, false, false, false, false);
            }
            this.f9469f = true;
            Handler handler2 = this.f9465b;
            RunnableC3231i runnableC3231i2 = this.f9467d;
            handler2.removeCallbacks(runnableC3231i2);
            handler2.postDelayed(runnableC3231i2, 10000L);
        }
    }

    /* JADX INFO: renamed from: d */
    public final void m5171d(Context context) {
        if (!m5168c().booleanValue()) {
            AbstractC3656k.m5875u(context, new Intent(context, (Class<?>) ModernMainActivity.class).addFlags(268435456), null);
        } else {
            m5170b();
            setCenterImageHide(false);
        }
    }

    /* JADX INFO: renamed from: e */
    public final void m5172e(Runnable runnable, Runnable runnable2, Runnable runnable3, Runnable runnable4, Runnable runnable5, Runnable runnable6, Runnable runnable7, Runnable runnable8) {
        m5169f(this.f9479p, runnable);
        m5169f(this.f9480q, runnable2);
        m5169f(this.f9481r, runnable3);
        m5169f(this.f9482s, runnable4);
        m5169f(this.f9483t, runnable5);
        m5169f(this.f9484u, runnable6);
        m5169f(this.f9485v, runnable7);
        m5169f(this.f9486w, runnable8);
    }

    /* JADX INFO: renamed from: g */
    public final void m5173g(boolean z9, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16) {
        m5174h(this.f9479p, z9);
        m5174h(this.f9480q, z10);
        m5174h(this.f9481r, z11);
        m5174h(this.f9482s, z12);
        m5174h(this.f9483t, z13);
        m5174h(this.f9484u, z14);
        m5174h(this.f9485v, z15);
        m5174h(this.f9486w, z16);
    }

    /* JADX INFO: renamed from: h */
    public final void m5174h(View view, boolean z9) {
        ImageView imageView = this.f9470g;
        if (!z9 || view.getVisibility() == 0) {
            if (z9 || view.getVisibility() != 0) {
                return;
            }
            view.animate().scaleX(0.5f).scaleY(0.5f).alpha(0.0f).setDuration(600L).setInterpolator(new AnticipateInterpolator()).withEndAction(new RunnableC3201o(1, view)).start();
            if (imageView != null) {
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(imageView, AbstractC1387m.m2421h(new byte[]{85, 20, 25, -19, 65, -14}, new byte[]{38, 119, 120, -127, 36, -86, 32, 28}), 1.0f, 0.95f, 1.0f);
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(imageView, AbstractC1387m.m2421h(new byte[]{57, -91, -81, -46, -99, 40}, new byte[]{74, -58, -50, -66, -8, 113, -111, -91}), 1.0f, 0.95f, 1.0f);
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
            ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(imageView, AbstractC1387m.m2421h(new byte[]{82, -90, -91, -40, -72, -28}, new byte[]{33, -59, -60, -76, -35, -68, 44, -98}), 1.0f, 1.1f, 1.0f);
            ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(imageView, AbstractC1387m.m2421h(new byte[]{55, 72, 98, -15, -45, 110}, new byte[]{68, 43, 3, -99, -74, 55, 38, 97}), 1.0f, 1.1f, 1.0f);
            AnimatorSet animatorSet2 = new AnimatorSet();
            animatorSet2.playTogether(objectAnimatorOfFloat3, objectAnimatorOfFloat4);
            animatorSet2.setDuration(300L);
            animatorSet2.setInterpolator(new AccelerateDecelerateInterpolator());
            animatorSet2.start();
        }
    }

    public void setImageRun(Drawable[] drawableArr) {
        this.f9471h.setImageDrawable(drawableArr[0]);
        this.f9472i.setImageDrawable(drawableArr[1]);
        this.f9473j.setImageDrawable(drawableArr[2]);
        this.f9474k.setImageDrawable(drawableArr[3]);
        this.f9475l.setImageDrawable(drawableArr[4]);
        this.f9476m.setImageDrawable(drawableArr[5]);
        this.f9477n.setImageDrawable(drawableArr[6]);
        this.f9478o.setImageDrawable(drawableArr[7]);
    }
}
