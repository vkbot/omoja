package e0;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import android.view.WindowManager$LayoutParams;
import com.example.navistart.cores.ColorText;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class u1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public View f1960a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public WindowManager f1961b;
    public final WindowManager$LayoutParams c;
    public Runnable d;
    public final String e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Context f1962f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Boolean f1963g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Handler f1964h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public a1.a f1965i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ObjectAnimator f1966j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f1968l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f1969m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f1970n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public float f1971o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f1972p;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f1967k = 1.0f;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Handler f1973q = new Handler(Looper.getMainLooper());

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public u1(Context context, String str) {
        this.f1962f = context;
        this.e = str;
        h0.b.a();
        WindowManager$LayoutParams windowManager$LayoutParams = new WindowManager$LayoutParams(-2, -2, h0.b.g().b().m(), h0.b.o().loadBoolean(m.h(new byte[]{-64, 80, Base64.padSymbol, -17, 1, 27, -31, -126, -40, 79, 60, -6, 59, 28, -21, -82, -61, 92, 52}, new byte[]{-73, 57, 89, -120, 100, 111, -110, -35}), false) ? 808 : 8, -3);
        windowManager$LayoutParams.gravity = 51;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int i9 = displayMetrics.widthPixels / 2;
        int i10 = displayMetrics.heightPixels / 2;
        int iMax = Math.max(1, Math.round(displayMetrics.density * 512.0f));
        windowManager$LayoutParams.x = b(str.concat(m.h(new byte[]{-89}, new byte[]{-1, 110, 19, 109, 86, 18, 10, 91})), h0.b.o().loadInt(str.concat(m.h(new byte[]{-30}, new byte[]{-70, -16, -92, 6, 68, 84, 69, -101})), i9), displayMetrics.widthPixels, i9, iMax, m.h(new byte[]{22}, new byte[]{78, 76, -100, -32, -112, -44, -81, 98}));
        windowManager$LayoutParams.y = b(str.concat(m.h(new byte[]{-90}, new byte[]{-1, -114, 35, -114, -46, 92, 57, -101})), h0.b.o().loadInt(str.concat(m.h(new byte[]{-36}, new byte[]{-123, -115, 26, 8, -91, -93, 78, 70})), i10), displayMetrics.heightPixels, i10, iMax, m.h(new byte[]{-107}, new byte[]{-52, 8, -53, -24, 2, 90, -9, -107}));
        this.c = windowManager$LayoutParams;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(View view, WindowManager windowManager, Runnable runnable) {
        this.f1960a = view;
        this.f1961b = windowManager;
        this.d = runnable;
        this.f1964h = new Handler();
        this.f1965i = new a1.a(19, this, view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int b(String str, int i9, int i10, int i11, int i12, String str2) {
        if (i10 > 0) {
            long j9 = i9;
            if (j9 < (-i12) || j9 > ((long) i10) + ((long) i12)) {
                h0.b.o().saveInt(str, i11);
                StringBuilder sb = new StringBuilder();
                com.google.protobuf.q.u(new byte[]{-53, -66, 30, 83, 94, 31}, new byte[]{-103, -5, 77, 22, 10, 63, 20, 32}, sb, str2);
                com.google.protobuf.q.t(new byte[]{-41}, new byte[]{-22, 125, -105, 33, 125, 27, -56, 28}, sb, i9);
                com.google.protobuf.q.t(new byte[]{2, -32, 83, -36, -67, -93, -96, -72, 75, -23, 85, -109}, new byte[]{34, -109, 48, -82, -40, -58, -50, -21}, sb, i10);
                com.google.protobuf.q.t(new byte[]{-125, 96, -93, -51, 2, -62, 38, -85}, new byte[]{-93, 13, -62, -65, 101, -85, 72, -106}, sb, i12);
                sb.append(m.h(new byte[]{-36, -127, -51, -14, 5, Base64.padSymbol, -41, -119, -63}, new byte[]{-4, -27, -88, -108, 100, 72, -69, -3}));
                sb.append(i11);
                c(sb.toString());
                return i11;
            }
        }
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(m.h(new byte[]{79, 86, 29, 55, 38, 22, 26, 125, 34, 98}, new byte[]{2, 57, 107, 82, 112, ByteCompanionObject.MAX_VALUE, ByteCompanionObject.MAX_VALUE, 10}));
        sb.append(this.e);
        h0.b.w(com.google.protobuf.q.l(new byte[]{54, 96}, new byte[]{107, 64, -24, 39, -87, 56, 81, 20}, sb, str), ColorText.RED);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d() {
        this.f1960a.setOnTouchListener(new t1(this, this.d));
    }
}
