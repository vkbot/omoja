package com.mega.carlink.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class PhoneInfo implements Parcelable, Serializable {
    public static final Parcelable.Creator<PhoneInfo> CREATOR = new Parcelable.Creator<PhoneInfo>() { // from class: com.mega.carlink.model.PhoneInfo.1
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

    @SerializedName("mDeviceBrMac")
    private String mDeviceBrMac;

    @SerializedName("mDeviceId")
    private String mDeviceId;

    @SerializedName("mDeviceName")
    private String mDeviceName;

    @SerializedName("mPreConnectTime")
    private long mPreConnectTime;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getDeviceBrMac() {
        return this.mDeviceBrMac;
    }

    public String getDeviceId() {
        return this.mDeviceId;
    }

    public String getDeviceName() {
        return this.mDeviceName;
    }

    public long getPreConnectTime() {
        return this.mPreConnectTime;
    }

    public void setDeviceBrMac(String str) {
        this.mDeviceBrMac = str;
    }

    public void setDeviceId(String str) {
        this.mDeviceId = str;
    }

    public void setDeviceName(String str) {
        this.mDeviceName = str;
    }

    public void setPreConnectTime(long j) {
        this.mPreConnectTime = j;
    }

    public PhoneInfo(String str, String str2, String str3, long j) {
        this.mDeviceId = str;
        this.mDeviceName = str2;
        this.mDeviceBrMac = str3;
        this.mPreConnectTime = j;
    }

    protected PhoneInfo(Parcel parcel) {
        this.mDeviceId = parcel.readString();
        this.mDeviceName = parcel.readString();
        this.mDeviceBrMac = parcel.readString();
        this.mPreConnectTime = parcel.readLong();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mDeviceId);
        parcel.writeString(this.mDeviceName);
        parcel.writeString(this.mDeviceBrMac);
        parcel.writeLong(this.mPreConnectTime);
    }

    public String toString() {
        return "PhoneInfo{mDeviceId='" + this.mDeviceId + "', mDeviceName='" + this.mDeviceName + "', mDeviceBrMac='" + this.mDeviceBrMac + "', mPreConnectTime=" + this.mPreConnectTime + '}';
    }
}
