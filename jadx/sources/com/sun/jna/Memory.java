package com.sun.jna;

import ai.onnxruntime.AbstractC0074a;
import com.sun.jna.internal.Cleaner;
import java.io.Closeable;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class Memory extends Pointer implements Closeable {
    private static final Map<Long, Reference<Memory>> allocatedMemory = new ConcurrentHashMap();
    private static final WeakMemoryHolder buffers = new WeakMemoryHolder();
    private final Cleaner.Cleanable cleanable;
    protected long size;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static final class MemoryDisposer implements Runnable {
        private long peer;

        public MemoryDisposer(long j10) {
            this.peer = j10;
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            try {
                Memory.free(this.peer);
                Memory.allocatedMemory.remove(Long.valueOf(this.peer));
                this.peer = 0L;
            } catch (Throwable th) {
                Memory.allocatedMemory.remove(Long.valueOf(this.peer));
                this.peer = 0L;
                throw th;
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public class SharedMemory extends Memory {
        public SharedMemory(long j10, long j11) {
            this.size = j11;
            this.peer = Memory.this.peer + j10;
        }

        @Override // com.sun.jna.Memory
        public void boundsCheck(long j10, long j11) {
            Memory memory = Memory.this;
            memory.boundsCheck((this.peer - memory.peer) + j10, j11);
        }

        @Override // com.sun.jna.Memory
        public synchronized void dispose() {
            this.peer = 0L;
        }

        @Override // com.sun.jna.Memory, com.sun.jna.Pointer
        public String toString() {
            return super.toString() + " (shared from " + Memory.this.toString() + ")";
        }
    }

    public Memory(long j10) {
        this.size = j10;
        if (j10 <= 0) {
            C1929i.m3029k("Allocation size must be greater than zero");
            throw null;
        }
        long jMalloc = malloc(j10);
        this.peer = jMalloc;
        if (jMalloc != 0) {
            allocatedMemory.put(Long.valueOf(jMalloc), new WeakReference(this));
            this.cleanable = Cleaner.getCleaner().register(this, new MemoryDisposer(this.peer));
        } else {
            throw new OutOfMemoryError("Cannot allocate " + j10 + " bytes");
        }
    }

    public static void disposeAll() {
        ArrayList arrayList = new ArrayList(allocatedMemory.values());
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            Memory memory = (Memory) ((Reference) obj).get();
            if (memory != null) {
                memory.close();
            }
        }
    }

    public static void free(long j10) {
        if (j10 != 0) {
            Native.free(j10);
        }
    }

    public static long malloc(long j10) {
        return Native.malloc(j10);
    }

    public static void purge() {
        buffers.clean();
    }

    private Pointer shareReferenceIfInBounds(Pointer pointer) {
        if (pointer == null) {
            return null;
        }
        long j10 = pointer.peer - this.peer;
        return (j10 < 0 || j10 >= this.size) ? pointer : share(j10);
    }

    public Memory align(int i10) {
        if (i10 <= 0) {
            C1929i.m3029k(AbstractC0074a.m154e(i10, "Byte boundary must be positive: "));
            return null;
        }
        for (int i11 = 0; i11 < 32; i11++) {
            if (i10 == (1 << i11)) {
                long j10 = i10;
                long j11 = ~(j10 - 1);
                long j12 = this.peer;
                if ((j12 & j11) == j12) {
                    return this;
                }
                long j13 = ((j10 + j12) - 1) & j11;
                long j14 = (this.size + j12) - j13;
                if (j14 > 0) {
                    return (Memory) share(j13 - j12, j14);
                }
                C1929i.m3029k("Insufficient memory to align to the requested boundary");
                return null;
            }
        }
        C1929i.m3029k("Byte boundary must be a power of two");
        return null;
    }

    public void boundsCheck(long j10, long j11) {
        if (j10 < 0) {
            throw new IndexOutOfBoundsException(AbstractC0074a.m157h(j10, "Invalid offset: "));
        }
        long j12 = j10 + j11;
        if (j12 <= this.size) {
            return;
        }
        throw new IndexOutOfBoundsException("Bounds exceeds available space : size=" + this.size + ", offset=" + j12);
    }

    public void clear() {
        clear(this.size);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.peer = 0L;
        Cleaner.Cleanable cleanable = this.cleanable;
        if (cleanable != null) {
            cleanable.clean();
        }
    }

    @Deprecated
    public void dispose() {
        close();
    }

    public String dump() {
        return dump(0L, (int) size());
    }

    @Override // com.sun.jna.Pointer
    public byte getByte(long j10) {
        boundsCheck(j10, 1L);
        return super.getByte(j10);
    }

    @Override // com.sun.jna.Pointer
    public ByteBuffer getByteBuffer(long j10, long j11) {
        boundsCheck(j10, j11);
        ByteBuffer byteBuffer = super.getByteBuffer(j10, j11);
        buffers.put(byteBuffer, this);
        return byteBuffer;
    }

    @Override // com.sun.jna.Pointer
    public char getChar(long j10) {
        boundsCheck(j10, Native.WCHAR_SIZE);
        return super.getChar(j10);
    }

    @Override // com.sun.jna.Pointer
    public double getDouble(long j10) {
        boundsCheck(j10, 8L);
        return super.getDouble(j10);
    }

    @Override // com.sun.jna.Pointer
    public float getFloat(long j10) {
        boundsCheck(j10, 4L);
        return super.getFloat(j10);
    }

    @Override // com.sun.jna.Pointer
    public int getInt(long j10) {
        boundsCheck(j10, 4L);
        return super.getInt(j10);
    }

    @Override // com.sun.jna.Pointer
    public long getLong(long j10) {
        boundsCheck(j10, 8L);
        return super.getLong(j10);
    }

    @Override // com.sun.jna.Pointer
    public Pointer getPointer(long j10) {
        boundsCheck(j10, Native.POINTER_SIZE);
        return shareReferenceIfInBounds(super.getPointer(j10));
    }

    @Override // com.sun.jna.Pointer
    public short getShort(long j10) {
        boundsCheck(j10, 2L);
        return super.getShort(j10);
    }

    @Override // com.sun.jna.Pointer
    public String getString(long j10, String str) {
        boundsCheck(j10, 0L);
        return super.getString(j10, str);
    }

    @Override // com.sun.jna.Pointer
    public String getWideString(long j10) {
        boundsCheck(j10, 0L);
        return super.getWideString(j10);
    }

    @Override // com.sun.jna.Pointer
    public void read(long j10, short[] sArr, int i10, int i11) {
        boundsCheck(j10, ((long) i11) * 2);
        super.read(j10, sArr, i10, i11);
    }

    @Override // com.sun.jna.Pointer
    public void setByte(long j10, byte b10) {
        boundsCheck(j10, 1L);
        super.setByte(j10, b10);
    }

    @Override // com.sun.jna.Pointer
    public void setChar(long j10, char c) {
        boundsCheck(j10, Native.WCHAR_SIZE);
        super.setChar(j10, c);
    }

    @Override // com.sun.jna.Pointer
    public void setDouble(long j10, double d) {
        boundsCheck(j10, 8L);
        super.setDouble(j10, d);
    }

    @Override // com.sun.jna.Pointer
    public void setFloat(long j10, float f8) {
        boundsCheck(j10, 4L);
        super.setFloat(j10, f8);
    }

    @Override // com.sun.jna.Pointer
    public void setInt(long j10, int i10) {
        boundsCheck(j10, 4L);
        super.setInt(j10, i10);
    }

    @Override // com.sun.jna.Pointer
    public void setLong(long j10, long j11) {
        boundsCheck(j10, 8L);
        super.setLong(j10, j11);
    }

    @Override // com.sun.jna.Pointer
    public void setPointer(long j10, Pointer pointer) {
        boundsCheck(j10, Native.POINTER_SIZE);
        super.setPointer(j10, pointer);
    }

    @Override // com.sun.jna.Pointer
    public void setShort(long j10, short s5) {
        boundsCheck(j10, 2L);
        super.setShort(j10, s5);
    }

    @Override // com.sun.jna.Pointer
    public void setString(long j10, String str, String str2) {
        boundsCheck(j10, ((long) Native.getBytes(str, str2).length) + 1);
        super.setString(j10, str, str2);
    }

    @Override // com.sun.jna.Pointer
    public void setWideString(long j10, String str) {
        boundsCheck(j10, (((long) str.length()) + 1) * ((long) Native.WCHAR_SIZE));
        super.setWideString(j10, str);
    }

    @Override // com.sun.jna.Pointer
    public Pointer share(long j10, long j11) {
        boundsCheck(j10, j11);
        return new SharedMemory(j10, j11);
    }

    public long size() {
        return this.size;
    }

    @Override // com.sun.jna.Pointer
    public String toString() {
        StringBuilder sb = new StringBuilder("allocated@0x");
        sb.append(Long.toHexString(this.peer));
        sb.append(" (");
        return AbstractC0074a.m163n(sb, this.size, " bytes)");
    }

    public boolean valid() {
        return this.peer != 0;
    }

    @Override // com.sun.jna.Pointer
    public void write(long j10, short[] sArr, int i10, int i11) {
        boundsCheck(j10, ((long) i11) * 2);
        super.write(j10, sArr, i10, i11);
    }

    @Override // com.sun.jna.Pointer
    public void read(long j10, byte[] bArr, int i10, int i11) {
        boundsCheck(j10, i11);
        super.read(j10, bArr, i10, i11);
    }

    @Override // com.sun.jna.Pointer
    public void write(long j10, byte[] bArr, int i10, int i11) {
        boundsCheck(j10, i11);
        super.write(j10, bArr, i10, i11);
    }

    @Override // com.sun.jna.Pointer
    public Pointer share(long j10) {
        return share(j10, size() - j10);
    }

    @Override // com.sun.jna.Pointer
    public void read(long j10, char[] cArr, int i10, int i11) {
        boundsCheck(j10, Native.WCHAR_SIZE * i11);
        super.read(j10, cArr, i10, i11);
    }

    @Override // com.sun.jna.Pointer
    public void write(long j10, char[] cArr, int i10, int i11) {
        boundsCheck(j10, Native.WCHAR_SIZE * i11);
        super.write(j10, cArr, i10, i11);
    }

    @Override // com.sun.jna.Pointer
    public void read(long j10, int[] iArr, int i10, int i11) {
        boundsCheck(j10, ((long) i11) * 4);
        super.read(j10, iArr, i10, i11);
    }

    @Override // com.sun.jna.Pointer
    public void write(long j10, int[] iArr, int i10, int i11) {
        boundsCheck(j10, ((long) i11) * 4);
        super.write(j10, iArr, i10, i11);
    }

    @Override // com.sun.jna.Pointer
    public void read(long j10, long[] jArr, int i10, int i11) {
        boundsCheck(j10, ((long) i11) * 8);
        super.read(j10, jArr, i10, i11);
    }

    @Override // com.sun.jna.Pointer
    public void write(long j10, long[] jArr, int i10, int i11) {
        boundsCheck(j10, ((long) i11) * 8);
        super.write(j10, jArr, i10, i11);
    }

    @Override // com.sun.jna.Pointer
    public void read(long j10, float[] fArr, int i10, int i11) {
        boundsCheck(j10, ((long) i11) * 4);
        super.read(j10, fArr, i10, i11);
    }

    @Override // com.sun.jna.Pointer
    public void write(long j10, float[] fArr, int i10, int i11) {
        boundsCheck(j10, ((long) i11) * 4);
        super.write(j10, fArr, i10, i11);
    }

    @Override // com.sun.jna.Pointer
    public void read(long j10, double[] dArr, int i10, int i11) {
        boundsCheck(j10, ((long) i11) * 8);
        super.read(j10, dArr, i10, i11);
    }

    @Override // com.sun.jna.Pointer
    public void write(long j10, double[] dArr, int i10, int i11) {
        boundsCheck(j10, ((long) i11) * 8);
        super.write(j10, dArr, i10, i11);
    }

    @Override // com.sun.jna.Pointer
    public void read(long j10, Pointer[] pointerArr, int i10, int i11) {
        boundsCheck(j10, Native.POINTER_SIZE * i11);
        super.read(j10, pointerArr, i10, i11);
    }

    @Override // com.sun.jna.Pointer
    public void write(long j10, Pointer[] pointerArr, int i10, int i11) {
        boundsCheck(j10, Native.POINTER_SIZE * i11);
        super.write(j10, pointerArr, i10, i11);
    }

    public Memory() {
        this.cleanable = null;
    }
}
