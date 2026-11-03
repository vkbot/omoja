package com.mega.carlink.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class AppInfo implements Parcelable {
    public static final Parcelable.Creator<AppInfo> CREATOR = new Parcelable.Creator<AppInfo>() { // from class: com.mega.carlink.model.AppInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppInfo createFromParcel(Parcel parcel) {
            return new AppInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppInfo[] newArray(int i) {
            return new AppInfo[i];
        }
    };
    public AppGeneralInfo generalInfo;
    public byte[] icon;
    public String packageName;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public AppGeneralInfo getGeneralInfo() {
        return this.generalInfo;
    }

    public byte[] getIcon() {
        return this.icon;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public void setGeneralInfo(AppGeneralInfo appGeneralInfo) {
        this.generalInfo = appGeneralInfo;
    }

    public void setIcon(byte[] bArr) {
        this.icon = bArr;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public AppInfo(AppGeneralInfo appGeneralInfo, String str, byte[] bArr) {
        this.generalInfo = appGeneralInfo;
        this.packageName = str;
        this.icon = bArr;
    }

    protected AppInfo(Parcel parcel) {
        this.generalInfo = (AppGeneralInfo) parcel.readParcelable(AppGeneralInfo.class.getClassLoader());
        this.packageName = parcel.readString();
        this.icon = parcel.createByteArray();
    }

    public String toString() {
        return "AppInfo{generalInfo=" + this.generalInfo + ", packageName='" + this.packageName + "', icon.length=" + Arrays.toString(this.icon).length() + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.generalInfo, i);
        parcel.writeString(this.packageName);
        parcel.writeByteArray(this.icon);
    }
}
