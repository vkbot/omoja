package org.apache.commons.io.function;

import java.util.stream.BaseStream;
import java.util.stream.Stream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
final class IOStreamAdapter<T> extends IOBaseStreamAdapter<T, IOStream<T>, Stream<T>> implements IOStream<T> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private IOStreamAdapter(Stream<T> stream) {
        super(stream);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <T> IOStream<T> adapt(Stream<T> stream) {
        return stream != null ? new IOStreamAdapter(stream) : IOStream.empty();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public IOStream<T> wrap(Stream<T> stream) {
        return unwrap() == stream ? this : adapt(stream);
    }

    @Override // org.apache.commons.io.function.IOBaseStream
    public /* bridge */ /* synthetic */ IOBaseStream wrap(BaseStream baseStream) {
        return wrap((Stream) baseStream);
    }
}
