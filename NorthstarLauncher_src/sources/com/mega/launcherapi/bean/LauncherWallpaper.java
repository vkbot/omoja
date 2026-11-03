package com.mega.launcherapi.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class LauncherWallpaper implements Parcelable {
    public static final Parcelable.Creator<LauncherWallpaper> CREATOR = new Parcelable.Creator<LauncherWallpaper>() { // from class: com.mega.launcherapi.bean.LauncherWallpaper.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LauncherWallpaper createFromParcel(Parcel parcel) {
            return new LauncherWallpaper(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LauncherWallpaper[] newArray(int i) {
            return new LauncherWallpaper[i];
        }
    };
    public String from;
    private long id;
    public String name;
    public String wallpaperId;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.id);
        parcel.writeString(this.wallpaperId);
        parcel.writeString(this.name);
        parcel.writeString(this.from);
    }

    public void readFromParcel(Parcel parcel) {
        this.id = parcel.readLong();
        this.wallpaperId = parcel.readString();
        this.name = parcel.readString();
        this.from = parcel.readString();
    }

    public LauncherWallpaper() {
        this.id = 0L;
    }

    public LauncherWallpaper(long j, String str, String str2, String str3) {
        this.id = j;
        this.wallpaperId = str;
        this.name = str2;
        this.from = str3;
    }

    protected LauncherWallpaper(Parcel parcel) {
        this.id = 0L;
        this.id = parcel.readLong();
        this.wallpaperId = parcel.readString();
        this.name = parcel.readString();
        this.from = parcel.readString();
    }

    public String toString() {
        return "LauncherWallpaper{id=" + this.id + ", wallpaperId='" + this.wallpaperId + "', name='" + this.name + "', from='" + this.from + "'}";
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.wallpaperId, ((LauncherWallpaper) obj).wallpaperId);
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.id), this.wallpaperId, this.name, this.from);
    }
}
