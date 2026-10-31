package org.apache.commons.io.input;

import org.apache.commons.io.build.AbstractStreamBuilder;
import org.apache.commons.io.function.Uncheck;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class UncheckedFilterInputStream$Builder extends AbstractStreamBuilder<UncheckedFilterInputStream, UncheckedFilterInputStream$Builder> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ UncheckedFilterInputStream b(UncheckedFilterInputStream$Builder uncheckedFilterInputStream$Builder) {
        return uncheckedFilterInputStream$Builder.lambda$get$0();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ UncheckedFilterInputStream lambda$get$0() {
        return new UncheckedFilterInputStream(this, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOSupplier
    public UncheckedFilterInputStream get() {
        return (UncheckedFilterInputStream) Uncheck.get(new androidx.fragment.app.h(26, this));
    }

    @Override // org.apache.commons.io.function.IOSupplier
    public /* bridge */ /* synthetic */ Object get() {
        return get();
    }
}
