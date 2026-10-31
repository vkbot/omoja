package o7;

import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e {
    public static final Logger c = Logger.getLogger(e.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4191a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicLong f4192b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(long j9) {
        AtomicLong atomicLong = new AtomicLong();
        this.f4192b = atomicLong;
        o4.b.d("value must be positive", j9 > 0);
        this.f4191a = "keepalive time nanos";
        atomicLong.set(j9);
    }
}
