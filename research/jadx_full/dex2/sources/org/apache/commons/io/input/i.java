package org.apache.commons.io.input;

import java.io.IOException;
import java.io.Writer;
import org.apache.commons.io.function.IOConsumer;
import org.apache.commons.io.output.FilterCollectionWriter;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class i implements IOConsumer {
    public final /* synthetic */ int a;
    public final /* synthetic */ int b;
    public final /* synthetic */ int c;
    public final /* synthetic */ Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ i(Object obj, int i, int i2, int i3) {
        this.a = i3;
        this.d = obj;
        this.b = i;
        this.c = i2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOConsumer
    public final void accept(Object obj) throws IOException {
        switch (this.a) {
            case 0:
                ObservableInputStream.y((byte[]) this.d, this.b, this.c, (ObservableInputStream$Observer) obj);
                break;
            case 1:
                FilterCollectionWriter.y((CharSequence) this.d, this.b, this.c, (Writer) obj);
                break;
            case 2:
                FilterCollectionWriter.d0((char[]) this.d, this.b, this.c, (Writer) obj);
                break;
            default:
                FilterCollectionWriter.V((String) this.d, this.b, this.c, (Writer) obj);
                break;
        }
    }
}
