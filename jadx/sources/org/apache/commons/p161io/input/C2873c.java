package org.apache.commons.p161io.input;

import java.io.IOException;
import java.util.function.Supplier;
import org.apache.commons.p161io.output.BrokenWriter;

/* JADX INFO: renamed from: org.apache.commons.io.input.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2873c implements Supplier {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f8043a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ IOException f8044b;

    public /* synthetic */ C2873c(IOException iOException, int i10) {
        this.f8043a = i10;
        this.f8044b = iOException;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f8043a) {
            case 0:
                return BrokenInputStream.lambda$new$1(this.f8044b);
            case 1:
                return BrokenReader.lambda$new$1(this.f8044b);
            default:
                return BrokenWriter.lambda$new$1(this.f8044b);
        }
    }
}
