package org.apache.commons.p161io.output;

import java.io.IOException;
import org.apache.commons.p161io.function.IOConsumer;

/* JADX INFO: renamed from: org.apache.commons.io.output.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2915g implements IOConsumer {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f8102a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ UncheckedFilterWriter f8103b;

    public /* synthetic */ C2915g(UncheckedFilterWriter uncheckedFilterWriter, int i10) {
        this.f8102a = i10;
        this.f8103b = uncheckedFilterWriter;
    }

    @Override // org.apache.commons.p161io.function.IOConsumer
    public final void accept(Object obj) throws IOException {
        switch (this.f8102a) {
            case 0:
                this.f8103b.lambda$write$5((char[]) obj);
                break;
            default:
                this.f8103b.lambda$write$8((String) obj);
                break;
        }
    }
}
