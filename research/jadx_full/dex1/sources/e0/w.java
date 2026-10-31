package e0;

import com.example.navistart.cores.ColorText;
import java.util.Map$Entry;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor$DiscardOldestPolicy;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ConcurrentHashMap f1979a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ThreadPoolExecutor$DiscardOldestPolicy f1980b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        Runtime.getRuntime().availableProcessors();
        f1979a = new ConcurrentHashMap();
        f1980b = new ThreadPoolExecutor$DiscardOldestPolicy();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int a() {
        int i9;
        ConcurrentHashMap concurrentHashMap = f1979a;
        synchronized (concurrentHashMap) {
            try {
                i9 = 0;
                for (Map$Entry map$Entry : concurrentHashMap.entrySet()) {
                    String str = (String) map$Entry.getKey();
                    ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) map$Entry.getValue();
                    if (scheduledThreadPoolExecutor != null && !scheduledThreadPoolExecutor.isShutdown()) {
                        int size = scheduledThreadPoolExecutor.getQueue().size();
                        i9 += size;
                        if (size > 30) {
                            h0.b.w(m.h(new byte[]{-113, -121, 108, -110, -125, -62, 9, -123, -71, -114, 41, -88}, new byte[]{-52, -21, 9, -13, -15, -109, 124, -32}) + str + m.h(new byte[]{81, 119, -78, -66}, new byte[]{12, 86, -109, -97, -125, 24, -2, -103}), ColorText.RED);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static v b(long j9, String str) {
        return new v(c(-1, str), j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ScheduledThreadPoolExecutor c(int i9, String str) {
        if (str == null || str.trim().isEmpty()) {
            str = m.h(new byte[]{-40, 30, -51, 64, -41, 0, 1, 24, -51, 20, -57, 85, -53, 16, 11, 24}, new byte[]{-99, 102, -88, 35, -94, 116, 110, 106});
        }
        ConcurrentHashMap concurrentHashMap = f1979a;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) concurrentHashMap.get(str);
        if (scheduledThreadPoolExecutor != null && !scheduledThreadPoolExecutor.isShutdown()) {
            return scheduledThreadPoolExecutor;
        }
        t tVar = new t(str);
        if (i9 <= 0) {
            i9 = 1;
        }
        o2 o2Var = new o2(i9, tVar, f1980b);
        o2Var.prestartAllCoreThreads();
        concurrentHashMap.put(str, o2Var);
        return o2Var;
    }
}
