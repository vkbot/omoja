package kotlin.jvm.internal;

import java.io.Serializable;
import kotlin.SinceKotlin;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@SinceKotlin(version = "1.2")
public class CallableReference$NoReceiver implements Serializable {
    private static final CallableReference$NoReceiver INSTANCE = new CallableReference$NoReceiver();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private CallableReference$NoReceiver() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ CallableReference$NoReceiver access$000() {
        return INSTANCE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Object readResolve() {
        return INSTANCE;
    }
}
