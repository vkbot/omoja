package org.apache.commons.io.input;

import org.apache.commons.io.function.IOSupplier;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class d implements IOSupplier {
    public final /* synthetic */ int b;
    public final /* synthetic */ CharSequenceInputStream$Builder c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d(CharSequenceInputStream$Builder charSequenceInputStream$Builder, int i) {
        this.b = i;
        this.c = charSequenceInputStream$Builder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOSupplier
    public final Object get() {
        switch (this.b) {
            case 0:
                return CharSequenceInputStream.b(this.c);
            default:
                return CharSequenceInputStream$Builder.b(this.c);
        }
    }
}
