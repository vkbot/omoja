package j0;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.Bitmap$Config;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import e0.g0;
import e0.m;
import j1.t;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public d f2872a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public n0.d f2873b;
    public String c;
    public String d;
    public String e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public t f2874f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2875g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2876h = 50;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f2877i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Drawable f2878j;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static BitmapDrawable a(Drawable drawable, Drawable drawable2, int i9, int i10, Context context) {
        if (drawable == null || drawable2 == null) {
            return null;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(72, 72, Bitmap$Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        if (i10 != 30 && i10 != 70) {
            i10 = 50;
        }
        int i11 = (i10 * 72) / 100;
        if (i9 == 1) {
            drawable.setBounds(0, 0, 72, i11);
            drawable.draw(canvas);
            drawable2.setBounds(0, i11, 72, 72);
            drawable2.draw(canvas);
        } else {
            drawable.setBounds(0, 0, i11, 72);
            drawable.draw(canvas);
            drawable2.setBounds(i11, 0, 72, 72);
            drawable2.draw(canvas);
        }
        return new BitmapDrawable(context.getResources(), bitmapCreateBitmap);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static e b(ResolveInfo resolveInfo, PackageManager packageManager) {
        e eVar = new e();
        eVar.f2872a = d.c;
        eVar.c = resolveInfo.activityInfo.packageName;
        eVar.f2877i = resolveInfo.loadLabel(packageManager).toString();
        eVar.f2878j = resolveInfo.loadIcon(packageManager);
        return eVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static e c(n0.d dVar, Context context) {
        e eVar = new e();
        eVar.f2872a = d.f2870b;
        eVar.f2873b = dVar;
        eVar.f2877i = com.bumptech.glide.d.b(dVar.f3843b);
        try {
            eVar.f2878j = context.getDrawable(dVar.c);
            return eVar;
        } catch (Exception unused) {
            eVar.f2878j = null;
            return eVar;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static e d(t tVar, Context context) {
        if (tVar != null) {
            String string = tVar.f3016a;
            if (tVar.a()) {
                Context contextB = g0.b(context);
                e eVar = new e();
                eVar.f2872a = d.e;
                eVar.e = string;
                eVar.f2874f = tVar;
                String str = tVar.f3017b;
                if (str == null || str.trim().isEmpty()) {
                    int i9 = tVar.c;
                    if (i9 != 0) {
                        string = contextB.getString(i9);
                    } else if (string == null) {
                        string = "";
                    }
                } else {
                    string = str;
                }
                eVar.f2877i = string;
                try {
                    int i10 = tVar.d;
                    eVar.f2878j = i10 == 0 ? null : contextB.getDrawable(i10);
                    return eVar;
                } catch (Exception unused) {
                    eVar.f2878j = null;
                    return eVar;
                }
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static e e(Context context, String str, int i9, int i10, String str2) {
        if (str == null || str2 == null) {
            return null;
        }
        PackageManager packageManager = context.getPackageManager();
        String strTrim = str.trim();
        String strTrim2 = str2.trim();
        if (strTrim.isEmpty() || strTrim2.isEmpty()) {
            return null;
        }
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(strTrim, 0);
            ApplicationInfo applicationInfo2 = packageManager.getApplicationInfo(strTrim2, 0);
            e eVar = new e();
            eVar.f2872a = d.d;
            eVar.c = strTrim;
            eVar.d = strTrim2;
            int i11 = 2;
            if (i9 != 2) {
                i11 = 1;
            }
            eVar.f2875g = i11;
            if (i10 != 30 && i10 != 70) {
                i10 = 50;
            }
            eVar.f2876h = i10;
            eVar.f2877i = packageManager.getApplicationLabel(applicationInfo).toString() + m.h(new byte[]{89}, new byte[]{118, -22, 34, 98, -42, 17, 59, 23}) + packageManager.getApplicationLabel(applicationInfo2).toString() + " " + eVar.f2876h + m.h(new byte[]{79}, new byte[]{96, -88, 12, 111, 84, 109, 19, -108}) + (100 - eVar.f2876h);
            eVar.f2878j = a(packageManager.getApplicationIcon(applicationInfo), packageManager.getApplicationIcon(applicationInfo2), eVar.f2875g, eVar.f2876h, context);
            return eVar;
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return this.f2877i;
    }
}
