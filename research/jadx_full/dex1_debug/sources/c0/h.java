package c0;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import n7.h0;
import o7.f2;
import o7.g3;
import o7.x;
import o7.y0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h implements i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f400b;
    public volatile Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ h(Object obj) {
        this.f400b = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public l.a a() {
        if (((l.a) this.c) == null) {
            synchronized (this) {
                try {
                    if (((l.a) this.c) == null) {
                        File cacheDir = ((com.bumptech.glide.manager.o) ((r5.c) this.f400b).c).c.getCacheDir();
                        l.e eVar = null;
                        File file = cacheDir == null ? null : new File(cacheDir, "image_manager_disk_cache");
                        if (file != null && (file.isDirectory() || file.mkdirs())) {
                            eVar = new l.e(file);
                        }
                        this.c = eVar;
                    }
                    if (((l.a) this.c) == null) {
                        this.c = new w7.c(13);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return (l.a) this.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public x b(g3 g3Var) {
        h0 h0Var = ((f2) this.f400b).f4238y;
        if (((f2) this.f400b).G.get()) {
            return ((f2) this.f400b).E;
        }
        if (h0Var == null) {
            ((f2) this.f400b).f4229m.execute(new com.bumptech.glide.m(13, this));
            return ((f2) this.f400b).E;
        }
        x xVarF = y0.f(h0Var.a(g3Var), Boolean.TRUE.equals(g3Var.f4264a.e));
        return xVarF != null ? xVarF : ((f2) this.f400b).E;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void c(n7.j jVar) {
        o4.b.i(jVar, "newState");
        if (((n7.j) this.c) == jVar || ((n7.j) this.c) == n7.j.f3944f) {
            return;
        }
        this.c = jVar;
        if (((ArrayList) this.f400b).isEmpty()) {
            return;
        }
        ArrayList arrayList = (ArrayList) this.f400b;
        this.f400b = new ArrayList();
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            throw com.bumptech.glide.g.b(it);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // c0.i
    public Object get() {
        if (this.c == null) {
            synchronized (this) {
                try {
                    if (this.c == null) {
                        Object obj = ((i) this.f400b).get();
                        g.c(obj, "Argument must not be null");
                        this.c = obj;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.c;
    }
}
