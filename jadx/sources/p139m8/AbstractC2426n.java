package p139m8;

import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import p019b4.RunnableC0894e;

/* JADX INFO: renamed from: m8.n */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2426n {

    /* JADX INFO: renamed from: a */
    public static final boolean f6586a;

    /* JADX INFO: renamed from: b */
    public static final int f6587b;

    /* JADX INFO: renamed from: c */
    public static final AtomicReference f6588c = new AtomicReference();

    /* JADX INFO: renamed from: d */
    public static final ConcurrentHashMap f6589d = new ConcurrentHashMap();

    static {
        int i10;
        Properties properties = System.getProperties();
        boolean z9 = properties.containsKey("rx2.purge-enabled") ? Boolean.parseBoolean(properties.getProperty("rx2.purge-enabled")) : true;
        if (z9 && properties.containsKey("rx2.purge-period-seconds")) {
            try {
                i10 = Integer.parseInt(properties.getProperty("rx2.purge-period-seconds"));
            } catch (NumberFormatException unused) {
                i10 = 1;
            }
        } else {
            i10 = 1;
        }
        f6586a = z9;
        f6587b = i10;
        if (!z9) {
            return;
        }
        while (true) {
            AtomicReference atomicReference = f6588c;
            ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) atomicReference.get();
            if (scheduledExecutorService != null) {
                return;
            }
            ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, new ThreadFactoryC2423k("RxSchedulerPurge"));
            do {
                if (atomicReference.compareAndSet(scheduledExecutorService, scheduledExecutorServiceNewScheduledThreadPool)) {
                    RunnableC0894e runnableC0894e = new RunnableC0894e(2);
                    long j10 = f6587b;
                    scheduledExecutorServiceNewScheduledThreadPool.scheduleAtFixedRate(runnableC0894e, j10, j10, TimeUnit.SECONDS);
                    return;
                }
            } while (atomicReference.get() == scheduledExecutorService);
            scheduledExecutorServiceNewScheduledThreadPool.shutdownNow();
        }
    }
}
