package mega.car.hardware;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import com.bumptech.glide.load.Key;
import com.mega.nexus.os.MegaParcel;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class CarPropertyValue<T> implements Parcelable {
    public static final int MGR_ID_BIT_MASK = -16777216;
    public static final int MGR_ID_BIT_OFFSET = 24;
    public static final int STATUS_AVAILABLE = 0;
    public static final int STATUS_ERROR = 2;
    public static final int STATUS_NO_VALID = 3;
    public static final int STATUS_UNAVAILABLE = 1;
    private final int mAreaId;
    private Object mExtension;
    private final int mPropertyId;
    private boolean mRelative;
    private int mStatus;
    private final long mTimestamp;
    private final T mValue;
    private static final Charset DEFAULT_CHARSET = Charset.forName(Key.STRING_CHARSET_NAME);
    public static final Parcelable.Creator<CarPropertyValue> CREATOR = new Parcelable.Creator<CarPropertyValue>() { // from class: mega.car.hardware.CarPropertyValue.1
        @Override // android.os.Parcelable.Creator
        public CarPropertyValue createFromParcel(Parcel parcel) {
            return new CarPropertyValue(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public CarPropertyValue[] newArray(int i) {
            return new CarPropertyValue[i];
        }
    };

    @Retention(RetentionPolicy.SOURCE)
    public @interface PropertyStatus {
    }

    public static final int decodeMgrId(int i) {
        return i >> 24;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getAreaId() {
        return this.mAreaId;
    }

    public Object getExtension() {
        return this.mExtension;
    }

    public int getPropertyId() {
        return this.mPropertyId;
    }

    public boolean getRelative() {
        return this.mRelative;
    }

    public int getStatus() {
        return this.mStatus;
    }

    public long getTimestamp() {
        return this.mTimestamp;
    }

    public T getValue() {
        return this.mValue;
    }

    public void setExtension(Object obj) {
        this.mExtension = obj;
    }

    public void setRelative(boolean z) {
        this.mRelative = z;
    }

    public CarPropertyValue(int i, T t) {
        this(i, 0, 0, SystemClock.uptimeMillis(), t);
    }

    public CarPropertyValue(int i, int i2, T t) {
        this(i, i2, 0, SystemClock.uptimeMillis(), t);
    }

    public CarPropertyValue(int i, int i2, int i3, long j, T t) {
        this.mRelative = false;
        this.mPropertyId = i;
        this.mAreaId = i2;
        this.mStatus = i3;
        this.mTimestamp = j;
        this.mValue = t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CarPropertyValue(Parcel parcel) {
        Class<?> cls;
        this.mRelative = false;
        this.mPropertyId = parcel.readInt();
        this.mAreaId = parcel.readInt();
        this.mStatus = parcel.readInt();
        this.mTimestamp = parcel.readLong();
        String string = parcel.readString();
        if (string == null) {
            cls = Object.class;
        } else {
            try {
                cls = Class.forName(string);
            } catch (ClassNotFoundException unused) {
                throw new IllegalArgumentException("Class not found: " + string);
            }
        }
        if (String.class.equals(cls)) {
            this.mValue = (T) new String(MegaParcel.readBlob(parcel), DEFAULT_CHARSET);
        } else if (byte[].class.equals(cls)) {
            this.mValue = (T) MegaParcel.readBlob(parcel);
        } else {
            this.mValue = (T) parcel.readValue(cls.getClassLoader());
        }
        this.mRelative = parcel.readInt() != 0;
        this.mExtension = parcel.readValue(CarPropertyValue.class.getClassLoader());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CarPropertyValue)) {
            return false;
        }
        CarPropertyValue carPropertyValue = (CarPropertyValue) obj;
        return this.mPropertyId == carPropertyValue.mPropertyId && this.mAreaId == carPropertyValue.mAreaId && this.mStatus == carPropertyValue.mStatus && this.mRelative == carPropertyValue.mRelative && deepEquals(this.mValue, carPropertyValue.mValue) && Objects.equals(this.mExtension, carPropertyValue.mExtension);
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mPropertyId), Integer.valueOf(this.mAreaId), Integer.valueOf(this.mStatus), this.mValue, Boolean.valueOf(this.mRelative), this.mExtension);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mPropertyId);
        parcel.writeInt(this.mAreaId);
        parcel.writeInt(this.mStatus);
        parcel.writeLong(this.mTimestamp);
        T t = this.mValue;
        Class<?> cls = t == null ? null : t.getClass();
        parcel.writeString(cls != null ? cls.getName() : null);
        if (String.class.equals(cls)) {
            MegaParcel.writeBlob(parcel, ((String) this.mValue).getBytes(DEFAULT_CHARSET));
        } else if (byte[].class.equals(cls)) {
            MegaParcel.writeBlob(parcel, (byte[]) this.mValue);
        } else {
            parcel.writeValue(this.mValue);
        }
        parcel.writeInt(this.mRelative ? 1 : 0);
        parcel.writeValue(this.mExtension);
    }

    public String toString() {
        return "CarPropertyValue{id=0x" + Integer.toHexString(this.mPropertyId) + ", area=0x" + Integer.toHexString(this.mAreaId) + ", status=" + this.mStatus + ", value=" + stringOf(this.mValue) + ", time=" + this.mTimestamp + ", relative=" + this.mRelative + ", ext=" + stringOf(this.mExtension) + '}';
    }

    static boolean deepEquals(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj != null && obj.equals(obj2)) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        Class<?> componentType = obj.getClass().getComponentType();
        obj2.getClass().getComponentType();
        if (componentType == Byte.class) {
            return Arrays.equals((Byte[]) obj, (Byte[]) obj2);
        }
        if (componentType == Short.class) {
            return Arrays.equals((Short[]) obj, (Short[]) obj2);
        }
        if (componentType == Integer.class) {
            return Arrays.equals((Integer[]) obj, (Integer[]) obj2);
        }
        if (componentType == Long.class) {
            return Arrays.equals((Long[]) obj, (Long[]) obj2);
        }
        if (componentType == Charset.class) {
            return Arrays.equals((Charset[]) obj, (Charset[]) obj2);
        }
        if (componentType == Float.class) {
            return Arrays.equals((Float[]) obj, (Float[]) obj2);
        }
        if (componentType == Double.class) {
            return Arrays.equals((Double[]) obj, (Double[]) obj2);
        }
        if (componentType == Boolean.class) {
            return Arrays.equals((Boolean[]) obj, (Boolean[]) obj2);
        }
        return Objects.deepEquals(obj, obj2);
    }

    static String stringOf(Object obj) {
        if (obj == null) {
            return "null";
        }
        Class<?> componentType = obj.getClass().getComponentType();
        if (obj instanceof Object[]) {
            return Arrays.toString((Object[]) obj);
        }
        if (componentType == Byte.class) {
            return Arrays.toString((Byte[]) obj);
        }
        if (componentType == Short.class) {
            return Arrays.toString((Short[]) obj);
        }
        if (componentType == Integer.class) {
            return Arrays.toString((Integer[]) obj);
        }
        if (componentType == Long.class) {
            return Arrays.toString((Long[]) obj);
        }
        if (componentType == Charset.class) {
            return Arrays.toString((Charset[]) obj);
        }
        if (componentType == Float.class) {
            return Arrays.toString((Float[]) obj);
        }
        if (componentType == Double.class) {
            return Arrays.toString((Double[]) obj);
        }
        if (componentType == Boolean.class) {
            return Arrays.toString((Boolean[]) obj);
        }
        if (componentType == Byte.TYPE) {
            return Arrays.toString((byte[]) obj);
        }
        if (componentType == Short.TYPE) {
            return Arrays.toString((short[]) obj);
        }
        if (componentType == Integer.TYPE) {
            return Arrays.toString((int[]) obj);
        }
        if (componentType == Long.TYPE) {
            return Arrays.toString((long[]) obj);
        }
        if (componentType == Character.TYPE) {
            return Arrays.toString((char[]) obj);
        }
        if (componentType == Float.TYPE) {
            return Arrays.toString((float[]) obj);
        }
        if (componentType == Double.TYPE) {
            return Arrays.toString((double[]) obj);
        }
        if (componentType == Boolean.TYPE) {
            return Arrays.toString((boolean[]) obj);
        }
        return obj.toString();
    }
}
