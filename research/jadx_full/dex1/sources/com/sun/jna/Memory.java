package com.sun.jna;

import ai.onnxruntime.a;
import com.sun.jna.internal.Cleaner;
import com.sun.jna.internal.Cleaner$Cleanable;
import j1.i;
import java.io.Closeable;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Memory extends Pointer implements Closeable {
    private static final Map<Long, Reference<Memory>> allocatedMemory = new ConcurrentHashMap();
    private static final WeakMemoryHolder buffers = new WeakMemoryHolder();
    private final Cleaner$Cleanable cleanable;
    protected long size;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Memory(long j9) {
        this.size = j9;
        if (j9 <= 0) {
            i.k("Allocation size must be greater than zero");
            throw null;
        }
        long jMalloc = malloc(j9);
        this.peer = jMalloc;
        if (jMalloc != 0) {
            allocatedMemory.put(Long.valueOf(jMalloc), new WeakReference(this));
            this.cleanable = Cleaner.getCleaner().register(this, new Memory$MemoryDisposer(this.peer));
        } else {
            throw new OutOfMemoryError("Cannot allocate " + j9 + " bytes");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Map access$000() {
        return allocatedMemory;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void disposeAll() {
        ArrayList arrayList = new ArrayList(allocatedMemory.values());
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList.get(i9);
            i9++;
            Memory memory = (Memory) ((Reference) obj).get();
            if (memory != null) {
                memory.close();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void free(long j9) {
        if (j9 != 0) {
            Native.free(j9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long malloc(long j9) {
        return Native.malloc(j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void purge() {
        buffers.clean();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Pointer shareReferenceIfInBounds(Pointer pointer) {
        if (pointer == null) {
            return null;
        }
        long j9 = pointer.peer - this.peer;
        return (j9 < 0 || j9 >= this.size) ? pointer : share(j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Memory align(int i9) {
        if (i9 <= 0) {
            i.k(a.e(i9, "Byte boundary must be positive: "));
            return null;
        }
        for (int i10 = 0; i10 < 32; i10++) {
            if (i9 == (1 << i10)) {
                long j9 = i9;
                long j10 = ~(j9 - 1);
                long j11 = this.peer;
                if ((j11 & j10) == j11) {
                    return this;
                }
                long j12 = ((j9 + j11) - 1) & j10;
                long j13 = (this.size + j11) - j12;
                if (j13 > 0) {
                    return (Memory) share(j12 - j11, j13);
                }
                i.k("Insufficient memory to align to the requested boundary");
                return null;
            }
        }
        i.k("Byte boundary must be a power of two");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void boundsCheck(long j9, long j10) {
        if (j9 < 0) {
            throw new IndexOutOfBoundsException(a.h(j9, "Invalid offset: "));
        }
        long j11 = j9 + j10;
        if (j11 <= this.size) {
            return;
        }
        throw new IndexOutOfBoundsException("Bounds exceeds available space : size=" + this.size + ", offset=" + j11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void clear() {
        clear(this.size);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.peer = 0L;
        Cleaner$Cleanable cleaner$Cleanable = this.cleanable;
        if (cleaner$Cleanable != null) {
            cleaner$Cleanable.clean();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void dispose() {
        close();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String dump() {
        return dump(0L, (int) size());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public byte getByte(long j9) {
        boundsCheck(j9, 1L);
        return super.getByte(j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public ByteBuffer getByteBuffer(long j9, long j10) {
        boundsCheck(j9, j10);
        ByteBuffer byteBuffer = super.getByteBuffer(j9, j10);
        buffers.put(byteBuffer, this);
        return byteBuffer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public char getChar(long j9) {
        boundsCheck(j9, Native.WCHAR_SIZE);
        return super.getChar(j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public double getDouble(long j9) {
        boundsCheck(j9, 8L);
        return super.getDouble(j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public float getFloat(long j9) {
        boundsCheck(j9, 4L);
        return super.getFloat(j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public int getInt(long j9) {
        boundsCheck(j9, 4L);
        return super.getInt(j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public long getLong(long j9) {
        boundsCheck(j9, 8L);
        return super.getLong(j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public Pointer getPointer(long j9) {
        boundsCheck(j9, Native.POINTER_SIZE);
        return shareReferenceIfInBounds(super.getPointer(j9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public short getShort(long j9) {
        boundsCheck(j9, 2L);
        return super.getShort(j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public String getString(long j9, String str) {
        boundsCheck(j9, 0L);
        return super.getString(j9, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public String getWideString(long j9) {
        boundsCheck(j9, 0L);
        return super.getWideString(j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public void read(long j9, short[] sArr, int i9, int i10) {
        boundsCheck(j9, ((long) i10) * 2);
        super.read(j9, sArr, i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public void setByte(long j9, byte b9) {
        boundsCheck(j9, 1L);
        super.setByte(j9, b9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public void setChar(long j9, char c) {
        boundsCheck(j9, Native.WCHAR_SIZE);
        super.setChar(j9, c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public void setDouble(long j9, double d) {
        boundsCheck(j9, 8L);
        super.setDouble(j9, d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public void setFloat(long j9, float f8) {
        boundsCheck(j9, 4L);
        super.setFloat(j9, f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public void setInt(long j9, int i9) {
        boundsCheck(j9, 4L);
        super.setInt(j9, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public void setLong(long j9, long j10) {
        boundsCheck(j9, 8L);
        super.setLong(j9, j10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public void setPointer(long j9, Pointer pointer) {
        boundsCheck(j9, Native.POINTER_SIZE);
        super.setPointer(j9, pointer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public void setShort(long j9, short s5) {
        boundsCheck(j9, 2L);
        super.setShort(j9, s5);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public void setString(long j9, String str, String str2) {
        boundsCheck(j9, ((long) Native.getBytes(str, str2).length) + 1);
        super.setString(j9, str, str2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public void setWideString(long j9, String str) {
        boundsCheck(j9, (((long) str.length()) + 1) * ((long) Native.WCHAR_SIZE));
        super.setWideString(j9, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public Pointer share(long j9, long j10) {
        boundsCheck(j9, j10);
        return new Memory$SharedMemory(this, j9, j10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long size() {
        return this.size;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public String toString() {
        StringBuilder sb = new StringBuilder("allocated@0x");
        sb.append(Long.toHexString(this.peer));
        sb.append(" (");
        return a.n(sb, this.size, " bytes)");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean valid() {
        return this.peer != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public void write(long j9, short[] sArr, int i9, int i10) {
        boundsCheck(j9, ((long) i10) * 2);
        super.write(j9, sArr, i9, i10);
    }

    @Override // com.sun.jna.Pointer
    public void read(long j9, byte[] bArr, int i9, int i10) {
        boundsCheck(j9, i10);
        super.read(j9, bArr, i9, i10);
    }

    @Override // com.sun.jna.Pointer
    public void write(long j9, byte[] bArr, int i9, int i10) {
        boundsCheck(j9, i10);
        super.write(j9, bArr, i9, i10);
    }

    @Override // com.sun.jna.Pointer
    public Pointer share(long j9) {
        return share(j9, size() - j9);
    }

    @Override // com.sun.jna.Pointer
    public void read(long j9, char[] cArr, int i9, int i10) {
        boundsCheck(j9, Native.WCHAR_SIZE * i10);
        super.read(j9, cArr, i9, i10);
    }

    @Override // com.sun.jna.Pointer
    public void write(long j9, char[] cArr, int i9, int i10) {
        boundsCheck(j9, Native.WCHAR_SIZE * i10);
        super.write(j9, cArr, i9, i10);
    }

    @Override // com.sun.jna.Pointer
    public void read(long j9, int[] iArr, int i9, int i10) {
        boundsCheck(j9, ((long) i10) * 4);
        super.read(j9, iArr, i9, i10);
    }

    @Override // com.sun.jna.Pointer
    public void write(long j9, int[] iArr, int i9, int i10) {
        boundsCheck(j9, ((long) i10) * 4);
        super.write(j9, iArr, i9, i10);
    }

    @Override // com.sun.jna.Pointer
    public void read(long j9, long[] jArr, int i9, int i10) {
        boundsCheck(j9, ((long) i10) * 8);
        super.read(j9, jArr, i9, i10);
    }

    @Override // com.sun.jna.Pointer
    public void write(long j9, long[] jArr, int i9, int i10) {
        boundsCheck(j9, ((long) i10) * 8);
        super.write(j9, jArr, i9, i10);
    }

    @Override // com.sun.jna.Pointer
    public void read(long j9, float[] fArr, int i9, int i10) {
        boundsCheck(j9, ((long) i10) * 4);
        super.read(j9, fArr, i9, i10);
    }

    @Override // com.sun.jna.Pointer
    public void write(long j9, float[] fArr, int i9, int i10) {
        boundsCheck(j9, ((long) i10) * 4);
        super.write(j9, fArr, i9, i10);
    }

    @Override // com.sun.jna.Pointer
    public void read(long j9, double[] dArr, int i9, int i10) {
        boundsCheck(j9, ((long) i10) * 8);
        super.read(j9, dArr, i9, i10);
    }

    @Override // com.sun.jna.Pointer
    public void write(long j9, double[] dArr, int i9, int i10) {
        boundsCheck(j9, ((long) i10) * 8);
        super.write(j9, dArr, i9, i10);
    }

    @Override // com.sun.jna.Pointer
    public void read(long j9, Pointer[] pointerArr, int i9, int i10) {
        boundsCheck(j9, Native.POINTER_SIZE * i10);
        super.read(j9, pointerArr, i9, i10);
    }

    @Override // com.sun.jna.Pointer
    public void write(long j9, Pointer[] pointerArr, int i9, int i10) {
        boundsCheck(j9, Native.POINTER_SIZE * i10);
        super.write(j9, pointerArr, i9, i10);
    }

    public Memory() {
        this.cleanable = null;
    }
}
