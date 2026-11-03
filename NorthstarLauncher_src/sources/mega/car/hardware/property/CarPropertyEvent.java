package mega.car.hardware.property;

import android.os.Parcel;
import android.os.Parcelable;
import mega.car.hardware.CarPropertyValue;

/* JADX INFO: loaded from: classes2.dex */
public class CarPropertyEvent implements Parcelable {
    public static final Parcelable.Creator<CarPropertyEvent> CREATOR = new Parcelable.Creator<CarPropertyEvent>() { // from class: mega.car.hardware.property.CarPropertyEvent.1
        @Override // android.os.Parcelable.Creator
        public CarPropertyEvent createFromParcel(Parcel parcel) {
            return new CarPropertyEvent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public CarPropertyEvent[] newArray(int i) {
            return new CarPropertyEvent[i];
        }
    };
    private static final int ERROR_EVENT_VALUE = -1;
    public static final int PROPERTY_EVENT_ERROR = 1;
    public static final int PROPERTY_EVENT_PROPERTY_CHANGE = 0;
    private final CarPropertyValue<?> mCarPropertyValue;
    private final int mEventType;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public CarPropertyValue<?> getCarPropertyValue() {
        return this.mCarPropertyValue;
    }

    public int getEventType() {
        return this.mEventType;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mEventType);
        parcel.writeParcelable(this.mCarPropertyValue, i);
    }

    public CarPropertyEvent(int i, CarPropertyValue<?> carPropertyValue) {
        this.mEventType = i;
        this.mCarPropertyValue = carPropertyValue;
    }

    private CarPropertyEvent(Parcel parcel) {
        this.mEventType = parcel.readInt();
        this.mCarPropertyValue = (CarPropertyValue) parcel.readParcelable(CarPropertyValue.class.getClassLoader());
    }

    public static CarPropertyEvent createErrorEvent(int i, int i2) {
        return new CarPropertyEvent(1, (CarPropertyValue<?>) new CarPropertyValue(i, i2, 2, 0L, -1));
    }

    public String toString() {
        return "CarPropertyEvent{mEventType=" + this.mEventType + ", mCarPropertyValue=" + this.mCarPropertyValue + '}';
    }
}
