package org.apache.commons.io;

import java.io.File;
import org.apache.commons.io.function.IOLongSupplier;
import org.apache.commons.io.function.IOSupplier;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class f implements IOSupplier, IOLongSupplier {
    public final /* synthetic */ int b;
    public final /* synthetic */ File c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ f(File file, int i) {
        this.b = i;
        this.c = file;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOSupplier
    public Object get() {
        switch (this.b) {
            case 0:
                return FileUtils.o(this.c);
            case 1:
            default:
                return FileUtils.d(this.c);
            case 2:
                return FileUtils.h(this.c);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOLongSupplier
    public long getAsLong() {
        switch (this.b) {
            case 1:
                return FileUtils.f(this.c);
            default:
                return FileUtils.i(this.c);
        }
    }
}
