package p0;

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
import com.example.navistart.HideManager.LauncherShortcutRestoreReceiver;
import com.google.protobuf.q;
import e0.m;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import m0.b3;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static androidx.profileinstaller.c f4543f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static androidx.transition.a f4544g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f4549a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f4550b;
    public static final String d = m.h(new byte[]{-19, 17, -11, -68, 119, -17, -71, -40, -34, 25, -29, -67, 122, -40, -82, -49, -14, 21, -12}, new byte[]{-127, 112, ByteCompanionObject.MIN_VALUE, -46, 20, -121, -36, -86});

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f4545h = m.h(new byte[]{-7, 125, -70, 13, 57, 54, 53, -49, -54, 111, -89, 12, 40, 42, 51, -56, -31, 67, -86, 13, 59, 60, 60, -40, -15, 67}, new byte[]{-107, 28, -49, 99, 90, 94, 80, -67});

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f4546i = m.h(new byte[]{-27, 35, -124, -78, -65, 42, 83, -55, -23, 37, -115, -78, -78, 37, 66, -43, -27, 36, -116, -18, -19, 106, 71, -34, -12, 33, ByteCompanionObject.MIN_VALUE, -17, -83, 45, 88, -43, -88, 30, -84, -35, -102, 27, 100, -2, -46, 24, -96, -46, -103, 23}, new byte[]{-122, 76, -23, -100, -34, 68, 55, -69});

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f4547j = m.h(new byte[]{-34, -26, 22, 113, -37, -87, 124, 85, -46, -32, 31, 113, -42, -90, 109, 73, -34, -31, 30, 45, -119, -23, 104, 66, -49, -28, 18, 44, -55, -82, 119, 73, -109, -34, 41, 22, -18, -126, 71, 116, -8, -35, 47, 22, -12, ByteCompanionObject.MIN_VALUE, 75}, new byte[]{-67, -119, 123, 95, -70, -57, 24, 39});
    public static final Object c = new Object();
    public static final Handler e = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Uri f4548k = Uri.parse(m.h(new byte[]{8, -117, 81, 56, -57, 122, 69, 63, 68, -53, 92, 35, -49, 58, 80, 107, 15, -106, 80, 37, -58, 58, 93, 100, 30, -118, 92, 36, -57, 102, 2, 43, 24, -127, 75, 56, -53, 122, 86, 118, 68, -126, 94, 58, -51, 102, 88, 113, 14, -105}, new byte[]{107, -28, 63, 76, -94, 20, 49, 5}));

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f4549a = applicationContext;
        String packageName = applicationContext.getPackageName();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new a(m.h(new byte[]{-116, -18, -89, 117}, new byte[]{-31, -113, -50, 27, -71, 63, -28, 95}), b(packageName, m.h(new byte[]{-58, -100, 6, -43, -110, 85, 81, 113, -102, -99, 6, -55, -110, 119, 90, 96, -127, -90, 14, -44, -123}, new byte[]{-24, -48, 103, -96, -4, 54, 57, 20})), 2131952104, true, true));
        arrayList.add(new a(m.h(new byte[]{81, 39, 55, -24}, new byte[]{38, 78, 81, -127, -75, -75, -109, -80}), b(packageName, m.h(new byte[]{93, -3, 101, 72, -126, -91, 114, -119, 1, -26, 109, 91, -123, -121, 121, -104, 26, -57, 109, 73, -107}, new byte[]{115, -79, 4, Base64.padSymbol, -20, -58, 26, -20})), 2131952108, true, false));
        arrayList.add(new a(m.h(new byte[]{13, -105, 94, 125, -116, 60}, new byte[]{120, -25, 58, 28, -8, 89, 21, Base64.padSymbol}), b(packageName, m.h(new byte[]{97, -92, 121, -11, 83, -50, 0, 125, Base64.padSymbol, -67, 104, -28, 92, -39, 13, 89, 44, -100, 113, -10, 84, -39, 17}, new byte[]{79, -24, 24, ByteCompanionObject.MIN_VALUE, Base64.padSymbol, -83, 104, 24})), 2131952107, true, false));
        arrayList.add(new a(m.h(new byte[]{-27, 27, 65, 75}, new byte[]{-125, 114, 45, 46, 58, -117, 36, -22}), b(packageName, m.h(new byte[]{-76, 64, 113, 20, 109, 119, -109, 105, -24, 74, 121, 13, 102, 85, -104, 120, -13, 122, 121, 21, 122}, new byte[]{-102, 12, 16, 97, 3, 20, -5, 12})), 2131952103, false, false));
        arrayList.add(new a(m.h(new byte[]{92, 109, -21, -40, 70}, new byte[]{47, 25, -124, -86, 35, 10, 50, 114}), b(packageName, m.h(new byte[]{35, -7, 114, -38, -126, 27, -59, -83, ByteCompanionObject.MAX_VALUE, -26, 103, -64, -98, 29, -20, -85, 121, -36, 101, -58, -104, 1}, new byte[]{13, -75, 19, -81, -20, 120, -83, -56})), 2131952106, false, false));
        arrayList.add(new a(m.h(new byte[]{-127, -27, -79, -107, -48}, new byte[]{-9, -116, -43, -16, -65, ByteCompanionObject.MAX_VALUE, -127, -103}), b(packageName, m.h(new byte[]{-55, 120, -16, -96, -60, 72, -49, -43, -107, 98, -8, -79, -49, 68, -26, -45, -109, 93, -25, -68, -34, 82}, new byte[]{-25, 52, -111, -43, -86, 43, -89, -80})), 2131952747, false, false));
        arrayList.add(new a(m.h(new byte[]{-42, 21, 30, 110, -105}, new byte[]{-92, 116, 122, 15, -27, -47, 10, -125}), b(packageName, m.h(new byte[]{-31, 33, 48, -18, 74, -79, 64, -88, -67, 63, 48, -1, 69, -96, 105, -82, -69, 4, 39, -14, 80, -85}, new byte[]{-49, 109, 81, -101, 36, -46, 40, -51})), 2131952105, false, false));
        this.f4550b = Collections.unmodifiableList(arrayList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ComponentName b(String str, String str2) {
        return new ComponentName(str, ai.onnxruntime.a.C(str, str2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void d(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(d, 0);
        String strH = m.h(new byte[]{-77, -52, -69}, new byte[]{-46, -96, -41, 62, -21, 98, 27, 14});
        Set<String> set = Collections.EMPTY_SET;
        Set<String> stringSet = sharedPreferences.getStringSet(strH, set);
        Set<String> stringSet2 = sharedPreferences.getStringSet(m.h(new byte[]{-50, 18, -120, -13, 8, -92, -115}, new byte[]{-85, 124, -23, -111, 100, -63, -23, -103}), set);
        boolean z8 = true;
        for (String str2 : stringSet) {
            try {
                ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(str2);
                if (componentNameUnflattenFromString == null || !context.getPackageName().equals(componentNameUnflattenFromString.getPackageName())) {
                    throw new IllegalStateException(m.h(new byte[]{-32, -35, 51, 4, 44, -34, 78, -100, -5, -42, 38, 10, 54, -46, 88, -59, -87, -48, 42, 8, 48, -40, 68, -39, -25, -57}, new byte[]{-119, -77, 69, 101, 64, -73, 42, -68}));
                }
                int i9 = stringSet2.contains(str2) ? 1 : 2;
                PackageManager packageManager = context.getPackageManager();
                if (packageManager.getComponentEnabledSetting(componentNameUnflattenFromString) != i9) {
                    packageManager.setComponentEnabledSetting(componentNameUnflattenFromString, i9, 1);
                }
            } catch (RuntimeException e6) {
                if (str == null) {
                    str = e6.getClass().getSimpleName();
                }
                z8 = false;
            }
        }
        if (z8 && !sharedPreferences.edit().clear().commit()) {
            str = m.h(new byte[]{83, -99, -58, 79, -122, 101, -46, -75, 92, -103, -55, 83, -55, 99, -105, -75, 95, -118, -51, 83, -112, 49, -127, -94, 81, -120, -51}, new byte[]{48, -4, -88, 33, -23, 17, -14, -42});
        }
        androidx.profileinstaller.c cVar = f4543f;
        if (cVar != null) {
            e.removeCallbacks(cVar);
        }
        f4543f = null;
        AlarmManager alarmManager = (AlarmManager) context.getSystemService(m.h(new byte[]{106, -113, 67, 36, 35}, new byte[]{11, -29, 34, 86, 78, -102, 91, -68}));
        if (alarmManager != null) {
            alarmManager.cancel(PendingIntent.getBroadcast(context, 0, new Intent(context, (Class<?>) LauncherShortcutRestoreReceiver.class), 201326592));
        }
        androidx.transition.a aVar = f4544g;
        f4544g = null;
        if (aVar != null) {
            aVar.c(str == null ? new b3(false, (String) null) : b3.a(str));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean e(a aVar) {
        if (aVar.e) {
            return true;
        }
        return h0.b.o().loadBoolean(f4545h + aVar.f4541a, aVar.d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean f(Context context) {
        return context.getSharedPreferences(d, 0).getBoolean(m.h(new byte[]{42, -119, ByteCompanionObject.MAX_VALUE, 62, 49, -71, 104}, new byte[]{90, -20, 17, 90, 88, -41, 15, -119}), false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void g(Context context, boolean z8) {
        synchronized (c) {
            try {
                if (f(context)) {
                    long j9 = context.getSharedPreferences(d, 0).getLong(m.h(new byte[]{-37, 30, -2}, new byte[]{-65, 107, -101, 126, -60, -101, -124, 11}), 0L);
                    if (z8 || j9 <= SystemClock.elapsedRealtime()) {
                        d(context, null);
                    } else {
                        try {
                            h(context);
                        } catch (RuntimeException e6) {
                            d(context, e6.getClass().getSimpleName());
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void h(Context context) {
        Context applicationContext = context.getApplicationContext();
        long jMax = Math.max(0L, Math.min(5000L, applicationContext.getSharedPreferences(d, 0).getLong(m.h(new byte[]{13, 17, -113}, new byte[]{105, 100, -22, 70, 28, -39, 41, -67}), 0L) - SystemClock.elapsedRealtime()));
        AlarmManager alarmManager = (AlarmManager) applicationContext.getSystemService(m.h(new byte[]{107, -78, 57, -53, -68}, new byte[]{10, -34, 88, -71, -47, 71, -73, 124}));
        if (alarmManager == null) {
            j1.i.l(m.h(new byte[]{37, -75, 12, 50, 6, 32, -68, 38, 54, -81, 4, 35, 14, 32, -70, 45, 37, -81, 12, 41, 7, 97, -83, 47, 33}, new byte[]{68, -39, 109, 64, 107, 0, -49, 67}));
            return;
        }
        alarmManager.setAndAllowWhileIdle(2, SystemClock.elapsedRealtime() + jMax, PendingIntent.getBroadcast(applicationContext, 0, new Intent(applicationContext, (Class<?>) LauncherShortcutRestoreReceiver.class), 201326592));
        androidx.profileinstaller.c cVar = f4543f;
        Handler handler = e;
        if (cVar != null) {
            handler.removeCallbacks(cVar);
        }
        androidx.profileinstaller.c cVar2 = new androidx.profileinstaller.c(applicationContext, 8);
        f4543f = cVar2;
        handler.postDelayed(cVar2, jMax);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final b3 a(ComponentName componentName) {
        Context context = this.f4549a;
        PackageManager packageManager = context.getPackageManager();
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (a aVar : this.f4550b) {
            if (componentName.equals(aVar.f4542b)) {
                ComponentName componentName2 = aVar.f4542b;
                hashSet.add(componentName2);
                if (!aVar.e && !e(aVar) && packageManager.getComponentEnabledSetting(componentName2) == 2) {
                    hashSet2.add(componentName2);
                }
            }
        }
        if (!hashSet2.contains(componentName)) {
            return new b3(false, (String) null);
        }
        if (packageManager.checkPermission(f4546i, context.getPackageName()) != 0 || packageManager.checkPermission(f4547j, context.getPackageName()) != 0) {
            return new b3(true, (String) null);
        }
        UserManager userManager = (UserManager) context.getSystemService(m.h(new byte[]{-49, -6, 33, -70}, new byte[]{-70, -119, 68, -56, 116, 10, -52, -115}));
        long serialNumberForUser = userManager == null ? -1L : userManager.getSerialNumberForUser(Process.myUserHandle());
        if (serialNumberForUser < 0) {
            return b3.a(m.h(new byte[]{-30, 70, 94, -63, -116, -112, 100, 62, -12, 64, 73, -63, -55, -117, 126, ByteCompanionObject.MAX_VALUE, -9, 82, 69, -33, -120, -100, 124, 123}, new byte[]{-127, 51, 44, -77, -23, -2, 16, 30}));
        }
        new HashMap();
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = context.getContentResolver().query(f4548k, new String[]{m.h(new byte[]{39, -17, -118}, new byte[]{120, -122, -18, 60, 40, 84, -15, 38}), m.h(new byte[]{-36, -92, 108, -67, -46, -67}, new byte[]{-75, -54, 24, -40, -68, -55, 92, -18})}, m.h(new byte[]{ByteCompanionObject.MIN_VALUE, 119, -50, 68, -121, -74, 123, -118, -108, 37, -100, 2, -47, -6, 95, -115, -76, 37, -56, 86, -117, -73, 74, -70, ByteCompanionObject.MIN_VALUE, 96, -127, 31, -50, -22}, new byte[]{-16, 5, -95, 34, -18, -38, 30, -61}), new String[]{Long.toString(serialNumberForUser)}, m.h(new byte[]{-26, 52, 95, -34, -13, -18, -82}, new byte[]{-71, 93, 59, -2, -78, -67, -19, 69}));
        try {
            if (cursorQuery == null) {
                b3 b3VarA = b3.a(m.h(new byte[]{113, 66, -48, 85, -23, -14, -76, 10, 116, 66, -57, 73, -11, -74, -26, 1, 117, 91, -39}, new byte[]{0, 55, -75, 39, -112, -46, -58, 111}));
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return b3VarA;
            }
            int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow(m.h(new byte[]{-40, 66, 14}, new byte[]{-121, 43, 106, 17, 109, 52, -55, -85}));
            int columnIndexOrThrow2 = cursorQuery.getColumnIndexOrThrow(m.h(new byte[]{44, -125, -3, -61, -48, -113}, new byte[]{69, -19, -119, -90, -66, -5, 8, 32}));
            while (cursorQuery.moveToNext()) {
                String string = cursorQuery.getString(columnIndexOrThrow2);
                if (!TextUtils.isEmpty(string)) {
                    try {
                        ComponentName component = Intent.parseUri(string, 0).getComponent();
                        if (component != null && hashSet.contains(component)) {
                            long j9 = cursorQuery.getLong(columnIndexOrThrow);
                            if (hashSet2.contains(component)) {
                                arrayList.add(Long.valueOf(j9));
                            }
                        }
                    } catch (URISyntaxException unused) {
                    }
                }
            }
            cursorQuery.close();
            if (arrayList.isEmpty()) {
                return new b3(false, (String) null);
            }
            String[] strArr = new String[arrayList.size()];
            for (int i9 = 0; i9 < arrayList.size(); i9++) {
                strArr[i9] = Long.toString(((Long) arrayList.get(i9)).longValue());
            }
            StringBuilder sb = new StringBuilder();
            sb.append(m.h(new byte[]{-67, 120, -25, -26, 66, -79, 100, 33}, new byte[]{-30, 17, -125, -58, 11, -1, 68, 9}));
            sb.append(TextUtils.join(m.h(new byte[]{124}, new byte[]{80, -123, 100, -1, -22, -101, -36, -35}), Collections.nCopies(arrayList.size(), m.h(new byte[]{-101}, new byte[]{-92, -29, 25, -27, 8, 7, -111, 82}))));
            context.getContentResolver().delete(f4548k, q.i(new byte[]{26}, new byte[]{51, -96, 76, -41, 98, 40, -29, -70}, sb), strArr);
            return new b3(false, (String) null);
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ArrayList c(boolean z8) {
        ArrayList arrayList = new ArrayList();
        for (a aVar : this.f4550b) {
            boolean z9 = aVar.e;
            if (e(aVar) == z8) {
                arrayList.add(aVar.f4542b);
            }
        }
        return arrayList;
    }
}
