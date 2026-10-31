package p0;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.WindowManager;
import android.view.WindowManager$LayoutParams;
import android.widget.TextView;
import e0.m;
import e0.v0;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import m0.q2;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class j {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String f4564l = m.h(new byte[]{109, -72, -53, 46, 65, ByteCompanionObject.MAX_VALUE, 109, -68, 112, -94, -54, 57}, new byte[]{56, -53, -82, 92, 0, 15, 29, -49});

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static j f4565m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f4566a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final e f4567b;
    public q2 c;
    public final Handler d = new Handler(Looper.getMainLooper());
    public final ExecutorService e = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final g f4568f = new g(this, 0);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public WindowManager f4569g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public WindowManager$LayoutParams f4570h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public TextView f4571i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4572j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f4573k;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public j(Context context, e eVar, q2 q2Var) {
        this.f4566a = context.getApplicationContext();
        this.f4567b = eVar;
        this.c = q2Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void b() {
        new Handler(Looper.getMainLooper()).post(new v0(26));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a() {
        TextView textView;
        Log.i(f4564l, m.h(new byte[]{-109, Base64.padSymbol, -23, -55, -19, 8, 74}, new byte[]{-9, 84, -102, -92, -124, 123, 57, 28}));
        this.d.removeCallbacksAndMessages(null);
        this.e.shutdownNow();
        WindowManager windowManager = this.f4569g;
        if (windowManager != null && (textView = this.f4571i) != null) {
            a.a.v(windowManager, textView);
        }
        this.f4571i = null;
        this.f4570h = null;
        this.f4569g = null;
        if (f4565m == this) {
            f4565m = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int c(int i9) {
        return Math.round(i9 * this.f4566a.getResources().getDisplayMetrics().density);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(String str) {
        TextView textView;
        Log.w(f4564l, m.h(new byte[]{122, ByteCompanionObject.MIN_VALUE, 80, 68, -33, -126, -65, ByteCompanionObject.MIN_VALUE, 96, -104, 84, 64, -46, -118, -86, -63, 119, -102, 80, 12, -109}, new byte[]{21, -10, 53, 54, -77, -29, -58, -96}).concat(str));
        q2 q2Var = this.c;
        if (q2Var == null || (textView = q2Var.f3571f) == null) {
            return;
        }
        textView.setText(q2Var.getString(2131952672, str));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e() {
        TextView textView = this.f4571i;
        if (textView == null) {
            h(1);
            return;
        }
        if (this.f4573k) {
            return;
        }
        textView.setText("");
        TextView textView2 = this.f4571i;
        this.f4567b.getClass();
        textView2.setAlpha(h0.b.o().loadBoolean(e.f4555h, false) ? 0.01f : 1.0f);
        g(e.e() ? m.h(new byte[]{14, 111, -35, 93, -107, 29, -11, 59, 28}, new byte[]{45, 93, -17, 108, -92, 44, -60, 10}) : m.h(new byte[]{40, 32, 64, 19, 13, 70, 80, 32, 58}, new byte[]{11, 97, 1, 34, 60, 119, 97, 17}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void f(int i9) {
        String strH;
        TextView textView = this.f4571i;
        if (textView == null || this.f4573k) {
            return;
        }
        if (i9 >= 8) {
            e();
            return;
        }
        boolean z8 = i9 % 2 == 0;
        textView.animate().cancel();
        this.f4571i.setText(z8 ? m.h(new byte[]{65}, new byte[]{96, 69, -61, 96, 51, -87, 58, -41}) : "");
        this.f4571i.setAlpha(z8 ? 1.0f : 0.25f);
        byte[] bArr = {54, -40, -85, -58, 49, -34, 100, 103, 36};
        if (z8) {
            // fill-array-data instruction
            bArr[0] = -82;
            bArr[1] = -86;
            bArr[2] = 116;
            bArr[3] = 67;
            bArr[4] = 18;
            bArr[5] = 29;
            bArr[6] = -36;
            bArr[7] = 112;
            bArr[8] = -67;
            strH = m.h(bArr, new byte[]{-115, -18, 48, 5, 39, 42, -97, 64});
        } else {
            strH = m.h(bArr, new byte[]{21, -103, -22, -9, 0, -17, 85, 86});
        }
        g(strH);
        this.d.postDelayed(new h(this, i9, 1), 180L);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g(String str) {
        if (this.f4571i == null) {
            return;
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor(str));
        gradientDrawable.setCornerRadius(c(10));
        this.f4571i.setBackground(gradientDrawable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void h(int i9) {
        StringBuilder sb = new StringBuilder();
        sb.append(m.h(new byte[]{37, -73, 105, 108, -36, -20, 19, -21, 35, -70, 117, 111, -103, -6, 86, -5, 53, -85, 111, 109, -103, -93}, new byte[]{86, -33, 6, 27, -4, -98, 118, -102}));
        sb.append(f4565m != null);
        sb.append(m.h(new byte[]{-49, -59, 5, 77, -82, -60, -126, 77, -46}, new byte[]{-17, -83, 100, 62, -8, -83, -25, 58}));
        sb.append(this.f4571i != null);
        String string = sb.toString();
        String str = f4564l;
        Log.i(str, string);
        j jVar = f4565m;
        if (jVar != null && jVar != this) {
            jVar.a();
        }
        f4565m = this;
        if (this.f4571i != null) {
            e();
        } else {
            Context context = this.f4566a;
            TextView textView = new TextView(context);
            this.f4571i = textView;
            textView.setGravity(17);
            this.f4571i.setTextColor(-1);
            this.f4571i.setTextSize(18.0f);
            this.f4571i.setTypeface(Typeface.DEFAULT_BOLD);
            this.f4571i.setIncludeFontPadding(false);
            g(m.h(new byte[]{-73, -91, 58, 55, -119, 34, 10, 2, -91}, new byte[]{-108, -28, 123, 6, -72, 19, 59, 51}));
            TextView textView2 = this.f4571i;
            this.f4567b.getClass();
            textView2.setAlpha(h0.b.o().loadBoolean(e.f4555h, false) ? 0.01f : 1.0f);
            this.f4571i.setOnTouchListener(new i(this));
            int iC = c(88);
            int iC2 = c(88);
            h0.b.a();
            WindowManager$LayoutParams windowManager$LayoutParams = new WindowManager$LayoutParams(iC, iC2, h0.b.g().b().m(), 808, -3);
            this.f4570h = windowManager$LayoutParams;
            windowManager$LayoutParams.gravity = 8388659;
            windowManager$LayoutParams.x = h0.b.o().loadInt(e.f4553f, Math.max(0, (context.getResources().getDisplayMetrics().widthPixels - c(88)) / 2));
            this.f4570h.y = h0.b.o().loadInt(e.f4554g, Math.max(0, (context.getResources().getDisplayMetrics().heightPixels - c(88)) / 2));
            h0.b.a();
            this.f4569g = h0.b.g().b().f(this.f4571i, this.f4570h);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(m.h(new byte[]{13, 22, Base64.padSymbol, 84, -57, 97, 125, 21, 30, 23, 45, 119, -36, 106, 111, 81, 76, 5, 52, 63}, new byte[]{108, 114, 89, 2, -82, 4, 10, 53}));
            sb2.append(this.f4569g != null);
            Log.i(str, sb2.toString());
            if (this.f4569g == null) {
                this.f4571i = null;
                d(m.h(new byte[]{7, -51, 77, 101, -84, -97, -98, -29, 62, -59, 68, 100, -79, -56, -90, -20, 49, -46, 66, 104, -81, -119, -79, -18, 53}, new byte[]{80, -92, 35, 1, -61, -24, -45, -126}));
            }
        }
        this.d.postDelayed(new h(this, i9, 0), 600L);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void i(int i9, int i10) {
        int iMin = i10 <= 0 ? 0 : Math.min(100, Math.round((i9 * 100.0f) / i10));
        TextView textView = this.f4571i;
        if (textView != null) {
            textView.animate().cancel();
            this.f4571i.setAlpha(1.0f);
            this.f4571i.setText(iMin + m.h(new byte[]{-123}, new byte[]{-96, 2, 50, 68, -108, 60, 1, -75}));
            g(m.h(new byte[]{55, -117, 58, 82, 97, 16, 76, -120, 37}, new byte[]{20, -56, 121, 99, 80, 33, 125, -71}));
        }
    }
}
