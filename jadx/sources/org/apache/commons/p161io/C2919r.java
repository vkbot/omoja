package org.apache.commons.p161io;

import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.net.URL;
import org.apache.commons.p161io.function.IOSupplier;
import org.apache.commons.p161io.function.IOTriFunction;

/* JADX INFO: renamed from: org.apache.commons.io.r */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2919r implements IOSupplier, IOTriFunction {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8110b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f8111c;

    public /* synthetic */ C2919r(int i10, Object obj) {
        this.f8110b = i10;
        this.f8111c = obj;
    }

    @Override // org.apache.commons.p161io.function.IOTriFunction
    public Object apply(Object obj, Object obj2, Object obj3) throws IOException {
        int i10;
        switch (this.f8110b) {
            case 1:
                i10 = ((InputStream) this.f8111c).read((byte[]) obj, ((Integer) obj2).intValue(), ((Integer) obj3).intValue());
                break;
            default:
                i10 = ((RandomAccessFile) this.f8111c).read((byte[]) obj, ((Integer) obj2).intValue(), ((Integer) obj3).intValue());
                break;
        }
        return Integer.valueOf(i10);
    }

    @Override // org.apache.commons.p161io.function.IOSupplier
    public Object get() {
        return ((URL) this.f8111c).openStream();
    }
}
