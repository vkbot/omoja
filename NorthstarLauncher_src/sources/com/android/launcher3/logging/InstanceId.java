package com.android.launcher3.logging;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class InstanceId implements Parcelable {
    public static final Parcelable.Creator<InstanceId> CREATOR = new Parcelable.Creator<InstanceId>() { // from class: com.android.launcher3.logging.InstanceId.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public InstanceId createFromParcel(Parcel in) {
            return new InstanceId(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public InstanceId[] newArray(int size) {
            return new InstanceId[size];
        }
    };
    static final int INSTANCE_ID_MAX = 1048576;
    private final int mId;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getId() {
        return this.mId;
    }

    public int hashCode() {
        return this.mId;
    }

    InstanceId(int id) {
        this.mId = Math.min(Math.max(0, id), 1048576);
    }

    private InstanceId(Parcel in) {
        this(in.readInt());
    }

    public String toString() {
        return this.mId + "";
    }

    public static InstanceId fakeInstanceId(int id) {
        return new InstanceId(id);
    }

    public boolean equals(Object obj) {
        return (obj instanceof InstanceId) && this.mId == ((InstanceId) obj).mId;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        out.writeInt(this.mId);
    }
}
