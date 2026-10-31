package f5;

import android.app.Application;
import android.content.SharedPreferences;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class m0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final l0 f2218a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f2219b;
    public boolean c;
    public int d = 0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public m0(l0 l0Var) {
        boolean z8 = false;
        this.f2218a = l0Var;
        o4.f fVar = l0Var.f2216a;
        fVar.a();
        SharedPreferences sharedPreferences = ((Application) fVar.f4088a).getSharedPreferences("com.google.firebase.inappmessaging", 0);
        boolean z9 = true;
        if (sharedPreferences.contains("fresh_install")) {
            z9 = sharedPreferences.getBoolean("fresh_install", true);
        } else {
            l0Var.a("fresh_install", true);
        }
        this.c = z9;
        o4.f fVar2 = l0Var.f2216a;
        fVar2.a();
        SharedPreferences sharedPreferences2 = ((Application) fVar2.f4088a).getSharedPreferences("com.google.firebase.inappmessaging", 0);
        if (sharedPreferences2.contains("test_device")) {
            z8 = sharedPreferences2.getBoolean("test_device", false);
        } else {
            l0Var.a("test_device", false);
        }
        this.f2219b = z8;
    }
}
