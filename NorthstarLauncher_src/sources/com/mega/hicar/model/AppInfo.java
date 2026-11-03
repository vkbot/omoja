package com.mega.hicar.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class AppInfo implements Parcelable {
    public static final Parcelable.Creator<AppInfo> CREATOR = new Parcelable.Creator<AppInfo>() { // from class: com.mega.hicar.model.AppInfo.1
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
    public byte[] icon;
    public String name;
    public String packageName;
    public int type;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public AppInfo(String str, String str2, byte[] bArr, int i) {
        this.packageName = str;
        this.name = str2;
        this.icon = bArr;
        this.type = i;
    }

    protected AppInfo(Parcel parcel) {
        this.packageName = parcel.readString();
        this.name = parcel.readString();
        this.icon = parcel.createByteArray();
        this.type = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.packageName);
        parcel.writeString(this.name);
        parcel.writeByteArray(this.icon);
        parcel.writeInt(this.type);
    }

    public String toString() {
        return "AppInfo{mPackageName='" + this.packageName + "', mName='" + this.name + "', mIcon=" + this.icon.length + ", mType=" + this.type + '}';
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.packageName, ((AppInfo) obj).packageName);
    }

    public int hashCode() {
        return Objects.hash(this.packageName);
    }
}
