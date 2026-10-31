package androidx.versionedparcelable;

import ai.onnxruntime.a;
import ai.onnxruntime.b;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.NetworkOnMainThreadException;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseBooleanArray;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.collection.ArrayMap;
import androidx.collection.ArraySet;
import j1.i;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map$Entry;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
public abstract class VersionedParcel {
    private static final int EX_BAD_PARCELABLE = -2;
    private static final int EX_ILLEGAL_ARGUMENT = -3;
    private static final int EX_ILLEGAL_STATE = -5;
    private static final int EX_NETWORK_MAIN_THREAD = -6;
    private static final int EX_NULL_POINTER = -4;
    private static final int EX_PARCELABLE = -9;
    private static final int EX_SECURITY = -1;
    private static final int EX_UNSUPPORTED_OPERATION = -7;
    private static final String TAG = "VersionedParcel";
    private static final int TYPE_BINDER = 5;
    private static final int TYPE_FLOAT = 8;
    private static final int TYPE_INTEGER = 7;
    private static final int TYPE_PARCELABLE = 2;
    private static final int TYPE_SERIALIZABLE = 3;
    private static final int TYPE_STRING = 4;
    private static final int TYPE_VERSIONED_PARCELABLE = 1;
    protected final ArrayMap<String, Class> mParcelizerCache;
    protected final ArrayMap<String, Method> mReadCache;
    protected final ArrayMap<String, Method> mWriteCache;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public VersionedParcel(ArrayMap<String, Method> arrayMap, ArrayMap<String, Method> arrayMap2, ArrayMap<String, Class> arrayMap3) {
        this.mReadCache = arrayMap;
        this.mWriteCache = arrayMap2;
        this.mParcelizerCache = arrayMap3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Exception createException(int i9, String str) {
        switch (i9) {
            case EX_PARCELABLE /* -9 */:
                return (Exception) readParcelable();
            case -8:
            default:
                return new RuntimeException("Unknown exception code: " + i9 + " msg " + str);
            case EX_UNSUPPORTED_OPERATION /* -7 */:
                return new UnsupportedOperationException(str);
            case EX_NETWORK_MAIN_THREAD /* -6 */:
                return new NetworkOnMainThreadException();
            case EX_ILLEGAL_STATE /* -5 */:
                return new IllegalStateException(str);
            case -4:
                return new NullPointerException(str);
            case -3:
                return new IllegalArgumentException(str);
            case -2:
                return new BadParcelableException(str);
            case -1:
                return new SecurityException(str);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Class findParcelClass(Class<? extends VersionedParcelable> cls) throws ClassNotFoundException {
        Class cls2 = this.mParcelizerCache.get(cls.getName());
        if (cls2 != null) {
            return cls2;
        }
        Class<?> cls3 = Class.forName(cls.getPackage().getName() + "." + cls.getSimpleName() + "Parcelizer", false, cls.getClassLoader());
        this.mParcelizerCache.put(cls.getName(), cls3);
        return cls3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Method getReadMethod(String str) throws NoSuchMethodException {
        Method method = this.mReadCache.get(str);
        if (method != null) {
            return method;
        }
        System.currentTimeMillis();
        Method declaredMethod = Class.forName(str, true, VersionedParcel.class.getClassLoader()).getDeclaredMethod("read", VersionedParcel.class);
        this.mReadCache.put(str, declaredMethod);
        return declaredMethod;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static Throwable getRootCause(@NonNull Throwable th) {
        while (th.getCause() != null) {
            th = th.getCause();
        }
        return th;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private <T> int getType(T t) {
        if (t instanceof String) {
            return 4;
        }
        if (t instanceof Parcelable) {
            return 2;
        }
        if (t instanceof VersionedParcelable) {
            return 1;
        }
        if (t instanceof Serializable) {
            return 3;
        }
        if (t instanceof IBinder) {
            return 5;
        }
        if (t instanceof Integer) {
            return 7;
        }
        if (t instanceof Float) {
            return 8;
        }
        i.k(t.getClass().getName().concat(" cannot be VersionedParcelled"));
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Method getWriteMethod(Class cls) throws NoSuchMethodException, ClassNotFoundException {
        Method method = this.mWriteCache.get(cls.getName());
        if (method != null) {
            return method;
        }
        Class clsFindParcelClass = findParcelClass(cls);
        System.currentTimeMillis();
        Method declaredMethod = clsFindParcelClass.getDeclaredMethod("write", cls, VersionedParcel.class);
        this.mWriteCache.put(cls.getName(), declaredMethod);
        return declaredMethod;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private <T, S extends Collection<T>> S readCollection(S s5) {
        int i9 = readInt();
        if (i9 < 0) {
            return null;
        }
        if (i9 != 0) {
            int i10 = readInt();
            if (i9 < 0) {
                return null;
            }
            if (i10 == 1) {
                while (i9 > 0) {
                    s5.add(readVersionedParcelable());
                    i9--;
                }
            } else if (i10 == 2) {
                while (i9 > 0) {
                    s5.add(readParcelable());
                    i9--;
                }
            } else if (i10 == 3) {
                while (i9 > 0) {
                    s5.add(readSerializable());
                    i9--;
                }
            } else if (i10 == 4) {
                while (i9 > 0) {
                    s5.add(readString());
                    i9--;
                }
            } else if (i10 == 5) {
                while (i9 > 0) {
                    s5.add(readStrongBinder());
                    i9--;
                }
            }
        }
        return s5;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int readExceptionCode() {
        return readInt();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private <T> void writeCollection(Collection<T> collection) {
        if (collection == null) {
            writeInt(-1);
        }
        int size = collection.size();
        writeInt(size);
        if (size > 0) {
            int type = getType(collection.iterator().next());
            writeInt(type);
            switch (type) {
                case 1:
                    Iterator<T> it = collection.iterator();
                    while (it.hasNext()) {
                        writeVersionedParcelable((VersionedParcelable) it.next());
                    }
                    break;
                case 2:
                    Iterator<T> it2 = collection.iterator();
                    while (it2.hasNext()) {
                        writeParcelable((Parcelable) it2.next());
                    }
                    break;
                case 3:
                    Iterator<T> it3 = collection.iterator();
                    while (it3.hasNext()) {
                        writeSerializable((Serializable) it3.next());
                    }
                    break;
                case 4:
                    Iterator<T> it4 = collection.iterator();
                    while (it4.hasNext()) {
                        writeString((String) it4.next());
                    }
                    break;
                case 5:
                    Iterator<T> it5 = collection.iterator();
                    while (it5.hasNext()) {
                        writeStrongBinder((IBinder) it5.next());
                    }
                    break;
                case 7:
                    Iterator<T> it6 = collection.iterator();
                    while (it6.hasNext()) {
                        writeInt(((Integer) it6.next()).intValue());
                    }
                    break;
                case 8:
                    Iterator<T> it7 = collection.iterator();
                    while (it7.hasNext()) {
                        writeFloat(((Float) it7.next()).floatValue());
                    }
                    break;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void writeSerializable(Serializable serializable) {
        if (serializable == null) {
            writeString(null);
            return;
        }
        String name = serializable.getClass().getName();
        writeString(name);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(serializable);
            objectOutputStream.close();
            writeByteArray(byteArrayOutputStream.toByteArray());
        } catch (IOException e) {
            b.o(a.m("VersionedParcelable encountered IOException writing serializable object (name = ", name, ")"), e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: androidx.versionedparcelable.VersionedParcel */
    /* JADX WARN: Multi-variable type inference failed */
    private void writeVersionedParcelableCreator(VersionedParcelable versionedParcelable) {
        try {
            writeString(findParcelClass(versionedParcelable.getClass()).getName());
        } catch (ClassNotFoundException e) {
            b.o(versionedParcelable.getClass().getSimpleName().concat(" does not have a Parcelizer"), e);
        }
    }

    public abstract void closeField();

    public abstract VersionedParcel createSubParcel();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isStream() {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public <T> T[] readArray(T[] tArr) {
        int i9 = readInt();
        if (i9 < 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(i9);
        if (i9 != 0) {
            int i10 = readInt();
            if (i9 < 0) {
                return null;
            }
            if (i10 == 1) {
                while (i9 > 0) {
                    arrayList.add(readVersionedParcelable());
                    i9--;
                }
            } else if (i10 == 2) {
                while (i9 > 0) {
                    arrayList.add(readParcelable());
                    i9--;
                }
            } else if (i10 == 3) {
                while (i9 > 0) {
                    arrayList.add(readSerializable());
                    i9--;
                }
            } else if (i10 == 4) {
                while (i9 > 0) {
                    arrayList.add(readString());
                    i9--;
                }
            } else if (i10 == 5) {
                while (i9 > 0) {
                    arrayList.add(readStrongBinder());
                    i9--;
                }
            }
        }
        return (T[]) arrayList.toArray(tArr);
    }

    public abstract boolean readBoolean();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean readBoolean(boolean z8, int i9) {
        return !readField(i9) ? z8 : readBoolean();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean[] readBooleanArray() {
        int i9 = readInt();
        if (i9 < 0) {
            return null;
        }
        boolean[] zArr = new boolean[i9];
        for (int i10 = 0; i10 < i9; i10++) {
            zArr[i10] = readInt() != 0;
        }
        return zArr;
    }

    public abstract Bundle readBundle();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Bundle readBundle(Bundle bundle, int i9) {
        return !readField(i9) ? bundle : readBundle();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public byte readByte(byte b9, int i9) {
        return !readField(i9) ? b9 : (byte) (readInt() & 255);
    }

    public abstract byte[] readByteArray();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public byte[] readByteArray(byte[] bArr, int i9) {
        return !readField(i9) ? bArr : readByteArray();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public char[] readCharArray(char[] cArr, int i9) {
        if (!readField(i9)) {
            return cArr;
        }
        int i10 = readInt();
        if (i10 < 0) {
            return null;
        }
        char[] cArr2 = new char[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            cArr2[i11] = (char) readInt();
        }
        return cArr2;
    }

    public abstract CharSequence readCharSequence();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CharSequence readCharSequence(CharSequence charSequence, int i9) {
        return !readField(i9) ? charSequence : readCharSequence();
    }

    public abstract double readDouble();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double readDouble(double d, int i9) {
        return !readField(i9) ? d : readDouble();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double[] readDoubleArray() {
        int i9 = readInt();
        if (i9 < 0) {
            return null;
        }
        double[] dArr = new double[i9];
        for (int i10 = 0; i10 < i9; i10++) {
            dArr[i10] = readDouble();
        }
        return dArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Exception readException(Exception exc, int i9) {
        int exceptionCode;
        return (readField(i9) && (exceptionCode = readExceptionCode()) != 0) ? readException(exceptionCode, readString()) : exc;
    }

    public abstract boolean readField(int i9);

    public abstract float readFloat();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float readFloat(float f8, int i9) {
        return !readField(i9) ? f8 : readFloat();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float[] readFloatArray() {
        int i9 = readInt();
        if (i9 < 0) {
            return null;
        }
        float[] fArr = new float[i9];
        for (int i10 = 0; i10 < i9; i10++) {
            fArr[i10] = readFloat();
        }
        return fArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public <T extends VersionedParcelable> T readFromParcel(String str, VersionedParcel versionedParcel) {
        try {
            return (T) getReadMethod(str).invoke(null, versionedParcel);
        } catch (ClassNotFoundException e) {
            b.o("VersionedParcel encountered ClassNotFoundException", e);
            return null;
        } catch (IllegalAccessException e6) {
            b.o("VersionedParcel encountered IllegalAccessException", e6);
            return null;
        } catch (NoSuchMethodException e9) {
            b.o("VersionedParcel encountered NoSuchMethodException", e9);
            return null;
        } catch (InvocationTargetException e10) {
            if (e10.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e10.getCause());
            }
            b.o("VersionedParcel encountered InvocationTargetException", e10);
            return null;
        }
    }

    public abstract int readInt();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int readInt(int i9, int i10) {
        return !readField(i10) ? i9 : readInt();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int[] readIntArray() {
        int i9 = readInt();
        if (i9 < 0) {
            return null;
        }
        int[] iArr = new int[i9];
        for (int i10 = 0; i10 < i9; i10++) {
            iArr[i10] = readInt();
        }
        return iArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public <T> List<T> readList(List<T> list, int i9) {
        return !readField(i9) ? list : (List) readCollection(new ArrayList());
    }

    public abstract long readLong();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long readLong(long j9, int i9) {
        return !readField(i9) ? j9 : readLong();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long[] readLongArray() {
        int i9 = readInt();
        if (i9 < 0) {
            return null;
        }
        long[] jArr = new long[i9];
        for (int i10 = 0; i10 < i9; i10++) {
            jArr[i10] = readLong();
        }
        return jArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r7v2, resolved type: com.sun.jna.win32.W32APIOptions$2 */
    /* JADX WARN: Multi-variable type inference failed */
    public <K, V> Map<K, V> readMap(Map<K, V> map, int i9) {
        if (!readField(i9)) {
            return map;
        }
        int i10 = readInt();
        if (i10 < 0) {
            return null;
        }
        ArrayMap arrayMap = new ArrayMap();
        if (i10 != 0) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            readCollection(arrayList);
            readCollection(arrayList2);
            for (int i11 = 0; i11 < i10; i11++) {
                arrayMap.put(arrayList.get(i11), arrayList2.get(i11));
            }
        }
        return arrayMap;
    }

    public abstract <T extends Parcelable> T readParcelable();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public <T extends Parcelable> T readParcelable(T t, int i9) {
        return !readField(i9) ? t : (T) readParcelable();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Serializable readSerializable() {
        String string = readString();
        if (string == null) {
            return null;
        }
        try {
            return (Serializable) new VersionedParcel$1(this, new ByteArrayInputStream(readByteArray())).readObject();
        } catch (IOException e) {
            b.o(a.m("VersionedParcelable encountered IOException reading a Serializable object (name = ", string, ")"), e);
            return null;
        } catch (ClassNotFoundException e6) {
            b.o(a.m("VersionedParcelable encountered ClassNotFoundException reading a Serializable object (name = ", string, ")"), e6);
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public <T> Set<T> readSet(Set<T> set, int i9) {
        return !readField(i9) ? set : (Set) readCollection(new ArraySet());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(api = 21)
    public Size readSize(Size size, int i9) {
        if (!readField(i9)) {
            return size;
        }
        if (readBoolean()) {
            return new Size(readInt(), readInt());
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(api = 21)
    public SizeF readSizeF(SizeF sizeF, int i9) {
        if (!readField(i9)) {
            return sizeF;
        }
        if (readBoolean()) {
            return new SizeF(readFloat(), readFloat());
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SparseBooleanArray readSparseBooleanArray(SparseBooleanArray sparseBooleanArray, int i9) {
        if (!readField(i9)) {
            return sparseBooleanArray;
        }
        int i10 = readInt();
        if (i10 < 0) {
            return null;
        }
        SparseBooleanArray sparseBooleanArray2 = new SparseBooleanArray(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            sparseBooleanArray2.put(readInt(), readBoolean());
        }
        return sparseBooleanArray2;
    }

    public abstract String readString();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String readString(String str, int i9) {
        return !readField(i9) ? str : readString();
    }

    public abstract IBinder readStrongBinder();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public IBinder readStrongBinder(IBinder iBinder, int i9) {
        return !readField(i9) ? iBinder : readStrongBinder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public <T extends VersionedParcelable> T readVersionedParcelable() {
        String string = readString();
        if (string == null) {
            return null;
        }
        return (T) readFromParcel(string, createSubParcel());
    }

    public abstract void setOutputField(int i9);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v10, resolved type: java.lang.Object[] */
    /* JADX DEBUG: Multi-variable search result rejected for r2v2, resolved type: java.lang.Object[] */
    /* JADX DEBUG: Multi-variable search result rejected for r2v4, resolved type: java.lang.Object[] */
    /* JADX DEBUG: Multi-variable search result rejected for r2v6, resolved type: java.lang.Object[] */
    /* JADX DEBUG: Multi-variable search result rejected for r2v8, resolved type: java.lang.Object[] */
    /* JADX WARN: Multi-variable type inference failed */
    public <T> void writeArray(T[] tArr) {
        if (tArr == 0) {
            writeInt(-1);
            return;
        }
        int length = tArr.length;
        writeInt(length);
        if (length > 0) {
            int i9 = 0;
            int type = getType(tArr[0]);
            writeInt(type);
            if (type == 1) {
                while (i9 < length) {
                    writeVersionedParcelable((VersionedParcelable) tArr[i9]);
                    i9++;
                }
                return;
            }
            if (type == 2) {
                while (i9 < length) {
                    writeParcelable((Parcelable) tArr[i9]);
                    i9++;
                }
                return;
            }
            if (type == 3) {
                while (i9 < length) {
                    writeSerializable((Serializable) tArr[i9]);
                    i9++;
                }
            } else if (type == 4) {
                while (i9 < length) {
                    writeString((String) tArr[i9]);
                    i9++;
                }
            } else {
                if (type != 5) {
                    return;
                }
                while (i9 < length) {
                    writeStrongBinder((IBinder) tArr[i9]);
                    i9++;
                }
            }
        }
    }

    public abstract void writeBoolean(boolean z8);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void writeBoolean(boolean z8, int i9) {
        setOutputField(i9);
        writeBoolean(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void writeBooleanArray(boolean[] zArr) {
        if (zArr == null) {
            writeInt(-1);
            return;
        }
        writeInt(zArr.length);
        for (boolean z8 : zArr) {
            writeInt(z8 ? 1 : 0);
        }
    }

    public abstract void writeBundle(Bundle bundle);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void writeBundle(Bundle bundle, int i9) {
        setOutputField(i9);
        writeBundle(bundle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void writeByte(byte b9, int i9) {
        setOutputField(i9);
        writeInt(b9);
    }

    public abstract void writeByteArray(byte[] bArr);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void writeByteArray(byte[] bArr, int i9) {
        setOutputField(i9);
        writeByteArray(bArr);
    }

    public abstract void writeByteArray(byte[] bArr, int i9, int i10);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void writeCharArray(char[] cArr, int i9) {
        setOutputField(i9);
        if (cArr == null) {
            writeInt(-1);
            return;
        }
        writeInt(cArr.length);
        for (char c : cArr) {
            writeInt(c);
        }
    }

    public abstract void writeCharSequence(CharSequence charSequence);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void writeCharSequence(CharSequence charSequence, int i9) {
        setOutputField(i9);
        writeCharSequence(charSequence);
    }

    public abstract void writeDouble(double d);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void writeDouble(double d, int i9) {
        setOutputField(i9);
        writeDouble(d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void writeDoubleArray(double[] dArr) {
        if (dArr == null) {
            writeInt(-1);
            return;
        }
        writeInt(dArr.length);
        for (double d : dArr) {
            writeDouble(d);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: java.lang.Exception */
    /* JADX WARN: Multi-variable type inference failed */
    public void writeException(Exception exc, int i9) {
        int i10;
        setOutputField(i9);
        if (exc == 0) {
            writeNoException();
            return;
        }
        if ((exc instanceof Parcelable) && exc.getClass().getClassLoader() == Parcelable.class.getClassLoader()) {
            i10 = EX_PARCELABLE;
        } else if (exc instanceof SecurityException) {
            i10 = -1;
        } else if (exc instanceof BadParcelableException) {
            i10 = -2;
        } else if (exc instanceof IllegalArgumentException) {
            i10 = -3;
        } else if (exc instanceof NullPointerException) {
            i10 = -4;
        } else if (exc instanceof IllegalStateException) {
            i10 = EX_ILLEGAL_STATE;
        } else if (exc instanceof NetworkOnMainThreadException) {
            i10 = EX_NETWORK_MAIN_THREAD;
        } else {
            i10 = exc instanceof UnsupportedOperationException ? EX_UNSUPPORTED_OPERATION : 0;
        }
        writeInt(i10);
        if (i10 == 0) {
            if (exc instanceof RuntimeException) {
                throw ((RuntimeException) exc);
            }
            n0.b.w(exc);
        } else {
            writeString(exc.getMessage());
            if (i10 != EX_PARCELABLE) {
                return;
            }
            writeParcelable((Parcelable) exc);
        }
    }

    public abstract void writeFloat(float f8);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void writeFloat(float f8, int i9) {
        setOutputField(i9);
        writeFloat(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void writeFloatArray(float[] fArr) {
        if (fArr == null) {
            writeInt(-1);
            return;
        }
        writeInt(fArr.length);
        for (float f8 : fArr) {
            writeFloat(f8);
        }
    }

    public abstract void writeInt(int i9);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void writeInt(int i9, int i10) {
        setOutputField(i10);
        writeInt(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void writeIntArray(int[] iArr) {
        if (iArr == null) {
            writeInt(-1);
            return;
        }
        writeInt(iArr.length);
        for (int i9 : iArr) {
            writeInt(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public <T> void writeList(List<T> list, int i9) {
        writeCollection(list, i9);
    }

    public abstract void writeLong(long j9);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void writeLong(long j9, int i9) {
        setOutputField(i9);
        writeLong(j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void writeLongArray(long[] jArr) {
        if (jArr == null) {
            writeInt(-1);
            return;
        }
        writeInt(jArr.length);
        for (long j9 : jArr) {
            writeLong(j9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public <K, V> void writeMap(Map<K, V> map, int i9) {
        setOutputField(i9);
        if (map == null) {
            writeInt(-1);
            return;
        }
        int size = map.size();
        writeInt(size);
        if (size == 0) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Map$Entry<K, V> map$Entry : map.entrySet()) {
            arrayList.add(map$Entry.getKey());
            arrayList2.add(map$Entry.getValue());
        }
        writeCollection(arrayList);
        writeCollection(arrayList2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void writeNoException() {
        writeInt(0);
    }

    public abstract void writeParcelable(Parcelable parcelable);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void writeParcelable(Parcelable parcelable, int i9) {
        setOutputField(i9);
        writeParcelable(parcelable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public <T> void writeSet(Set<T> set, int i9) {
        writeCollection(set, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(api = 21)
    public void writeSize(Size size, int i9) {
        setOutputField(i9);
        writeBoolean(size != null);
        if (size != null) {
            writeInt(size.getWidth());
            writeInt(size.getHeight());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(api = 21)
    public void writeSizeF(SizeF sizeF, int i9) {
        setOutputField(i9);
        writeBoolean(sizeF != null);
        if (sizeF != null) {
            writeFloat(sizeF.getWidth());
            writeFloat(sizeF.getHeight());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void writeSparseBooleanArray(SparseBooleanArray sparseBooleanArray, int i9) {
        setOutputField(i9);
        if (sparseBooleanArray == null) {
            writeInt(-1);
            return;
        }
        int size = sparseBooleanArray.size();
        writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            writeInt(sparseBooleanArray.keyAt(i10));
            writeBoolean(sparseBooleanArray.valueAt(i10));
        }
    }

    public abstract void writeString(String str);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void writeString(String str, int i9) {
        setOutputField(i9);
        writeString(str);
    }

    public abstract void writeStrongBinder(IBinder iBinder);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void writeStrongBinder(IBinder iBinder, int i9) {
        setOutputField(i9);
        writeStrongBinder(iBinder);
    }

    public abstract void writeStrongInterface(IInterface iInterface);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void writeStrongInterface(IInterface iInterface, int i9) {
        setOutputField(i9);
        writeStrongInterface(iInterface);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public <T extends VersionedParcelable> void writeToParcel(T t, VersionedParcel versionedParcel) {
        try {
            getWriteMethod(t.getClass()).invoke(null, t, versionedParcel);
        } catch (ClassNotFoundException e) {
            b.o("VersionedParcel encountered ClassNotFoundException", e);
        } catch (IllegalAccessException e6) {
            b.o("VersionedParcel encountered IllegalAccessException", e6);
        } catch (NoSuchMethodException e9) {
            b.o("VersionedParcel encountered NoSuchMethodException", e9);
        } catch (InvocationTargetException e10) {
            if (e10.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e10.getCause());
            }
            b.o("VersionedParcel encountered InvocationTargetException", e10);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void writeVersionedParcelable(VersionedParcelable versionedParcelable) {
        if (versionedParcelable == null) {
            writeString(null);
            return;
        }
        writeVersionedParcelableCreator(versionedParcelable);
        VersionedParcel versionedParcelCreateSubParcel = createSubParcel();
        writeToParcel(versionedParcelable, versionedParcelCreateSubParcel);
        versionedParcelCreateSubParcel.closeField();
    }

    public void writeByteArray(byte[] bArr, int i9, int i10, int i11) {
        setOutputField(i11);
        writeByteArray(bArr, i9, i10);
    }

    public <T extends VersionedParcelable> T readVersionedParcelable(T t, int i9) {
        return !readField(i9) ? t : (T) readVersionedParcelable();
    }

    public void writeVersionedParcelable(VersionedParcelable versionedParcelable, int i9) {
        setOutputField(i9);
        writeVersionedParcelable(versionedParcelable);
    }

    private Exception readException(int i9, String str) {
        return createException(i9, str);
    }

    public double[] readDoubleArray(double[] dArr, int i9) {
        return !readField(i9) ? dArr : readDoubleArray();
    }

    public float[] readFloatArray(float[] fArr, int i9) {
        return !readField(i9) ? fArr : readFloatArray();
    }

    public int[] readIntArray(int[] iArr, int i9) {
        return !readField(i9) ? iArr : readIntArray();
    }

    public long[] readLongArray(long[] jArr, int i9) {
        return !readField(i9) ? jArr : readLongArray();
    }

    public void writeBooleanArray(boolean[] zArr, int i9) {
        setOutputField(i9);
        writeBooleanArray(zArr);
    }

    public void writeDoubleArray(double[] dArr, int i9) {
        setOutputField(i9);
        writeDoubleArray(dArr);
    }

    public void writeFloatArray(float[] fArr, int i9) {
        setOutputField(i9);
        writeFloatArray(fArr);
    }

    public void writeIntArray(int[] iArr, int i9) {
        setOutputField(i9);
        writeIntArray(iArr);
    }

    public void writeLongArray(long[] jArr, int i9) {
        setOutputField(i9);
        writeLongArray(jArr);
    }

    public boolean[] readBooleanArray(boolean[] zArr, int i9) {
        return !readField(i9) ? zArr : readBooleanArray();
    }

    public void setSerializationFlags(boolean z8, boolean z9) {
    }

    public void writeSerializable(Serializable serializable, int i9) {
        setOutputField(i9);
        writeSerializable(serializable);
    }

    public <T> void writeArray(T[] tArr, int i9) {
        setOutputField(i9);
        writeArray(tArr);
    }

    public <T> T[] readArray(T[] tArr, int i9) {
        return !readField(i9) ? tArr : (T[]) readArray(tArr);
    }

    private <T> void writeCollection(Collection<T> collection, int i9) {
        setOutputField(i9);
        writeCollection(collection);
    }
}
