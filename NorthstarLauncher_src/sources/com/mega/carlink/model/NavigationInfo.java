package com.mega.carlink.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.mega.chery.utils.CheryCountryArea;

/* JADX INFO: loaded from: classes2.dex */
public class NavigationInfo implements Parcelable {
    public static final Parcelable.Creator<NavigationInfo> CREATOR = new Parcelable.Creator<NavigationInfo>() { // from class: com.mega.carlink.model.NavigationInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NavigationInfo createFromParcel(Parcel parcel) {
            return new NavigationInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NavigationInfo[] newArray(int i) {
            return new NavigationInfo[i];
        }
    };
    public int appId;
    public byte[] directionIcon;
    public String distance;
    public String distanceUnit;
    public boolean isNavigating;
    public String operation;
    public String title1;
    public String title2;
    public String where;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getAppId() {
        return this.appId;
    }

    public byte[] getDirectionIcon() {
        return this.directionIcon;
    }

    public String getDistance() {
        return this.distance;
    }

    public String getDistanceUnit() {
        return this.distanceUnit;
    }

    public String getOperation() {
        return this.operation;
    }

    public String getTitle1() {
        return this.title1;
    }

    public String getTitle2() {
        return this.title2;
    }

    public String getWhere() {
        return this.where;
    }

    public boolean isNavigating() {
        return this.isNavigating;
    }

    public void setAppId(int i) {
        this.appId = i;
    }

    public void setDirectionIcon(byte[] bArr) {
        this.directionIcon = bArr;
    }

    public void setDistance(String str) {
        this.distance = str;
    }

    public void setDistanceUnit(String str) {
        this.distanceUnit = str;
    }

    public void setNavigating(boolean z) {
        this.isNavigating = z;
    }

    public void setOperation(String str) {
        this.operation = str;
    }

    public void setTitle1(String str) {
        this.title1 = str;
    }

    public void setTitle2(String str) {
        this.title2 = str;
    }

    public void setWhere(String str) {
        this.where = str;
    }

    public NavigationInfo(boolean z, byte[] bArr, String str, String str2, String str3, String str4, String str5, String str6, int i) {
        this.isNavigating = z;
        this.directionIcon = bArr;
        this.distance = str;
        this.distanceUnit = str2;
        this.operation = str3;
        this.where = str4;
        this.title1 = str5;
        this.title2 = str6;
        this.appId = i;
    }

    protected NavigationInfo(Parcel parcel) {
        this.isNavigating = parcel.readByte() != 0;
        this.directionIcon = parcel.createByteArray();
        this.distance = parcel.readString();
        this.distanceUnit = parcel.readString();
        this.operation = parcel.readString();
        this.where = parcel.readString();
        this.title1 = parcel.readString();
        this.title2 = parcel.readString();
        this.appId = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte(this.isNavigating ? (byte) 1 : (byte) 0);
        parcel.writeByteArray(this.directionIcon);
        parcel.writeString(this.distance);
        parcel.writeString(this.distanceUnit);
        parcel.writeString(this.operation);
        parcel.writeString(this.where);
        parcel.writeString(this.title1);
        parcel.writeString(this.title2);
        parcel.writeInt(this.appId);
    }

    public String toString() {
        return new StringBuilder("NavigationInfo{isNavigating=").append(this.isNavigating).append(", directionIcon=").append(this.directionIcon).toString() == null ? CheryCountryArea.KEY_CHINA : this.directionIcon.length + ", distance='" + this.distance + "', distanceUnit='" + this.distanceUnit + "', operation='" + this.operation + "', where='" + this.where + "', title1='" + this.title1 + "', title2='" + this.title2 + "', appId=" + this.appId + '}';
    }
}
