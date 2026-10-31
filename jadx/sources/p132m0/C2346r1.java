package p132m0;

import java.util.Map;
import java.util.function.ToLongFunction;

/* JADX INFO: renamed from: m0.r1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C2346r1 implements ToLongFunction {
    @Override // java.util.function.ToLongFunction
    public final long applyAsLong(Object obj) {
        return ((Long) ((Map.Entry) obj).getValue()).longValue();
    }
}
