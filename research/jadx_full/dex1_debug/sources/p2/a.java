package p2;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller$SessionInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesIncorrectManifestValueException;
import com.google.android.gms.common.GooglePlayServicesMissingManifestValueException;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f4574a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f4575b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        AtomicBoolean atomicBoolean = d.f4576a;
        f4574a = 12451000;
        f4575b = new a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
    public static int a(int i9, Context context) {
        boolean z8;
        PackageInfo packageInfo;
        int i10;
        int i11;
        ApplicationInfo applicationInfo;
        AtomicBoolean atomicBoolean = d.f4576a;
        try {
            context.getResources().getString(2131951909);
        } catch (Throwable unused) {
            Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
        }
        boolean z9 = true;
        if (!"com.google.android.gms".equals(context.getPackageName()) && !d.f4576a.get()) {
            synchronized (r2.a.f4936a) {
                try {
                    if (!r2.a.f4937b) {
                        r2.a.f4937b = true;
                        try {
                            Bundle bundle = t2.a.a(context).c.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
                            if (bundle != null) {
                                bundle.getString("com.google.app.id");
                                r2.a.c = bundle.getInt("com.google.android.gms.version");
                            }
                        } catch (PackageManager$NameNotFoundException e) {
                            Log.wtf("MetadataValueReader", "This should never happen.", e);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            int i12 = r2.a.c;
            if (i12 == 0) {
                throw new GooglePlayServicesMissingManifestValueException();
            }
            if (i12 != 12451000) {
                throw new GooglePlayServicesIncorrectManifestValueException("The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected " + f4574a + " but found " + i12 + ".  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
            }
        }
        if (s2.a.b(context)) {
            z8 = false;
        } else {
            if (s2.a.d == null) {
                s2.a.d = Boolean.valueOf(context.getPackageManager().hasSystemFeature("android.hardware.type.iot") || context.getPackageManager().hasSystemFeature("android.hardware.type.embedded"));
            }
            if (s2.a.d.booleanValue()) {
                z8 = false;
            } else {
                z8 = true;
            }
        }
        if (i9 < 0) {
            l9.i.a();
            return 0;
        }
        String packageName = context.getPackageName();
        PackageManager packageManager = context.getPackageManager();
        int i13 = 9;
        if (z8) {
            try {
                packageInfo = packageManager.getPackageInfo("com.android.vending", 8256);
            } catch (PackageManager$NameNotFoundException unused2) {
                Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires the Google Play Store, but it is missing."));
            }
        } else {
            packageInfo = null;
        }
        try {
            PackageInfo packageInfo2 = packageManager.getPackageInfo("com.google.android.gms", 64);
            synchronized (e.class) {
                if (e.c == null) {
                    f fVar = j.f4580a;
                    synchronized (j.class) {
                        if (j.c == null) {
                            j.c = context.getApplicationContext();
                        } else {
                            Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
                        }
                    }
                    e eVar = new e(0);
                    context.getApplicationContext();
                    e.c = eVar;
                }
            }
            if (!e.p(packageInfo2)) {
                Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but their signature is invalid."));
            } else if (z8) {
                r2.a.b(packageInfo);
                if (!e.p(packageInfo)) {
                    Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play Store, but its signature is invalid."));
                } else if (z8 || packageInfo == null || packageInfo.signatures[0].equals(packageInfo2.signatures[0])) {
                    i10 = packageInfo2.versionCode;
                    if (i10 == -1) {
                        i11 = -1;
                    } else {
                        i11 = i10 / 1000;
                    }
                    if (i11 < (i9 != -1 ? i9 / 1000 : -1)) {
                        Log.w("GooglePlayServicesUtil", "Google Play services out of date for " + packageName + ".  Requires " + i9 + " but found " + i10);
                        i13 = 2;
                    } else {
                        applicationInfo = packageInfo2.applicationInfo;
                        if (applicationInfo == null) {
                            try {
                                applicationInfo = packageManager.getApplicationInfo("com.google.android.gms", 0);
                            } catch (PackageManager$NameNotFoundException e6) {
                                Log.wtf("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but they're missing when getting application info."), e6);
                                i13 = 1;
                            }
                        }
                        if (applicationInfo.enabled) {
                            i13 = 0;
                        } else {
                            i13 = 3;
                        }
                    }
                } else {
                    Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play Store, but its signature doesn't match that of Google Play services."));
                }
            } else if (z8) {
                i10 = packageInfo2.versionCode;
                if (i10 == -1) {
                    i11 = -1;
                } else {
                    i11 = i10 / 1000;
                }
                if (i11 < (i9 != -1 ? i9 / 1000 : -1)) {
                    Log.w("GooglePlayServicesUtil", "Google Play services out of date for " + packageName + ".  Requires " + i9 + " but found " + i10);
                    i13 = 2;
                } else {
                    applicationInfo = packageInfo2.applicationInfo;
                    if (applicationInfo == null) {
                        applicationInfo = packageManager.getApplicationInfo("com.google.android.gms", 0);
                    }
                    if (applicationInfo.enabled) {
                        i13 = 3;
                    } else {
                        i13 = 0;
                    }
                }
            } else {
                i10 = packageInfo2.versionCode;
                if (i10 == -1) {
                    i11 = -1;
                } else {
                    i11 = i10 / 1000;
                }
                if (i11 < (i9 != -1 ? i9 / 1000 : -1)) {
                    Log.w("GooglePlayServicesUtil", "Google Play services out of date for " + packageName + ".  Requires " + i9 + " but found " + i10);
                    i13 = 2;
                } else {
                    applicationInfo = packageInfo2.applicationInfo;
                    if (applicationInfo == null) {
                        applicationInfo = packageManager.getApplicationInfo("com.google.android.gms", 0);
                    }
                    if (applicationInfo.enabled) {
                        i13 = 3;
                    } else {
                        i13 = 0;
                    }
                }
            }
        } catch (PackageManager$NameNotFoundException unused3) {
            Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but they are missing."));
        }
        if (i13 != 18) {
            if (i13 == 1) {
                try {
                    Iterator<PackageInstaller$SessionInfo> it = context.getPackageManager().getPackageInstaller().getAllSessions().iterator();
                    while (it.hasNext()) {
                        if ("com.google.android.gms".equals(it.next().getAppPackageName())) {
                        }
                    }
                    z9 = context.getPackageManager().getApplicationInfo("com.google.android.gms", 8192).enabled;
                } catch (PackageManager$NameNotFoundException | Exception unused4) {
                    z9 = false;
                }
            } else {
                z9 = false;
            }
        }
        if (z9) {
            return 18;
        }
        return i13;
    }
}
