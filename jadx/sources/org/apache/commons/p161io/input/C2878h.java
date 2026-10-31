package org.apache.commons.p161io.input;

import java.io.IOException;
import java.io.Writer;
import org.apache.commons.p161io.function.IOConsumer;

/* JADX INFO: renamed from: org.apache.commons.io.input.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2878h implements IOConsumer {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f8051a;

    public /* synthetic */ C2878h(int i10) {
        this.f8051a = i10;
    }

    @Override // org.apache.commons.p161io.function.IOConsumer
    public final void accept(Object obj) throws IOException {
        switch (this.f8051a) {
            case 0:
                ((ObservableInputStream.Observer) obj).finished();
                break;
            case 1:
                ((ObservableInputStream.Observer) obj).closed();
                break;
            case 2:
                ((Writer) obj).close();
                break;
            default:
                ((Writer) obj).flush();
                break;
        }
    }
}
