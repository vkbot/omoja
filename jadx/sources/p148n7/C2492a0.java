package p148n7;

import java.util.concurrent.atomic.AtomicLong;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: n7.a0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2492a0 {

    /* JADX INFO: renamed from: d */
    public static final AtomicLong f6877d = new AtomicLong();

    /* JADX INFO: renamed from: a */
    public final String f6878a;

    /* JADX INFO: renamed from: b */
    public final String f6879b;

    /* JADX INFO: renamed from: c */
    public final long f6880c;

    public C2492a0(long j10, String str, String str2) {
        AbstractC2587b.m4037d("empty type", !str.isEmpty());
        this.f6878a = str;
        this.f6879b = str2;
        this.f6880c = j10;
    }

    /* JADX INFO: renamed from: a */
    public static C2492a0 m3881a(Class cls, String str) {
        String simpleName = cls.getSimpleName();
        if (simpleName.isEmpty()) {
            simpleName = cls.getName().substring(cls.getPackage().getName().length() + 1);
        }
        return new C2492a0(f6877d.incrementAndGet(), simpleName, str);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f6878a + "<" + this.f6880c + ">");
        String str = this.f6879b;
        if (str != null) {
            sb.append(": (");
            sb.append(str);
            sb.append(')');
        }
        return sb.toString();
    }
}
