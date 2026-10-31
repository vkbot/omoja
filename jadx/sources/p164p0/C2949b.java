package p164p0;

import ai.onnxruntime.AbstractC0074a;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;
import android.os.UserManager;
import android.text.TextUtils;
import androidx.profileinstaller.RunnableC0707c;
import androidx.transition.C0802a;
import com.example.navistart.HideManager.LauncherShortcutRestoreReceiver;
import com.example.navistart.R;
import com.google.protobuf.AbstractC1178q;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;
import p078h0.C1652b;
import p099j1.C1929i;
import p132m0.C2271b3;

/* JADX INFO: renamed from: p0.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2949b {

    /* JADX INFO: renamed from: f */
    public static RunnableC0707c f8190f;

    /* JADX INFO: renamed from: g */
    public static C0802a f8191g;

    /* JADX INFO: renamed from: a */
    public final Context f8196a;

    /* JADX INFO: renamed from: b */
    public final List f8197b;

    /* JADX INFO: renamed from: d */
    public static final String f8188d = AbstractC1387m.m2421h(new byte[]{-19, 17, -11, -68, 119, -17, -71, -40, -34, 25, -29, -67, 122, -40, -82, -49, -14, 21, -12}, new byte[]{-127, 112, ByteCompanionObject.MIN_VALUE, -46, 20, -121, -36, -86});

    /* JADX INFO: renamed from: h */
    public static final String f8192h = AbstractC1387m.m2421h(new byte[]{-7, 125, -70, 13, 57, 54, 53, -49, -54, 111, -89, 12, 40, 42, 51, -56, -31, 67, -86, 13, 59, 60, 60, -40, -15, 67}, new byte[]{-107, 28, -49, 99, 90, 94, 80, -67});

    /* JADX INFO: renamed from: i */
    public static final String f8193i = AbstractC1387m.m2421h(new byte[]{-27, 35, -124, -78, -65, 42, 83, -55, -23, 37, -115, -78, -78, 37, 66, -43, -27, 36, -116, -18, -19, 106, 71, -34, -12, 33, ByteCompanionObject.MIN_VALUE, -17, -83, 45, 88, -43, -88, 30, -84, -35, -102, 27, 100, -2, -46, 24, -96, -46, -103, 23}, new byte[]{-122, 76, -23, -100, -34, 68, 55, -69});

    /* JADX INFO: renamed from: j */
    public static final String f8194j = AbstractC1387m.m2421h(new byte[]{-34, -26, 22, 113, -37, -87, 124, 85, -46, -32, 31, 113, -42, -90, 109, 73, -34, -31, 30, 45, -119, -23, 104, 66, -49, -28, 18, 44, -55, -82, 119, 73, -109, -34, 41, 22, -18, -126, 71, 116, -8, -35, 47, 22, -12, ByteCompanionObject.MIN_VALUE, 75}, new byte[]{-67, -119, 123, 95, -70, -57, 24, 39});

    /* JADX INFO: renamed from: c */
    public static final Object f8187c = new Object();

    /* JADX INFO: renamed from: e */
    public static final Handler f8189e = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: k */
    public static final Uri f8195k = Uri.parse(AbstractC1387m.m2421h(new byte[]{8, -117, 81, 56, -57, 122, 69, 63, 68, -53, 92, 35, -49, 58, 80, 107, 15, -106, 80, 37, -58, 58, 93, 100, 30, -118, 92, 36, -57, 102, 2, 43, 24, -127, 75, 56, -53, 122, 86, 118, 68, -126, 94, 58, -51, 102, 88, 113, 14, -105}, new byte[]{107, -28, 63, 76, -94, 20, 49, 5}));

    public C2949b(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f8196a = applicationContext;
        String packageName = applicationContext.getPackageName();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C2948a(AbstractC1387m.m2421h(new byte[]{-116, -18, -89, 117}, new byte[]{-31, -113, -50, 27, -71, 63, -28, 95}), m4716b(packageName, AbstractC1387m.m2421h(new byte[]{-58, -100, 6, -43, -110, 85, 81, 113, -102, -99, 6, -55, -110, 119, 90, 96, -127, -90, 14, -44, -123}, new byte[]{-24, -48, 103, -96, -4, 54, 57, 20})), R.string.launcher_shortcut_main, true, true));
        arrayList.add(new C2948a(AbstractC1387m.m2421h(new byte[]{81, 39, 55, -24}, new byte[]{38, 78, 81, -127, -75, -75, -109, -80}), m4716b(packageName, AbstractC1387m.m2421h(new byte[]{93, -3, 101, 72, -126, -91, 114, -119, 1, -26, 109, 91, -123, -121, 121, -104, 26, -57, 109, 73, -107}, new byte[]{115, -79, 4, Base64.padSymbol, -20, -58, 26, -20})), R.string.launcher_shortcut_wifi, true, false));
        arrayList.add(new C2948a(AbstractC1387m.m2421h(new byte[]{13, -105, 94, 125, -116, 60}, new byte[]{120, -25, 58, 28, -8, 89, 21, Base64.padSymbol}), m4716b(packageName, AbstractC1387m.m2421h(new byte[]{97, -92, 121, -11, 83, -50, 0, 125, Base64.padSymbol, -67, 104, -28, 92, -39, 13, 89, 44, -100, 113, -10, 84, -39, 17}, new byte[]{79, -24, 24, ByteCompanionObject.MIN_VALUE, Base64.padSymbol, -83, 104, 24})), R.string.launcher_shortcut_update, true, false));
        arrayList.add(new C2948a(AbstractC1387m.m2421h(new byte[]{-27, 27, 65, 75}, new byte[]{-125, 114, 45, 46, 58, -117, 36, -22}), m4716b(packageName, AbstractC1387m.m2421h(new byte[]{-76, 64, 113, 20, 109, 119, -109, 105, -24, 74, 121, 13, 102, 85, -104, 120, -13, 122, 121, 21, 122}, new byte[]{-102, 12, 16, 97, 3, 20, -5, 12})), R.string.launcher_shortcut_file, false, false));
        arrayList.add(new C2948a(AbstractC1387m.m2421h(new byte[]{92, 109, -21, -40, 70}, new byte[]{47, 25, -124, -86, 35, 10, 50, 114}), m4716b(packageName, AbstractC1387m.m2421h(new byte[]{35, -7, 114, -38, -126, 27, -59, -83, ByteCompanionObject.MAX_VALUE, -26, 103, -64, -98, 29, -20, -85, 121, -36, 101, -58, -104, 1}, new byte[]{13, -75, 19, -81, -20, 120, -83, -56})), R.string.launcher_shortcut_store, false, false));
        arrayList.add(new C2948a(AbstractC1387m.m2421h(new byte[]{-127, -27, -79, -107, -48}, new byte[]{-9, -116, -43, -16, -65, ByteCompanionObject.MAX_VALUE, -127, -103}), m4716b(packageName, AbstractC1387m.m2421h(new byte[]{-55, 120, -16, -96, -60, 72, -49, -43, -107, 98, -8, -79, -49, 68, -26, -45, -109, 93, -25, -68, -34, 82}, new byte[]{-25, 52, -111, -43, -86, 43, -89, -80})), R.string.video_library, false, false));
        arrayList.add(new C2948a(AbstractC1387m.m2421h(new byte[]{-42, 21, 30, 110, -105}, new byte[]{-92, 116, 122, 15, -27, -47, 10, -125}), m4716b(packageName, AbstractC1387m.m2421h(new byte[]{-31, 33, 48, -18, 74, -79, 64, -88, -67, 63, 48, -1, 69, -96, 105, -82, -69, 4, 39, -14, 80, -85}, new byte[]{-49, 109, 81, -101, 36, -46, 40, -51})), R.string.launcher_shortcut_radar, false, false));
        this.f8197b = Collections.unmodifiableList(arrayList);
    }

    /* JADX INFO: renamed from: b */
    public static ComponentName m4716b(String str, String str2) {
        return new ComponentName(str, AbstractC0074a.m148C(str, str2));
    }

    /* JADX INFO: renamed from: d */
    public static void m4717d(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(f8188d, 0);
        String strM2421h = AbstractC1387m.m2421h(new byte[]{-77, -52, -69}, new byte[]{-46, -96, -41, 62, -21, 98, 27, 14});
        Set<String> set = Collections.EMPTY_SET;
        Set<String> stringSet = sharedPreferences.getStringSet(strM2421h, set);
        Set<String> stringSet2 = sharedPreferences.getStringSet(AbstractC1387m.m2421h(new byte[]{-50, 18, -120, -13, 8, -92, -115}, new byte[]{-85, 124, -23, -111, 100, -63, -23, -103}), set);
        boolean z9 = true;
        for (String str2 : stringSet) {
            try {
                ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(str2);
                if (componentNameUnflattenFromString == null || !context.getPackageName().equals(componentNameUnflattenFromString.getPackageName())) {
                    throw new IllegalStateException(AbstractC1387m.m2421h(new byte[]{-32, -35, 51, 4, 44, -34, 78, -100, -5, -42, 38, 10, 54, -46, 88, -59, -87, -48, 42, 8, 48, -40, 68, -39, -25, -57}, new byte[]{-119, -77, 69, 101, 64, -73, 42, -68}));
                }
                int i10 = stringSet2.contains(str2) ? 1 : 2;
                PackageManager packageManager = context.getPackageManager();
                if (packageManager.getComponentEnabledSetting(componentNameUnflattenFromString) != i10) {
                    packageManager.setComponentEnabledSetting(componentNameUnflattenFromString, i10, 1);
                }
            } catch (RuntimeException e) {
                if (str == null) {
                    str = e.getClass().getSimpleName();
                }
                z9 = false;
            }
        }
        if (z9 && !sharedPreferences.edit().clear().commit()) {
            str = AbstractC1387m.m2421h(new byte[]{83, -99, -58, 79, -122, 101, -46, -75, 92, -103, -55, 83, -55, 99, -105, -75, 95, -118, -51, 83, -112, 49, -127, -94, 81, -120, -51}, new byte[]{48, -4, -88, 33, -23, 17, -14, -42});
        }
        RunnableC0707c runnableC0707c = f8190f;
        if (runnableC0707c != null) {
            f8189e.removeCallbacks(runnableC0707c);
        }
        f8190f = null;
        AlarmManager alarmManager = (AlarmManager) context.getSystemService(AbstractC1387m.m2421h(new byte[]{106, -113, 67, 36, 35}, new byte[]{11, -29, 34, 86, 78, -102, 91, -68}));
        if (alarmManager != null) {
            alarmManager.cancel(PendingIntent.getBroadcast(context, 0, new Intent(context, (Class<?>) LauncherShortcutRestoreReceiver.class), 201326592));
        }
        C0802a c0802a = f8191g;
        f8191g = null;
        if (c0802a != null) {
            c0802a.m887c(str == null ? new C2271b3(false, (String) null) : C2271b3.m3645a(str));
        }
    }

    /* JADX INFO: renamed from: e */
    public static boolean m4718e(C2948a c2948a) {
        if (c2948a.f8186e) {
            return true;
        }
        return C1652b.m2745o().loadBoolean(f8192h + c2948a.f8182a, c2948a.f8185d);
    }

    /* JADX INFO: renamed from: f */
    public static boolean m4719f(Context context) {
        return context.getSharedPreferences(f8188d, 0).getBoolean(AbstractC1387m.m2421h(new byte[]{42, -119, ByteCompanionObject.MAX_VALUE, 62, 49, -71, 104}, new byte[]{90, -20, 17, 90, 88, -41, 15, -119}), false);
    }

    /* JADX INFO: renamed from: g */
    public static void m4720g(Context context, boolean z9) {
        synchronized (f8187c) {
            try {
                if (m4719f(context)) {
                    long j10 = context.getSharedPreferences(f8188d, 0).getLong(AbstractC1387m.m2421h(new byte[]{-37, 30, -2}, new byte[]{-65, 107, -101, 126, -60, -101, -124, 11}), 0L);
                    if (z9 || j10 <= SystemClock.elapsedRealtime()) {
                        m4717d(context, null);
                    } else {
                        try {
                            m4721h(context);
                        } catch (RuntimeException e) {
                            m4717d(context, e.getClass().getSimpleName());
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: h */
    public static void m4721h(Context context) {
        Context applicationContext = context.getApplicationContext();
        int i10 = 8;
        long jMax = Math.max(0L, Math.min(5000L, applicationContext.getSharedPreferences(f8188d, 0).getLong(AbstractC1387m.m2421h(new byte[]{13, 17, -113}, new byte[]{105, 100, -22, 70, 28, -39, 41, -67}), 0L) - SystemClock.elapsedRealtime()));
        AlarmManager alarmManager = (AlarmManager) applicationContext.getSystemService(AbstractC1387m.m2421h(new byte[]{107, -78, 57, -53, -68}, new byte[]{10, -34, 88, -71, -47, 71, -73, 124}));
        if (alarmManager == null) {
            C1929i.m3030l(AbstractC1387m.m2421h(new byte[]{37, -75, 12, 50, 6, 32, -68, 38, 54, -81, 4, 35, 14, 32, -70, 45, 37, -81, 12, 41, 7, 97, -83, 47, 33}, new byte[]{68, -39, 109, 64, 107, 0, -49, 67}));
            return;
        }
        alarmManager.setAndAllowWhileIdle(2, SystemClock.elapsedRealtime() + jMax, PendingIntent.getBroadcast(applicationContext, 0, new Intent(applicationContext, (Class<?>) LauncherShortcutRestoreReceiver.class), 201326592));
        RunnableC0707c runnableC0707c = f8190f;
        Handler handler = f8189e;
        if (runnableC0707c != null) {
            handler.removeCallbacks(runnableC0707c);
        }
        RunnableC0707c runnableC0707c2 = new RunnableC0707c(applicationContext, i10);
        f8190f = runnableC0707c2;
        handler.postDelayed(runnableC0707c2, jMax);
    }

    /* JADX INFO: renamed from: a */
    public final C2271b3 m4722a(ComponentName componentName) {
        Context context = this.f8196a;
        PackageManager packageManager = context.getPackageManager();
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (C2948a c2948a : this.f8197b) {
            if (componentName.equals(c2948a.f8183b)) {
                ComponentName componentName2 = c2948a.f8183b;
                hashSet.add(componentName2);
                if (!c2948a.f8186e && !m4718e(c2948a) && packageManager.getComponentEnabledSetting(componentName2) == 2) {
                    hashSet2.add(componentName2);
                }
            }
        }
        if (!hashSet2.contains(componentName)) {
            return new C2271b3(false, (String) null);
        }
        if (packageManager.checkPermission(f8193i, context.getPackageName()) != 0 || packageManager.checkPermission(f8194j, context.getPackageName()) != 0) {
            return new C2271b3(true, (String) null);
        }
        UserManager userManager = (UserManager) context.getSystemService(AbstractC1387m.m2421h(new byte[]{-49, -6, 33, -70}, new byte[]{-70, -119, 68, -56, 116, 10, -52, -115}));
        long serialNumberForUser = userManager == null ? -1L : userManager.getSerialNumberForUser(Process.myUserHandle());
        if (serialNumberForUser < 0) {
            return C2271b3.m3645a(AbstractC1387m.m2421h(new byte[]{-30, 70, 94, -63, -116, -112, 100, 62, -12, 64, 73, -63, -55, -117, 126, ByteCompanionObject.MAX_VALUE, -9, 82, 69, -33, -120, -100, 124, 123}, new byte[]{-127, 51, 44, -77, -23, -2, 16, 30}));
        }
        new HashMap();
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = context.getContentResolver().query(f8195k, new String[]{AbstractC1387m.m2421h(new byte[]{39, -17, -118}, new byte[]{120, -122, -18, 60, 40, 84, -15, 38}), AbstractC1387m.m2421h(new byte[]{-36, -92, 108, -67, -46, -67}, new byte[]{-75, -54, 24, -40, -68, -55, 92, -18})}, AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MIN_VALUE, 119, -50, 68, -121, -74, 123, -118, -108, 37, -100, 2, -47, -6, 95, -115, -76, 37, -56, 86, -117, -73, 74, -70, ByteCompanionObject.MIN_VALUE, 96, -127, 31, -50, -22}, new byte[]{-16, 5, -95, 34, -18, -38, 30, -61}), new String[]{Long.toString(serialNumberForUser)}, AbstractC1387m.m2421h(new byte[]{-26, 52, 95, -34, -13, -18, -82}, new byte[]{-71, 93, 59, -2, -78, -67, -19, 69}));
        try {
            if (cursorQuery == null) {
                C2271b3 c2271b3M3645a = C2271b3.m3645a(AbstractC1387m.m2421h(new byte[]{113, 66, -48, 85, -23, -14, -76, 10, 116, 66, -57, 73, -11, -74, -26, 1, 117, 91, -39}, new byte[]{0, 55, -75, 39, -112, -46, -58, 111}));
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return c2271b3M3645a;
            }
            int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow(AbstractC1387m.m2421h(new byte[]{-40, 66, 14}, new byte[]{-121, 43, 106, 17, 109, 52, -55, -85}));
            int columnIndexOrThrow2 = cursorQuery.getColumnIndexOrThrow(AbstractC1387m.m2421h(new byte[]{44, -125, -3, -61, -48, -113}, new byte[]{69, -19, -119, -90, -66, -5, 8, 32}));
            while (cursorQuery.moveToNext()) {
                String string = cursorQuery.getString(columnIndexOrThrow2);
                if (!TextUtils.isEmpty(string)) {
                    try {
                        ComponentName component = Intent.parseUri(string, 0).getComponent();
                        if (component != null && hashSet.contains(component)) {
                            long j10 = cursorQuery.getLong(columnIndexOrThrow);
                            if (hashSet2.contains(component)) {
                                arrayList.add(Long.valueOf(j10));
                            }
                        }
                    } catch (URISyntaxException unused) {
                    }
                }
            }
            cursorQuery.close();
            if (arrayList.isEmpty()) {
                return new C2271b3(false, (String) null);
            }
            String[] strArr = new String[arrayList.size()];
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                strArr[i10] = Long.toString(((Long) arrayList.get(i10)).longValue());
            }
            StringBuilder sb = new StringBuilder();
            sb.append(AbstractC1387m.m2421h(new byte[]{-67, 120, -25, -26, 66, -79, 100, 33}, new byte[]{-30, 17, -125, -58, 11, -1, 68, 9}));
            sb.append(TextUtils.join(AbstractC1387m.m2421h(new byte[]{124}, new byte[]{80, -123, 100, -1, -22, -101, -36, -35}), Collections.nCopies(arrayList.size(), AbstractC1387m.m2421h(new byte[]{-101}, new byte[]{-92, -29, 25, -27, 8, 7, -111, 82}))));
            context.getContentResolver().delete(f8195k, AbstractC1178q.m2075i(new byte[]{26}, new byte[]{51, -96, 76, -41, 98, 40, -29, -70}, sb), strArr);
            return new C2271b3(false, (String) null);
        } catch (Throwable th) {
            if (cursorQuery == null) {
                throw th;
            }
            try {
                cursorQuery.close();
                throw th;
            } catch (Throwable th2) {
                th.addSuppressed(th2);
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public final ArrayList m4723c(boolean z9) {
        ArrayList arrayList = new ArrayList();
        for (C2948a c2948a : this.f8197b) {
            boolean z10 = c2948a.f8186e;
            if (m4718e(c2948a) == z9) {
                arrayList.add(c2948a.f8183b);
            }
        }
        return arrayList;
    }
}
