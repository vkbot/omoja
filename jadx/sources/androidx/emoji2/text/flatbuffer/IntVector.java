package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class IntVector extends BaseVector {
    public IntVector __assign(int i10, ByteBuffer byteBuffer) {
        __reset(i10, 4, byteBuffer);
        return this;
    }

    public int get(int i10) {
        return this.f423bb.getInt(__element(i10));
    }

    public long getAsUnsigned(int i10) {
        return ((long) get(i10)) & 4294967295L;
    }
}
