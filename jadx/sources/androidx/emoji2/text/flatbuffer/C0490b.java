package androidx.emoji2.text.flatbuffer;

import java.util.function.Supplier;
import org.apache.commons.p161io.input.ReadAheadInputStream;

/* JADX INFO: renamed from: androidx.emoji2.text.flatbuffer.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0490b extends ThreadLocal {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f431a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Supplier f432b;

    public /* synthetic */ C0490b(Supplier supplier, int i10) {
        this.f431a = i10;
        this.f432b = supplier;
    }

    @Override // java.lang.ThreadLocal
    public final Object initialValue() {
        switch (this.f431a) {
            case 0:
                ((C0489a) this.f432b).getClass();
                return Utf8Old.lambda$static$0();
            default:
                ((C0489a) this.f432b).getClass();
                return ReadAheadInputStream.lambda$static$0();
        }
    }
}
