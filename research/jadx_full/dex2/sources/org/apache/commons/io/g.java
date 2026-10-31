package org.apache.commons.io;

import java.io.File;
import org.apache.commons.io.filefilter.IOFileFilter;
import org.apache.commons.io.function.IOFunction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class g implements IOFunction {
    public final /* synthetic */ int b;
    public final /* synthetic */ IOFileFilter c;
    public final /* synthetic */ IOFileFilter d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ g(IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2, int i) {
        this.b = i;
        this.c = iOFileFilter;
        this.d = iOFileFilter2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOFunction
    public final Object apply(Object obj) {
        switch (this.b) {
            case 0:
                return FileUtils.s(this.c, this.d, (File) obj);
            default:
                return FileUtils.u(this.c, this.d, (File) obj);
        }
    }
}
