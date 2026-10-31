package org.apache.commons.p161io;

import java.io.File;
import java.time.Instant;
import org.apache.commons.p161io.function.IOBooleanSupplier;

/* JADX INFO: renamed from: org.apache.commons.io.q */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2918q implements IOBooleanSupplier {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8107b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ File f8108c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Instant f8109d;

    public /* synthetic */ C2918q(File file, Instant instant, int i10) {
        this.f8107b = i10;
        this.f8108c = file;
        this.f8109d = instant;
    }

    @Override // org.apache.commons.p161io.function.IOBooleanSupplier
    public final boolean getAsBoolean() {
        switch (this.f8107b) {
            case 0:
                return FileUtils.lambda$isFileOlder$6(this.f8108c, this.f8109d);
            default:
                return FileUtils.lambda$isFileNewer$3(this.f8108c, this.f8109d);
        }
    }
}
