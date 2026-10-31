package org.apache.commons.p161io.function;

import java.util.Objects;
import java.util.stream.BaseStream;
import org.apache.commons.p161io.function.IOBaseStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
abstract class IOBaseStreamAdapter<T, S extends IOBaseStream<T, S, B>, B extends BaseStream<T, B>> implements IOBaseStream<T, S, B> {
    private final B delegate;

    public IOBaseStreamAdapter(B b10) {
        Objects.requireNonNull(b10, "delegate");
        this.delegate = b10;
    }

    @Override // org.apache.commons.p161io.function.IOBaseStream
    public B unwrap() {
        return this.delegate;
    }
}
