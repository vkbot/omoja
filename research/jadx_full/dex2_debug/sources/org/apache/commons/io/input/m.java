package org.apache.commons.io.input;

import java.io.Closeable;
import org.apache.commons.io.function.IOIntConsumer;
import org.apache.commons.io.output.UncheckedFilterOutputStream;
import org.apache.commons.io.output.UncheckedFilterWriter;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class m implements IOIntConsumer {
    public final /* synthetic */ int a;
    public final /* synthetic */ Closeable b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ m(Closeable closeable, int i) {
        this.a = i;
        this.b = closeable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOIntConsumer
    public final void accept(int i) {
        switch (this.a) {
            case 0:
                UncheckedBufferedReader.S((UncheckedBufferedReader) this.b, i);
                break;
            case 1:
                UncheckedFilterReader.f0((UncheckedFilterReader) this.b, i);
                break;
            case 2:
                UncheckedFilterOutputStream.S((UncheckedFilterOutputStream) this.b, i);
                break;
            default:
                UncheckedFilterWriter.f0((UncheckedFilterWriter) this.b, i);
                break;
        }
    }
}
