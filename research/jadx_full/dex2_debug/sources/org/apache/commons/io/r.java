package org.apache.commons.io;

import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.net.URL;
import org.apache.commons.io.function.IOSupplier;
import org.apache.commons.io.function.IOTriFunction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class r implements IOSupplier, IOTriFunction {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ r(int i, Object obj) {
        this.b = i;
        this.c = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOTriFunction
    public Object apply(Object obj, Object obj2, Object obj3) throws IOException {
        int i;
        switch (this.b) {
            case 1:
                i = ((InputStream) this.c).read((byte[]) obj, ((Integer) obj2).intValue(), ((Integer) obj3).intValue());
                break;
            default:
                i = ((RandomAccessFile) this.c).read((byte[]) obj, ((Integer) obj2).intValue(), ((Integer) obj3).intValue());
                break;
        }
        return Integer.valueOf(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOSupplier
    public Object get() {
        return ((URL) this.c).openStream();
    }
}
