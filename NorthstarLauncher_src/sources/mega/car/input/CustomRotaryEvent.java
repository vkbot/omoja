package mega.car.input;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class CustomRotaryEvent implements Parcelable {
    private final boolean mClockwise;
    private final long mEventTime;
    private final int mFallbackType;
    private final int mInputCode;
    private final int mRotaryTimes;
    private final int mSeq;
    private static final AtomicInteger NEXT_SEQ = new AtomicInteger();
    public static final Parcelable.Creator<CustomRotaryEvent> CREATOR = new Parcelable.Creator<CustomRotaryEvent>() { // from class: mega.car.input.CustomRotaryEvent.1
        @Override // android.os.Parcelable.Creator
        public CustomRotaryEvent[] newArray(int i) {
            return new CustomRotaryEvent[i];
        }

        @Override // android.os.Parcelable.Creator
        public CustomRotaryEvent createFromParcel(Parcel parcel) {
            return new CustomRotaryEvent(parcel);
        }
    };

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long getEventTime() {
        return this.mEventTime;
    }

    public int getFallbackType() {
        return this.mFallbackType;
    }

    public int getInputCode() {
        return this.mInputCode;
    }

    public int getRotaryTimes() {
        return this.mRotaryTimes;
    }

    public int getSeq() {
        return this.mSeq;
    }

    public boolean isClockwise() {
        return this.mClockwise;
    }

    public CustomRotaryEvent(int i, int i2, long j, int i3, boolean z) {
        this.mSeq = NEXT_SEQ.getAndIncrement();
        this.mInputCode = i;
        this.mRotaryTimes = i2;
        this.mClockwise = z;
        this.mEventTime = j;
        this.mFallbackType = i3;
    }

    public String rotaryFallbackToString() {
        int i = this.mFallbackType;
        if (i == -1) {
            return "TYPE_ROTARY_UNSUPPORTED(" + this.mFallbackType + ")";
        }
        if (i == 1) {
            return "TYPE_ROTARY_VOLUME(" + this.mFallbackType + ")";
        }
        if (i == 2) {
            return "TYPE_ROTARY_MEDIA(" + this.mFallbackType + ")";
        }
        return "TYPE_ROTARY_INVALID(" + this.mFallbackType + ")";
    }

    public String toString() {
        return "CustomRotaryEvent{mInputCode=" + this.mInputCode + ", mRotaryTimes=" + this.mRotaryTimes + ", mClockwise=" + this.mClockwise + ", mSeq=" + this.mSeq + ", mEventTime=" + this.mEventTime + ", mFallbackType=" + rotaryFallbackToString() + '}';
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CustomRotaryEvent)) {
            return false;
        }
        CustomRotaryEvent customRotaryEvent = (CustomRotaryEvent) obj;
        return this.mInputCode == customRotaryEvent.mInputCode && this.mRotaryTimes == customRotaryEvent.mRotaryTimes && this.mClockwise == customRotaryEvent.mClockwise && this.mEventTime == customRotaryEvent.mEventTime && this.mSeq == customRotaryEvent.mSeq && this.mFallbackType == customRotaryEvent.mFallbackType;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mInputCode), Integer.valueOf(this.mRotaryTimes), Boolean.valueOf(this.mClockwise), Long.valueOf(this.mEventTime), Integer.valueOf(this.mSeq), Integer.valueOf(this.mFallbackType));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mSeq);
        parcel.writeInt(this.mInputCode);
        parcel.writeInt(this.mRotaryTimes);
        parcel.writeInt(this.mClockwise ? 1 : 0);
        parcel.writeLong(this.mEventTime);
        parcel.writeInt(this.mFallbackType);
    }

    CustomRotaryEvent(Parcel parcel) {
        this.mSeq = parcel.readInt();
        this.mInputCode = parcel.readInt();
        this.mRotaryTimes = parcel.readInt();
        this.mClockwise = parcel.readInt() == 1;
        this.mEventTime = parcel.readLong();
        this.mFallbackType = parcel.readInt();
    }
}
