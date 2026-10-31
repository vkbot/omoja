package p165p2;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.example.navistart.R;
import com.google.android.gms.common.GooglePlayServicesIncorrectManifestValueException;
import com.google.android.gms.common.GooglePlayServicesMissingManifestValueException;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import p130l9.C2237i;
import p181r2.AbstractC3093a;
import p191s2.AbstractC3185a;
import p199t2.C3239a;

/* JADX INFO: renamed from: p2.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2958a {

    /* JADX INFO: renamed from: a */
    public static final int f8238a;

    /* JADX INFO: renamed from: b */
    public static final C2958a f8239b;

    static {
        AtomicBoolean atomicBoolean = AbstractC2961d.f8240a;
        f8238a = 12451000;
        f8239b = new C2958a();
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0196  */
    /* JADX WARN: Code duplicated, block: B:103:0x019b  */
    /* JADX WARN: Code duplicated, block: B:105:0x019f  */
    /* JADX WARN: Code duplicated, block: B:106:0x01c4  */
    /* JADX WARN: Code duplicated, block: B:115:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:116:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:146:0x01c8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:92:0x016c  */
    /* JADX WARN: Code duplicated, block: B:97:0x018f  */
    /* JADX WARN: Code duplicated, block: B:99:0x0194  */
    /* JADX WARN: Instruction removed from duplicated block: B:105:0x019f, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:97:0x018f, please report this as an issue */
    /* JADX INFO: renamed from: a */
    public static int m4747a(int i10, Context context) {
        boolean z9;
        PackageInfo packageInfo;
        int i11;
        int i12;
        ApplicationInfo applicationInfo;
        AtomicBoolean atomicBoolean = AbstractC2961d.f8240a;
        try {
            context.getResources().getString(R.string.common_google_play_services_unknown_issue);
        } catch (Throwable unused) {
            Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
        }
        boolean z10 = true;
        if (!"com.google.android.gms".equals(context.getPackageName()) && !AbstractC2961d.f8240a.get()) {
            synchronized (AbstractC3093a.f8790a) {
                try {
                    if (!AbstractC3093a.f8791b) {
                        AbstractC3093a.f8791b = true;
                        try {
                            Bundle bundle = C3239a.m5179a(context).f1169c.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
                            if (bundle != null) {
                                bundle.getString("com.google.app.id");
                                AbstractC3093a.f8792c = bundle.getInt("com.google.android.gms.version");
                            }
                        } catch (PackageManager.NameNotFoundException e) {
                            Log.wtf("MetadataValueReader", "This should never happen.", e);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            int i13 = AbstractC3093a.f8792c;
            if (i13 == 0) {
                throw new GooglePlayServicesMissingManifestValueException();
            }
            if (i13 != 12451000) {
                throw new GooglePlayServicesIncorrectManifestValueException("The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected " + f8238a + " but found " + i13 + ".  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
            }
        }
        if (AbstractC3185a.m5112b(context)) {
            z9 = false;
        } else {
            if (AbstractC3185a.f9271d == null) {
                AbstractC3185a.f9271d = Boolean.valueOf(context.getPackageManager().hasSystemFeature("android.hardware.type.iot") || context.getPackageManager().hasSystemFeature("android.hardware.type.embedded"));
            }
            if (AbstractC3185a.f9271d.booleanValue()) {
                z9 = false;
            } else {
                z9 = true;
            }
        }
        if (i10 < 0) {
            C2237i.m3594a();
            return 0;
        }
        String packageName = context.getPackageName();
        PackageManager packageManager = context.getPackageManager();
        int i14 = 9;
        if (z9) {
            try {
                packageInfo = packageManager.getPackageInfo("com.android.vending", 8256);
            } catch (PackageManager.NameNotFoundException unused2) {
                Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires the Google Play Store, but it is missing."));
            }
        } else {
            packageInfo = null;
        }
        try {
            PackageInfo packageInfo2 = packageManager.getPackageInfo("com.google.android.gms", 64);
            synchronized (C2962e.class) {
                if (C2962e.f8241c == null) {
                    BinderC2963f binderC2963f = AbstractC2967j.f8249a;
                    synchronized (AbstractC2967j.class) {
                        if (AbstractC2967j.f8251c == null) {
                            AbstractC2967j.f8251c = context.getApplicationContext();
                        } else {
                            Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
                        }
                    }
                    C2962e c2962e = new C2962e(0);
                    context.getApplicationContext();
                    C2962e.f8241c = c2962e;
                }
            }
            if (!C2962e.m4750p(packageInfo2)) {
                Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but their signature is invalid."));
            } else if (z9) {
                AbstractC3093a.m4926b(packageInfo);
                if (!C2962e.m4750p(packageInfo)) {
                    Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play Store, but its signature is invalid."));
                } else if (z9 || packageInfo == null || packageInfo.signatures[0].equals(packageInfo2.signatures[0])) {
                    i11 = packageInfo2.versionCode;
                    if (i11 == -1) {
                        i12 = -1;
                    } else {
                        i12 = i11 / 1000;
                    }
                    if (i12 < (i10 != -1 ? i10 / 1000 : -1)) {
                        Log.w("GooglePlayServicesUtil", "Google Play services out of date for " + packageName + ".  Requires " + i10 + " but found " + i11);
                        i14 = 2;
                    } else {
                        applicationInfo = packageInfo2.applicationInfo;
                        if (applicationInfo == null) {
                            try {
                                applicationInfo = packageManager.getApplicationInfo("com.google.android.gms", 0);
                            } catch (PackageManager.NameNotFoundException e6) {
                                Log.wtf("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but they're missing when getting application info."), e6);
                                i14 = 1;
                            }
                        }
                        if (applicationInfo.enabled) {
                            i14 = 0;
                        } else {
                            i14 = 3;
                        }
                    }
                } else {
                    Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play Store, but its signature doesn't match that of Google Play services."));
                }
            } else if (z9) {
                i11 = packageInfo2.versionCode;
                if (i11 == -1) {
                    i12 = -1;
                } else {
                    i12 = i11 / 1000;
                }
                if (i12 < (i10 != -1 ? i10 / 1000 : -1)) {
                    Log.w("GooglePlayServicesUtil", "Google Play services out of date for " + packageName + ".  Requires " + i10 + " but found " + i11);
                    i14 = 2;
                } else {
                    applicationInfo = packageInfo2.applicationInfo;
                    if (applicationInfo == null) {
                        applicationInfo = packageManager.getApplicationInfo("com.google.android.gms", 0);
                    }
                    if (applicationInfo.enabled) {
                        i14 = 3;
                    } else {
                        i14 = 0;
                    }
                }
            } else {
                i11 = packageInfo2.versionCode;
                if (i11 == -1) {
                    i12 = -1;
                } else {
                    i12 = i11 / 1000;
                }
                if (i12 < (i10 != -1 ? i10 / 1000 : -1)) {
                    Log.w("GooglePlayServicesUtil", "Google Play services out of date for " + packageName + ".  Requires " + i10 + " but found " + i11);
                    i14 = 2;
                } else {
                    applicationInfo = packageInfo2.applicationInfo;
                    if (applicationInfo == null) {
                        applicationInfo = packageManager.getApplicationInfo("com.google.android.gms", 0);
                    }
                    if (applicationInfo.enabled) {
                        i14 = 3;
                    } else {
                        i14 = 0;
                    }
                }
            }
        } catch (PackageManager.NameNotFoundException unused3) {
            Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but they are missing."));
        }
        if (i14 != 18) {
            if (i14 == 1) {
                try {
                    Iterator<PackageInstaller.SessionInfo> it = context.getPackageManager().getPackageInstaller().getAllSessions().iterator();
                    while (it.hasNext()) {
                        if ("com.google.android.gms".equals(it.next().getAppPackageName())) {
                        }
                    }
                    z10 = context.getPackageManager().getApplicationInfo("com.google.android.gms", 8192).enabled;
                } catch (PackageManager.NameNotFoundException | Exception unused4) {
                    z10 = false;
                }
            } else {
                z10 = false;
            }
        }
        if (z10) {
            return 18;
        }
        return i14;
    }
}
