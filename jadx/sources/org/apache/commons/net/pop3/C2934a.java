package org.apache.commons.net.pop3;

import java.util.ListIterator;
import java.util.function.IntFunction;

/* JADX INFO: renamed from: org.apache.commons.net.pop3.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2934a implements IntFunction {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f8143a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ ListIterator f8144b;

    public /* synthetic */ C2934a(ListIterator listIterator, int i10) {
        this.f8143a = i10;
        this.f8144b = listIterator;
    }

    @Override // java.util.function.IntFunction
    public final Object apply(int i10) {
        switch (this.f8143a) {
            case 0:
                return POP3Client.lambda$listUniqueIdentifiers$1(this.f8144b, i10);
            default:
                return POP3Client.lambda$listMessages$0(this.f8144b, i10);
        }
    }
}
