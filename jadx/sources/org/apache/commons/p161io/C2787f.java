package org.apache.commons.p161io;

import java.io.File;
import org.apache.commons.p161io.function.IOLongSupplier;
import org.apache.commons.p161io.function.IOSupplier;

/* JADX INFO: renamed from: org.apache.commons.io.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2787f implements IOSupplier, IOLongSupplier {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f7947b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ File f7948c;

    public /* synthetic */ C2787f(File file, int i10) {
        this.f7947b = i10;
        this.f7948c = file;
    }

    @Override // org.apache.commons.p161io.function.IOSupplier
    public Object get() {
        switch (this.f7947b) {
            case 0:
                return FileUtils.lambda$readFileToString$14(this.f7948c);
            case 1:
            default:
                return FileUtils.lambda$sizeOfAsBigInteger$16(this.f7948c);
            case 2:
                return FileUtils.lambda$sizeOfDirectoryAsBigInteger$18(this.f7948c);
        }
    }

    @Override // org.apache.commons.p161io.function.IOLongSupplier
    public long getAsLong() {
        switch (this.f7947b) {
            case 1:
                return FileUtils.lambda$sizeOf$15(this.f7948c);
            default:
                return FileUtils.lambda$sizeOfDirectory$17(this.f7948c);
        }
    }
}
