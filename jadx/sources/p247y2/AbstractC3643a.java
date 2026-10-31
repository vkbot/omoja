package p247y2;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicBoolean;
import p165p2.AbstractC2961d;
import p165p2.C2958a;
import p165p2.C2959b;
import p165p2.C2960c;
import p181r2.AbstractC3093a;
import p191s2.AbstractC3185a;
import p199t2.C3239a;
import p218v2.C3327a;
import p218v2.C3329c;

/* JADX INFO: renamed from: y2.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3643a {

    /* JADX INFO: renamed from: a */
    public static final C2958a f10821a = C2958a.f8239b;

    /* JADX INFO: renamed from: b */
    public static final Object f10822b = new Object();

    /* JADX INFO: renamed from: c */
    public static Method f10823c;

    /* JADX INFO: renamed from: d */
    public static Method f10824d;

    /* JADX INFO: renamed from: a */
    public static void m5830a(Context context) {
        Context context2;
        Context contextCreatePackageContext;
        AbstractC3093a.m4927c(context, "Context must not be null");
        f10821a.getClass();
        AtomicBoolean atomicBoolean = AbstractC2961d.f8240a;
        C2958a.f8239b.getClass();
        int iM4747a = C2958a.m4747a(11925000, context);
        Intent intent = null;
        if (iM4747a == 0) {
            synchronized (f10822b) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                try {
                    context2 = C3329c.m5246a(context, C3329c.f9737b).f9748a;
                } catch (C3327a e) {
                    Log.w("ProviderInstaller", "Failed to load providerinstaller module: ".concat(String.valueOf(e.getMessage())));
                    context2 = null;
                }
                if (context2 != null) {
                    m5831b(context2, "com.google.android.gms.providerinstaller.ProviderInstallerImpl");
                    return;
                }
                long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                try {
                    contextCreatePackageContext = context.createPackageContext("com.google.android.gms", 3);
                } catch (PackageManager.NameNotFoundException unused) {
                    contextCreatePackageContext = null;
                }
                if (contextCreatePackageContext != null) {
                    try {
                        if (f10824d == null) {
                            Class cls = Long.TYPE;
                            f10824d = contextCreatePackageContext.getClassLoader().loadClass("com.google.android.gms.common.security.ProviderInstallerImpl").getMethod("reportRequestStats", Context.class, cls, cls);
                        }
                        f10824d.invoke(null, context, Long.valueOf(jElapsedRealtime), Long.valueOf(jElapsedRealtime2));
                    } catch (Exception e6) {
                        Log.w("ProviderInstaller", "Failed to report request stats: ".concat(String.valueOf(e6.getMessage())));
                    }
                }
                if (contextCreatePackageContext != null) {
                    m5831b(contextCreatePackageContext, "com.google.android.gms.common.security.ProviderInstallerImpl");
                    return;
                } else {
                    Log.e("ProviderInstaller", "Failed to get remote context");
                    throw new C2959b();
                }
            }
        }
        if (iM4747a == 1 || iM4747a == 2) {
            if (AbstractC3185a.m5112b(context)) {
                intent = new Intent("com.google.android.clockwork.home.UPDATE_ANDROID_WEAR_ACTION");
                intent.setPackage("com.google.android.wearable.app");
            } else {
                StringBuilder sb = new StringBuilder("gcore_");
                sb.append(C2958a.f8238a);
                sb.append("-");
                if (!TextUtils.isEmpty("e")) {
                    sb.append("e");
                }
                sb.append("-");
                sb.append(context.getPackageName());
                sb.append("-");
                try {
                    sb.append(C3239a.m5179a(context).f1169c.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
                } catch (PackageManager.NameNotFoundException unused2) {
                }
                String string = sb.toString();
                intent = new Intent("android.intent.action.VIEW");
                Uri.Builder builderAppendQueryParameter = Uri.parse("market://details").buildUpon().appendQueryParameter("id", "com.google.android.gms");
                if (!TextUtils.isEmpty(string)) {
                    builderAppendQueryParameter.appendQueryParameter("pcampaignid", string);
                }
                intent.setData(builderAppendQueryParameter.build());
                intent.setPackage("com.android.vending");
                intent.addFlags(524288);
            }
        } else if (iM4747a == 3) {
            Uri uriFromParts = Uri.fromParts("package", "com.google.android.gms", null);
            intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(uriFromParts);
        }
        Log.e("GooglePlayServicesUtil", "GooglePlayServices not available due to error " + iM4747a);
        if (intent != null) {
            throw new C2960c("Google Play Services not available");
        }
        throw new C2959b();
    }

    /* JADX INFO: renamed from: b */
    public static void m5831b(Context context, String str) throws C2959b {
        try {
            if (f10823c == null) {
                f10823c = context.getClassLoader().loadClass(str).getMethod("insertProvider", Context.class);
            }
            f10823c.invoke(null, context);
        } catch (Exception e) {
            Throwable cause = e.getCause();
            if (Log.isLoggable("ProviderInstaller", 6)) {
                Log.e("ProviderInstaller", "Failed to install provider: ".concat(String.valueOf(cause == null ? e.getMessage() : cause.getMessage())));
            }
            throw new C2959b();
        }
    }
}
