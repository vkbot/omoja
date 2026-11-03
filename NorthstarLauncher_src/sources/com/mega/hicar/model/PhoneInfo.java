package com.mega.hicar.model;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class PhoneInfo implements Parcelable {
    public static final Parcelable.Creator<PhoneInfo> CREATOR = new Parcelable.Creator<PhoneInfo>() { // from class: com.mega.hicar.model.PhoneInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PhoneInfo createFromParcel(Parcel parcel) {
            return new PhoneInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PhoneInfo[] newArray(int i) {
            return new PhoneInfo[i];
        }
    };
    private String mHiCarBrMac;
    private String mHiCarId;
    private String mHiCarName;
    private long mPreConnectTime;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getHiCarBrMac() {
        return this.mHiCarBrMac;
    }

    public String getHiCarId() {
        return this.mHiCarId;
    }

    public String getHiCarName() {
        return this.mHiCarName;
    }

    public long getPreConnectTime() {
        return this.mPreConnectTime;
    }

    public PhoneInfo(String str, String str2, String str3, long j) {
        this.mHiCarId = str;
        this.mHiCarName = str2;
        this.mHiCarBrMac = str3;
        this.mPreConnectTime = j;
    }

    protected PhoneInfo(Parcel parcel) {
        this.mHiCarId = parcel.readString();
        this.mHiCarName = parcel.readString();
        this.mHiCarBrMac = parcel.readString();
        this.mPreConnectTime = parcel.readLong();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mHiCarId);
        parcel.writeString(this.mHiCarName);
        parcel.writeString(this.mHiCarBrMac);
        parcel.writeLong(this.mPreConnectTime);
    }

    public String toString() {
        return "PhoneInfo{mHiCarId='" + this.mHiCarId + "', mHiCarName='" + this.mHiCarName + "', mHiCarBrMac='" + this.mHiCarBrMac + "', mPreConnectTime=" + this.mPreConnectTime + '}';
    }
}
