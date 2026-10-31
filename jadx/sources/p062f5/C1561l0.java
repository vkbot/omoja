package p062f5;

import android.app.Application;
import android.content.SharedPreferences;
import p155o4.C2591f;

/* JADX INFO: renamed from: f5.l0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1561l0 {

    /* JADX INFO: renamed from: a */
    public final C2591f f3840a;

    public /* synthetic */ C1561l0(C2591f c2591f) {
        this.f3840a = c2591f;
    }

    /* JADX INFO: renamed from: a */
    public void m2644a(String str, boolean z9) {
        C2591f c2591f = this.f3840a;
        c2591f.m4064a();
        SharedPreferences.Editor editorEdit = ((Application) c2591f.f7208a).getSharedPreferences("com.google.firebase.inappmessaging", 0).edit();
        editorEdit.putBoolean(str, z9);
        editorEdit.apply();
    }
}
