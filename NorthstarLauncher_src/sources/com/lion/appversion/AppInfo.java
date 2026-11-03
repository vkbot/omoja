package com.lion.appversion;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class AppInfo implements Parcelable {
    public static final Parcelable.Creator<AppInfo> CREATOR = new Parcelable.Creator<AppInfo>() { // from class: com.lion.appversion.AppInfo.1
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
    private String packageName;
    private float progress = -1.0f;
    private String softwareIcon;
    private String softwareId;
    private String softwareName;
    private int status;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public float getProgress() {
        return this.progress;
    }

    public String getSoftwareIcon() {
        return this.softwareIcon;
    }

    public String getSoftwareId() {
        return this.softwareId;
    }

    public String getSoftwareName() {
        return this.softwareName;
    }

    public int getStatus() {
        return this.status;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setProgress(float f) {
        this.progress = f;
    }

    public void setSoftwareIcon(String str) {
        this.softwareIcon = str;
    }

    public void setSoftwareId(String str) {
        this.softwareId = str;
    }

    public void setSoftwareName(String str) {
        this.softwareName = str;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public AppInfo() {
    }

    protected AppInfo(Parcel parcel) {
        readFromParcel(parcel);
    }

    public void readFromParcel(Parcel parcel) {
        this.softwareId = parcel.readString();
        this.softwareName = parcel.readString();
        this.softwareIcon = parcel.readString();
        this.packageName = parcel.readString();
        this.progress = parcel.readFloat();
        this.status = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.softwareId);
        parcel.writeString(this.softwareName);
        parcel.writeString(this.softwareIcon);
        parcel.writeString(this.packageName);
        parcel.writeFloat(this.progress);
        parcel.writeInt(this.status);
    }
}
