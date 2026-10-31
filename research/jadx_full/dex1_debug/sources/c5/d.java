package c5;

import android.content.Context;
import androidx.core.os.UserManagerCompat;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d implements f, g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f496a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f497b;
    public final k5.b c;
    public final Set d;
    public final Executor e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(Context context, String str, Set set, k5.b bVar, Executor executor) {
        this.f496a = new b(0, context, str);
        this.d = set;
        this.e = executor;
        this.c = bVar;
        this.f497b = context;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final o7.a a() {
        if (!UserManagerCompat.isUserUnlocked(this.f497b)) {
            o7.a aVar = new o7.a();
            aVar.g("");
            return aVar;
        }
        c cVar = new c(this, 0);
        Executor executor = this.e;
        r2.a.c(executor, "Executor must not be null");
        o7.a aVar2 = new o7.a();
        executor.execute(new a9.i(aVar2, cVar));
        return aVar2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b() {
        if (this.d.size() <= 0) {
            new o7.a().g(null);
            return;
        }
        if (!UserManagerCompat.isUserUnlocked(this.f497b)) {
            new o7.a().g(null);
            return;
        }
        c cVar = new c(this, 1);
        Executor executor = this.e;
        r2.a.c(executor, "Executor must not be null");
        executor.execute(new a9.i(new o7.a(), cVar));
    }
}
