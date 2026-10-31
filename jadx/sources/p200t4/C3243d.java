package p200t4;

import android.os.Build;
import android.os.StrictMode;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import java.util.Collections;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import p114k5.InterfaceC2050b;
import p211u4.ScheduledExecutorServiceC3293f;
import p211u4.ThreadFactoryC3288a;

/* JADX INFO: renamed from: t4.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C3243d implements InterfaceC2050b {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f9515a;

    @Override // p114k5.InterfaceC2050b
    public final Object get() {
        switch (this.f9515a) {
            case 0:
                return Collections.EMPTY_SET;
            case 1:
                return null;
            case 2:
                C3251l c3251l = ExecutorsRegistrar.f2617a;
                StrictMode.ThreadPolicy.Builder builderDetectNetwork = new StrictMode.ThreadPolicy.Builder().detectNetwork();
                builderDetectNetwork.detectResourceMismatches();
                if (Build.VERSION.SDK_INT >= 26) {
                    builderDetectNetwork.detectUnbufferedIo();
                }
                return new ScheduledExecutorServiceC3293f(Executors.newFixedThreadPool(4, new ThreadFactoryC3288a("Firebase Background", 10, builderDetectNetwork.penaltyLog().build())), (ScheduledExecutorService) ExecutorsRegistrar.f2620d.get());
            case 3:
                C3251l c3251l2 = ExecutorsRegistrar.f2617a;
                return new ScheduledExecutorServiceC3293f(Executors.newFixedThreadPool(Math.max(2, Runtime.getRuntime().availableProcessors()), new ThreadFactoryC3288a("Firebase Lite", 0, new StrictMode.ThreadPolicy.Builder().detectAll().penaltyLog().build())), (ScheduledExecutorService) ExecutorsRegistrar.f2620d.get());
            case 4:
                C3251l c3251l3 = ExecutorsRegistrar.f2617a;
                return new ScheduledExecutorServiceC3293f(Executors.newCachedThreadPool(new ThreadFactoryC3288a("Firebase Blocking", 11, null)), (ScheduledExecutorService) ExecutorsRegistrar.f2620d.get());
            default:
                C3251l c3251l4 = ExecutorsRegistrar.f2617a;
                return Executors.newSingleThreadScheduledExecutor(new ThreadFactoryC3288a("Firebase Scheduler", 0, null));
        }
    }
}
