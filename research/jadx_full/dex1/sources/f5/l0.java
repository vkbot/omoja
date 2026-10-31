package f5;

import android.app.Application;
import android.content.SharedPreferences$Editor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final o4.f f2216a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ l0(o4.f fVar) {
        this.f2216a = fVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void a(String str, boolean z8) {
        o4.f fVar = this.f2216a;
        fVar.a();
        SharedPreferences$Editor sharedPreferences$EditorEdit = ((Application) fVar.f4088a).getSharedPreferences("com.google.firebase.inappmessaging", 0).edit();
        sharedPreferences$EditorEdit.putBoolean(str, z8);
        sharedPreferences$EditorEdit.apply();
    }
}
