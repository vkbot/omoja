package e0;

import android.content.Context;
import android.content.pm.PackageManager$NameNotFoundException;
import android.os.Build$VERSION;
import android.provider.Settings$Secure;
import com.example.navistart.MyApplication;
import com.example.navistart.boot;
import com.example.navistart.punto;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import okhttp3.MediaType;
import okhttp3.Request$Builder;
import okhttp3.RequestBody;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class q implements Thread$UncaughtExceptionHandler {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static boolean f1925f = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Thread$UncaughtExceptionHandler f1926a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f1927b;
    public final c0 c;
    public final ScheduledThreadPoolExecutor d;
    public final u0.a e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public q(MyApplication myApplication) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutorC = w.c(-1, m.h(new byte[]{-35, 98, -2, -64, -92, 86, -107, 87, -6, 124, -6, -63}, new byte[]{-98, 16, -97, -77, -52, 30, -12, 57}));
        this.d = scheduledThreadPoolExecutorC;
        this.f1926a = Thread.getDefaultUncaughtExceptionHandler();
        this.f1927b = myApplication.getApplicationContext();
        this.c = new c0();
        this.e = new u0.a(myApplication);
        scheduledThreadPoolExecutorC.execute(new a4.g(8, this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a() {
        Context context = this.f1927b;
        File file = new File(context.getFilesDir(), m.h(new byte[]{78, ByteCompanionObject.MIN_VALUE, -36, -42, 64, -48, 121, 54, 74, -36, -55, -35, 92}, new byte[]{45, -14, -67, -91, 40, -113, 21, 89}));
        if (file.exists()) {
            String strT = punto.t(context);
            String strW = punto.w(Settings$Secure.getString(context.getContentResolver(), m.h(new byte[]{95, -109, -89, -47, 70, 117, 80, 116, 87, -103}, new byte[]{62, -3, -61, -93, 41, 28, 52, 43})));
            byte[] bArr = m.f1896j;
            String[] strArr = p3.f1924a;
            String str = new String(bArr);
            u0.a aVar = this.e;
            String strLoadString = aVar.loadString(str, "");
            String strE = boot.e(aVar.loadString(punto.t(context), "") + punto.t(context));
            if (!file.exists() || !file.canRead()) {
                System.err.println(m.h(new byte[]{-123, -102, -43, -121, 125, 36, 82, -87, -23, -100, -63, -121, 114, 35, 72, -83, -91, -100, -42, -121, 116, 63, 30, -81, -88, -101, -36, -56, 111, 109, 92, -87, -23, -121, -41, -58, ByteCompanionObject.MAX_VALUE, 99}, new byte[]{-55, -11, -78, -89, 27, 77, 62, -52}));
                return;
            }
            try {
                String str2 = Build$VERSION.SDK_INT >= 26 ? new String(c5.h.z(c5.h.i(file)), StandardCharsets.UTF_8) : "";
                if (str2.isEmpty()) {
                    System.err.println(m.h(new byte[]{-80, -75, -125, -54, 47, -72, 55, -112, -36, -77, -105, -54, 44, -68, 43, -127, -123, -12}, new byte[]{-4, -38, -28, -22, 73, -47, 91, -11}));
                    return;
                }
                if (str2.length() > 10240) {
                    str2 = str2.substring(0, 10240);
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(m.h(new byte[]{98, -63}, new byte[]{11, -91, 46, -106, -6, -60, 95, -98}), strT);
                jSONObject.put(m.h(new byte[]{-21, 89}, new byte[]{-104, 49, 104, 82, -36, 2, Base64.padSymbol, 26}), strW);
                jSONObject.put(m.h(new byte[]{-7, 14}, new byte[]{-119, 103, 25, 87, -20, 92, 88, 4}), strLoadString);
                jSONObject.put(m.h(new byte[]{ByteCompanionObject.MIN_VALUE, 40}, new byte[]{-27, 69, -122, -39, -118, 32, 31, -117}), strE);
                jSONObject.put(m.h(new byte[]{120, -40, -35}, new byte[]{20, -73, -70, 16, 21, 124, -105, 74}), str2);
                this.c.f1816a.newCall(new Request$Builder().url(m.h(new byte[]{77, 72, 122, 83, -105, -54, -107, 1, 79, 95, 111, 81, -112, -97, -43, 66, 86, 18, 124, 86, -53, -97, -50, 94, 10, 73, 126, 79, -117, -111, -34, 113, 73, 83, 105, 13, -108, -104, -54}, new byte[]{37, 60, 14, 35, -28, -16, -70, 46})).post(RequestBody.create(jSONObject.toString(), MediaType.parse(m.h(new byte[]{-47, -79, 17, 80, -119, -15, 39, -50, -39, -82, 15, 19, -118, -31, 41, -44, -117, -31, 2, 84, -127, -32, 53, -33, -60, -4, 20, 72, -122, -65, 126}, new byte[]{-80, -63, 97, 60, -32, -110, 70, -70})))).addHeader(m.h(new byte[]{53, 20, -50, -82, 39, 56, -82, ByteCompanionObject.MIN_VALUE, 34, 2, -48, -65}, new byte[]{118, 123, -96, -38, 66, 86, -38, -83}), m.h(new byte[]{-55, -81, 100, ByteCompanionObject.MAX_VALUE, 47, -94, 81, 123, -63, -80, 122, 60, 44, -78, 95, 97}, new byte[]{-88, -33, 20, 19, 70, -63, 48, 15})).addHeader(m.h(new byte[]{29, -6, 98, -51, -61, 98}, new byte[]{92, -103, 1, -88, -77, 22, 28, -120}), m.h(new byte[]{-50, 17, 110, -83, 83, 8, 48, -104, -58, 14, 112, -18, 80, 24, 62, -126}, new byte[]{-81, 97, 30, -63, 58, 107, 81, -20})).build()).enqueue(new w7.c(5));
                System.out.println(m.h(new byte[]{83, 40, 23, 81, 35, -87, -73, -90, 63, 52, 5, 18, 51, -87, -86, -95, 121, 50, 28, 29, 41, -30}, new byte[]{31, 71, 112, 113, 80, -52, -39, -46}));
            } catch (IOException | JSONException unused) {
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Thread$UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        String strH;
        Throwable cause;
        String name;
        Context context = this.f1927b;
        File file = new File(context.getFilesDir(), m.h(new byte[]{41, 39, 95, 11, 66, 16, -120, 26, 45, 123, 74, 0, 94}, new byte[]{74, 85, 62, 120, 42, 79, -28, 117}));
        try {
            strH = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            loop0: while (true) {
                if (cause == null) {
                    name = null;
                    break;
                }
                for (Throwable th2 : cause.getSuppressed()) {
                    String message = th2.getMessage();
                    if (message != null) {
                        System.out.println(m.h(new byte[]{-100, -54, 122, -71, -94, -103, 8, 36, -86, -37, 42, -96, -66, -36, 24, 63, -82, -42, 100, -13, -16}, new byte[]{-49, -65, 10, -55, -48, -4, 123, 87}).concat(message));
                    }
                    if (message != null && message.startsWith(m.h(new byte[]{-120, 119, 14, -110, 94, 13, 56, -100, -113, 119, 2, -108, 83, 63}, new byte[]{-57, 37, 71, -43, 23, 67, 103, -56}))) {
                        name = message.substring(m.h(new byte[]{108, -47, -103, 110, 27, -120, -20, -67, 107, -47, -107, 104, 22, -70}, new byte[]{35, -125, -48, 41, 82, -58, -77, -23}).length());
                        break loop0;
                    }
                }
                cause = cause.getCause();
            }
        } catch (PackageManager$NameNotFoundException unused) {
            strH = m.h(new byte[]{40, -51, 52, 20, -50, -99, -115}, new byte[]{93, -93, 95, 122, -95, -22, -29, 68});
        }
        cause = th;
        if (name == null) {
            name = Thread.currentThread().getName();
        }
        try {
            FileWriter fileWriter = new FileWriter(file, false);
            try {
                fileWriter.write(m.h(new byte[]{-43, -99, 4, -50, 85, -125, -76, -59, -15, -50, 73}, new byte[]{-127, -12, 105, -85, 38, -9, -43, -88}) + System.currentTimeMillis() + "\n");
                fileWriter.write(m.h(new byte[]{-19, -5, 95, -103, -19, 89, -85, -48, -101}, new byte[]{-69, -98, 45, -22, -124, 54, -59, -22}) + strH + "\n");
                fileWriter.write(m.h(new byte[]{122, 96, -119, 45, -78, 41, -19, -38}, new byte[]{46, 8, -5, 72, -45, 77, -41, -6}) + name + "\n");
                fileWriter.write(m.h(new byte[]{81, -80, -83, -53, 68, -14, -45, -90, 122, -14, -18}, new byte[]{20, -56, -50, -82, 52, -122, -70, -55}) + th + "\n\n");
                StackTraceElement[] stackTrace = th.getStackTrace();
                int length = stackTrace.length;
                for (int i9 = 0; i9 < length; i9++) {
                    fileWriter.write(stackTrace[i9].toString() + "\n");
                }
                for (Throwable cause2 = th.getCause(); cause2 != null; cause2 = cause2.getCause()) {
                    fileWriter.write(m.h(new byte[]{-15, 49, ByteCompanionObject.MAX_VALUE, -100, -33, 110, 10, 110, -103, 11, 36, -55}, new byte[]{-5, 114, 30, -23, -84, 11, 110, 78}) + cause2 + "\n");
                    StackTraceElement[] stackTrace2 = cause2.getStackTrace();
                    int length2 = stackTrace2.length;
                    for (int i10 = 0; i10 < length2; i10++) {
                        fileWriter.write(m.h(new byte[]{-32, 16, -125, -114}, new byte[]{-23, 113, -9, -82, -71, 114, 106, -108}) + stackTrace2[i10] + "\n");
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
        a();
        if (f1925f) {
            Thread$UncaughtExceptionHandler thread$UncaughtExceptionHandler = this.f1926a;
            if (thread$UncaughtExceptionHandler != null) {
                thread$UncaughtExceptionHandler.uncaughtException(thread, th);
            } else {
                System.exit(2);
            }
        }
    }
}
