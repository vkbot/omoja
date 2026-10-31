package n7;

import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final m f3952a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        m l1Var;
        AtomicReference atomicReference = new AtomicReference();
        try {
            l1Var = (m) Class.forName("io.grpc.override.ContextStorageOverride").asSubclass(m.class).getConstructor(null).newInstance(null);
        } catch (ClassNotFoundException e) {
            atomicReference.set(e);
            l1Var = new l1();
        } catch (Exception e6) {
            ai.onnxruntime.b.o("Storage override failed to initialize", e6);
            return;
        }
        f3952a = l1Var;
        Throwable th = (Throwable) atomicReference.get();
        if (th != null) {
            n.f3958a.log(Level.FINE, "Storage override doesn't exist. Using default", th);
        }
    }
}
