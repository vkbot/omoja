package k2;

import androidx.recyclerview.widget.ItemTouchHelper$Callback;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f3157f = new a(10485760, ItemTouchHelper$Callback.DEFAULT_DRAG_ANIMATION_DURATION, 10000, 604800000, 81920);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f3158a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f3159b;
    public final int c;
    public final long d;
    public final int e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(long j9, int i9, int i10, long j10, int i11) {
        this.f3158a = j9;
        this.f3159b = i9;
        this.c = i10;
        this.d = j10;
        this.e = i11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (this.f3158a == aVar.f3158a && this.f3159b == aVar.f3159b && this.c == aVar.c && this.d == aVar.d && this.e == aVar.e) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        long j9 = this.f3158a;
        int i9 = (((((((int) (j9 ^ (j9 >>> 32))) ^ 1000003) * 1000003) ^ this.f3159b) * 1000003) ^ this.c) * 1000003;
        long j10 = this.d;
        return ((i9 ^ ((int) ((j10 >>> 32) ^ j10))) * 1000003) ^ this.e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        StringBuilder sb = new StringBuilder("EventStoreConfig{maxStorageSizeInBytes=");
        sb.append(this.f3158a);
        sb.append(", loadBatchSize=");
        sb.append(this.f3159b);
        sb.append(", criticalSectionEnterTimeoutMs=");
        sb.append(this.c);
        sb.append(", eventCleanUpAge=");
        sb.append(this.d);
        sb.append(", maxBlobByteSizePerRow=");
        return ai.onnxruntime.a.o(sb, "}", this.e);
    }
}
