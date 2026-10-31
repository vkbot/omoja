package t4;

import android.os.Build$VERSION;
import android.os.StrictMode$ThreadPolicy$Builder;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import java.util.Collections;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class d implements k5.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5387a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d(int i9) {
        this.f5387a = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // k5.b
    public final Object get() {
        switch (this.f5387a) {
            case 0:
                return Collections.EMPTY_SET;
            case 1:
                return null;
            case 2:
                l lVar = ExecutorsRegistrar.f1464a;
                StrictMode$ThreadPolicy$Builder strictMode$ThreadPolicy$BuilderDetectNetwork = new StrictMode$ThreadPolicy$Builder().detectNetwork();
                strictMode$ThreadPolicy$BuilderDetectNetwork.detectResourceMismatches();
                if (Build$VERSION.SDK_INT >= 26) {
                    org.apache.commons.net.util.a.u(strictMode$ThreadPolicy$BuilderDetectNetwork);
                }
                return new u4.f(Executors.newFixedThreadPool(4, new u4.a("Firebase Background", 10, strictMode$ThreadPolicy$BuilderDetectNetwork.penaltyLog().build())), (ScheduledExecutorService) ExecutorsRegistrar.d.get());
            case 3:
                l lVar2 = ExecutorsRegistrar.f1464a;
                return new u4.f(Executors.newFixedThreadPool(Math.max(2, Runtime.getRuntime().availableProcessors()), new u4.a("Firebase Lite", 0, new StrictMode$ThreadPolicy$Builder().detectAll().penaltyLog().build())), (ScheduledExecutorService) ExecutorsRegistrar.d.get());
            case 4:
                l lVar3 = ExecutorsRegistrar.f1464a;
                return new u4.f(Executors.newCachedThreadPool(new u4.a("Firebase Blocking", 11, null)), (ScheduledExecutorService) ExecutorsRegistrar.d.get());
            default:
                l lVar4 = ExecutorsRegistrar.f1464a;
                return Executors.newSingleThreadScheduledExecutor(new u4.a("Firebase Scheduler", 0, null));
        }
    }
}
