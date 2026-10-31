package androidx.versionedparcelable;

import ai.onnxruntime.a;
import ai.onnxruntime.b;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcelable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.collection.ArrayMap;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.nio.charset.Charset;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY})
class VersionedParcelStream extends VersionedParcel {
    private static final int TYPE_BOOLEAN = 5;
    private static final int TYPE_BOOLEAN_ARRAY = 6;
    private static final int TYPE_DOUBLE = 7;
    private static final int TYPE_DOUBLE_ARRAY = 8;
    private static final int TYPE_FLOAT = 13;
    private static final int TYPE_FLOAT_ARRAY = 14;
    private static final int TYPE_INT = 9;
    private static final int TYPE_INT_ARRAY = 10;
    private static final int TYPE_LONG = 11;
    private static final int TYPE_LONG_ARRAY = 12;
    private static final int TYPE_NULL = 0;
    private static final int TYPE_STRING = 3;
    private static final int TYPE_STRING_ARRAY = 4;
    private static final int TYPE_SUB_BUNDLE = 1;
    private static final int TYPE_SUB_PERSISTABLE_BUNDLE = 2;
    private static final Charset UTF_16 = Charset.forName("UTF-16");
    int mCount;
    private DataInputStream mCurrentInput;
    private DataOutputStream mCurrentOutput;
    private VersionedParcelStream$FieldBuffer mFieldBuffer;
    private int mFieldId;
    int mFieldSize;
    private boolean mIgnoreParcelables;
    private final DataInputStream mMasterInput;
    private final DataOutputStream mMasterOutput;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private VersionedParcelStream(InputStream inputStream, OutputStream outputStream, ArrayMap<String, Method> arrayMap, ArrayMap<String, Method> arrayMap2, ArrayMap<String, Class> arrayMap3) {
        super(arrayMap, arrayMap2, arrayMap3);
        this.mCount = 0;
        this.mFieldId = -1;
        this.mFieldSize = -1;
        DataInputStream dataInputStream = inputStream != null ? new DataInputStream(new VersionedParcelStream$1(this, inputStream)) : null;
        this.mMasterInput = dataInputStream;
        DataOutputStream dataOutputStream = outputStream != null ? new DataOutputStream(outputStream) : null;
        this.mMasterOutput = dataOutputStream;
        this.mCurrentInput = dataInputStream;
        this.mCurrentOutput = dataOutputStream;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void readObject(int i9, String str, Bundle bundle) {
        switch (i9) {
            case 0:
                bundle.putParcelable(str, null);
                break;
            case 1:
                bundle.putBundle(str, readBundle());
                break;
            case 2:
                bundle.putBundle(str, readBundle());
                break;
            case 3:
                bundle.putString(str, readString());
                break;
            case 4:
                bundle.putStringArray(str, (String[]) readArray(new String[0]));
                break;
            case 5:
                bundle.putBoolean(str, readBoolean());
                break;
            case 6:
                bundle.putBooleanArray(str, readBooleanArray());
                break;
            case 7:
                bundle.putDouble(str, readDouble());
                break;
            case 8:
                bundle.putDoubleArray(str, readDoubleArray());
                break;
            case 9:
                bundle.putInt(str, readInt());
                break;
            case 10:
                bundle.putIntArray(str, readIntArray());
                break;
            case 11:
                bundle.putLong(str, readLong());
                break;
            case 12:
                bundle.putLongArray(str, readLongArray());
                break;
            case 13:
                bundle.putFloat(str, readFloat());
                break;
            case 14:
                bundle.putFloatArray(str, readFloatArray());
                break;
            default:
                b.h(a.e(i9, "Unknown type "));
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void writeObject(Object obj) {
        if (obj == null) {
            writeInt(0);
            return;
        }
        if (obj instanceof Bundle) {
            writeInt(1);
            writeBundle((Bundle) obj);
            return;
        }
        if (obj instanceof String) {
            writeInt(3);
            writeString((String) obj);
            return;
        }
        if (obj instanceof String[]) {
            writeInt(4);
            writeArray((String[]) obj);
            return;
        }
        if (obj instanceof Boolean) {
            writeInt(5);
            writeBoolean(((Boolean) obj).booleanValue());
            return;
        }
        if (obj instanceof boolean[]) {
            writeInt(6);
            writeBooleanArray((boolean[]) obj);
            return;
        }
        if (obj instanceof Double) {
            writeInt(7);
            writeDouble(((Double) obj).doubleValue());
            return;
        }
        if (obj instanceof double[]) {
            writeInt(8);
            writeDoubleArray((double[]) obj);
            return;
        }
        if (obj instanceof Integer) {
            writeInt(9);
            writeInt(((Integer) obj).intValue());
            return;
        }
        if (obj instanceof int[]) {
            writeInt(10);
            writeIntArray((int[]) obj);
            return;
        }
        if (obj instanceof Long) {
            writeInt(11);
            writeLong(((Long) obj).longValue());
            return;
        }
        if (obj instanceof long[]) {
            writeInt(12);
            writeLongArray((long[]) obj);
        } else if (obj instanceof Float) {
            writeInt(13);
            writeFloat(((Float) obj).floatValue());
        } else if (!(obj instanceof float[])) {
            androidx.navigation.b.o(obj.getClass(), "Unsupported type ");
        } else {
            writeInt(14);
            writeFloatArray((float[]) obj);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.versionedparcelable.VersionedParcel
    public void closeField() {
        VersionedParcelStream$FieldBuffer versionedParcelStream$FieldBuffer = this.mFieldBuffer;
        if (versionedParcelStream$FieldBuffer != null) {
            try {
                if (versionedParcelStream$FieldBuffer.mOutput.size() != 0) {
                    this.mFieldBuffer.flushField();
                }
                this.mFieldBuffer = null;
            } catch (IOException e) {
                throw new VersionedParcel$ParcelException(e);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.versionedparcelable.VersionedParcel
    public VersionedParcel createSubParcel() {
        return new VersionedParcelStream(this.mCurrentInput, this.mCurrentOutput, this.mReadCache, this.mWriteCache, this.mParcelizerCache);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.versionedparcelable.VersionedParcel
    public boolean isStream() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.versionedparcelable.VersionedParcel
    public boolean readBoolean() {
        try {
            return this.mCurrentInput.readBoolean();
        } catch (IOException e) {
            throw new VersionedParcel$ParcelException(e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.versionedparcelable.VersionedParcel
    public Bundle readBundle() {
        int i9 = readInt();
        if (i9 < 0) {
            return null;
        }
        Bundle bundle = new Bundle();
        for (int i10 = 0; i10 < i9; i10++) {
            readObject(readInt(), readString(), bundle);
        }
        return bundle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.versionedparcelable.VersionedParcel
    public byte[] readByteArray() {
        try {
            int i9 = this.mCurrentInput.readInt();
            if (i9 <= 0) {
                return null;
            }
            byte[] bArr = new byte[i9];
            this.mCurrentInput.readFully(bArr);
            return bArr;
        } catch (IOException e) {
            throw new VersionedParcel$ParcelException(e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.versionedparcelable.VersionedParcel
    public CharSequence readCharSequence() {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.versionedparcelable.VersionedParcel
    public double readDouble() {
        try {
            return this.mCurrentInput.readDouble();
        } catch (IOException e) {
            throw new VersionedParcel$ParcelException(e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.versionedparcelable.VersionedParcel
    public boolean readField(int i9) {
        while (true) {
            try {
                int i10 = this.mFieldId;
                if (i10 == i9) {
                    return true;
                }
                if (String.valueOf(i10).compareTo(String.valueOf(i9)) > 0) {
                    return false;
                }
                int i11 = this.mCount;
                int i12 = this.mFieldSize;
                if (i11 < i12) {
                    this.mMasterInput.skip(i12 - i11);
                }
                this.mFieldSize = -1;
                int i13 = this.mMasterInput.readInt();
                this.mCount = 0;
                int i14 = i13 & 65535;
                if (i14 == 65535) {
                    i14 = this.mMasterInput.readInt();
                }
                this.mFieldId = (i13 >> 16) & 65535;
                this.mFieldSize = i14;
            } catch (IOException unused) {
                return false;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.versionedparcelable.VersionedParcel
    public float readFloat() {
        try {
            return this.mCurrentInput.readFloat();
        } catch (IOException e) {
            throw new VersionedParcel$ParcelException(e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.versionedparcelable.VersionedParcel
    public int readInt() {
        try {
            return this.mCurrentInput.readInt();
        } catch (IOException e) {
            throw new VersionedParcel$ParcelException(e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.versionedparcelable.VersionedParcel
    public long readLong() {
        try {
            return this.mCurrentInput.readLong();
        } catch (IOException e) {
            throw new VersionedParcel$ParcelException(e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.versionedparcelable.VersionedParcel
    public <T extends Parcelable> T readParcelable() {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.versionedparcelable.VersionedParcel
    public String readString() {
        try {
            int i9 = this.mCurrentInput.readInt();
            if (i9 <= 0) {
                return null;
            }
            byte[] bArr = new byte[i9];
            this.mCurrentInput.readFully(bArr);
            return new String(bArr, UTF_16);
        } catch (IOException e) {
            throw new VersionedParcel$ParcelException(e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.versionedparcelable.VersionedParcel
    public IBinder readStrongBinder() {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.versionedparcelable.VersionedParcel
    public void setOutputField(int i9) {
        closeField();
        VersionedParcelStream$FieldBuffer versionedParcelStream$FieldBuffer = new VersionedParcelStream$FieldBuffer(i9, this.mMasterOutput);
        this.mFieldBuffer = versionedParcelStream$FieldBuffer;
        this.mCurrentOutput = versionedParcelStream$FieldBuffer.mDataStream;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.versionedparcelable.VersionedParcel
    public void setSerializationFlags(boolean z8, boolean z9) {
        if (z8) {
            this.mIgnoreParcelables = z9;
        } else {
            b.h("Serialization of this object is not allowed");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeBoolean(boolean z8) {
        try {
            this.mCurrentOutput.writeBoolean(z8);
        } catch (IOException e) {
            throw new VersionedParcel$ParcelException(e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeBundle(Bundle bundle) {
        try {
            if (bundle == null) {
                this.mCurrentOutput.writeInt(-1);
                return;
            }
            Set<String> setKeySet = bundle.keySet();
            this.mCurrentOutput.writeInt(setKeySet.size());
            for (String str : setKeySet) {
                writeString(str);
                writeObject(bundle.get(str));
            }
        } catch (IOException e) {
            throw new VersionedParcel$ParcelException(e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeByteArray(byte[] bArr) {
        DataOutputStream dataOutputStream = this.mCurrentOutput;
        try {
            if (bArr == null) {
                dataOutputStream.writeInt(-1);
            } else {
                dataOutputStream.writeInt(bArr.length);
                this.mCurrentOutput.write(bArr);
            }
        } catch (IOException e) {
            throw new VersionedParcel$ParcelException(e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeCharSequence(CharSequence charSequence) {
        if (this.mIgnoreParcelables) {
            return;
        }
        b.h("CharSequence cannot be written to an OutputStream");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeDouble(double d) {
        try {
            this.mCurrentOutput.writeDouble(d);
        } catch (IOException e) {
            throw new VersionedParcel$ParcelException(e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeFloat(float f8) {
        try {
            this.mCurrentOutput.writeFloat(f8);
        } catch (IOException e) {
            throw new VersionedParcel$ParcelException(e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeInt(int i9) {
        try {
            this.mCurrentOutput.writeInt(i9);
        } catch (IOException e) {
            throw new VersionedParcel$ParcelException(e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeLong(long j9) {
        try {
            this.mCurrentOutput.writeLong(j9);
        } catch (IOException e) {
            throw new VersionedParcel$ParcelException(e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeParcelable(Parcelable parcelable) {
        if (this.mIgnoreParcelables) {
            return;
        }
        b.h("Parcelables cannot be written to an OutputStream");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeString(String str) {
        try {
            if (str == null) {
                this.mCurrentOutput.writeInt(-1);
                return;
            }
            byte[] bytes = str.getBytes(UTF_16);
            this.mCurrentOutput.writeInt(bytes.length);
            this.mCurrentOutput.write(bytes);
        } catch (IOException e) {
            throw new VersionedParcel$ParcelException(e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeStrongBinder(IBinder iBinder) {
        if (this.mIgnoreParcelables) {
            return;
        }
        b.h("Binders cannot be written to an OutputStream");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeStrongInterface(IInterface iInterface) {
        if (this.mIgnoreParcelables) {
            return;
        }
        b.h("Binders cannot be written to an OutputStream");
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeByteArray(byte[] bArr, int i9, int i10) {
        DataOutputStream dataOutputStream = this.mCurrentOutput;
        try {
            if (bArr != null) {
                dataOutputStream.writeInt(i10);
                this.mCurrentOutput.write(bArr, i9, i10);
            } else {
                dataOutputStream.writeInt(-1);
            }
        } catch (IOException e) {
            throw new VersionedParcel$ParcelException(e);
        }
    }

    public VersionedParcelStream(InputStream inputStream, OutputStream outputStream) {
        this(inputStream, outputStream, new ArrayMap(), new ArrayMap(), new ArrayMap());
    }
}
