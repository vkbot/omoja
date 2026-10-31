package p148n7;

import ai.onnxruntime.C0075b;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;

/* JADX INFO: renamed from: n7.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2524l {

    /* JADX INFO: renamed from: a */
    public static final AbstractC2527m f6987a;

    static {
        AbstractC2527m c2526l1;
        AtomicReference atomicReference = new AtomicReference();
        try {
            c2526l1 = (AbstractC2527m) Class.forName("io.grpc.override.ContextStorageOverride").asSubclass(AbstractC2527m.class).getConstructor(null).newInstance(null);
        } catch (ClassNotFoundException e) {
            atomicReference.set(e);
            c2526l1 = new C2526l1();
        } catch (Exception e6) {
            C0075b.m190o("Storage override failed to initialize", e6);
            return;
        }
        f6987a = c2526l1;
        Throwable th = (Throwable) atomicReference.get();
        if (th != null) {
            C2530n.f6998a.log(Level.FINE, "Storage override doesn't exist. Using default", th);
        }
    }
}
