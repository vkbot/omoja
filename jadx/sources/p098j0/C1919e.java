package p098j0;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.AbstractC1031d;
import p047e0.AbstractC1358g0;
import p047e0.AbstractC1387m;
import p099j1.C1940t;
import p142n0.EnumC2469d;

/* JADX INFO: renamed from: j0.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1919e {

    /* JADX INFO: renamed from: a */
    public EnumC1918d f5058a;

    /* JADX INFO: renamed from: b */
    public EnumC2469d f5059b;

    /* JADX INFO: renamed from: c */
    public String f5060c;

    /* JADX INFO: renamed from: d */
    public String f5061d;

    /* JADX INFO: renamed from: e */
    public String f5062e;

    /* JADX INFO: renamed from: f */
    public C1940t f5063f;

    /* JADX INFO: renamed from: g */
    public int f5064g;

    /* JADX INFO: renamed from: h */
    public int f5065h = 50;

    /* JADX INFO: renamed from: i */
    public String f5066i;

    /* JADX INFO: renamed from: j */
    public Drawable f5067j;

    /* JADX INFO: renamed from: a */
    public static BitmapDrawable m2998a(Drawable drawable, Drawable drawable2, int i10, int i11, Context context) {
        if (drawable == null || drawable2 == null) {
            return null;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(72, 72, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        if (i11 != 30 && i11 != 70) {
            i11 = 50;
        }
        int i12 = (i11 * 72) / 100;
        if (i10 == 1) {
            drawable.setBounds(0, 0, 72, i12);
            drawable.draw(canvas);
            drawable2.setBounds(0, i12, 72, 72);
            drawable2.draw(canvas);
        } else {
            drawable.setBounds(0, 0, i12, 72);
            drawable.draw(canvas);
            drawable2.setBounds(i12, 0, 72, 72);
            drawable2.draw(canvas);
        }
        return new BitmapDrawable(context.getResources(), bitmapCreateBitmap);
    }

    /* JADX INFO: renamed from: b */
    public static C1919e m2999b(ResolveInfo resolveInfo, PackageManager packageManager) {
        C1919e c1919e = new C1919e();
        c1919e.f5058a = EnumC1918d.f5054c;
        c1919e.f5060c = resolveInfo.activityInfo.packageName;
        c1919e.f5066i = resolveInfo.loadLabel(packageManager).toString();
        c1919e.f5067j = resolveInfo.loadIcon(packageManager);
        return c1919e;
    }

    /* JADX INFO: renamed from: c */
    public static C1919e m3000c(EnumC2469d enumC2469d, Context context) {
        C1919e c1919e = new C1919e();
        c1919e.f5058a = EnumC1918d.f5053b;
        c1919e.f5059b = enumC2469d;
        c1919e.f5066i = AbstractC1031d.m1272b(enumC2469d.f6800b);
        try {
            c1919e.f5067j = context.getDrawable(enumC2469d.f6801c);
            return c1919e;
        } catch (Exception unused) {
            c1919e.f5067j = null;
            return c1919e;
        }
    }

    /* JADX INFO: renamed from: d */
    public static C1919e m3001d(C1940t c1940t, Context context) {
        if (c1940t != null) {
            String string = c1940t.f5291a;
            if (c1940t.m3048a()) {
                Context contextM2404b = AbstractC1358g0.m2404b(context);
                C1919e c1919e = new C1919e();
                c1919e.f5058a = EnumC1918d.f5056e;
                c1919e.f5062e = string;
                c1919e.f5063f = c1940t;
                String str = c1940t.f5292b;
                if (str == null || str.trim().isEmpty()) {
                    int i10 = c1940t.f5293c;
                    if (i10 != 0) {
                        string = contextM2404b.getString(i10);
                    } else if (string == null) {
                        string = "";
                    }
                } else {
                    string = str;
                }
                c1919e.f5066i = string;
                try {
                    int i11 = c1940t.f5294d;
                    c1919e.f5067j = i11 == 0 ? null : contextM2404b.getDrawable(i11);
                    return c1919e;
                } catch (Exception unused) {
                    c1919e.f5067j = null;
                    return c1919e;
                }
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: e */
    public static C1919e m3002e(Context context, String str, int i10, int i11, String str2) {
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
            C1919e c1919e = new C1919e();
            c1919e.f5058a = EnumC1918d.f5055d;
            c1919e.f5060c = strTrim;
            c1919e.f5061d = strTrim2;
            int i12 = 2;
            if (i10 != 2) {
                i12 = 1;
            }
            c1919e.f5064g = i12;
            if (i11 != 30 && i11 != 70) {
                i11 = 50;
            }
            c1919e.f5065h = i11;
            c1919e.f5066i = packageManager.getApplicationLabel(applicationInfo).toString() + AbstractC1387m.m2421h(new byte[]{89}, new byte[]{118, -22, 34, 98, -42, 17, 59, 23}) + packageManager.getApplicationLabel(applicationInfo2).toString() + " " + c1919e.f5065h + AbstractC1387m.m2421h(new byte[]{79}, new byte[]{96, -88, 12, 111, 84, 109, 19, -108}) + (100 - c1919e.f5065h);
            c1919e.f5067j = m2998a(packageManager.getApplicationIcon(applicationInfo), packageManager.getApplicationIcon(applicationInfo2), c1919e.f5064g, c1919e.f5065h, context);
            return c1919e;
        } catch (Exception unused) {
            return null;
        }
    }

    public final String toString() {
        return this.f5066i;
    }
}
