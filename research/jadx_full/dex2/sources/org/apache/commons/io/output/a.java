package org.apache.commons.io.output;

import java.io.IOException;
import java.util.function.Function;
import java.util.function.Supplier;
import org.apache.commons.net.ftp.FTPListParseEngine;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class a implements Function {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(int i, Object obj) {
        this.b = i;
        this.c = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.b) {
            case 0:
                return BrokenOutputStream.S((Supplier) this.c, (String) obj);
            case 1:
                return BrokenOutputStream.b((IOException) this.c, (String) obj);
            case 2:
                return BrokenOutputStream.y((String) obj, (Throwable) this.c);
            default:
                return FTPListParseEngine.a((FTPListParseEngine) this.c, (String) obj);
        }
    }
}
