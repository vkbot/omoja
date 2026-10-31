package p157o7;

import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Logger;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: o7.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2623e {

    /* JADX INFO: renamed from: c */
    public static final Logger f7358c = Logger.getLogger(C2623e.class.getName());

    /* JADX INFO: renamed from: a */
    public final String f7359a;

    /* JADX INFO: renamed from: b */
    public final AtomicLong f7360b;

    public C2623e(long j10) {
        AtomicLong atomicLong = new AtomicLong();
        this.f7360b = atomicLong;
        AbstractC2587b.m4037d("value must be positive", j10 > 0);
        this.f7359a = "keepalive time nanos";
        atomicLong.set(j10);
    }
}
