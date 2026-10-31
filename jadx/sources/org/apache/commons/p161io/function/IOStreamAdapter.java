package org.apache.commons.p161io.function;

import java.util.stream.Stream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
final class IOStreamAdapter<T> extends IOBaseStreamAdapter<T, IOStream<T>, Stream<T>> implements IOStream<T> {
    private IOStreamAdapter(Stream<T> stream) {
        super(stream);
    }

    public static <T> IOStream<T> adapt(Stream<T> stream) {
        return stream != null ? new IOStreamAdapter(stream) : IOStream.empty();
    }

    @Override // org.apache.commons.p161io.function.IOBaseStream
    public IOStream<T> wrap(Stream<T> stream) {
        return unwrap() == stream ? this : adapt(stream);
    }
}
