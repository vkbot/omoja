package p047e0;

import ai.onnxruntime.AbstractC0074a;
import com.example.navistart.cores.ColorText;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import kotlin.jvm.internal.ByteCompanionObject;
import p078h0.C1652b;

/* JADX INFO: renamed from: e0.w */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1434w {

    /* JADX INFO: renamed from: a */
    public static final ConcurrentHashMap f3456a;

    /* JADX INFO: renamed from: b */
    public static final ThreadPoolExecutor.DiscardOldestPolicy f3457b;

    static {
        Runtime.getRuntime().availableProcessors();
        f3456a = new ConcurrentHashMap();
        f3457b = new ThreadPoolExecutor.DiscardOldestPolicy();
    }

    /* JADX INFO: renamed from: a */
    public static int m2480a() {
        int i10;
        ConcurrentHashMap concurrentHashMap = f3456a;
        synchronized (concurrentHashMap) {
            try {
                i10 = 0;
                for (Map.Entry entry : concurrentHashMap.entrySet()) {
                    String str = (String) entry.getKey();
                    ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) entry.getValue();
                    if (scheduledThreadPoolExecutor != null && !scheduledThreadPoolExecutor.isShutdown()) {
                        int size = scheduledThreadPoolExecutor.getQueue().size();
                        i10 += size;
                        if (size > 30) {
                            C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{-113, -121, 108, -110, -125, -62, 9, -123, -71, -114, 41, -88}, new byte[]{-52, -21, 9, -13, -15, -109, 124, -32}) + str + AbstractC1387m.m2421h(new byte[]{81, 119, -78, -66}, new byte[]{12, 86, -109, -97, -125, 24, -2, -103}), ColorText.RED);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i10;
    }

    /* JADX INFO: renamed from: b */
    public static ScheduledExecutorServiceC1430v m2481b(long j10, String str) {
        return new ScheduledExecutorServiceC1430v(m2482c(-1, str), j10);
    }

    /* JADX INFO: renamed from: c */
    public static ScheduledThreadPoolExecutor m2482c(int i10, final String str) {
        if (str == null || str.trim().isEmpty()) {
            str = AbstractC1387m.m2421h(new byte[]{-40, 30, -51, 64, -41, 0, 1, 24, -51, 20, -57, 85, -53, 16, 11, 24}, new byte[]{-99, 102, -88, 35, -94, 116, 110, 106});
        }
        ConcurrentHashMap concurrentHashMap = f3456a;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) concurrentHashMap.get(str);
        if (scheduledThreadPoolExecutor != null && !scheduledThreadPoolExecutor.isShutdown()) {
            return scheduledThreadPoolExecutor;
        }
        ThreadFactory threadFactory = new ThreadFactory() { // from class: e0.t
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable);
                StringBuilder sbM170u = AbstractC0074a.m170u(str);
                sbM170u.append(AbstractC1387m.m2421h(new byte[]{-121, ByteCompanionObject.MIN_VALUE, 43, -63, -87, 23, -118, 48}, new byte[]{-86, -44, 67, -77, -52, 118, -18, 29}));
                sbM170u.append(thread.getId());
                thread.setName(sbM170u.toString());
                thread.setPriority(5);
                thread.setUncaughtExceptionHandler(new C1426u());
                return thread;
            }
        };
        if (i10 <= 0) {
            i10 = 1;
        }
        C1400o2 c1400o2 = new C1400o2(i10, threadFactory, f3457b);
        c1400o2.prestartAllCoreThreads();
        concurrentHashMap.put(str, c1400o2);
        return c1400o2;
    }
}
