package kotlin.streams.jdk8;

import java.util.function.Supplier;
import kotlin.sequences.Sequence;
import org.apache.commons.io.input.CharSequenceInputStream$Builder;
import org.apache.commons.io.input.ReaderInputStream$Builder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class a implements Supplier {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3240a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f3241b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(int i9, Object obj) {
        this.f3240a = i9;
        this.f3241b = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f3240a) {
            case 0:
                return StreamsKt.a((Sequence) this.f3241b);
            case 1:
                return CharSequenceInputStream$Builder.c((CharSequenceInputStream$Builder) this.f3241b);
            default:
                return ReaderInputStream$Builder.b((ReaderInputStream$Builder) this.f3241b);
        }
    }
}
