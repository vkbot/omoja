package com.sun.jna;

import androidx.navigation.b;
import j1.i;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.Array;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import kotlin.UByte;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Pointer {
    public static final Pointer NULL = null;
    protected long peer;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Pointer(long j9) {
        this.peer = j9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final Pointer createConstant(int i9) {
        return new Pointer$Opaque(((long) i9) & 4294967295L, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long nativeValue(Pointer pointer) {
        if (pointer == null) {
            return 0L;
        }
        return pointer.peer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void readArray(long j9, Object obj, Class<?> cls) {
        int length = Array.getLength(obj);
        if (cls == Byte.TYPE) {
            read(j9, (byte[]) obj, 0, length);
            return;
        }
        if (cls == Short.TYPE) {
            read(j9, (short[]) obj, 0, length);
            return;
        }
        if (cls == Character.TYPE) {
            read(j9, (char[]) obj, 0, length);
            return;
        }
        if (cls == Integer.TYPE) {
            read(j9, (int[]) obj, 0, length);
            return;
        }
        if (cls == Long.TYPE) {
            read(j9, (long[]) obj, 0, length);
            return;
        }
        if (cls == Float.TYPE) {
            read(j9, (float[]) obj, 0, length);
            return;
        }
        if (cls == Double.TYPE) {
            read(j9, (double[]) obj, 0, length);
            return;
        }
        if (Pointer.class.isAssignableFrom(cls)) {
            read(j9, (Pointer[]) obj, 0, length);
            return;
        }
        int i9 = 0;
        if (!Structure.class.isAssignableFrom(cls)) {
            if (!NativeMapped.class.isAssignableFrom(cls)) {
                b.p(cls, "Reading array of ", " from memory not supported");
                return;
            }
            NativeMapped[] nativeMappedArr = (NativeMapped[]) obj;
            NativeMappedConverter nativeMappedConverter = NativeMappedConverter.getInstance(cls);
            int nativeSize = Native.getNativeSize(obj.getClass(), obj) / nativeMappedArr.length;
            while (i9 < nativeMappedArr.length) {
                nativeMappedArr[i9] = (NativeMapped) nativeMappedConverter.fromNative(getValue(((long) (nativeSize * i9)) + j9, nativeMappedConverter.nativeType(), nativeMappedArr[i9]), new FromNativeContext(cls));
                i9++;
            }
            return;
        }
        Structure[] structureArr = (Structure[]) obj;
        if (Structure$ByReference.class.isAssignableFrom(cls)) {
            Pointer[] pointerArray = getPointerArray(j9, structureArr.length);
            while (i9 < structureArr.length) {
                structureArr[i9] = Structure.updateStructureByReference(cls, structureArr[i9], pointerArray[i9]);
                i9++;
            }
            return;
        }
        Structure structureNewInstance = structureArr[0];
        if (structureNewInstance == null) {
            structureNewInstance = Structure.newInstance((Class<Structure>) cls, share(j9));
            structureNewInstance.conditionalAutoRead();
            structureArr[0] = structureNewInstance;
        } else {
            structureNewInstance.useMemory(this, (int) j9, true);
            structureNewInstance.read();
        }
        Structure[] array = structureNewInstance.toArray(structureArr.length);
        for (int i10 = 1; i10 < structureArr.length; i10++) {
            Structure structure = structureArr[i10];
            if (structure == null) {
                structureArr[i10] = array[i10];
            } else {
                structure.useMemory(this, (int) (((long) (structure.size() * i10)) + j9), true);
                structureArr[i10].read();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void writeArray(long j9, Object obj, Class<?> cls) {
        if (cls == Byte.TYPE) {
            byte[] bArr = (byte[]) obj;
            write(j9, bArr, 0, bArr.length);
            return;
        }
        if (cls == Short.TYPE) {
            short[] sArr = (short[]) obj;
            write(j9, sArr, 0, sArr.length);
            return;
        }
        if (cls == Character.TYPE) {
            char[] cArr = (char[]) obj;
            write(j9, cArr, 0, cArr.length);
            return;
        }
        if (cls == Integer.TYPE) {
            int[] iArr = (int[]) obj;
            write(j9, iArr, 0, iArr.length);
            return;
        }
        if (cls == Long.TYPE) {
            long[] jArr = (long[]) obj;
            write(j9, jArr, 0, jArr.length);
            return;
        }
        if (cls == Float.TYPE) {
            float[] fArr = (float[]) obj;
            write(j9, fArr, 0, fArr.length);
            return;
        }
        if (cls == Double.TYPE) {
            double[] dArr = (double[]) obj;
            write(j9, dArr, 0, dArr.length);
            return;
        }
        if (Pointer.class.isAssignableFrom(cls)) {
            Pointer[] pointerArr = (Pointer[]) obj;
            write(j9, pointerArr, 0, pointerArr.length);
            return;
        }
        if (!Structure.class.isAssignableFrom(cls)) {
            if (!NativeMapped.class.isAssignableFrom(cls)) {
                b.p(cls, "Writing array of ", " to memory not supported");
                return;
            }
            NativeMapped[] nativeMappedArr = (NativeMapped[]) obj;
            NativeMappedConverter nativeMappedConverter = NativeMappedConverter.getInstance(cls);
            Class<?> clsNativeType = nativeMappedConverter.nativeType();
            int nativeSize = Native.getNativeSize(obj.getClass(), obj) / nativeMappedArr.length;
            for (int i9 = 0; i9 < nativeMappedArr.length; i9++) {
                setValue(((long) (i9 * nativeSize)) + j9, nativeMappedConverter.toNative(nativeMappedArr[i9], new ToNativeContext()), clsNativeType);
            }
            return;
        }
        Structure[] structureArr = (Structure[]) obj;
        if (Structure$ByReference.class.isAssignableFrom(cls)) {
            int length = structureArr.length;
            Pointer[] pointerArr2 = new Pointer[length];
            for (int i10 = 0; i10 < structureArr.length; i10++) {
                Structure structure = structureArr[i10];
                if (structure == null) {
                    pointerArr2[i10] = null;
                } else {
                    pointerArr2[i10] = structure.getPointer();
                    structureArr[i10].write();
                }
            }
            write(j9, pointerArr2, 0, length);
            return;
        }
        Structure structureNewInstance = structureArr[0];
        if (structureNewInstance == null) {
            structureNewInstance = Structure.newInstance((Class<Structure>) cls, share(j9));
            structureArr[0] = structureNewInstance;
        } else {
            structureNewInstance.useMemory(this, (int) j9, true);
        }
        structureNewInstance.write();
        Structure[] array = structureNewInstance.toArray(structureArr.length);
        for (int i11 = 1; i11 < structureArr.length; i11++) {
            Structure structure2 = structureArr[i11];
            if (structure2 == null) {
                structureArr[i11] = array[i11];
            } else {
                structure2.useMemory(this, (int) (((long) (structure2.size() * i11)) + j9), true);
            }
            structureArr[i11].write();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void clear(long j9) {
        setMemory(0L, j9, (byte) 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String dump(long j9, int i9) {
        StringWriter stringWriter = new StringWriter(((i9 / 4) * 4) + (i9 * 2) + 13);
        PrintWriter printWriter = new PrintWriter(stringWriter);
        printWriter.println("memory dump");
        for (int i10 = 0; i10 < i9; i10++) {
            byte b9 = getByte(((long) i10) + j9);
            int i11 = i10 % 4;
            if (i11 == 0) {
                printWriter.print("[");
            }
            if (b9 >= 0 && b9 < 16) {
                printWriter.print("0");
            }
            printWriter.print(Integer.toHexString(b9 & UByte.MAX_VALUE));
            if (i11 == 3 && i10 < i9 - 1) {
                printWriter.println("]");
            }
        }
        if (stringWriter.getBuffer().charAt(stringWriter.getBuffer().length() - 2) != ']') {
            printWriter.println("]");
        }
        return stringWriter.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && (obj instanceof Pointer) && ((Pointer) obj).peer == this.peer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public byte getByte(long j9) {
        return Native.getByte(this, this.peer, j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public byte[] getByteArray(long j9, int i9) {
        byte[] bArr = new byte[i9];
        read(j9, bArr, 0, i9);
        return bArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ByteBuffer getByteBuffer(long j9, long j10) {
        return Native.getDirectByteBuffer(this, this.peer, j9, j10).order(ByteOrder.nativeOrder());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public char getChar(long j9) {
        return Native.getChar(this, this.peer, j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public char[] getCharArray(long j9, int i9) {
        char[] cArr = new char[i9];
        read(j9, cArr, 0, i9);
        return cArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double getDouble(long j9) {
        return Native.getDouble(this, this.peer, j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double[] getDoubleArray(long j9, int i9) {
        double[] dArr = new double[i9];
        read(j9, dArr, 0, i9);
        return dArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getFloat(long j9) {
        return Native.getFloat(this, this.peer, j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float[] getFloatArray(long j9, int i9) {
        float[] fArr = new float[i9];
        read(j9, fArr, 0, i9);
        return fArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getInt(long j9) {
        return Native.getInt(this, this.peer, j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int[] getIntArray(long j9, int i9) {
        int[] iArr = new int[i9];
        read(j9, iArr, 0, i9);
        return iArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getLong(long j9) {
        return Native.getLong(this, this.peer, j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long[] getLongArray(long j9, int i9) {
        long[] jArr = new long[i9];
        read(j9, jArr, 0, i9);
        return jArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NativeLong getNativeLong(long j9) {
        return new NativeLong(NativeLong.SIZE == 8 ? getLong(j9) : getInt(j9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Pointer getPointer(long j9) {
        return Native.getPointer(this.peer + j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Pointer[] getPointerArray(long j9) {
        ArrayList arrayList = new ArrayList();
        Pointer pointer = getPointer(j9);
        int i9 = 0;
        while (pointer != null) {
            arrayList.add(pointer);
            i9 += Native.POINTER_SIZE;
            pointer = getPointer(((long) i9) + j9);
        }
        return (Pointer[]) arrayList.toArray(new Pointer[0]);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public short getShort(long j9) {
        return Native.getShort(this, this.peer, j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public short[] getShortArray(long j9, int i9) {
        short[] sArr = new short[i9];
        read(j9, sArr, 0, i9);
        return sArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getString(long j9) {
        return getString(j9, Native.getDefaultStringEncoding());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String[] getStringArray(long j9, int i9, String str) {
        String wideString;
        ArrayList arrayList = new ArrayList();
        if (i9 == -1) {
            int i10 = 0;
            while (true) {
                Pointer pointer = getPointer(((long) i10) + j9);
                if (pointer == null) {
                    break;
                }
                arrayList.add("--WIDE-STRING--".equals(str) ? pointer.getWideString(0L) : pointer.getString(0L, str));
                i10 += Native.POINTER_SIZE;
            }
        } else {
            Pointer pointer2 = getPointer(((long) 0) + j9);
            int i11 = 0;
            int i12 = 0;
            while (true) {
                int i13 = i11 + 1;
                if (i11 >= i9) {
                    break;
                }
                if (pointer2 == null) {
                    wideString = null;
                } else {
                    wideString = "--WIDE-STRING--".equals(str) ? pointer2.getWideString(0L) : pointer2.getString(0L, str);
                }
                arrayList.add(wideString);
                if (i13 < i9) {
                    i12 += Native.POINTER_SIZE;
                    pointer2 = getPointer(((long) i12) + j9);
                }
                i11 = i13;
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Object getValue(long j9, Class<?> cls, Object obj) {
        Pointer directBufferPointer;
        if (Structure.class.isAssignableFrom(cls)) {
            Structure structure = (Structure) obj;
            if (Structure$ByReference.class.isAssignableFrom(cls)) {
                return Structure.updateStructureByReference(cls, structure, getPointer(j9));
            }
            structure.useMemory(this, (int) j9, true);
            structure.read();
            return structure;
        }
        if (cls == Boolean.TYPE || cls == Boolean.class) {
            return Function.valueOf(getInt(j9) != 0);
        }
        if (cls == Byte.TYPE || cls == Byte.class) {
            return Byte.valueOf(getByte(j9));
        }
        if (cls == Short.TYPE || cls == Short.class) {
            return Short.valueOf(getShort(j9));
        }
        if (cls == Character.TYPE || cls == Character.class) {
            return Character.valueOf(getChar(j9));
        }
        if (cls == Integer.TYPE || cls == Integer.class) {
            return Integer.valueOf(getInt(j9));
        }
        if (cls == Long.TYPE || cls == Long.class) {
            return Long.valueOf(getLong(j9));
        }
        if (cls == Float.TYPE || cls == Float.class) {
            return Float.valueOf(getFloat(j9));
        }
        if (cls == Double.TYPE || cls == Double.class) {
            return Double.valueOf(getDouble(j9));
        }
        if (Pointer.class.isAssignableFrom(cls)) {
            Pointer pointer = getPointer(j9);
            if (pointer == null) {
                return null;
            }
            directBufferPointer = obj instanceof Pointer ? (Pointer) obj : null;
            return (directBufferPointer == null || pointer.peer != directBufferPointer.peer) ? pointer : directBufferPointer;
        }
        if (cls == String.class) {
            Pointer pointer2 = getPointer(j9);
            if (pointer2 != null) {
                return pointer2.getString(0L);
            }
            return null;
        }
        if (cls == WString.class) {
            Pointer pointer3 = getPointer(j9);
            if (pointer3 != null) {
                return new WString(pointer3.getWideString(0L));
            }
            return null;
        }
        if (Callback.class.isAssignableFrom(cls)) {
            Pointer pointer4 = getPointer(j9);
            if (pointer4 == null) {
                return null;
            }
            Callback callback = (Callback) obj;
            return !pointer4.equals(CallbackReference.getFunctionPointer(callback)) ? CallbackReference.getCallback(cls, pointer4) : callback;
        }
        if (Platform.HAS_BUFFERS && Buffer.class.isAssignableFrom(cls)) {
            Pointer pointer5 = getPointer(j9);
            if (pointer5 == null) {
                return null;
            }
            directBufferPointer = obj != null ? Native.getDirectBufferPointer((Buffer) obj) : null;
            if (directBufferPointer != null && directBufferPointer.equals(pointer5)) {
                return obj;
            }
            i.l("Can't autogenerate a direct buffer on memory read");
            return null;
        }
        if (NativeMapped.class.isAssignableFrom(cls)) {
            NativeMapped nativeMapped = (NativeMapped) obj;
            if (nativeMapped != null) {
                Object objFromNative = nativeMapped.fromNative(getValue(j9, nativeMapped.nativeType(), null), new FromNativeContext(cls));
                return nativeMapped.equals(objFromNative) ? nativeMapped : objFromNative;
            }
            NativeMappedConverter nativeMappedConverter = NativeMappedConverter.getInstance(cls);
            return nativeMappedConverter.fromNative(getValue(j9, nativeMappedConverter.nativeType(), null), new FromNativeContext(cls));
        }
        if (!cls.isArray()) {
            b.p(cls, "Reading \"", "\" from memory is not supported");
            return null;
        }
        if (obj != null) {
            readArray(j9, obj, cls.getComponentType());
            return obj;
        }
        i.l("Need an initialized array");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getWideString(long j9) {
        return Native.getWideString(this, this.peer, j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String[] getWideStringArray(long j9, int i9) {
        return getStringArray(j9, i9, "--WIDE-STRING--");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        long j9 = this.peer;
        return (int) ((j9 >>> 32) + (j9 & 4294967295L));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long indexOf(long j9, byte b9) {
        return Native.indexOf(this, this.peer, j9, b9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void read(long j9, Pointer[] pointerArr, int i9, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            Pointer pointer = getPointer(((long) (Native.POINTER_SIZE * i11)) + j9);
            int i12 = i11 + i9;
            Pointer pointer2 = pointerArr[i12];
            if (pointer2 == null || pointer == null || pointer.peer != pointer2.peer) {
                pointerArr[i12] = pointer;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setByte(long j9, byte b9) {
        Native.setByte(this, this.peer, j9, b9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setChar(long j9, char c) {
        Native.setChar(this, this.peer, j9, c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDouble(long j9, double d) {
        Native.setDouble(this, this.peer, j9, d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setFloat(long j9, float f8) {
        Native.setFloat(this, this.peer, j9, f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setInt(long j9, int i9) {
        Native.setInt(this, this.peer, j9, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLong(long j9, long j10) {
        Native.setLong(this, this.peer, j9, j10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMemory(long j9, long j10, byte b9) {
        Native.setMemory(this, this.peer, j9, j10, b9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setNativeLong(long j9, NativeLong nativeLong) {
        if (NativeLong.SIZE == 8) {
            setLong(j9, nativeLong.longValue());
        } else {
            setInt(j9, nativeLong.intValue());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPointer(long j9, Pointer pointer) {
        Native.setPointer(this, this.peer, j9, pointer != null ? pointer.peer : 0L);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setShort(long j9, short s5) {
        Native.setShort(this, this.peer, j9, s5);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setString(long j9, String str, String str2) {
        byte[] bytes = Native.getBytes(str, str2);
        write(j9, bytes, 0, bytes.length);
        setByte(((long) bytes.length) + j9, (byte) 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setValue(long j9, Object obj, Class<?> cls) {
        if (cls == Boolean.TYPE || cls == Boolean.class) {
            setInt(j9, Boolean.TRUE.equals(obj) ? -1 : 0);
            return;
        }
        if (cls == Byte.TYPE || cls == Byte.class) {
            setByte(j9, obj != null ? ((Byte) obj).byteValue() : (byte) 0);
            return;
        }
        if (cls == Short.TYPE || cls == Short.class) {
            setShort(j9, obj != null ? ((Short) obj).shortValue() : (short) 0);
            return;
        }
        if (cls == Character.TYPE || cls == Character.class) {
            setChar(j9, obj != null ? ((Character) obj).charValue() : (char) 0);
            return;
        }
        if (cls == Integer.TYPE || cls == Integer.class) {
            setInt(j9, obj != null ? ((Integer) obj).intValue() : 0);
            return;
        }
        if (cls == Long.TYPE || cls == Long.class) {
            setLong(j9, obj == null ? 0L : ((Long) obj).longValue());
            return;
        }
        if (cls == Float.TYPE || cls == Float.class) {
            setFloat(j9, obj == null ? 0.0f : ((Float) obj).floatValue());
            return;
        }
        if (cls == Double.TYPE || cls == Double.class) {
            setDouble(j9, obj == null ? 0.0d : ((Double) obj).doubleValue());
            return;
        }
        if (cls == Pointer.class) {
            setPointer(j9, (Pointer) obj);
            return;
        }
        if (cls == String.class) {
            setPointer(j9, (Pointer) obj);
            return;
        }
        if (cls == WString.class) {
            setPointer(j9, (Pointer) obj);
            return;
        }
        if (Structure.class.isAssignableFrom(cls)) {
            Structure structure = (Structure) obj;
            if (!Structure$ByReference.class.isAssignableFrom(cls)) {
                structure.useMemory(this, (int) j9, true);
                structure.write();
                return;
            } else {
                setPointer(j9, structure != null ? structure.getPointer() : null);
                if (structure != null) {
                    structure.autoWrite();
                    return;
                }
                return;
            }
        }
        if (Callback.class.isAssignableFrom(cls)) {
            setPointer(j9, CallbackReference.getFunctionPointer((Callback) obj));
            return;
        }
        if (Platform.HAS_BUFFERS && Buffer.class.isAssignableFrom(cls)) {
            setPointer(j9, obj != null ? Native.getDirectBufferPointer((Buffer) obj) : null);
            return;
        }
        if (NativeMapped.class.isAssignableFrom(cls)) {
            NativeMappedConverter nativeMappedConverter = NativeMappedConverter.getInstance(cls);
            setValue(j9, nativeMappedConverter.toNative(obj, new ToNativeContext()), nativeMappedConverter.nativeType());
        } else if (cls.isArray()) {
            writeArray(j9, obj, cls.getComponentType());
        } else {
            b.p(cls, "Writing ", " to memory is not supported");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setWideString(long j9, String str) {
        Native.setWideString(this, this.peer, j9, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Pointer share(long j9, long j10) {
        return j9 == 0 ? this : new Pointer(this.peer + j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return "native@0x" + Long.toHexString(this.peer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void write(long j9, Pointer[] pointerArr, int i9, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            setPointer(((long) (Native.POINTER_SIZE * i11)) + j9, pointerArr[i9 + i11]);
        }
    }

    public Pointer() {
    }

    public String[] getWideStringArray(long j9) {
        return getWideStringArray(j9, -1);
    }

    public static void nativeValue(Pointer pointer, long j9) {
        pointer.peer = j9;
    }

    public String getString(long j9, String str) {
        return Native.getString(this, j9, str);
    }

    public static final Pointer createConstant(long j9) {
        return new Pointer$Opaque(j9, null);
    }

    public Pointer share(long j9) {
        return share(j9, 0L);
    }

    public void setString(long j9, String str) {
        setString(j9, str, Native.getDefaultStringEncoding());
    }

    public void write(long j9, short[] sArr, int i9, int i10) {
        Native.write(this, this.peer, j9, sArr, i9, i10);
    }

    public void setString(long j9, WString wString) {
        setWideString(j9, wString == null ? null : wString.toString());
    }

    public void write(long j9, char[] cArr, int i9, int i10) {
        Native.write(this, this.peer, j9, cArr, i9, i10);
    }

    public void write(long j9, int[] iArr, int i9, int i10) {
        Native.write(this, this.peer, j9, iArr, i9, i10);
    }

    public void write(long j9, long[] jArr, int i9, int i10) {
        Native.write(this, this.peer, j9, jArr, i9, i10);
    }

    public void write(long j9, float[] fArr, int i9, int i10) {
        Native.write(this, this.peer, j9, fArr, i9, i10);
    }

    public void write(long j9, double[] dArr, int i9, int i10) {
        Native.write(this, this.peer, j9, dArr, i9, i10);
    }

    public void write(long j9, byte[] bArr, int i9, int i10) {
        Native.write(this, this.peer, j9, bArr, i9, i10);
    }

    public void read(long j9, short[] sArr, int i9, int i10) {
        Native.read(this, this.peer, j9, sArr, i9, i10);
    }

    public Pointer[] getPointerArray(long j9, int i9) {
        Pointer[] pointerArr = new Pointer[i9];
        read(j9, pointerArr, 0, i9);
        return pointerArr;
    }

    public void read(long j9, char[] cArr, int i9, int i10) {
        Native.read(this, this.peer, j9, cArr, i9, i10);
    }

    public void read(long j9, int[] iArr, int i9, int i10) {
        Native.read(this, this.peer, j9, iArr, i9, i10);
    }

    public void read(long j9, long[] jArr, int i9, int i10) {
        Native.read(this, this.peer, j9, jArr, i9, i10);
    }

    public void read(long j9, float[] fArr, int i9, int i10) {
        Native.read(this, this.peer, j9, fArr, i9, i10);
    }

    public void read(long j9, double[] dArr, int i9, int i10) {
        Native.read(this, this.peer, j9, dArr, i9, i10);
    }

    public void read(long j9, byte[] bArr, int i9, int i10) {
        Native.read(this, this.peer, j9, bArr, i9, i10);
    }

    public String[] getStringArray(long j9, String str) {
        return getStringArray(j9, -1, str);
    }

    public String[] getStringArray(long j9, int i9) {
        return getStringArray(j9, i9, Native.getDefaultStringEncoding());
    }

    public String[] getStringArray(long j9) {
        return getStringArray(j9, -1, Native.getDefaultStringEncoding());
    }
}
