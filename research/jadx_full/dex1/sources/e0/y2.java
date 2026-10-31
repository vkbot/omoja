package e0;

import android.app.admin.DevicePolicyManager;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.FileProvider;
import com.example.navistart.ProgressActivity;
import java.io.File;
import java.util.ArrayList;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import okhttp3.Request;
import okhttp3.Request$Builder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class y2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public g2 f2007a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f2008b;
    public String c;
    public final String d;
    public final String e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f2009f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2010g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        m.h(new byte[]{-41, -127, -115, -92, 19, -103, -104, 120, -46}, new byte[]{-126, -15, -23, -59, 103, -4, -39, 40});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public y2(AppCompatActivity appCompatActivity, String str, String str2) {
        this.f2008b = true;
        this.e = m.h(new byte[]{-16, 69, 58, -14, -105, -90, -106, 35, -85, 84, 46, -8}, new byte[]{-123, 53, 94, -109, -29, -61, -40, 112});
        this.f2009f = 30;
        this.f2010g = 0;
        this.d = str;
        this.e = str2.trim().isEmpty() ? m.h(new byte[]{-48, 3, 74, 86, -112, -54, 44, -17, -117, 18, 94, 92}, new byte[]{-91, 115, 46, 55, -28, -81, 98, -68}) : str2.replaceAll(m.h(new byte[]{-85, 49, -117, 56, -31, -77, 3, 2, -52, 83, -85, 74}, new byte[]{-16, 109, -41, 23, -37, -103, 60, 32}), m.h(new byte[]{6}, new byte[]{89, -100, -14, 64, -35, 57, 18, -114}));
        w.c(-1, null).execute(new j2(4, this, appCompatActivity));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void a(y2 y2Var, Context context) {
        if (y2Var.f2010g < y2Var.f2009f) {
            new Handler(Looper.getMainLooper()).postDelayed(new j2(5, y2Var, context), 10000L);
        } else {
            y2Var.b(context);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void c(String str, Context context, g2 g2Var) {
        File file = new File(str);
        u0.a aVarO = h0.b.o();
        String strH = m.h(new byte[]{105, Base64.padSymbol, -22, -44, 83, 110, 96, 33, 105, Base64.padSymbol, -22, -54, 75, 110, 99, 12, 78, 25, -7, -55, 95, 72}, new byte[]{26, 73, -117, -90, 39, 49, 41, 79});
        h0.b.a();
        if (aVarO.loadBoolean(strH, h0.b.g().c())) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(file);
            h0.b.a().j().ip(arrayList);
        } else {
            h0.b.o().loadBoolean(m.h(new byte[]{-2, -4, 39, 2, -110}, new byte[]{-70, -84, 82, 114, -31, 98, 101, -46}), false);
            if (((DevicePolicyManager) context.getSystemService(m.h(new byte[]{-64, -103, -52, -28, -126, -29, 111, 80, -53, -112, -45, -18, -104}, new byte[]{-92, -4, -70, -115, -31, -122, 48, 32}))).isDeviceOwnerApp(context.getPackageName())) {
                Intent intent = new Intent(context, (Class<?>) ProgressActivity.class);
                intent.putExtra(m.h(new byte[]{84, 41, -27, 12, -54, 122, 72, -23}, new byte[]{53, 89, -114, 83, -70, 27, 60, -127}), str);
                intent.addFlags(268435456);
                y5.k.u(context, intent, null);
            } else {
                Intent intent2 = new Intent(m.h(new byte[]{14, -30, 17, 86, 66, -83, -17, -84, 6, -30, 1, 65, 67, -80, -91, -29, 12, -8, 28, 75, 67, -22, -62, -52, 60, -40, 52, 104, 97, -101, -37, -61, 44, -57, 52, 99, 104}, new byte[]{111, -116, 117, 36, 45, -60, -117, -126}));
                intent2.setDataAndType(FileProvider.getUriForFile(context, context.getApplicationContext().getPackageName() + m.h(new byte[]{-100, 22, -10, -63, 23, -25, 46, 49, -64}, new byte[]{-78, 102, -124, -82, 97, -114, 74, 84}), file), m.h(new byte[]{79, -92, -49, 111, -22, 79, -101, -11, 71, -69, -47, 44, -11, 66, -98, -81, 79, -70, -37, 113, -20, 69, -98, -81, 94, -75, -36, 104, -30, 75, -97, -84, 79, -90, -36, 107, -22, 90, -97}, new byte[]{46, -44, -65, 3, -125, 44, -6, -127}));
                intent2.setFlags(335544323);
                y5.k.u(context, intent2, null);
            }
        }
        if (g2Var != null) {
            AppCompatActivity appCompatActivity = g2Var.e;
            appCompatActivity.runOnUiThread(new a4.c(g2Var, 100, 5));
            appCompatActivity.runOnUiThread(new f2(g2Var, 1));
            appCompatActivity.runOnUiThread(new a1.a(29, g2Var, context.getResources().getString(2131952035)));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(Context context) {
        g2 g2Var = this.f2007a;
        if (g2Var != null) {
            g2Var.e.runOnUiThread(new a4.c(g2Var, 0, 5));
            g2 g2Var2 = this.f2007a;
            g2Var2.e.runOnUiThread(new f2(g2Var2, 1));
            g2 g2Var3 = this.f2007a;
            g2Var3.e.runOnUiThread(new a1.a(29, g2Var3, context.getResources().getString(2131952659)));
            g2 g2Var4 = this.f2007a;
            g2Var4.e.runOnUiThread(new f2(g2Var4, 0));
        }
        this.f2008b = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(Context context) {
        this.f2010g++;
        File file = new File(this.c, this.e);
        long length = file.exists() ? file.length() : 0L;
        Request$Builder request$BuilderUrl = new Request$Builder().url(this.d);
        if (length > 0) {
            request$BuilderUrl.addHeader(m.h(new byte[]{-116, 48, -68, 73, -77}, new byte[]{-34, 81, -46, 46, -42, -122, 58, 91}), m.h(new byte[]{54, -25, 34, -71, 112, 39}, new byte[]{84, -98, 86, -36, 3, 26, -90, 109}) + length + m.h(new byte[]{-52}, new byte[]{-31, -54, -38, 109, 79, 26, 80, -119}));
        }
        Request requestBuild = request$BuilderUrl.build();
        h0.b.a();
        h0.b.m().newCall(requestBuild).enqueue(new x2(this, context, file, length));
    }

    public y2(String str, AppCompatActivity appCompatActivity) {
        String strH;
        StringBuilder sb = new StringBuilder();
        com.google.protobuf.q.u(new byte[]{47, -46, -13, 76, -18, -118, -12, 5, 48, -56, -87, 86, -73, -60, -87, 21, 40, -55, -21, 79, -6, -41, -82, 78}, new byte[]{71, -90, -121, 60, -44, -91, -37, 97}, sb, str);
        String strI = com.google.protobuf.q.i(new byte[]{-28, -41, -66, 72}, new byte[]{-54, -74, -50, 35, 25, -38, ByteCompanionObject.MAX_VALUE, 5}, sb);
        if (str != null && !str.trim().isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str.trim());
            strH = com.google.protobuf.q.i(new byte[]{-64, -41, -10, -48}, new byte[]{-18, -74, -122, -69, -120, -101, 34, 8}, sb2);
        } else {
            strH = m.h(new byte[]{-13, -35, 91, 97, -25, -110, 72, 66, -88, -52, 79, 107}, new byte[]{-122, -83, 63, 0, -109, -9, 6, 17});
        }
        this(appCompatActivity, strI, strH);
    }
}
