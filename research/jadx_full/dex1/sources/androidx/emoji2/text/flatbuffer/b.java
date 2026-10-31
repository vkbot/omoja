package androidx.emoji2.text.flatbuffer;

import java.util.function.Supplier;
import org.apache.commons.io.input.ReadAheadInputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class b extends ThreadLocal {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f178a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Supplier f179b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(Supplier supplier, int i9) {
        this.f178a = i9;
        this.f179b = supplier;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.ThreadLocal
    public final Object initialValue() {
        switch (this.f178a) {
            case 0:
                ((a) this.f179b).getClass();
                return Utf8Old.a();
            default:
                ((a) this.f179b).getClass();
                return ReadAheadInputStream.y();
        }
    }
}
