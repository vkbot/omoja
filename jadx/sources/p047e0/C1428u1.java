package p047e0;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import com.example.navistart.cores.ColorText;
import com.google.protobuf.AbstractC1178q;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p002a1.RunnableC0003a;
import p078h0.C1652b;

/* JADX INFO: renamed from: e0.u1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1428u1 {

    /* JADX INFO: renamed from: a */
    public View f3429a;

    /* JADX INFO: renamed from: b */
    public WindowManager f3430b;

    /* JADX INFO: renamed from: c */
    public final WindowManager.LayoutParams f3431c;

    /* JADX INFO: renamed from: d */
    public Runnable f3432d;

    /* JADX INFO: renamed from: e */
    public final String f3433e;

    /* JADX INFO: renamed from: f */
    public final Context f3434f;

    /* JADX INFO: renamed from: g */
    public Boolean f3435g;

    /* JADX INFO: renamed from: h */
    public Handler f3436h;

    /* JADX INFO: renamed from: i */
    public RunnableC0003a f3437i;

    /* JADX INFO: renamed from: j */
    public ObjectAnimator f3438j;

    /* JADX INFO: renamed from: l */
    public int f3440l;

    /* JADX INFO: renamed from: m */
    public int f3441m;

    /* JADX INFO: renamed from: n */
    public float f3442n;

    /* JADX INFO: renamed from: o */
    public float f3443o;

    /* JADX INFO: renamed from: p */
    public long f3444p;

    /* JADX INFO: renamed from: k */
    public float f3439k = 1.0f;

    /* JADX INFO: renamed from: q */
    public final Handler f3445q = new Handler(Looper.getMainLooper());

    public C1428u1(Context context, String str) {
        this.f3434f = context;
        this.f3433e = str;
        C1652b.m2734a();
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, C1652b.m2738g().mo3013b().mo1151m(), C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-64, 80, Base64.padSymbol, -17, 1, 27, -31, -126, -40, 79, 60, -6, 59, 28, -21, -82, -61, 92, 52}, new byte[]{-73, 57, 89, -120, 100, 111, -110, -35}), false) ? 808 : 8, -3);
        layoutParams.gravity = 51;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int i10 = displayMetrics.widthPixels / 2;
        int i11 = displayMetrics.heightPixels / 2;
        int iMax = Math.max(1, Math.round(displayMetrics.density * 512.0f));
        layoutParams.x = m2477b(str.concat(AbstractC1387m.m2421h(new byte[]{-89}, new byte[]{-1, 110, 19, 109, 86, 18, 10, 91})), C1652b.m2745o().loadInt(str.concat(AbstractC1387m.m2421h(new byte[]{-30}, new byte[]{-70, -16, -92, 6, 68, 84, 69, -101})), i10), displayMetrics.widthPixels, i10, iMax, AbstractC1387m.m2421h(new byte[]{22}, new byte[]{78, 76, -100, -32, -112, -44, -81, 98}));
        layoutParams.y = m2477b(str.concat(AbstractC1387m.m2421h(new byte[]{-90}, new byte[]{-1, -114, 35, -114, -46, 92, 57, -101})), C1652b.m2745o().loadInt(str.concat(AbstractC1387m.m2421h(new byte[]{-36}, new byte[]{-123, -115, 26, 8, -91, -93, 78, 70})), i11), displayMetrics.heightPixels, i11, iMax, AbstractC1387m.m2421h(new byte[]{-107}, new byte[]{-52, 8, -53, -24, 2, 90, -9, -107}));
        this.f3431c = layoutParams;
    }

    /* JADX INFO: renamed from: a */
    public final void m2476a(View view, WindowManager windowManager, Runnable runnable) {
        this.f3429a = view;
        this.f3430b = windowManager;
        this.f3432d = runnable;
        this.f3436h = new Handler();
        this.f3437i = new RunnableC0003a(19, this, view);
    }

    /* JADX INFO: renamed from: b */
    public final int m2477b(String str, int i10, int i11, int i12, int i13, String str2) {
        if (i11 > 0) {
            long j10 = i10;
            if (j10 < (-i13) || j10 > ((long) i11) + ((long) i13)) {
                C1652b.m2745o().saveInt(str, i12);
                StringBuilder sb = new StringBuilder();
                AbstractC1178q.m2087u(new byte[]{-53, -66, 30, 83, 94, 31}, new byte[]{-103, -5, 77, 22, 10, 63, 20, 32}, sb, str2);
                AbstractC1178q.m2086t(new byte[]{-41}, new byte[]{-22, 125, -105, 33, 125, 27, -56, 28}, sb, i10);
                AbstractC1178q.m2086t(new byte[]{2, -32, 83, -36, -67, -93, -96, -72, 75, -23, 85, -109}, new byte[]{34, -109, 48, -82, -40, -58, -50, -21}, sb, i11);
                AbstractC1178q.m2086t(new byte[]{-125, 96, -93, -51, 2, -62, 38, -85}, new byte[]{-93, 13, -62, -65, 101, -85, 72, -106}, sb, i13);
                sb.append(AbstractC1387m.m2421h(new byte[]{-36, -127, -51, -14, 5, Base64.padSymbol, -41, -119, -63}, new byte[]{-4, -27, -88, -108, 100, 72, -69, -3}));
                sb.append(i12);
                m2478c(sb.toString());
                return i12;
            }
        }
        return i10;
    }

    /* JADX INFO: renamed from: c */
    public final void m2478c(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(AbstractC1387m.m2421h(new byte[]{79, 86, 29, 55, 38, 22, 26, 125, 34, 98}, new byte[]{2, 57, 107, 82, 112, ByteCompanionObject.MAX_VALUE, ByteCompanionObject.MAX_VALUE, 10}));
        sb.append(this.f3433e);
        C1652b.m2751w(AbstractC1178q.m2078l(new byte[]{54, 96}, new byte[]{107, 64, -24, 39, -87, 56, 81, 20}, sb, str), ColorText.RED);
    }

    /* JADX INFO: renamed from: d */
    public final void m2479d() {
        this.f3429a.setOnTouchListener(new ViewOnTouchListenerC1424t1(this, this.f3432d));
    }
}
