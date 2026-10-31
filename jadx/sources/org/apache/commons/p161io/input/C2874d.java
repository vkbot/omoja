package org.apache.commons.p161io.input;

import org.apache.commons.p161io.function.IOSupplier;

/* JADX INFO: renamed from: org.apache.commons.io.input.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2874d implements IOSupplier {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8045b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ CharSequenceInputStream.Builder f8046c;

    public /* synthetic */ C2874d(CharSequenceInputStream.Builder builder, int i10) {
        this.f8045b = i10;
        this.f8046c = builder;
    }

    @Override // org.apache.commons.p161io.function.IOSupplier
    public final Object get() {
        switch (this.f8045b) {
            case 0:
                return this.f8046c.getCharSequence();
            default:
                return this.f8046c.lambda$get$0();
        }
    }
}
