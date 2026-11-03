package com.mega.carlink.model;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class AppGeneralInfo implements Parcelable {
    public static final Parcelable.Creator<AppGeneralInfo> CREATOR = new Parcelable.Creator<AppGeneralInfo>() { // from class: com.mega.carlink.model.AppGeneralInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppGeneralInfo createFromParcel(Parcel parcel) {
            return new AppGeneralInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppGeneralInfo[] newArray(int i) {
            return new AppGeneralInfo[i];
        }
    };
    public int appId;
    public int category;
    public String label;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getAppId() {
        return this.appId;
    }

    public int getCategory() {
        return this.category;
    }

    public String getLabel() {
        return this.label;
    }

    public void setAppId(int i) {
        this.appId = i;
    }

    public void setCategory(int i) {
        this.category = i;
    }

    public void setLabel(String str) {
        this.label = str;
    }

    public AppGeneralInfo(int i, String str, int i2) {
        this.appId = i;
        this.label = str;
        this.category = i2;
    }

    protected AppGeneralInfo(Parcel parcel) {
        this.appId = parcel.readInt();
        this.label = parcel.readString();
        this.category = parcel.readInt();
    }

    public String toString() {
        return "AppGeneralInfo{appId=" + this.appId + ", label='" + this.label + "', category=" + this.category + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.appId);
        parcel.writeString(this.label);
        parcel.writeInt(this.category);
    }
}
