package p224v8;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.jvm.Volatile;

/* JADX INFO: renamed from: v8.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3380f extends C3395k {

    /* JADX INFO: renamed from: c */
    public static final AtomicIntegerFieldUpdater f9868c = AtomicIntegerFieldUpdater.newUpdater(C3380f.class, "_resumed");

    @Volatile
    private volatile int _resumed;

    public C3380f(C3377e c3377e, Throwable th, boolean z9) {
        super(z9, th);
        this._resumed = 0;
    }
}
