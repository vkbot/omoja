package p047e0;

import android.app.admin.DevicePolicyManager;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.FileProvider;
import com.example.navistart.ProgressActivity;
import com.example.navistart.R;
import com.google.protobuf.AbstractC1178q;
import java.io.File;
import java.util.ArrayList;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import okhttp3.Request;
import p002a1.RunnableC0003a;
import p005a4.RunnableC0010c;
import p078h0.C1652b;
import p206u0.C3277a;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: e0.y2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1445y2 {

    /* JADX INFO: renamed from: a */
    public C1360g2 f3499a;

    /* JADX INFO: renamed from: b */
    public boolean f3500b;

    /* JADX INFO: renamed from: c */
    public String f3501c;

    /* JADX INFO: renamed from: d */
    public final String f3502d;

    /* JADX INFO: renamed from: e */
    public final String f3503e;

    /* JADX INFO: renamed from: f */
    public final int f3504f;

    /* JADX INFO: renamed from: g */
    public int f3505g;

    static {
        AbstractC1387m.m2421h(new byte[]{-41, -127, -115, -92, 19, -103, -104, 120, -46}, new byte[]{-126, -15, -23, -59, 103, -4, -39, 40});
    }

    public C1445y2(AppCompatActivity appCompatActivity, String str, String str2) {
        this.f3500b = true;
        this.f3503e = AbstractC1387m.m2421h(new byte[]{-16, 69, 58, -14, -105, -90, -106, 35, -85, 84, 46, -8}, new byte[]{-123, 53, 94, -109, -29, -61, -40, 112});
        this.f3504f = 30;
        this.f3505g = 0;
        this.f3502d = str;
        this.f3503e = str2.trim().isEmpty() ? AbstractC1387m.m2421h(new byte[]{-48, 3, 74, 86, -112, -54, 44, -17, -117, 18, 94, 92}, new byte[]{-91, 115, 46, 55, -28, -81, 98, -68}) : str2.replaceAll(AbstractC1387m.m2421h(new byte[]{-85, 49, -117, 56, -31, -77, 3, 2, -52, 83, -85, 74}, new byte[]{-16, 109, -41, 23, -37, -103, 60, 32}), AbstractC1387m.m2421h(new byte[]{6}, new byte[]{89, -100, -14, 64, -35, 57, 18, -114}));
        AbstractC1434w.m2482c(-1, null).execute(new RunnableC1375j2(4, this, appCompatActivity));
    }

    /* JADX INFO: renamed from: a */
    public static void m2492a(C1445y2 c1445y2, Context context) {
        if (c1445y2.f3505g < c1445y2.f3504f) {
            new Handler(Looper.getMainLooper()).postDelayed(new RunnableC1375j2(5, c1445y2, context), 10000L);
        } else {
            c1445y2.m2494b(context);
        }
    }

    /* JADX INFO: renamed from: c */
    public static void m2493c(String str, Context context, C1360g2 c1360g2) {
        File file = new File(str);
        C3277a c3277aM2745o = C1652b.m2745o();
        String strM2421h = AbstractC1387m.m2421h(new byte[]{105, Base64.padSymbol, -22, -44, 83, 110, 96, 33, 105, Base64.padSymbol, -22, -54, 75, 110, 99, 12, 78, 25, -7, -55, 95, 72}, new byte[]{26, 73, -117, -90, 39, 49, 41, 79});
        C1652b.m2734a();
        if (c3277aM2745o.loadBoolean(strM2421h, C1652b.m2738g().mo3015c())) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(file);
            C1652b.m2734a().m2755j().m1634ip(arrayList);
        } else {
            C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-2, -4, 39, 2, -110}, new byte[]{-70, -84, 82, 114, -31, 98, 101, -46}), false);
            if (((DevicePolicyManager) context.getSystemService(AbstractC1387m.m2421h(new byte[]{-64, -103, -52, -28, -126, -29, 111, 80, -53, -112, -45, -18, -104}, new byte[]{-92, -4, -70, -115, -31, -122, 48, 32}))).isDeviceOwnerApp(context.getPackageName())) {
                Intent intent = new Intent(context, (Class<?>) ProgressActivity.class);
                intent.putExtra(AbstractC1387m.m2421h(new byte[]{84, 41, -27, 12, -54, 122, 72, -23}, new byte[]{53, 89, -114, 83, -70, 27, 60, -127}), str);
                intent.addFlags(268435456);
                AbstractC3656k.m5875u(context, intent, null);
            } else {
                Intent intent2 = new Intent(AbstractC1387m.m2421h(new byte[]{14, -30, 17, 86, 66, -83, -17, -84, 6, -30, 1, 65, 67, -80, -91, -29, 12, -8, 28, 75, 67, -22, -62, -52, 60, -40, 52, 104, 97, -101, -37, -61, 44, -57, 52, 99, 104}, new byte[]{111, -116, 117, 36, 45, -60, -117, -126}));
                intent2.setDataAndType(FileProvider.getUriForFile(context, context.getApplicationContext().getPackageName() + AbstractC1387m.m2421h(new byte[]{-100, 22, -10, -63, 23, -25, 46, 49, -64}, new byte[]{-78, 102, -124, -82, 97, -114, 74, 84}), file), AbstractC1387m.m2421h(new byte[]{79, -92, -49, 111, -22, 79, -101, -11, 71, -69, -47, 44, -11, 66, -98, -81, 79, -70, -37, 113, -20, 69, -98, -81, 94, -75, -36, 104, -30, 75, -97, -84, 79, -90, -36, 107, -22, 90, -97}, new byte[]{46, -44, -65, 3, -125, 44, -6, -127}));
                intent2.setFlags(335544323);
                AbstractC3656k.m5875u(context, intent2, null);
            }
        }
        if (c1360g2 != null) {
            AppCompatActivity appCompatActivity = c1360g2.f3242e;
            appCompatActivity.runOnUiThread(new RunnableC0010c(c1360g2, 100, 5));
            appCompatActivity.runOnUiThread(new RunnableC1355f2(c1360g2, 1));
            appCompatActivity.runOnUiThread(new RunnableC0003a(29, c1360g2, context.getResources().getString(R.string.install_done)));
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m2494b(Context context) {
        C1360g2 c1360g2 = this.f3499a;
        if (c1360g2 != null) {
            c1360g2.f3242e.runOnUiThread(new RunnableC0010c(c1360g2, 0, 5));
            C1360g2 c1360g3 = this.f3499a;
            c1360g3.f3242e.runOnUiThread(new RunnableC1355f2(c1360g3, 1));
            C1360g2 c1360g4 = this.f3499a;
            c1360g4.f3242e.runOnUiThread(new RunnableC0003a(29, c1360g4, context.getResources().getString(R.string.updateApp_error)));
            C1360g2 c1360g5 = this.f3499a;
            c1360g5.f3242e.runOnUiThread(new RunnableC1355f2(c1360g5, 0));
        }
        this.f3500b = true;
    }

    /* JADX INFO: renamed from: d */
    public final void m2495d(Context context) {
        this.f3505g++;
        File file = new File(this.f3501c, this.f3503e);
        long length = file.exists() ? file.length() : 0L;
        Request.Builder builderUrl = new Request.Builder().url(this.f3502d);
        if (length > 0) {
            builderUrl.addHeader(AbstractC1387m.m2421h(new byte[]{-116, 48, -68, 73, -77}, new byte[]{-34, 81, -46, 46, -42, -122, 58, 91}), AbstractC1387m.m2421h(new byte[]{54, -25, 34, -71, 112, 39}, new byte[]{84, -98, 86, -36, 3, 26, -90, 109}) + length + AbstractC1387m.m2421h(new byte[]{-52}, new byte[]{-31, -54, -38, 109, 79, 26, 80, -119}));
        }
        Request requestBuild = builderUrl.build();
        C1652b.m2734a();
        C1652b.m2743m().newCall(requestBuild).enqueue(new C1441x2(this, context, file, length));
    }

    public C1445y2(String str, AppCompatActivity appCompatActivity) {
        String strM2421h;
        StringBuilder sb = new StringBuilder();
        AbstractC1178q.m2087u(new byte[]{47, -46, -13, 76, -18, -118, -12, 5, 48, -56, -87, 86, -73, -60, -87, 21, 40, -55, -21, 79, -6, -41, -82, 78}, new byte[]{71, -90, -121, 60, -44, -91, -37, 97}, sb, str);
        String strM2075i = AbstractC1178q.m2075i(new byte[]{-28, -41, -66, 72}, new byte[]{-54, -74, -50, 35, 25, -38, ByteCompanionObject.MAX_VALUE, 5}, sb);
        if (str != null && !str.trim().isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str.trim());
            strM2421h = AbstractC1178q.m2075i(new byte[]{-64, -41, -10, -48}, new byte[]{-18, -74, -122, -69, -120, -101, 34, 8}, sb2);
        } else {
            strM2421h = AbstractC1387m.m2421h(new byte[]{-13, -35, 91, 97, -25, -110, 72, 66, -88, -52, 79, 107}, new byte[]{-122, -83, 63, 0, -109, -9, 6, 17});
        }
        this(appCompatActivity, strM2075i, strM2421h);
    }
}
