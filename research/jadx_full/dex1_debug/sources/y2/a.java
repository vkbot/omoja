package y2;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager$NameNotFoundException;
import android.net.Uri;
import android.net.Uri$Builder;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicBoolean;
import p2.b;
import p2.d;
import v2.c;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p2.a f6121a = p2.a.f4575b;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Object f6122b = new Object();
    public static Method c;
    public static Method d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void a(Context context) {
        Context context2;
        Context contextCreatePackageContext;
        r2.a.c(context, "Context must not be null");
        f6121a.getClass();
        AtomicBoolean atomicBoolean = d.f4576a;
        p2.a.f4575b.getClass();
        int iA = p2.a.a(11925000, context);
        Intent intent = null;
        if (iA == 0) {
            synchronized (f6122b) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                try {
                    context2 = c.a(context, c.f5517b).f5525a;
                } catch (v2.a e) {
                    Log.w("ProviderInstaller", "Failed to load providerinstaller module: ".concat(String.valueOf(e.getMessage())));
                    context2 = null;
                }
                if (context2 != null) {
                    b(context2, "com.google.android.gms.providerinstaller.ProviderInstallerImpl");
                    return;
                }
                long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                try {
                    contextCreatePackageContext = context.createPackageContext("com.google.android.gms", 3);
                } catch (PackageManager$NameNotFoundException unused) {
                    contextCreatePackageContext = null;
                }
                if (contextCreatePackageContext != null) {
                    try {
                        if (d == null) {
                            Class cls = Long.TYPE;
                            d = contextCreatePackageContext.getClassLoader().loadClass("com.google.android.gms.common.security.ProviderInstallerImpl").getMethod("reportRequestStats", Context.class, cls, cls);
                        }
                        d.invoke(null, context, Long.valueOf(jElapsedRealtime), Long.valueOf(jElapsedRealtime2));
                    } catch (Exception e6) {
                        Log.w("ProviderInstaller", "Failed to report request stats: ".concat(String.valueOf(e6.getMessage())));
                    }
                }
                if (contextCreatePackageContext != null) {
                    b(contextCreatePackageContext, "com.google.android.gms.common.security.ProviderInstallerImpl");
                    return;
                } else {
                    Log.e("ProviderInstaller", "Failed to get remote context");
                    throw new b();
                }
            }
        }
        if (iA == 1 || iA == 2) {
            if (s2.a.b(context)) {
                intent = new Intent("com.google.android.clockwork.home.UPDATE_ANDROID_WEAR_ACTION");
                intent.setPackage("com.google.android.wearable.app");
            } else {
                StringBuilder sb = new StringBuilder("gcore_");
                sb.append(p2.a.f4574a);
                sb.append("-");
                if (!TextUtils.isEmpty("e")) {
                    sb.append("e");
                }
                sb.append("-");
                sb.append(context.getPackageName());
                sb.append("-");
                try {
                    sb.append(t2.a.a(context).c.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
                } catch (PackageManager$NameNotFoundException unused2) {
                }
                String string = sb.toString();
                intent = new Intent("android.intent.action.VIEW");
                Uri$Builder uri$BuilderAppendQueryParameter = Uri.parse("market://details").buildUpon().appendQueryParameter("id", "com.google.android.gms");
                if (!TextUtils.isEmpty(string)) {
                    uri$BuilderAppendQueryParameter.appendQueryParameter("pcampaignid", string);
                }
                intent.setData(uri$BuilderAppendQueryParameter.build());
                intent.setPackage("com.android.vending");
                intent.addFlags(524288);
            }
        } else if (iA == 3) {
            Uri uriFromParts = Uri.fromParts("package", "com.google.android.gms", null);
            intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(uriFromParts);
        }
        Log.e("GooglePlayServicesUtil", "GooglePlayServices not available due to error " + iA);
        if (intent != null) {
            throw new p2.c("Google Play Services not available");
        }
        throw new b();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void b(Context context, String str) throws b {
        try {
            if (c == null) {
                c = context.getClassLoader().loadClass(str).getMethod("insertProvider", Context.class);
            }
            c.invoke(null, context);
        } catch (Exception e) {
            Throwable cause = e.getCause();
            if (Log.isLoggable("ProviderInstaller", 6)) {
                Log.e("ProviderInstaller", "Failed to install provider: ".concat(String.valueOf(cause == null ? e.getMessage() : cause.getMessage())));
            }
            throw new b();
        }
    }
}
