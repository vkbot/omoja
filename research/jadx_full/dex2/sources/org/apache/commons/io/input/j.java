package org.apache.commons.io.input;

import java.io.IOException;
import java.io.Writer;
import org.apache.commons.io.function.IOConsumer;
import org.apache.commons.io.output.FilterCollectionWriter;
import org.apache.commons.io.output.ProxyOutputStream;
import org.apache.commons.io.output.ProxyWriter;
import org.apache.commons.io.output.UncheckedFilterOutputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class j implements IOConsumer {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ j(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOConsumer
    public final void accept(Object obj) throws IOException {
        switch (this.a) {
            case 0:
                ObservableInputStream.c((IOException) this.b, (ObservableInputStream$Observer) obj);
                break;
            case 1:
                ((ProxyInputStream) this.b).handleIOException((IOException) obj);
                break;
            case 2:
                XmlStreamReader.b((StringBuilder) this.b, (String) obj);
                break;
            case 3:
                FilterCollectionWriter.b((String) this.b, (Writer) obj);
                break;
            case 4:
                FilterCollectionWriter.c0((CharSequence) this.b, (Writer) obj);
                break;
            case 5:
                FilterCollectionWriter.c((char[]) this.b, (Writer) obj);
                break;
            case 6:
                ((ProxyOutputStream) this.b).handleIOException((IOException) obj);
                break;
            case 7:
                ((ProxyWriter) this.b).handleIOException((IOException) obj);
                break;
            default:
                UncheckedFilterOutputStream.c((UncheckedFilterOutputStream) this.b, (byte[]) obj);
                break;
        }
    }
}
