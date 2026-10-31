package org.apache.commons.p161io;

import java.io.File;
import org.apache.commons.p161io.function.IOBooleanSupplier;

/* JADX INFO: renamed from: org.apache.commons.io.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2892m implements IOBooleanSupplier {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8084b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ File f8085c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ File f8086d;

    public /* synthetic */ C2892m(File file, File file2, int i10) {
        this.f8084b = i10;
        this.f8085c = file;
        this.f8086d = file2;
    }

    @Override // org.apache.commons.p161io.function.IOBooleanSupplier
    public final boolean getAsBoolean() {
        switch (this.f8084b) {
            case 0:
                return FileUtils.lambda$isFileNewer$2(this.f8085c, this.f8086d);
            default:
                return FileUtils.lambda$isFileOlder$5(this.f8085c, this.f8086d);
        }
    }
}
