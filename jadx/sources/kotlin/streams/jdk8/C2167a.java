package kotlin.streams.jdk8;

import java.util.function.Supplier;
import kotlin.sequences.Sequence;
import org.apache.commons.p161io.input.CharSequenceInputStream;
import org.apache.commons.p161io.input.ReaderInputStream;

/* JADX INFO: renamed from: kotlin.streams.jdk8.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C2167a implements Supplier {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f5681a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f5682b;

    public /* synthetic */ C2167a(int i10, Object obj) {
        this.f5681a = i10;
        this.f5682b = obj;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f5681a) {
            case 0:
                return StreamsKt.asStream$lambda$4((Sequence) this.f5682b);
            case 1:
                return ((CharSequenceInputStream.Builder) this.f5682b).lambda$setCharsetEncoder$1();
            default:
                return ((ReaderInputStream.Builder) this.f5682b).lambda$setCharsetEncoder$0();
        }
    }
}
