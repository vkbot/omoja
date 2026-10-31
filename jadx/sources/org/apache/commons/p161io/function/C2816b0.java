package org.apache.commons.p161io.function;

import java.io.IOException;
import java.util.function.BiFunction;
import org.apache.commons.p161io.IOIndexedException;

/* JADX INFO: renamed from: org.apache.commons.io.function.b0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2816b0 implements BiFunction {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f7979a;

    public /* synthetic */ C2816b0(int i10) {
        this.f7979a = i10;
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.f7979a) {
            case 0:
                return IOStreams.lambda$forAll$0((Integer) obj, (IOException) obj2);
            case 1:
                return new IOIndexedException(((Integer) obj).intValue(), (IOException) obj2);
            default:
                return IOStream.lambda$forAll$10((Integer) obj, (IOException) obj2);
        }
    }
}
