package com.sun.jna;

import androidx.navigation.C0674b;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.Array;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import kotlin.UByte;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class Pointer {
    public static final Pointer NULL = null;
    protected long peer;

    public Pointer(long j10) {
        this.peer = j10;
    }

    public static final Pointer createConstant(int i10) {
        return new Opaque(((long) i10) & 4294967295L);
    }

    public static long nativeValue(Pointer pointer) {
        if (pointer == null) {
            return 0L;
        }
        return pointer.peer;
    }

    private void readArray(long j10, Object obj, Class<?> cls) {
        int length = Array.getLength(obj);
        if (cls == Byte.TYPE) {
            read(j10, (byte[]) obj, 0, length);
            return;
        }
        if (cls == Short.TYPE) {
            read(j10, (short[]) obj, 0, length);
            return;
        }
        if (cls == Character.TYPE) {
            read(j10, (char[]) obj, 0, length);
            return;
        }
        if (cls == Integer.TYPE) {
            read(j10, (int[]) obj, 0, length);
            return;
        }
        if (cls == Long.TYPE) {
            read(j10, (long[]) obj, 0, length);
            return;
        }
        if (cls == Float.TYPE) {
            read(j10, (float[]) obj, 0, length);
            return;
        }
        if (cls == Double.TYPE) {
            read(j10, (double[]) obj, 0, length);
            return;
        }
        if (Pointer.class.isAssignableFrom(cls)) {
            read(j10, (Pointer[]) obj, 0, length);
            return;
        }
        int i10 = 0;
        if (!Structure.class.isAssignableFrom(cls)) {
            if (!NativeMapped.class.isAssignableFrom(cls)) {
                C0674b.m849p(cls, "Reading array of ", " from memory not supported");
                return;
            }
            NativeMapped[] nativeMappedArr = (NativeMapped[]) obj;
            NativeMappedConverter nativeMappedConverter = NativeMappedConverter.getInstance(cls);
            int nativeSize = Native.getNativeSize(obj.getClass(), obj) / nativeMappedArr.length;
            while (i10 < nativeMappedArr.length) {
                nativeMappedArr[i10] = (NativeMapped) nativeMappedConverter.fromNative(getValue(((long) (nativeSize * i10)) + j10, nativeMappedConverter.nativeType(), nativeMappedArr[i10]), new FromNativeContext(cls));
                i10++;
            }
            return;
        }
        Structure[] structureArr = (Structure[]) obj;
        if (Structure.ByReference.class.isAssignableFrom(cls)) {
            Pointer[] pointerArray = getPointerArray(j10, structureArr.length);
            while (i10 < structureArr.length) {
                structureArr[i10] = Structure.updateStructureByReference(cls, structureArr[i10], pointerArray[i10]);
                i10++;
            }
            return;
        }
        Structure structureNewInstance = structureArr[0];
        if (structureNewInstance == null) {
            structureNewInstance = Structure.newInstance((Class<Structure>) cls, share(j10));
            structureNewInstance.conditionalAutoRead();
            structureArr[0] = structureNewInstance;
        } else {
            structureNewInstance.useMemory(this, (int) j10, true);
            structureNewInstance.read();
        }
        Structure[] array = structureNewInstance.toArray(structureArr.length);
        for (int i11 = 1; i11 < structureArr.length; i11++) {
            Structure structure = structureArr[i11];
            if (structure == null) {
                structureArr[i11] = array[i11];
            } else {
                structure.useMemory(this, (int) (((long) (structure.size() * i11)) + j10), true);
                structureArr[i11].read();
            }
        }
    }

    private void writeArray(long j10, Object obj, Class<?> cls) {
        if (cls == Byte.TYPE) {
            byte[] bArr = (byte[]) obj;
            write(j10, bArr, 0, bArr.length);
            return;
        }
        if (cls == Short.TYPE) {
            short[] sArr = (short[]) obj;
            write(j10, sArr, 0, sArr.length);
            return;
        }
        if (cls == Character.TYPE) {
            char[] cArr = (char[]) obj;
            write(j10, cArr, 0, cArr.length);
            return;
        }
        if (cls == Integer.TYPE) {
            int[] iArr = (int[]) obj;
            write(j10, iArr, 0, iArr.length);
            return;
        }
        if (cls == Long.TYPE) {
            long[] jArr = (long[]) obj;
            write(j10, jArr, 0, jArr.length);
            return;
        }
        if (cls == Float.TYPE) {
            float[] fArr = (float[]) obj;
            write(j10, fArr, 0, fArr.length);
            return;
        }
        if (cls == Double.TYPE) {
            double[] dArr = (double[]) obj;
            write(j10, dArr, 0, dArr.length);
            return;
        }
        if (Pointer.class.isAssignableFrom(cls)) {
            Pointer[] pointerArr = (Pointer[]) obj;
            write(j10, pointerArr, 0, pointerArr.length);
            return;
        }
        if (!Structure.class.isAssignableFrom(cls)) {
            if (!NativeMapped.class.isAssignableFrom(cls)) {
                C0674b.m849p(cls, "Writing array of ", " to memory not supported");
                return;
            }
            NativeMapped[] nativeMappedArr = (NativeMapped[]) obj;
            NativeMappedConverter nativeMappedConverter = NativeMappedConverter.getInstance(cls);
            Class<?> clsNativeType = nativeMappedConverter.nativeType();
            int nativeSize = Native.getNativeSize(obj.getClass(), obj) / nativeMappedArr.length;
            for (int i10 = 0; i10 < nativeMappedArr.length; i10++) {
                setValue(((long) (i10 * nativeSize)) + j10, nativeMappedConverter.toNative(nativeMappedArr[i10], new ToNativeContext()), clsNativeType);
            }
            return;
        }
        Structure[] structureArr = (Structure[]) obj;
        if (Structure.ByReference.class.isAssignableFrom(cls)) {
            int length = structureArr.length;
            Pointer[] pointerArr2 = new Pointer[length];
            for (int i11 = 0; i11 < structureArr.length; i11++) {
                Structure structure = structureArr[i11];
                if (structure == null) {
                    pointerArr2[i11] = null;
                } else {
                    pointerArr2[i11] = structure.getPointer();
                    structureArr[i11].write();
                }
            }
            write(j10, pointerArr2, 0, length);
            return;
        }
        Structure structureNewInstance = structureArr[0];
        if (structureNewInstance == null) {
            structureNewInstance = Structure.newInstance((Class<Structure>) cls, share(j10));
            structureArr[0] = structureNewInstance;
        } else {
            structureNewInstance.useMemory(this, (int) j10, true);
        }
        structureNewInstance.write();
        Structure[] array = structureNewInstance.toArray(structureArr.length);
        for (int i12 = 1; i12 < structureArr.length; i12++) {
            Structure structure2 = structureArr[i12];
            if (structure2 == null) {
                structureArr[i12] = array[i12];
            } else {
                structure2.useMemory(this, (int) (((long) (structure2.size() * i12)) + j10), true);
            }
            structureArr[i12].write();
        }
    }

    public void clear(long j10) {
        setMemory(0L, j10, (byte) 0);
    }

    public String dump(long j10, int i10) {
        StringWriter stringWriter = new StringWriter(((i10 / 4) * 4) + (i10 * 2) + 13);
        PrintWriter printWriter = new PrintWriter(stringWriter);
        printWriter.println("memory dump");
        for (int i11 = 0; i11 < i10; i11++) {
            byte b10 = getByte(((long) i11) + j10);
            int i12 = i11 % 4;
            if (i12 == 0) {
                printWriter.print("[");
            }
            if (b10 >= 0 && b10 < 16) {
                printWriter.print("0");
            }
            printWriter.print(Integer.toHexString(b10 & UByte.MAX_VALUE));
            if (i12 == 3 && i11 < i10 - 1) {
                printWriter.println("]");
            }
        }
        if (stringWriter.getBuffer().charAt(stringWriter.getBuffer().length() - 2) != ']') {
            printWriter.println("]");
        }
        return stringWriter.toString();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && (obj instanceof Pointer) && ((Pointer) obj).peer == this.peer;
    }

    public byte getByte(long j10) {
        return Native.getByte(this, this.peer, j10);
    }

    public byte[] getByteArray(long j10, int i10) {
        byte[] bArr = new byte[i10];
        read(j10, bArr, 0, i10);
        return bArr;
    }

    public ByteBuffer getByteBuffer(long j10, long j11) {
        return Native.getDirectByteBuffer(this, this.peer, j10, j11).order(ByteOrder.nativeOrder());
    }

    public char getChar(long j10) {
        return Native.getChar(this, this.peer, j10);
    }

    public char[] getCharArray(long j10, int i10) {
        char[] cArr = new char[i10];
        read(j10, cArr, 0, i10);
        return cArr;
    }

    public double getDouble(long j10) {
        return Native.getDouble(this, this.peer, j10);
    }

    public double[] getDoubleArray(long j10, int i10) {
        double[] dArr = new double[i10];
        read(j10, dArr, 0, i10);
        return dArr;
    }

    public float getFloat(long j10) {
        return Native.getFloat(this, this.peer, j10);
    }

    public float[] getFloatArray(long j10, int i10) {
        float[] fArr = new float[i10];
        read(j10, fArr, 0, i10);
        return fArr;
    }

    public int getInt(long j10) {
        return Native.getInt(this, this.peer, j10);
    }

    public int[] getIntArray(long j10, int i10) {
        int[] iArr = new int[i10];
        read(j10, iArr, 0, i10);
        return iArr;
    }

    public long getLong(long j10) {
        return Native.getLong(this, this.peer, j10);
    }

    public long[] getLongArray(long j10, int i10) {
        long[] jArr = new long[i10];
        read(j10, jArr, 0, i10);
        return jArr;
    }

    public NativeLong getNativeLong(long j10) {
        return new NativeLong(NativeLong.SIZE == 8 ? getLong(j10) : getInt(j10));
    }

    public Pointer getPointer(long j10) {
        return Native.getPointer(this.peer + j10);
    }

    public Pointer[] getPointerArray(long j10) {
        ArrayList arrayList = new ArrayList();
        Pointer pointer = getPointer(j10);
        int i10 = 0;
        while (pointer != null) {
            arrayList.add(pointer);
            i10 += Native.POINTER_SIZE;
            pointer = getPointer(((long) i10) + j10);
        }
        return (Pointer[]) arrayList.toArray(new Pointer[0]);
    }

    public short getShort(long j10) {
        return Native.getShort(this, this.peer, j10);
    }

    public short[] getShortArray(long j10, int i10) {
        short[] sArr = new short[i10];
        read(j10, sArr, 0, i10);
        return sArr;
    }

    public String getString(long j10) {
        return getString(j10, Native.getDefaultStringEncoding());
    }

    public String[] getStringArray(long j10, int i10, String str) {
        String wideString;
        ArrayList arrayList = new ArrayList();
        if (i10 == -1) {
            int i11 = 0;
            while (true) {
                Pointer pointer = getPointer(((long) i11) + j10);
                if (pointer == null) {
                    break;
                }
                arrayList.add("--WIDE-STRING--".equals(str) ? pointer.getWideString(0L) : pointer.getString(0L, str));
                i11 += Native.POINTER_SIZE;
            }
        } else {
            Pointer pointer2 = getPointer(((long) 0) + j10);
            int i12 = 0;
            int i13 = 0;
            while (true) {
                int i14 = i12 + 1;
                if (i12 >= i10) {
                    break;
                }
                if (pointer2 == null) {
                    wideString = null;
                } else {
                    wideString = "--WIDE-STRING--".equals(str) ? pointer2.getWideString(0L) : pointer2.getString(0L, str);
                }
                arrayList.add(wideString);
                if (i14 < i10) {
                    i13 += Native.POINTER_SIZE;
                    pointer2 = getPointer(((long) i13) + j10);
                }
                i12 = i14;
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public Object getValue(long j10, Class<?> cls, Object obj) {
        Pointer directBufferPointer;
        if (Structure.class.isAssignableFrom(cls)) {
            Structure structure = (Structure) obj;
            if (Structure.ByReference.class.isAssignableFrom(cls)) {
                return Structure.updateStructureByReference(cls, structure, getPointer(j10));
            }
            structure.useMemory(this, (int) j10, true);
            structure.read();
            return structure;
        }
        if (cls == Boolean.TYPE || cls == Boolean.class) {
            return Function.valueOf(getInt(j10) != 0);
        }
        if (cls == Byte.TYPE || cls == Byte.class) {
            return Byte.valueOf(getByte(j10));
        }
        if (cls == Short.TYPE || cls == Short.class) {
            return Short.valueOf(getShort(j10));
        }
        if (cls == Character.TYPE || cls == Character.class) {
            return Character.valueOf(getChar(j10));
        }
        if (cls == Integer.TYPE || cls == Integer.class) {
            return Integer.valueOf(getInt(j10));
        }
        if (cls == Long.TYPE || cls == Long.class) {
            return Long.valueOf(getLong(j10));
        }
        if (cls == Float.TYPE || cls == Float.class) {
            return Float.valueOf(getFloat(j10));
        }
        if (cls == Double.TYPE || cls == Double.class) {
            return Double.valueOf(getDouble(j10));
        }
        if (Pointer.class.isAssignableFrom(cls)) {
            Pointer pointer = getPointer(j10);
            if (pointer == null) {
                return null;
            }
            directBufferPointer = obj instanceof Pointer ? (Pointer) obj : null;
            return (directBufferPointer == null || pointer.peer != directBufferPointer.peer) ? pointer : directBufferPointer;
        }
        if (cls == String.class) {
            Pointer pointer2 = getPointer(j10);
            if (pointer2 != null) {
                return pointer2.getString(0L);
            }
            return null;
        }
        if (cls == WString.class) {
            Pointer pointer3 = getPointer(j10);
            if (pointer3 != null) {
                return new WString(pointer3.getWideString(0L));
            }
            return null;
        }
        if (Callback.class.isAssignableFrom(cls)) {
            Pointer pointer4 = getPointer(j10);
            if (pointer4 == null) {
                return null;
            }
            Callback callback = (Callback) obj;
            return !pointer4.equals(CallbackReference.getFunctionPointer(callback)) ? CallbackReference.getCallback(cls, pointer4) : callback;
        }
        if (Platform.HAS_BUFFERS && Buffer.class.isAssignableFrom(cls)) {
            Pointer pointer5 = getPointer(j10);
            if (pointer5 == null) {
                return null;
            }
            directBufferPointer = obj != null ? Native.getDirectBufferPointer((Buffer) obj) : null;
            if (directBufferPointer != null && directBufferPointer.equals(pointer5)) {
                return obj;
            }
            C1929i.m3030l("Can't autogenerate a direct buffer on memory read");
            return null;
        }
        if (NativeMapped.class.isAssignableFrom(cls)) {
            NativeMapped nativeMapped = (NativeMapped) obj;
            if (nativeMapped != null) {
                Object objFromNative = nativeMapped.fromNative(getValue(j10, nativeMapped.nativeType(), null), new FromNativeContext(cls));
                return nativeMapped.equals(objFromNative) ? nativeMapped : objFromNative;
            }
            NativeMappedConverter nativeMappedConverter = NativeMappedConverter.getInstance(cls);
            return nativeMappedConverter.fromNative(getValue(j10, nativeMappedConverter.nativeType(), null), new FromNativeContext(cls));
        }
        if (!cls.isArray()) {
            C0674b.m849p(cls, "Reading \"", "\" from memory is not supported");
            return null;
        }
        if (obj != null) {
            readArray(j10, obj, cls.getComponentType());
            return obj;
        }
        C1929i.m3030l("Need an initialized array");
        return null;
    }

    public String getWideString(long j10) {
        return Native.getWideString(this, this.peer, j10);
    }

    public String[] getWideStringArray(long j10, int i10) {
        return getStringArray(j10, i10, "--WIDE-STRING--");
    }

    public int hashCode() {
        long j10 = this.peer;
        return (int) ((j10 >>> 32) + (j10 & 4294967295L));
    }

    public long indexOf(long j10, byte b10) {
        return Native.indexOf(this, this.peer, j10, b10);
    }

    public void read(long j10, Pointer[] pointerArr, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            Pointer pointer = getPointer(((long) (Native.POINTER_SIZE * i12)) + j10);
            int i13 = i12 + i10;
            Pointer pointer2 = pointerArr[i13];
            if (pointer2 == null || pointer == null || pointer.peer != pointer2.peer) {
                pointerArr[i13] = pointer;
            }
        }
    }

    public void setByte(long j10, byte b10) {
        Native.setByte(this, this.peer, j10, b10);
    }

    public void setChar(long j10, char c) {
        Native.setChar(this, this.peer, j10, c);
    }

    public void setDouble(long j10, double d) {
        Native.setDouble(this, this.peer, j10, d);
    }

    public void setFloat(long j10, float f8) {
        Native.setFloat(this, this.peer, j10, f8);
    }

    public void setInt(long j10, int i10) {
        Native.setInt(this, this.peer, j10, i10);
    }

    public void setLong(long j10, long j11) {
        Native.setLong(this, this.peer, j10, j11);
    }

    public void setMemory(long j10, long j11, byte b10) {
        Native.setMemory(this, this.peer, j10, j11, b10);
    }

    public void setNativeLong(long j10, NativeLong nativeLong) {
        if (NativeLong.SIZE == 8) {
            setLong(j10, nativeLong.longValue());
        } else {
            setInt(j10, nativeLong.intValue());
        }
    }

    public void setPointer(long j10, Pointer pointer) {
        Native.setPointer(this, this.peer, j10, pointer != null ? pointer.peer : 0L);
    }

    public void setShort(long j10, short s5) {
        Native.setShort(this, this.peer, j10, s5);
    }

    public void setString(long j10, String str, String str2) {
        byte[] bytes = Native.getBytes(str, str2);
        write(j10, bytes, 0, bytes.length);
        setByte(((long) bytes.length) + j10, (byte) 0);
    }

    public void setValue(long j10, Object obj, Class<?> cls) {
        if (cls == Boolean.TYPE || cls == Boolean.class) {
            setInt(j10, Boolean.TRUE.equals(obj) ? -1 : 0);
            return;
        }
        if (cls == Byte.TYPE || cls == Byte.class) {
            setByte(j10, obj != null ? ((Byte) obj).byteValue() : (byte) 0);
            return;
        }
        if (cls == Short.TYPE || cls == Short.class) {
            setShort(j10, obj != null ? ((Short) obj).shortValue() : (short) 0);
            return;
        }
        if (cls == Character.TYPE || cls == Character.class) {
            setChar(j10, obj != null ? ((Character) obj).charValue() : (char) 0);
            return;
        }
        if (cls == Integer.TYPE || cls == Integer.class) {
            setInt(j10, obj != null ? ((Integer) obj).intValue() : 0);
            return;
        }
        if (cls == Long.TYPE || cls == Long.class) {
            setLong(j10, obj == null ? 0L : ((Long) obj).longValue());
            return;
        }
        if (cls == Float.TYPE || cls == Float.class) {
            setFloat(j10, obj == null ? 0.0f : ((Float) obj).floatValue());
            return;
        }
        if (cls == Double.TYPE || cls == Double.class) {
            setDouble(j10, obj == null ? 0.0d : ((Double) obj).doubleValue());
            return;
        }
        if (cls == Pointer.class) {
            setPointer(j10, (Pointer) obj);
            return;
        }
        if (cls == String.class) {
            setPointer(j10, (Pointer) obj);
            return;
        }
        if (cls == WString.class) {
            setPointer(j10, (Pointer) obj);
            return;
        }
        if (Structure.class.isAssignableFrom(cls)) {
            Structure structure = (Structure) obj;
            if (!Structure.ByReference.class.isAssignableFrom(cls)) {
                structure.useMemory(this, (int) j10, true);
                structure.write();
                return;
            } else {
                setPointer(j10, structure != null ? structure.getPointer() : null);
                if (structure != null) {
                    structure.autoWrite();
                    return;
                }
                return;
            }
        }
        if (Callback.class.isAssignableFrom(cls)) {
            setPointer(j10, CallbackReference.getFunctionPointer((Callback) obj));
            return;
        }
        if (Platform.HAS_BUFFERS && Buffer.class.isAssignableFrom(cls)) {
            setPointer(j10, obj != null ? Native.getDirectBufferPointer((Buffer) obj) : null);
            return;
        }
        if (NativeMapped.class.isAssignableFrom(cls)) {
            NativeMappedConverter nativeMappedConverter = NativeMappedConverter.getInstance(cls);
            setValue(j10, nativeMappedConverter.toNative(obj, new ToNativeContext()), nativeMappedConverter.nativeType());
        } else if (cls.isArray()) {
            writeArray(j10, obj, cls.getComponentType());
        } else {
            C0674b.m849p(cls, "Writing ", " to memory is not supported");
        }
    }

    public void setWideString(long j10, String str) {
        Native.setWideString(this, this.peer, j10, str);
    }

    public Pointer share(long j10, long j11) {
        return j10 == 0 ? this : new Pointer(this.peer + j10);
    }

    public String toString() {
        return "native@0x" + Long.toHexString(this.peer);
    }

    public void write(long j10, Pointer[] pointerArr, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            setPointer(((long) (Native.POINTER_SIZE * i12)) + j10, pointerArr[i10 + i12]);
        }
    }

    public Pointer() {
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Opaque extends Pointer {
        private final String MSG;

        private Opaque(long j10) {
            super(j10);
            this.MSG = "This pointer is opaque: " + this;
        }

        @Override // com.sun.jna.Pointer
        public void clear(long j10) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public String dump(long j10, int i10) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public byte getByte(long j10) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public ByteBuffer getByteBuffer(long j10, long j11) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public char getChar(long j10) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public double getDouble(long j10) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public float getFloat(long j10) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public int getInt(long j10) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public long getLong(long j10) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public Pointer getPointer(long j10) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public short getShort(long j10) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public String getString(long j10, String str) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public String getWideString(long j10) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public long indexOf(long j10, byte b10) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void read(long j10, byte[] bArr, int i10, int i11) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void setByte(long j10, byte b10) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void setChar(long j10, char c) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void setDouble(long j10, double d) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void setFloat(long j10, float f8) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void setInt(long j10, int i10) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void setLong(long j10, long j11) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void setMemory(long j10, long j11, byte b10) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void setPointer(long j10, Pointer pointer) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void setShort(long j10, short s5) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void setString(long j10, String str, String str2) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void setWideString(long j10, String str) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public Pointer share(long j10, long j11) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public String toString() {
            return "const@0x" + Long.toHexString(this.peer);
        }

        @Override // com.sun.jna.Pointer
        public void write(long j10, byte[] bArr, int i10, int i11) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void read(long j10, char[] cArr, int i10, int i11) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void write(long j10, char[] cArr, int i10, int i11) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void read(long j10, short[] sArr, int i10, int i11) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void write(long j10, short[] sArr, int i10, int i11) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void read(long j10, int[] iArr, int i10, int i11) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void write(long j10, int[] iArr, int i10, int i11) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void read(long j10, long[] jArr, int i10, int i11) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void write(long j10, long[] jArr, int i10, int i11) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void read(long j10, float[] fArr, int i10, int i11) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void write(long j10, float[] fArr, int i10, int i11) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void read(long j10, double[] dArr, int i10, int i11) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void write(long j10, double[] dArr, int i10, int i11) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void read(long j10, Pointer[] pointerArr, int i10, int i11) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void write(long j10, Pointer[] pointerArr, int i10, int i11) {
            throw new UnsupportedOperationException(this.MSG);
        }
    }

    public String[] getWideStringArray(long j10) {
        return getWideStringArray(j10, -1);
    }

    public static void nativeValue(Pointer pointer, long j10) {
        pointer.peer = j10;
    }

    public String getString(long j10, String str) {
        return Native.getString(this, j10, str);
    }

    public static final Pointer createConstant(long j10) {
        return new Opaque(j10);
    }

    public Pointer share(long j10) {
        return share(j10, 0L);
    }

    public void setString(long j10, String str) {
        setString(j10, str, Native.getDefaultStringEncoding());
    }

    public void write(long j10, short[] sArr, int i10, int i11) {
        Native.write(this, this.peer, j10, sArr, i10, i11);
    }

    public void setString(long j10, WString wString) {
        setWideString(j10, wString == null ? null : wString.toString());
    }

    public void write(long j10, char[] cArr, int i10, int i11) {
        Native.write(this, this.peer, j10, cArr, i10, i11);
    }

    public void write(long j10, int[] iArr, int i10, int i11) {
        Native.write(this, this.peer, j10, iArr, i10, i11);
    }

    public void write(long j10, long[] jArr, int i10, int i11) {
        Native.write(this, this.peer, j10, jArr, i10, i11);
    }

    public void write(long j10, float[] fArr, int i10, int i11) {
        Native.write(this, this.peer, j10, fArr, i10, i11);
    }

    public void write(long j10, double[] dArr, int i10, int i11) {
        Native.write(this, this.peer, j10, dArr, i10, i11);
    }

    public void write(long j10, byte[] bArr, int i10, int i11) {
        Native.write(this, this.peer, j10, bArr, i10, i11);
    }

    public void read(long j10, short[] sArr, int i10, int i11) {
        Native.read(this, this.peer, j10, sArr, i10, i11);
    }

    public Pointer[] getPointerArray(long j10, int i10) {
        Pointer[] pointerArr = new Pointer[i10];
        read(j10, pointerArr, 0, i10);
        return pointerArr;
    }

    public void read(long j10, char[] cArr, int i10, int i11) {
        Native.read(this, this.peer, j10, cArr, i10, i11);
    }

    public void read(long j10, int[] iArr, int i10, int i11) {
        Native.read(this, this.peer, j10, iArr, i10, i11);
    }

    public void read(long j10, long[] jArr, int i10, int i11) {
        Native.read(this, this.peer, j10, jArr, i10, i11);
    }

    public void read(long j10, float[] fArr, int i10, int i11) {
        Native.read(this, this.peer, j10, fArr, i10, i11);
    }

    public void read(long j10, double[] dArr, int i10, int i11) {
        Native.read(this, this.peer, j10, dArr, i10, i11);
    }

    public void read(long j10, byte[] bArr, int i10, int i11) {
        Native.read(this, this.peer, j10, bArr, i10, i11);
    }

    public String[] getStringArray(long j10, String str) {
        return getStringArray(j10, -1, str);
    }

    public String[] getStringArray(long j10, int i10) {
        return getStringArray(j10, i10, Native.getDefaultStringEncoding());
    }

    public String[] getStringArray(long j10) {
        return getStringArray(j10, -1, Native.getDefaultStringEncoding());
    }
}
