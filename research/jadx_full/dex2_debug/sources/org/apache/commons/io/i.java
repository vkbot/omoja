package org.apache.commons.io;

import java.io.File;
import java.io.Serializable;
import org.apache.commons.io.function.IOSupplier;
import org.apache.commons.net.finger.FingerClient;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class i implements IOSupplier {
    public final /* synthetic */ int b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Serializable e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ i(Object obj, boolean z, Serializable serializable, int i) {
        this.b = i;
        this.d = obj;
        this.c = z;
        this.e = serializable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOSupplier
    public final Object get() {
        switch (this.b) {
            case 0:
                return FileUtils.a((File) this.d, this.c, (String[]) this.e);
            default:
                return FingerClient.a((FingerClient) this.d, this.c, (String) this.e);
        }
    }
}
