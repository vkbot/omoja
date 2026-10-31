package p171p8;

import java.io.Serializable;

/* JADX INFO: renamed from: p8.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3003e implements Serializable {

    /* JADX INFO: renamed from: b */
    public final Throwable f8446b;

    public C3003e(Throwable th) {
        this.f8446b = th;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C3003e)) {
            return false;
        }
        Object obj2 = ((C3003e) obj).f8446b;
        Throwable th = this.f8446b;
        if (th != obj2) {
            return th != null && th.equals(obj2);
        }
        return true;
    }

    public final int hashCode() {
        return this.f8446b.hashCode();
    }

    public final String toString() {
        return "NotificationLite.Error[" + this.f8446b + "]";
    }
}
