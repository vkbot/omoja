package org.apache.commons.p161io.output;

import java.io.IOException;
import java.util.function.Function;
import java.util.function.Supplier;
import org.apache.commons.net.ftp.FTPListParseEngine;

/* JADX INFO: renamed from: org.apache.commons.io.output.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2909a implements Function {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8091b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f8092c;

    public /* synthetic */ C2909a(int i10, Object obj) {
        this.f8091b = i10;
        this.f8092c = obj;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f8091b) {
            case 0:
                return BrokenOutputStream.lambda$new$2((Supplier) this.f8092c, (String) obj);
            case 1:
                return BrokenOutputStream.lambda$new$1((IOException) this.f8092c, (String) obj);
            case 2:
                return BrokenOutputStream.lambda$new$3((Throwable) this.f8092c, (String) obj);
            default:
                return ((FTPListParseEngine) this.f8092c).lambda$getFileList$0((String) obj);
        }
    }
}
