package p097j;

import java.util.concurrent.ThreadFactory;
import p039d2.RunnableC1259o;

/* JADX INFO: renamed from: j.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ThreadFactoryC1882a implements ThreadFactory {
    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(new RunnableC1259o(runnable, 1), "glide-active-resources");
    }
}
