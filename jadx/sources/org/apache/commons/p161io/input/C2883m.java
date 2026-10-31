package org.apache.commons.p161io.input;

import java.io.Closeable;
import java.io.IOException;
import org.apache.commons.p161io.function.IOIntConsumer;
import org.apache.commons.p161io.output.UncheckedFilterOutputStream;
import org.apache.commons.p161io.output.UncheckedFilterWriter;

/* JADX INFO: renamed from: org.apache.commons.io.input.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2883m implements IOIntConsumer {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f8061a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Closeable f8062b;

    public /* synthetic */ C2883m(Closeable closeable, int i10) {
        this.f8061a = i10;
        this.f8062b = closeable;
    }

    @Override // org.apache.commons.p161io.function.IOIntConsumer
    public final void accept(int i10) throws IOException {
        switch (this.f8061a) {
            case 0:
                ((UncheckedBufferedReader) this.f8062b).lambda$mark$1(i10);
                break;
            case 1:
                ((UncheckedFilterReader) this.f8062b).lambda$mark$1(i10);
                break;
            case 2:
                ((UncheckedFilterOutputStream) this.f8062b).lambda$write$4(i10);
                break;
            default:
                ((UncheckedFilterWriter) this.f8062b).lambda$write$7(i10);
                break;
        }
    }
}
