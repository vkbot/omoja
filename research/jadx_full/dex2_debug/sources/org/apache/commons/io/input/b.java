package org.apache.commons.io.input;

import java.util.function.Supplier;
import org.apache.commons.io.output.BrokenWriter;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class b implements Supplier {
    public final /* synthetic */ int a;
    public final /* synthetic */ Throwable b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(int i, Throwable th) {
        this.a = i;
        this.b = th;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.a) {
            case 0:
                return BrokenInputStream.c(this.b);
            case 1:
                return BrokenReader.y(this.b);
            default:
                return BrokenWriter.c(this.b);
        }
    }
}
