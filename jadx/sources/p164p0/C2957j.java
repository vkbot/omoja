package p164p0;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.WindowManager;
import android.widget.TextView;
import com.example.navistart.R;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p000a.AbstractC0000a;
import p047e0.AbstractC1387m;
import p047e0.RunnableC1431v0;
import p078h0.C1652b;
import p132m0.C2343q2;

/* JADX INFO: renamed from: p0.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2957j {

    /* JADX INFO: renamed from: l */
    public static final String f8225l = AbstractC1387m.m2421h(new byte[]{109, -72, -53, 46, 65, ByteCompanionObject.MAX_VALUE, 109, -68, 112, -94, -54, 57}, new byte[]{56, -53, -82, 92, 0, 15, 29, -49});

    /* JADX INFO: renamed from: m */
    public static C2957j f8226m;

    /* JADX INFO: renamed from: a */
    public final Context f8227a;

    /* JADX INFO: renamed from: b */
    public final C2952e f8228b;

    /* JADX INFO: renamed from: c */
    public C2343q2 f8229c;

    /* JADX INFO: renamed from: d */
    public final Handler f8230d = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: e */
    public final ExecutorService f8231e = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: f */
    public final RunnableC2954g f8232f = new RunnableC2954g(this, 0);

    /* JADX INFO: renamed from: g */
    public WindowManager f8233g;

    /* JADX INFO: renamed from: h */
    public WindowManager.LayoutParams f8234h;

    /* JADX INFO: renamed from: i */
    public TextView f8235i;

    /* JADX INFO: renamed from: j */
    public int f8236j;

    /* JADX INFO: renamed from: k */
    public boolean f8237k;

    public C2957j(Context context, C2952e c2952e, C2343q2 c2343q2) {
        this.f8227a = context.getApplicationContext();
        this.f8228b = c2952e;
        this.f8229c = c2343q2;
    }

    /* JADX INFO: renamed from: b */
    public static void m4738b() {
        new Handler(Looper.getMainLooper()).post(new RunnableC1431v0(26));
    }

    /* JADX INFO: renamed from: a */
    public final void m4739a() {
        TextView textView;
        Log.i(f8225l, AbstractC1387m.m2421h(new byte[]{-109, Base64.padSymbol, -23, -55, -19, 8, 74}, new byte[]{-9, 84, -102, -92, -124, 123, 57, 28}));
        this.f8230d.removeCallbacksAndMessages(null);
        this.f8231e.shutdownNow();
        WindowManager windowManager = this.f8233g;
        if (windowManager != null && (textView = this.f8235i) != null) {
            AbstractC0000a.m21v(windowManager, textView);
        }
        this.f8235i = null;
        this.f8234h = null;
        this.f8233g = null;
        if (f8226m == this) {
            f8226m = null;
        }
    }

    /* JADX INFO: renamed from: c */
    public final int m4740c(int i10) {
        return Math.round(i10 * this.f8227a.getResources().getDisplayMetrics().density);
    }

    /* JADX INFO: renamed from: d */
    public final void m4741d(String str) {
        TextView textView;
        Log.w(f8225l, AbstractC1387m.m2421h(new byte[]{122, ByteCompanionObject.MIN_VALUE, 80, 68, -33, -126, -65, ByteCompanionObject.MIN_VALUE, 96, -104, 84, 64, -46, -118, -86, -63, 119, -102, 80, 12, -109}, new byte[]{21, -10, 53, 54, -77, -29, -58, -96}).concat(str));
        C2343q2 c2343q2 = this.f8229c;
        if (c2343q2 == null || (textView = c2343q2.f6322f) == null) {
            return;
        }
        textView.setText(c2343q2.getString(R.string.user_apps_hide_overlay_error, str));
    }

    /* JADX INFO: renamed from: e */
    public final void m4742e() {
        TextView textView = this.f8235i;
        if (textView == null) {
            m4745h(1);
            return;
        }
        if (this.f8237k) {
            return;
        }
        textView.setText("");
        TextView textView2 = this.f8235i;
        this.f8228b.getClass();
        textView2.setAlpha(C1652b.m2745o().loadBoolean(C2952e.f8207h, false) ? 0.01f : 1.0f);
        m4744g(C2952e.m4727e() ? AbstractC1387m.m2421h(new byte[]{14, 111, -35, 93, -107, 29, -11, 59, 28}, new byte[]{45, 93, -17, 108, -92, 44, -60, 10}) : AbstractC1387m.m2421h(new byte[]{40, 32, 64, 19, 13, 70, 80, 32, 58}, new byte[]{11, 97, 1, 34, 60, 119, 97, 17}));
    }

    /* JADX INFO: renamed from: f */
    public final void m4743f(int i10) {
        String strM2421h;
        TextView textView = this.f8235i;
        if (textView == null || this.f8237k) {
            return;
        }
        if (i10 >= 8) {
            m4742e();
            return;
        }
        int i11 = 1;
        boolean z9 = i10 % 2 == 0;
        textView.animate().cancel();
        this.f8235i.setText(z9 ? AbstractC1387m.m2421h(new byte[]{65}, new byte[]{96, 69, -61, 96, 51, -87, 58, -41}) : "");
        this.f8235i.setAlpha(z9 ? 1.0f : 0.25f);
        byte[] bArr = {54, -40, -85, -58, 49, -34, 100, 103, 36};
        if (z9) {
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
            strM2421h = AbstractC1387m.m2421h(bArr, new byte[]{-115, -18, 48, 5, 39, 42, -97, 64});
        } else {
            strM2421h = AbstractC1387m.m2421h(bArr, new byte[]{21, -103, -22, -9, 0, -17, 85, 86});
        }
        m4744g(strM2421h);
        this.f8230d.postDelayed(new RunnableC2955h(this, i10, i11), 180L);
    }

    /* JADX INFO: renamed from: g */
    public final void m4744g(String str) {
        if (this.f8235i == null) {
            return;
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor(str));
        gradientDrawable.setCornerRadius(m4740c(10));
        this.f8235i.setBackground(gradientDrawable);
    }

    /* JADX INFO: renamed from: h */
    public final void m4745h(int i10) {
        StringBuilder sb = new StringBuilder();
        sb.append(AbstractC1387m.m2421h(new byte[]{37, -73, 105, 108, -36, -20, 19, -21, 35, -70, 117, 111, -103, -6, 86, -5, 53, -85, 111, 109, -103, -93}, new byte[]{86, -33, 6, 27, -4, -98, 118, -102}));
        int i11 = 0;
        sb.append(f8226m != null);
        sb.append(AbstractC1387m.m2421h(new byte[]{-49, -59, 5, 77, -82, -60, -126, 77, -46}, new byte[]{-17, -83, 100, 62, -8, -83, -25, 58}));
        sb.append(this.f8235i != null);
        String string = sb.toString();
        String str = f8225l;
        Log.i(str, string);
        C2957j c2957j = f8226m;
        if (c2957j != null && c2957j != this) {
            c2957j.m4739a();
        }
        f8226m = this;
        if (this.f8235i != null) {
            m4742e();
        } else {
            Context context = this.f8227a;
            TextView textView = new TextView(context);
            this.f8235i = textView;
            textView.setGravity(17);
            this.f8235i.setTextColor(-1);
            this.f8235i.setTextSize(18.0f);
            this.f8235i.setTypeface(Typeface.DEFAULT_BOLD);
            this.f8235i.setIncludeFontPadding(false);
            m4744g(AbstractC1387m.m2421h(new byte[]{-73, -91, 58, 55, -119, 34, 10, 2, -91}, new byte[]{-108, -28, 123, 6, -72, 19, 59, 51}));
            TextView textView2 = this.f8235i;
            this.f8228b.getClass();
            textView2.setAlpha(C1652b.m2745o().loadBoolean(C2952e.f8207h, false) ? 0.01f : 1.0f);
            this.f8235i.setOnTouchListener(new ViewOnTouchListenerC2956i(this));
            int iM4740c = m4740c(88);
            int iM4740c2 = m4740c(88);
            C1652b.m2734a();
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(iM4740c, iM4740c2, C1652b.m2738g().mo3013b().mo1151m(), 808, -3);
            this.f8234h = layoutParams;
            layoutParams.gravity = 8388659;
            layoutParams.x = C1652b.m2745o().loadInt(C2952e.f8205f, Math.max(0, (context.getResources().getDisplayMetrics().widthPixels - m4740c(88)) / 2));
            this.f8234h.y = C1652b.m2745o().loadInt(C2952e.f8206g, Math.max(0, (context.getResources().getDisplayMetrics().heightPixels - m4740c(88)) / 2));
            C1652b.m2734a();
            this.f8233g = C1652b.m2738g().mo3013b().mo1144f(this.f8235i, this.f8234h);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(AbstractC1387m.m2421h(new byte[]{13, 22, Base64.padSymbol, 84, -57, 97, 125, 21, 30, 23, 45, 119, -36, 106, 111, 81, 76, 5, 52, 63}, new byte[]{108, 114, 89, 2, -82, 4, 10, 53}));
            sb2.append(this.f8233g != null);
            Log.i(str, sb2.toString());
            if (this.f8233g == null) {
                this.f8235i = null;
                m4741d(AbstractC1387m.m2421h(new byte[]{7, -51, 77, 101, -84, -97, -98, -29, 62, -59, 68, 100, -79, -56, -90, -20, 49, -46, 66, 104, -81, -119, -79, -18, 53}, new byte[]{80, -92, 35, 1, -61, -24, -45, -126}));
            }
        }
        this.f8230d.postDelayed(new RunnableC2955h(this, i10, i11), 600L);
    }

    /* JADX INFO: renamed from: i */
    public final void m4746i(int i10, int i11) {
        int iMin = i11 <= 0 ? 0 : Math.min(100, Math.round((i10 * 100.0f) / i11));
        TextView textView = this.f8235i;
        if (textView != null) {
            textView.animate().cancel();
            this.f8235i.setAlpha(1.0f);
            this.f8235i.setText(iMin + AbstractC1387m.m2421h(new byte[]{-123}, new byte[]{-96, 2, 50, 68, -108, 60, 1, -75}));
            m4744g(AbstractC1387m.m2421h(new byte[]{55, -117, 58, 82, 97, 16, 76, -120, 37}, new byte[]{20, -56, 121, 99, 80, 33, 125, -71}));
        }
    }
}
