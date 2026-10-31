package org.apache.commons.io.input;

import java.io.IOException;
import java.io.Writer;
import org.apache.commons.io.function.IOConsumer;
import org.apache.commons.io.output.FilterCollectionWriter;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class g implements IOConsumer {
    public final /* synthetic */ int a;
    public final /* synthetic */ int b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ g(int i, int i2) {
        this.a = i2;
        this.b = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOConsumer
    public final void accept(Object obj) throws IOException {
        switch (this.a) {
            case 0:
                ObservableInputStream.b(this.b, (ObservableInputStream$Observer) obj);
                break;
            default:
                FilterCollectionWriter.S(this.b, (Writer) obj);
                break;
        }
    }
}
