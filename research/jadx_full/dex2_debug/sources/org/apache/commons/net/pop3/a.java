package org.apache.commons.net.pop3;

import java.util.ListIterator;
import java.util.function.IntFunction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class a implements IntFunction {
    public final /* synthetic */ int a;
    public final /* synthetic */ ListIterator b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(ListIterator listIterator, int i) {
        this.a = i;
        this.b = listIterator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.IntFunction
    public final Object apply(int i) {
        switch (this.a) {
            case 0:
                return POP3Client.a(this.b, i);
            default:
                return POP3Client.b(this.b, i);
        }
    }
}
