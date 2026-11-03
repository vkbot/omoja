package mega.car.hardware;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes2.dex */
public class CarPropertyConfig<T> implements Parcelable {
    public static final Parcelable.Creator<CarPropertyConfig> CREATOR = new Parcelable.Creator<CarPropertyConfig>() { // from class: mega.car.hardware.CarPropertyConfig.1
        @Override // android.os.Parcelable.Creator
        public CarPropertyConfig createFromParcel(Parcel parcel) {
            return new CarPropertyConfig(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public CarPropertyConfig[] newArray(int i) {
            return new CarPropertyConfig[i];
        }
    };
    public static final int VEHICLE_PROPERTY_CHANGE_MODE_CONTINUOUS = 2;
    public static final int VEHICLE_PROPERTY_CHANGE_MODE_ONCHANGE = 1;
    public static final int VEHICLE_PROPERTY_CHANGE_MODE_STATIC = 0;
    private final int mAccess;
    private final int mChangeMode;
    private final String mConfigString;
    private boolean mIsSerializable;
    private final float mMaxSampleRate;
    private final float mMinSampleRate;
    private String mName;
    private final int mPropertyId;
    private String mPublish;
    private int mSource;
    private String mSubscribe;
    private final SparseArray<AreaConfig> mSupportedAreas;
    private String mTopic;
    private final Class<T> mType;

    @Retention(RetentionPolicy.SOURCE)
    public @interface VehiclePropertyChangeModeType {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getChangeMode() {
        return this.mChangeMode;
    }

    public String getConfigString() {
        return this.mConfigString;
    }

    public float getMaxSampleRate() {
        return this.mMaxSampleRate;
    }

    public float getMinSampleRate() {
        return this.mMinSampleRate;
    }

    public String getName() {
        return this.mName;
    }

    public int getPropertyId() {
        return this.mPropertyId;
    }

    public Class<T> getPropertyType() {
        return this.mType;
    }

    public String getPublish() {
        return this.mPublish;
    }

    public int getSource() {
        return this.mSource;
    }

    public String getSubscribe() {
        return this.mSubscribe;
    }

    public String getTopic() {
        return this.mTopic;
    }

    public boolean isSerializable() {
        return this.mIsSerializable;
    }

    public void setName(String str) {
        this.mName = str;
    }

    private CarPropertyConfig(int i, int i2, String str, float f, float f2, int i3, SparseArray<AreaConfig> sparseArray, Class<T> cls, boolean z, String str2, String str3, String str4, int i4) {
        this.mAccess = i;
        this.mChangeMode = i2;
        this.mConfigString = str;
        this.mMaxSampleRate = f;
        this.mMinSampleRate = f2;
        this.mPropertyId = i3;
        this.mSupportedAreas = sparseArray;
        this.mType = cls;
        this.mIsSerializable = z;
        this.mTopic = str2;
        this.mSubscribe = str3;
        this.mPublish = str4;
        this.mSource = i4;
    }

    public boolean isGlobalProperty() {
        return getAreaCount() == 0;
    }

    public int getAreaCount() {
        return this.mSupportedAreas.size();
    }

    public int[] getAreaIds() {
        int size = this.mSupportedAreas.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = this.mSupportedAreas.keyAt(i);
        }
        return iArr;
    }

    public boolean hasArea(int i) {
        return this.mSupportedAreas.indexOfKey(i) >= 0;
    }

    public float getMinValue(int i) {
        AreaConfig areaConfig = this.mSupportedAreas.get(i);
        if (areaConfig == null) {
            return Float.MIN_VALUE;
        }
        return areaConfig.getMinValue();
    }

    public float getMinValue() {
        return getMinValue(0);
    }

    public float getMaxValue(int i) {
        AreaConfig areaConfig = this.mSupportedAreas.get(i);
        if (areaConfig == null) {
            return Float.MAX_VALUE;
        }
        return areaConfig.getMaxValue();
    }

    public float getMaxValue() {
        return getMaxValue(0);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mAccess);
        parcel.writeInt(this.mChangeMode);
        parcel.writeString(this.mConfigString);
        parcel.writeFloat(this.mMaxSampleRate);
        parcel.writeFloat(this.mMinSampleRate);
        parcel.writeInt(this.mPropertyId);
        parcel.writeInt(this.mSupportedAreas.size());
        for (int i2 = 0; i2 < this.mSupportedAreas.size(); i2++) {
            parcel.writeInt(this.mSupportedAreas.keyAt(i2));
            parcel.writeParcelable(this.mSupportedAreas.valueAt(i2), i);
        }
        parcel.writeString(this.mType.getName());
        parcel.writeBoolean(this.mIsSerializable);
        parcel.writeInt(this.mSource);
        parcel.writeString(this.mName);
    }

    private CarPropertyConfig(Parcel parcel) {
        this.mAccess = parcel.readInt();
        this.mChangeMode = parcel.readInt();
        this.mConfigString = parcel.readString();
        this.mMaxSampleRate = parcel.readFloat();
        this.mMinSampleRate = parcel.readFloat();
        this.mPropertyId = parcel.readInt();
        int i = parcel.readInt();
        this.mSupportedAreas = new SparseArray<>(i);
        for (int i2 = 0; i2 < i; i2++) {
            this.mSupportedAreas.put(parcel.readInt(), (AreaConfig) parcel.readParcelable(getClass().getClassLoader()));
        }
        String string = parcel.readString();
        try {
            this.mType = (Class<T>) Class.forName(string);
            this.mIsSerializable = parcel.readBoolean();
            this.mSource = parcel.readInt();
            this.mName = parcel.readString();
        } catch (ClassNotFoundException unused) {
            throw new IllegalArgumentException("Class not found: " + string);
        }
    }

    public String toString() {
        return "CarPropertyConfig{mPropertyId=" + this.mPropertyId + ", mAccess=" + this.mAccess + ", mChangeMode=" + this.mChangeMode + ", mConfigString=" + this.mConfigString + ", mMaxSampleRate=" + this.mMaxSampleRate + ", mMinSampleRate=" + this.mMinSampleRate + ", mSupportedAreas=" + this.mSupportedAreas + ", mType=" + this.mType + ", mIsSerializable=" + this.mIsSerializable + ", mTopic=" + this.mTopic + ", mSubscribe=" + this.mSubscribe + ", mPublish=" + this.mPublish + ", mSource=" + this.mSource + '}';
    }

    public static class AreaConfig implements Parcelable {
        public static final Parcelable.Creator<AreaConfig> CREATOR = new Parcelable.Creator<AreaConfig>() { // from class: mega.car.hardware.CarPropertyConfig.AreaConfig.1
            @Override // android.os.Parcelable.Creator
            public AreaConfig createFromParcel(Parcel parcel) {
                return new AreaConfig(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public AreaConfig[] newArray(int i) {
                return new AreaConfig[i];
            }
        };
        private final int mAreaId;
        private final float mMaxValue;
        private final float mMinValue;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public int getAreaId() {
            return this.mAreaId;
        }

        public float getMaxValue() {
            return this.mMaxValue;
        }

        public float getMinValue() {
            return this.mMinValue;
        }

        public AreaConfig(int i, float f, float f2) {
            this.mAreaId = i;
            this.mMinValue = f;
            this.mMaxValue = f2;
        }

        private AreaConfig(Parcel parcel) {
            this.mAreaId = parcel.readInt();
            this.mMinValue = parcel.readFloat();
            this.mMaxValue = parcel.readFloat();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mAreaId);
            parcel.writeFloat(this.mMinValue);
            parcel.writeFloat(this.mMaxValue);
        }

        public String toString() {
            return "CarAreaConfig{mAreaId=" + this.mAreaId + "mMinValue=" + this.mMinValue + ", mMaxValue=" + this.mMaxValue + '}';
        }
    }

    public static <T> Builder<T> newBuilder(Class<T> cls, int i, int i2) {
        return new Builder<>(i2, i, cls);
    }

    public static class Builder<T> {
        private int mAccess;
        private int mChangeMode;
        private String mConfigString;
        private int mDefValue;
        private boolean mHasCompatDefValue;
        private boolean mIsSerializable;
        private float mMaxSampleRate;
        private float mMinSampleRate;
        private final int mPropertyId;
        private String mPublish;
        private int mSource;
        private String mSubscribe;
        private final SparseArray<AreaConfig> mSupportedAreas;
        private String mTopic;
        private final Class<T> mType;

        public Builder<T> setAccess(int i) {
            this.mAccess = i;
            return this;
        }

        public Builder<T> setChangeMode(int i) {
            this.mChangeMode = i;
            return this;
        }

        public Builder<T> setConfigString(String str) {
            this.mConfigString = str;
            return this;
        }

        public Builder<T> setDefValue(int i) {
            this.mDefValue = i;
            return this;
        }

        public Builder<T> setHasCompatDefValue(boolean z) {
            this.mHasCompatDefValue = z;
            return this;
        }

        public Builder<T> setMaxSampleRate(float f) {
            this.mMaxSampleRate = f;
            return this;
        }

        public Builder<T> setMinSampleRate(float f) {
            this.mMinSampleRate = f;
            return this;
        }

        public Builder<T> setPublish(String str) {
            this.mPublish = str;
            return this;
        }

        public Builder<T> setSerializable(boolean z) {
            this.mIsSerializable = z;
            return this;
        }

        public Builder<T> setSource(int i) {
            this.mSource = i;
            return this;
        }

        public Builder<T> setSubscribe(String str) {
            this.mSubscribe = str;
            return this;
        }

        public Builder<T> setTopic(String str) {
            this.mTopic = str;
            return this;
        }

        private Builder(int i, int i2, Class<T> cls) {
            this.mHasCompatDefValue = false;
            this.mSupportedAreas = new SparseArray<>(i);
            this.mPropertyId = i2;
            this.mType = cls;
        }

        public Builder<T> addArea(int i) {
            return addAreaConfig(i, Float.MIN_VALUE, Float.MAX_VALUE);
        }

        public Builder<T> addAreaConfig(int i, float f, float f2) {
            this.mSupportedAreas.put(i, new AreaConfig(i, f, f2));
            return this;
        }

        public CarPropertyConfig<T> build() {
            return new CarPropertyConfig<>(this.mAccess, this.mChangeMode, this.mConfigString, this.mMaxSampleRate, this.mMinSampleRate, this.mPropertyId, this.mSupportedAreas, this.mType, this.mIsSerializable, this.mTopic, this.mSubscribe, this.mPublish, this.mSource);
        }
    }
}
