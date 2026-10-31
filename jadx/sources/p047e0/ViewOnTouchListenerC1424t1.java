package p047e0;

import ai.onnxruntime.AbstractC0074a;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import com.google.protobuf.AbstractC1178q;
import kotlin.jvm.internal.ByteCompanionObject;
import p078h0.C1652b;
import p206u0.C3277a;

/* JADX INFO: renamed from: e0.t1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnTouchListenerC1424t1 implements View.OnTouchListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Runnable f3423b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C1428u1 f3424c;

    public ViewOnTouchListenerC1424t1(C1428u1 c1428u1, Runnable runnable) {
        this.f3424c = c1428u1;
        this.f3423b = runnable;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        Runnable runnable;
        C1428u1 c1428u1 = this.f3424c;
        Context context = c1428u1.f3434f;
        String str = c1428u1.f3433e;
        int action = motionEvent.getAction();
        if (action == 0) {
            c1428u1.f3435g = Boolean.TRUE;
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            int iMax = Math.max(1, Math.round(displayMetrics.density * 512.0f));
            WindowManager.LayoutParams layoutParams = c1428u1.f3431c;
            String strM2075i = AbstractC1178q.m2075i(new byte[]{46}, new byte[]{118, -77, -76, 21, -99, 101, -90, 75}, AbstractC0074a.m170u(str));
            int i10 = c1428u1.f3431c.x;
            int i11 = displayMetrics.widthPixels;
            layoutParams.x = c1428u1.m2477b(strM2075i, i10, i11, i11 / 2, iMax, AbstractC1387m.m2421h(new byte[]{-92}, new byte[]{-4, 19, 34, -81, -83, -5, -107, -71}));
            WindowManager.LayoutParams layoutParams2 = c1428u1.f3431c;
            String strM2075i2 = AbstractC1178q.m2075i(new byte[]{-14}, new byte[]{-85, -56, 17, 106, 120, 78, -19, 40}, AbstractC0074a.m170u(str));
            int i12 = c1428u1.f3431c.y;
            int i13 = displayMetrics.heightPixels;
            layoutParams2.y = c1428u1.m2477b(strM2075i2, i12, i13, i13 / 2, iMax, AbstractC1387m.m2421h(new byte[]{-123}, new byte[]{-36, -12, 109, 20, 40, -109, 10, 126}));
            WindowManager.LayoutParams layoutParams3 = c1428u1.f3431c;
            c1428u1.f3440l = layoutParams3.x;
            c1428u1.f3441m = layoutParams3.y;
            c1428u1.f3442n = motionEvent.getRawX();
            c1428u1.f3443o = motionEvent.getRawY();
            c1428u1.f3444p = 0L;
            c1428u1.m2478c(AbstractC1387m.m2421h(new byte[]{8, 123, -76, -89, 106, -55, -98, -50, 113, 28}, new byte[]{76, 52, -29, -23, 74, -69, -1, -71}) + c1428u1.f3442n + AbstractC1387m.m2421h(new byte[]{-79, -42}, new byte[]{-99, -10, 114, -36, 110, -101, 104, -54}) + c1428u1.f3443o + AbstractC1387m.m2421h(new byte[]{74, -124, 69, -48, 86, 122, 29, 123, 94, -116}, new byte[]{99, -92, 50, -71, 56, 30, 114, 12}) + c1428u1.f3440l + AbstractC1387m.m2421h(new byte[]{-112, 98}, new byte[]{-68, 66, -60, 111, 10, 26, -38, -109}) + c1428u1.f3441m + AbstractC1387m.m2421h(new byte[]{-56, 74, 43, 94, -120, -123, -74, 124, -101, 15, 96, 31}, new byte[]{-31, 106, 93, 55, -19, -14, -27, 21}) + c1428u1.f3429a.getWidth() + AbstractC1387m.m2421h(new byte[]{103, -118}, new byte[]{75, -86, -76, -39, -7, 80, -77, 122}) + c1428u1.f3429a.getHeight() + AbstractC1387m.m2421h(new byte[]{-13, 96, -88, -30, 24, -88, -38}, new byte[]{-38, 64, -36, -101, 104, -51, -25, -88}) + c1428u1.f3431c.type + AbstractC1387m.m2421h(new byte[]{108, -48, -123, -116, -46, 110, 111}, new byte[]{76, -74, -23, -19, -75, 29, 82, -116}) + c1428u1.f3431c.flags);
            c1428u1.f3436h.postDelayed(c1428u1.f3437i, (long) 500);
            return true;
        }
        if (action == 1) {
            c1428u1.m2478c(AbstractC1387m.m2421h(new byte[]{32, 1, 35, -22, -43, -123, 83, -104}, new byte[]{117, 81, 3, -104, -76, -14, 110, -80}) + motionEvent.getRawX() + AbstractC1387m.m2421h(new byte[]{30, 101}, new byte[]{50, 69, -84, -48, 19, -121, 124, 64}) + motionEvent.getRawY() + AbstractC1387m.m2421h(new byte[]{49, -77, -35, -63, -63, -24, -109, -6, 37, -69}, new byte[]{24, -109, -86, -88, -81, -116, -4, -115}) + c1428u1.f3431c.x + AbstractC1387m.m2421h(new byte[]{-5, 94}, new byte[]{-41, 126, -114, -100, 72, 55, 80, -24}) + c1428u1.f3431c.y + AbstractC1387m.m2421h(new byte[]{75, 3, 85, -89, -47, 86}, new byte[]{98, 35, 56, -56, -89, 107, -112, -125}) + c1428u1.f3435g);
            if (c1428u1.f3435g.booleanValue() && (runnable = this.f3423b) != null) {
                runnable.run();
            }
            ObjectAnimator objectAnimator = c1428u1.f3438j;
            if (objectAnimator != null) {
                objectAnimator.cancel();
                c1428u1.f3438j = null;
                c1428u1.f3429a.setAlpha(c1428u1.f3439k);
            }
            c1428u1.f3436h.removeCallbacks(c1428u1.f3437i);
            return true;
        }
        if (action != 2) {
            if (action != 3) {
                return false;
            }
            ObjectAnimator objectAnimator2 = c1428u1.f3438j;
            if (objectAnimator2 != null) {
                objectAnimator2.cancel();
                c1428u1.f3438j = null;
                c1428u1.f3429a.setAlpha(c1428u1.f3439k);
            }
            c1428u1.f3436h.removeCallbacks(c1428u1.f3437i);
            c1428u1.f3435g = Boolean.FALSE;
            return true;
        }
        if (!c1428u1.f3435g.booleanValue()) {
            int iRound = Math.round(motionEvent.getRawX() - c1428u1.f3442n) + c1428u1.f3440l;
            int iRound2 = Math.round(motionEvent.getRawY() - c1428u1.f3443o) + c1428u1.f3441m;
            DisplayMetrics displayMetrics2 = context.getResources().getDisplayMetrics();
            int iMax2 = Math.max(1, Math.round(displayMetrics2.density * 512.0f));
            String strM2075i3 = AbstractC1178q.m2075i(new byte[]{-14}, new byte[]{-86, -62, 118, -126, -9, 79, 65, 66}, AbstractC0074a.m170u(str));
            int i14 = displayMetrics2.widthPixels;
            int iM2477b = c1428u1.m2477b(strM2075i3, iRound, i14, i14 / 2, iMax2, AbstractC1387m.m2421h(new byte[]{-127}, new byte[]{-39, -31, -109, -14, -58, -74, 105, -27}));
            String strM2075i4 = AbstractC1178q.m2075i(new byte[]{-7}, new byte[]{-96, 99, -7, 29, -36, 19, -47, 122}, AbstractC0074a.m170u(str));
            int i15 = displayMetrics2.heightPixels;
            int iM2477b2 = c1428u1.m2477b(strM2075i4, iRound2, i15, i15 / 2, iMax2, AbstractC1387m.m2421h(new byte[]{119}, new byte[]{46, -114, 19, -68, -78, 79, -113, 122}));
            if (iM2477b != iRound || iM2477b2 != iRound2) {
                c1428u1.f3440l = iM2477b;
                c1428u1.f3441m = iM2477b2;
                c1428u1.f3442n = motionEvent.getRawX();
                c1428u1.f3443o = motionEvent.getRawY();
            }
            WindowManager.LayoutParams layoutParams4 = c1428u1.f3431c;
            layoutParams4.x = iM2477b;
            layoutParams4.y = iM2477b2;
            long jUptimeMillis = SystemClock.uptimeMillis();
            boolean z9 = jUptimeMillis - c1428u1.f3444p >= 300;
            if (z9) {
                c1428u1.f3444p = jUptimeMillis;
                StringBuilder sb = new StringBuilder();
                sb.append(AbstractC1387m.m2421h(new byte[]{19, -125, 12, 42, -100, 45, -23, -117, 99, -28}, new byte[]{94, -52, 90, 111, -68, 95, -120, -4}));
                sb.append(motionEvent.getRawX());
                sb.append(AbstractC1387m.m2421h(new byte[]{66, 86}, new byte[]{110, 118, -78, 98, 107, 39, -29, -124}));
                sb.append(motionEvent.getRawY());
                sb.append(AbstractC1387m.m2421h(new byte[]{-71, 102, -38, -117, 101, 78, 39, -13, -72}, new byte[]{-112, 70, -66, -18, 9, 58, 70, -50}));
                sb.append(motionEvent.getRawX() - c1428u1.f3442n);
                sb.append(AbstractC1387m.m2421h(new byte[]{32, 57}, new byte[]{12, 25, 12, -115, 21, 74, -124, 79}));
                sb.append(motionEvent.getRawY() - c1428u1.f3443o);
                AbstractC1178q.m2086t(new byte[]{79, -68, 113, 107, -120, ByteCompanionObject.MAX_VALUE, 22, -71, 91, -76}, new byte[]{102, -100, 5, 10, -6, 24, 115, -51}, sb, iM2477b);
                AbstractC1178q.m2086t(new byte[]{109, -70}, new byte[]{65, -102, -3, 53, -60, 35, 37, 91}, sb, iM2477b2);
                sb.append(AbstractC1387m.m2421h(new byte[]{8}, new byte[]{33, 13, -108, 15, -60, -80, 32, 101}));
                c1428u1.m2478c(sb.toString());
            }
            C3277a c3277aM2745o = C1652b.m2745o();
            StringBuilder sbM170u = AbstractC0074a.m170u(str);
            sbM170u.append(AbstractC1387m.m2421h(new byte[]{-30}, new byte[]{-70, -124, -20, 51, -110, -38, 58, 86}));
            c3277aM2745o.saveInt(sbM170u.toString(), iM2477b);
            C3277a c3277aM2745o2 = C1652b.m2745o();
            StringBuilder sbM170u2 = AbstractC0074a.m170u(str);
            sbM170u2.append(AbstractC1387m.m2421h(new byte[]{60}, new byte[]{101, 11, -31, 1, 42, -40, -71, -2}));
            c3277aM2745o2.saveInt(sbM170u2.toString(), iM2477b2);
            c1428u1.f3445q.post(new RunnableC1419s1(this, z9, iM2477b, iM2477b2, 0));
            if (iM2477b > 10 || iM2477b2 > 10) {
                c1428u1.f3435g = Boolean.FALSE;
                return true;
            }
        }
        return true;
    }
}
