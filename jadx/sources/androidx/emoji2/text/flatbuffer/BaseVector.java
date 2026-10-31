package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class BaseVector {

    /* JADX INFO: renamed from: bb */
    protected ByteBuffer f423bb;
    private int element_size;
    private int length;
    private int vector;

    public int __element(int i10) {
        return (i10 * this.element_size) + this.vector;
    }

    public void __reset(int i10, int i11, ByteBuffer byteBuffer) {
        this.f423bb = byteBuffer;
        if (byteBuffer != null) {
            this.vector = i10;
            this.length = byteBuffer.getInt(i10 - 4);
            this.element_size = i11;
        } else {
            this.vector = 0;
            this.length = 0;
            this.element_size = 0;
        }
    }

    public int __vector() {
        return this.vector;
    }

    public int length() {
        return this.length;
    }

    public void reset() {
        __reset(0, 0, null);
    }
}
