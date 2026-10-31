package e0;

import java.util.concurrent.ThreadFactory;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class t implements ThreadFactory {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f1954b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ t(String str) {
        this.f1954b = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable);
        StringBuilder sbU = ai.onnxruntime.a.u(this.f1954b);
        sbU.append(m.h(new byte[]{-121, ByteCompanionObject.MIN_VALUE, 43, -63, -87, 23, -118, 48}, new byte[]{-86, -44, 67, -77, -52, 118, -18, 29}));
        sbU.append(thread.getId());
        thread.setName(sbU.toString());
        thread.setPriority(5);
        thread.setUncaughtExceptionHandler(new u());
        return thread;
    }
}
