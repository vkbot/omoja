package org.apache.commons.io.input;

import org.apache.commons.io.build.AbstractStreamBuilder;
import org.apache.commons.io.function.Uncheck;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class UncheckedFilterReader$Builder extends AbstractStreamBuilder<UncheckedFilterReader, UncheckedFilterReader$Builder> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ UncheckedFilterReader b(UncheckedFilterReader$Builder uncheckedFilterReader$Builder) {
        return uncheckedFilterReader$Builder.lambda$get$0();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ UncheckedFilterReader lambda$get$0() {
        return new UncheckedFilterReader(this, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOSupplier
    public UncheckedFilterReader get() {
        return (UncheckedFilterReader) Uncheck.get(new androidx.fragment.app.h(27, this));
    }

    @Override // org.apache.commons.io.function.IOSupplier
    public /* bridge */ /* synthetic */ Object get() {
        return get();
    }
}
