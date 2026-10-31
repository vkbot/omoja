package p200t4;

import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import p114k5.InterfaceC2050b;

/* JADX INFO: renamed from: t4.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3252m implements InterfaceC2050b {

    /* JADX INFO: renamed from: a */
    public volatile Set f9538a;

    /* JADX INFO: renamed from: b */
    public volatile Set f9539b;

    @Override // p114k5.InterfaceC2050b
    public final Object get() {
        if (this.f9539b == null) {
            synchronized (this) {
                try {
                    if (this.f9539b == null) {
                        this.f9539b = Collections.newSetFromMap(new ConcurrentHashMap());
                        synchronized (this) {
                            try {
                                Iterator it = this.f9538a.iterator();
                                while (it.hasNext()) {
                                    this.f9539b.add(((InterfaceC2050b) it.next()).get());
                                }
                                this.f9538a = null;
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Collections.unmodifiableSet(this.f9539b);
    }
}
