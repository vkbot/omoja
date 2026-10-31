package org.apache.commons.io;

import java.io.File;
import java.time.Instant;
import org.apache.commons.io.function.IOBooleanSupplier;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class q implements IOBooleanSupplier {
    public final /* synthetic */ int b;
    public final /* synthetic */ File c;
    public final /* synthetic */ Instant d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ q(File file, Instant instant, int i) {
        this.b = i;
        this.c = file;
        this.d = instant;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOBooleanSupplier
    public final boolean getAsBoolean() {
        switch (this.b) {
            case 0:
                return FileUtils.j(this.c, this.d);
            default:
                return FileUtils.k(this.c, this.d);
        }
    }
}
