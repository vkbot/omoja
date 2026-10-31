package org.apache.commons.p161io.input;

import java.io.IOException;
import java.io.Writer;
import org.apache.commons.p161io.function.IOConsumer;

/* JADX INFO: renamed from: org.apache.commons.io.input.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2877g implements IOConsumer {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f8049a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8050b;

    public /* synthetic */ C2877g(int i10, int i11) {
        this.f8049a = i11;
        this.f8050b = i10;
    }

    @Override // org.apache.commons.p161io.function.IOConsumer
    public final void accept(Object obj) throws IOException {
        switch (this.f8049a) {
            case 0:
                ((ObservableInputStream.Observer) obj).data(this.f8050b);
                break;
            default:
                ((Writer) obj).write(this.f8050b);
                break;
        }
    }
}
