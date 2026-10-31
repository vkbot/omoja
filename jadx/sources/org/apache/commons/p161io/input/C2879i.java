package org.apache.commons.p161io.input;

import java.io.IOException;
import java.io.Writer;
import org.apache.commons.p161io.function.IOConsumer;

/* JADX INFO: renamed from: org.apache.commons.io.input.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2879i implements IOConsumer {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f8052a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8053b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ int f8054c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f8055d;

    public /* synthetic */ C2879i(Object obj, int i10, int i11, int i12) {
        this.f8052a = i12;
        this.f8055d = obj;
        this.f8053b = i10;
        this.f8054c = i11;
    }

    @Override // org.apache.commons.p161io.function.IOConsumer
    public final void accept(Object obj) throws IOException {
        switch (this.f8052a) {
            case 0:
                ((ObservableInputStream.Observer) obj).data((byte[]) this.f8055d, this.f8053b, this.f8054c);
                break;
            case 1:
                ((Writer) obj).append((CharSequence) this.f8055d, this.f8053b, this.f8054c);
                break;
            case 2:
                ((Writer) obj).write((char[]) this.f8055d, this.f8053b, this.f8054c);
                break;
            default:
                ((Writer) obj).write((String) this.f8055d, this.f8053b, this.f8054c);
                break;
        }
    }
}
