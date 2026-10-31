package org.apache.commons.p161io.input;

import java.io.IOException;
import java.io.Writer;
import org.apache.commons.p161io.function.IOConsumer;
import org.apache.commons.p161io.output.ProxyOutputStream;
import org.apache.commons.p161io.output.ProxyWriter;
import org.apache.commons.p161io.output.UncheckedFilterOutputStream;

/* JADX INFO: renamed from: org.apache.commons.io.input.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2880j implements IOConsumer {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f8056a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f8057b;

    public /* synthetic */ C2880j(int i10, Object obj) {
        this.f8056a = i10;
        this.f8057b = obj;
    }

    @Override // org.apache.commons.p161io.function.IOConsumer
    public final void accept(Object obj) throws IOException {
        switch (this.f8056a) {
            case 0:
                ((ObservableInputStream.Observer) obj).error((IOException) this.f8057b);
                break;
            case 1:
                ((ProxyInputStream) this.f8057b).handleIOException((IOException) obj);
                break;
            case 2:
                XmlStreamReader.lambda$getXmlProlog$0((StringBuilder) this.f8057b, (String) obj);
                break;
            case 3:
                ((Writer) obj).write((String) this.f8057b);
                break;
            case 4:
                ((Writer) obj).append((CharSequence) this.f8057b);
                break;
            case 5:
                ((Writer) obj).write((char[]) this.f8057b);
                break;
            case 6:
                ((ProxyOutputStream) this.f8057b).handleIOException((IOException) obj);
                break;
            case 7:
                ((ProxyWriter) this.f8057b).handleIOException((IOException) obj);
                break;
            default:
                ((UncheckedFilterOutputStream) this.f8057b).lambda$write$2((byte[]) obj);
                break;
        }
    }
}
