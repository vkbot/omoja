package org.apache.commons.io.build;

import java.io.RandomAccessFile;
import org.apache.commons.io.function.IOFunction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class a implements IOFunction {
    public final /* synthetic */ long b;
    public final /* synthetic */ int c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(long j, int i) {
        this.b = j;
        this.c = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOFunction
    public final Object apply(Object obj) {
        return AbstractOrigin$PathOrigin.a(this.b, this.c, (RandomAccessFile) obj);
    }
}
