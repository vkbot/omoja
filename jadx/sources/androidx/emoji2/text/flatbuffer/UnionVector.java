package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class UnionVector extends BaseVector {
    public UnionVector __assign(int i10, int i11, ByteBuffer byteBuffer) {
        __reset(i10, i11, byteBuffer);
        return this;
    }

    public Table get(Table table, int i10) {
        return Table.__union(table, __element(i10), this.f423bb);
    }
}
