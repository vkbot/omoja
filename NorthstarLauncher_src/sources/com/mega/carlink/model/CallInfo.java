package com.mega.carlink.model;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class CallInfo implements Parcelable {
    public static final Parcelable.Creator<CallInfo> CREATOR = new Parcelable.Creator<CallInfo>() { // from class: com.mega.carlink.model.CallInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CallInfo createFromParcel(Parcel parcel) {
            return new CallInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CallInfo[] newArray(int i) {
            return new CallInfo[i];
        }
    };
    public int callState;
    public int connectedTime;
    public int inCallAppId;
    public boolean isIPCall;
    public boolean isNeedShowFloatingWindow;
    public String name;
    public String number;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getCallState() {
        return this.callState;
    }

    public int getConnectedTime() {
        return this.connectedTime;
    }

    public int getInCallAppId() {
        return this.inCallAppId;
    }

    public String getName() {
        return this.name;
    }

    public String getNumber() {
        return this.number;
    }

    public boolean isIPCall() {
        return this.isIPCall;
    }

    public boolean isNeedShowFloatingWindow() {
        return this.isNeedShowFloatingWindow;
    }

    public void setCallState(int i) {
        this.callState = i;
    }

    public void setConnectedTime(int i) {
        this.connectedTime = i;
    }

    public void setIPCall(boolean z) {
        this.isIPCall = z;
    }

    public void setInCallAppId(int i) {
        this.inCallAppId = i;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNeedShowFloatingWindow(boolean z) {
        this.isNeedShowFloatingWindow = z;
    }

    public void setNumber(String str) {
        this.number = str;
    }

    public CallInfo(int i, String str, String str2, boolean z, int i2, boolean z2, int i3) {
        this.callState = i;
        this.number = str;
        this.name = str2;
        this.isIPCall = z;
        this.connectedTime = i2;
        this.isNeedShowFloatingWindow = z2;
        this.inCallAppId = i3;
    }

    protected CallInfo(Parcel parcel) {
        this.callState = parcel.readInt();
        this.number = parcel.readString();
        this.name = parcel.readString();
        this.isIPCall = parcel.readByte() != 0;
        this.connectedTime = parcel.readInt();
        this.isNeedShowFloatingWindow = parcel.readByte() != 0;
        this.inCallAppId = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.callState);
        parcel.writeString(this.number);
        parcel.writeString(this.name);
        parcel.writeByte(this.isIPCall ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.connectedTime);
        parcel.writeByte(this.isNeedShowFloatingWindow ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.inCallAppId);
    }

    public String toString() {
        return "CallInfo{callState=" + this.callState + ", number='" + this.number + "', name='" + this.name + "', isIPCall=" + this.isIPCall + ", connectedTime=" + this.connectedTime + ", isNeedShowFloatingWindow=" + this.isNeedShowFloatingWindow + ", inCallAppId=" + this.inCallAppId + '}';
    }
}
