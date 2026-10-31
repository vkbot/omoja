package t4;

import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class m implements k5.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile Set f5403a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile Set f5404b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // k5.b
    public final Object get() {
        if (this.f5404b == null) {
            synchronized (this) {
                try {
                    if (this.f5404b == null) {
                        this.f5404b = Collections.newSetFromMap(new ConcurrentHashMap());
                        synchronized (this) {
                            try {
                                Iterator it = this.f5403a.iterator();
                                while (it.hasNext()) {
                                    this.f5404b.add(((k5.b) it.next()).get());
                                }
                                this.f5403a = null;
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
        return Collections.unmodifiableSet(this.f5404b);
    }
}
