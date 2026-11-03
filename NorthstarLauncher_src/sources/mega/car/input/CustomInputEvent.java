package mega.car.input;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public final class CustomInputEvent implements Parcelable {
    private final int mAction;
    private final long mDownTime;
    private final long mEventTime;
    private final int mInputCode;
    private final int mRepeatCount;
    private final int mSeq;
    private static final AtomicInteger NEXT_SEQ = new AtomicInteger();
    public static final Parcelable.Creator<CustomInputEvent> CREATOR = new Parcelable.Creator<CustomInputEvent>() { // from class: mega.car.input.CustomInputEvent.1
        @Override // android.os.Parcelable.Creator
        public CustomInputEvent[] newArray(int i) {
            return new CustomInputEvent[i];
        }

        @Override // android.os.Parcelable.Creator
        public CustomInputEvent createFromParcel(Parcel parcel) {
            return new CustomInputEvent(parcel);
        }
    };

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getAction() {
        return this.mAction;
    }

    public long getDownTime() {
        return this.mDownTime;
    }

    public long getEventTime() {
        return this.mEventTime;
    }

    public int getInputCode() {
        return this.mInputCode;
    }

    public int getRepeatCount() {
        return this.mRepeatCount;
    }

    public int getSeq() {
        return this.mSeq;
    }

    public CustomInputEvent(int i, int i2, long j, long j2) {
        this.mSeq = NEXT_SEQ.getAndIncrement();
        this.mInputCode = i;
        this.mAction = i2;
        this.mDownTime = j;
        this.mEventTime = j2;
        this.mRepeatCount = 0;
    }

    CustomInputEvent(int i, int i2, int i3, long j, long j2, int i4) {
        this.mSeq = i;
        this.mInputCode = i2;
        this.mAction = i3;
        this.mDownTime = j;
        this.mEventTime = j2;
        this.mRepeatCount = i4;
    }

    public static CustomInputEvent changeTimeRepeat(CustomInputEvent customInputEvent, long j, int i) {
        return new CustomInputEvent(customInputEvent.getSeq(), customInputEvent.getInputCode(), customInputEvent.getAction(), customInputEvent.getDownTime(), j, i);
    }

    public String toString() {
        return "CustomInputEvent{mInputCode=" + this.mInputCode + ", mAction=" + this.mAction + ", mDownTime=" + this.mDownTime + ", mEventTime=" + this.mEventTime + ", mRepeatCount=" + this.mRepeatCount + '}';
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CustomInputEvent)) {
            return false;
        }
        CustomInputEvent customInputEvent = (CustomInputEvent) obj;
        return this.mInputCode == customInputEvent.mInputCode && this.mAction == customInputEvent.mAction && this.mDownTime == customInputEvent.mDownTime && this.mEventTime == customInputEvent.mEventTime;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mInputCode), Integer.valueOf(this.mAction), Long.valueOf(this.mDownTime), Long.valueOf(this.mEventTime));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mSeq);
        parcel.writeInt(this.mInputCode);
        parcel.writeInt(this.mAction);
        parcel.writeLong(this.mDownTime);
        parcel.writeLong(this.mEventTime);
        parcel.writeInt(this.mRepeatCount);
    }

    CustomInputEvent(Parcel parcel) {
        this.mSeq = parcel.readInt();
        this.mInputCode = parcel.readInt();
        this.mAction = parcel.readInt();
        this.mDownTime = parcel.readLong();
        this.mEventTime = parcel.readLong();
        this.mRepeatCount = parcel.readInt();
    }
}
