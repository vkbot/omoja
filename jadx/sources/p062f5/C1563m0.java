package p062f5;

import android.app.Application;
import android.content.SharedPreferences;
import p155o4.C2591f;

/* JADX INFO: renamed from: f5.m0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1563m0 {

    /* JADX INFO: renamed from: a */
    public final C1561l0 f3843a;

    /* JADX INFO: renamed from: b */
    public boolean f3844b;

    /* JADX INFO: renamed from: c */
    public boolean f3845c;

    /* JADX INFO: renamed from: d */
    public int f3846d = 0;

    public C1563m0(C1561l0 c1561l0) {
        boolean z9 = false;
        this.f3843a = c1561l0;
        C2591f c2591f = c1561l0.f3840a;
        c2591f.m4064a();
        SharedPreferences sharedPreferences = ((Application) c2591f.f7208a).getSharedPreferences("com.google.firebase.inappmessaging", 0);
        boolean z10 = true;
        if (sharedPreferences.contains("fresh_install")) {
            z10 = sharedPreferences.getBoolean("fresh_install", true);
        } else {
            c1561l0.m2644a("fresh_install", true);
        }
        this.f3845c = z10;
        C2591f c2591f2 = c1561l0.f3840a;
        c2591f2.m4064a();
        SharedPreferences sharedPreferences2 = ((Application) c2591f2.f7208a).getSharedPreferences("com.google.firebase.inappmessaging", 0);
        if (sharedPreferences2.contains("test_device")) {
            z9 = sharedPreferences2.getBoolean("test_device", false);
        } else {
            c1561l0.m2644a("test_device", false);
        }
        this.f3844b = z9;
    }
}
