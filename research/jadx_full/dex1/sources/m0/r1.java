package m0;

import java.util.Map$Entry;
import java.util.function.ToLongFunction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class r1 implements ToLongFunction {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.ToLongFunction
    public final long applyAsLong(Object obj) {
        return ((Long) ((Map$Entry) obj).getValue()).longValue();
    }
}
