package p047e0;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.provider.Settings;
import com.example.navistart.MyApplication;
import com.example.navistart.boot;
import com.example.navistart.punto;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import org.json.JSONException;
import org.json.JSONObject;
import p005a4.RunnableC0014g;
import p206u0.C3277a;
import p232w7.C3537c;

/* JADX INFO: renamed from: e0.q */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1407q implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: f */
    public static boolean f3369f = true;

    /* JADX INFO: renamed from: a */
    public final Thread.UncaughtExceptionHandler f3370a;

    /* JADX INFO: renamed from: b */
    public final Context f3371b;

    /* JADX INFO: renamed from: c */
    public final C1338c0 f3372c;

    /* JADX INFO: renamed from: d */
    public final ScheduledThreadPoolExecutor f3373d;

    /* JADX INFO: renamed from: e */
    public final C3277a f3374e;

    public C1407q(MyApplication myApplication) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutorM2482c = AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{-35, 98, -2, -64, -92, 86, -107, 87, -6, 124, -6, -63}, new byte[]{-98, 16, -97, -77, -52, 30, -12, 57}));
        this.f3373d = scheduledThreadPoolExecutorM2482c;
        this.f3370a = Thread.getDefaultUncaughtExceptionHandler();
        this.f3371b = myApplication.getApplicationContext();
        this.f3372c = new C1338c0();
        this.f3374e = new C3277a(myApplication);
        scheduledThreadPoolExecutorM2482c.execute(new RunnableC0014g(8, this));
    }

    /* JADX INFO: renamed from: a */
    public final void m2449a() {
        Context context = this.f3371b;
        File file = new File(context.getFilesDir(), AbstractC1387m.m2421h(new byte[]{78, ByteCompanionObject.MIN_VALUE, -36, -42, 64, -48, 121, 54, 74, -36, -55, -35, 92}, new byte[]{45, -14, -67, -91, 40, -113, 21, 89}));
        if (file.exists()) {
            String strM1674t = punto.m1674t(context);
            String strM1675w = punto.m1675w(Settings.Secure.getString(context.getContentResolver(), AbstractC1387m.m2421h(new byte[]{95, -109, -89, -47, 70, 117, 80, 116, 87, -103}, new byte[]{62, -3, -61, -93, 41, 28, 52, 43})));
            byte[] bArr = AbstractC1387m.f3322j;
            String[] strArr = AbstractC1406p3.f3368a;
            String str = new String(bArr);
            C3277a c3277a = this.f3374e;
            String strLoadString = c3277a.loadString(str, "");
            String strM1614e = boot.m1614e(c3277a.loadString(punto.m1674t(context), "") + punto.m1674t(context));
            if (!file.exists() || !file.canRead()) {
                System.err.println(AbstractC1387m.m2421h(new byte[]{-123, -102, -43, -121, 125, 36, 82, -87, -23, -100, -63, -121, 114, 35, 72, -83, -91, -100, -42, -121, 116, 63, 30, -81, -88, -101, -36, -56, 111, 109, 92, -87, -23, -121, -41, -58, ByteCompanionObject.MAX_VALUE, 99}, new byte[]{-55, -11, -78, -89, 27, 77, 62, -52}));
                return;
            }
            try {
                String str2 = Build.VERSION.SDK_INT >= 26 ? new String(Files.readAllBytes(file.toPath()), StandardCharsets.UTF_8) : "";
                if (str2.isEmpty()) {
                    System.err.println(AbstractC1387m.m2421h(new byte[]{-80, -75, -125, -54, 47, -72, 55, -112, -36, -77, -105, -54, 44, -68, 43, -127, -123, -12}, new byte[]{-4, -38, -28, -22, 73, -47, 91, -11}));
                    return;
                }
                if (str2.length() > 10240) {
                    str2 = str2.substring(0, 10240);
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(AbstractC1387m.m2421h(new byte[]{98, -63}, new byte[]{11, -91, 46, -106, -6, -60, 95, -98}), strM1674t);
                jSONObject.put(AbstractC1387m.m2421h(new byte[]{-21, 89}, new byte[]{-104, 49, 104, 82, -36, 2, Base64.padSymbol, 26}), strM1675w);
                jSONObject.put(AbstractC1387m.m2421h(new byte[]{-7, 14}, new byte[]{-119, 103, 25, 87, -20, 92, 88, 4}), strLoadString);
                jSONObject.put(AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MIN_VALUE, 40}, new byte[]{-27, 69, -122, -39, -118, 32, 31, -117}), strM1614e);
                jSONObject.put(AbstractC1387m.m2421h(new byte[]{120, -40, -35}, new byte[]{20, -73, -70, 16, 21, 124, -105, 74}), str2);
                this.f3372c.f3192a.newCall(new Request.Builder().url(AbstractC1387m.m2421h(new byte[]{77, 72, 122, 83, -105, -54, -107, 1, 79, 95, 111, 81, -112, -97, -43, 66, 86, 18, 124, 86, -53, -97, -50, 94, 10, 73, 126, 79, -117, -111, -34, 113, 73, 83, 105, 13, -108, -104, -54}, new byte[]{37, 60, 14, 35, -28, -16, -70, 46})).post(RequestBody.create(jSONObject.toString(), MediaType.parse(AbstractC1387m.m2421h(new byte[]{-47, -79, 17, 80, -119, -15, 39, -50, -39, -82, 15, 19, -118, -31, 41, -44, -117, -31, 2, 84, -127, -32, 53, -33, -60, -4, 20, 72, -122, -65, 126}, new byte[]{-80, -63, 97, 60, -32, -110, 70, -70})))).addHeader(AbstractC1387m.m2421h(new byte[]{53, 20, -50, -82, 39, 56, -82, ByteCompanionObject.MIN_VALUE, 34, 2, -48, -65}, new byte[]{118, 123, -96, -38, 66, 86, -38, -83}), AbstractC1387m.m2421h(new byte[]{-55, -81, 100, ByteCompanionObject.MAX_VALUE, 47, -94, 81, 123, -63, -80, 122, 60, 44, -78, 95, 97}, new byte[]{-88, -33, 20, 19, 70, -63, 48, 15})).addHeader(AbstractC1387m.m2421h(new byte[]{29, -6, 98, -51, -61, 98}, new byte[]{92, -103, 1, -88, -77, 22, 28, -120}), AbstractC1387m.m2421h(new byte[]{-50, 17, 110, -83, 83, 8, 48, -104, -58, 14, 112, -18, 80, 24, 62, -126}, new byte[]{-81, 97, 30, -63, 58, 107, 81, -20})).build()).enqueue(new C3537c(5));
                System.out.println(AbstractC1387m.m2421h(new byte[]{83, 40, 23, 81, 35, -87, -73, -90, 63, 52, 5, 18, 51, -87, -86, -95, 121, 50, 28, 29, 41, -30}, new byte[]{31, 71, 112, 113, 80, -52, -39, -46}));
            } catch (IOException | JSONException unused) {
            }
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        String strM2421h;
        Throwable cause;
        String name;
        Context context = this.f3371b;
        File file = new File(context.getFilesDir(), AbstractC1387m.m2421h(new byte[]{41, 39, 95, 11, 66, 16, -120, 26, 45, 123, 74, 0, 94}, new byte[]{74, 85, 62, 120, 42, 79, -28, 117}));
        try {
            strM2421h = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            loop0: while (true) {
                if (cause == null) {
                    name = null;
                    break;
                }
                for (Throwable th2 : cause.getSuppressed()) {
                    String message = th2.getMessage();
                    if (message != null) {
                        System.out.println(AbstractC1387m.m2421h(new byte[]{-100, -54, 122, -71, -94, -103, 8, 36, -86, -37, 42, -96, -66, -36, 24, 63, -82, -42, 100, -13, -16}, new byte[]{-49, -65, 10, -55, -48, -4, 123, 87}).concat(message));
                    }
                    if (message != null && message.startsWith(AbstractC1387m.m2421h(new byte[]{-120, 119, 14, -110, 94, 13, 56, -100, -113, 119, 2, -108, 83, 63}, new byte[]{-57, 37, 71, -43, 23, 67, 103, -56}))) {
                        name = message.substring(AbstractC1387m.m2421h(new byte[]{108, -47, -103, 110, 27, -120, -20, -67, 107, -47, -107, 104, 22, -70}, new byte[]{35, -125, -48, 41, 82, -58, -77, -23}).length());
                        break loop0;
                    }
                }
                cause = cause.getCause();
            }
        } catch (PackageManager.NameNotFoundException unused) {
            strM2421h = AbstractC1387m.m2421h(new byte[]{40, -51, 52, 20, -50, -99, -115}, new byte[]{93, -93, 95, 122, -95, -22, -29, 68});
        }
        cause = th;
        if (name == null) {
            name = Thread.currentThread().getName();
        }
        try {
            FileWriter fileWriter = new FileWriter(file, false);
            try {
                fileWriter.write(AbstractC1387m.m2421h(new byte[]{-43, -99, 4, -50, 85, -125, -76, -59, -15, -50, 73}, new byte[]{-127, -12, 105, -85, 38, -9, -43, -88}) + System.currentTimeMillis() + "\n");
                fileWriter.write(AbstractC1387m.m2421h(new byte[]{-19, -5, 95, -103, -19, 89, -85, -48, -101}, new byte[]{-69, -98, 45, -22, -124, 54, -59, -22}) + strM2421h + "\n");
                fileWriter.write(AbstractC1387m.m2421h(new byte[]{122, 96, -119, 45, -78, 41, -19, -38}, new byte[]{46, 8, -5, 72, -45, 77, -41, -6}) + name + "\n");
                fileWriter.write(AbstractC1387m.m2421h(new byte[]{81, -80, -83, -53, 68, -14, -45, -90, 122, -14, -18}, new byte[]{20, -56, -50, -82, 52, -122, -70, -55}) + th + "\n\n");
                StackTraceElement[] stackTrace = th.getStackTrace();
                int length = stackTrace.length;
                for (int i10 = 0; i10 < length; i10++) {
                    fileWriter.write(stackTrace[i10].toString() + "\n");
                }
                for (Throwable cause2 = th.getCause(); cause2 != null; cause2 = cause2.getCause()) {
                    fileWriter.write(AbstractC1387m.m2421h(new byte[]{-15, 49, ByteCompanionObject.MAX_VALUE, -100, -33, 110, 10, 110, -103, 11, 36, -55}, new byte[]{-5, 114, 30, -23, -84, 11, 110, 78}) + cause2 + "\n");
                    StackTraceElement[] stackTrace2 = cause2.getStackTrace();
                    int length2 = stackTrace2.length;
                    for (int i11 = 0; i11 < length2; i11++) {
                        fileWriter.write(AbstractC1387m.m2421h(new byte[]{-32, 16, -125, -114}, new byte[]{-23, 113, -9, -82, -71, 114, 106, -108}) + stackTrace2[i11] + "\n");
                    }
                }
                fileWriter.close();
            } catch (Throwable th3) {
                try {
                    fileWriter.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        } catch (IOException unused2) {
        }
        m2449a();
        if (f3369f) {
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f3370a;
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.uncaughtException(thread, th);
            } else {
                System.exit(2);
            }
        }
    }
}
