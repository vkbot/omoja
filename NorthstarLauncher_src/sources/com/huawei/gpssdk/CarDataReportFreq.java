package com.huawei.gpssdk;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class CarDataReportFreq implements Parcelable {
    public static final Parcelable.Creator<CarDataReportFreq> CREATOR = new Parcelable.Creator<CarDataReportFreq>() { // from class: com.huawei.gpssdk.CarDataReportFreq.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CarDataReportFreq createFromParcel(Parcel parcel) {
            return new CarDataReportFreq(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CarDataReportFreq[] newArray(int i) {
            return new CarDataReportFreq[i];
        }
    };
    int drivingFreq;
    int locationFreq;
    int sensorFreq;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getDrivingFreq() {
        return this.drivingFreq;
    }

    public int getLocationFreq() {
        return this.locationFreq;
    }

    public int getSensorFreq() {
        return this.sensorFreq;
    }

    public void setDrivingFreq(int i) {
        this.drivingFreq = i;
    }

    public void setLocationFreq(int i) {
        this.locationFreq = i;
    }

    public void setSensorFreq(int i) {
        this.sensorFreq = i;
    }

    public CarDataReportFreq() {
    }

    public CarDataReportFreq(Parcel parcel) {
        this.locationFreq = parcel.readInt();
        this.drivingFreq = parcel.readInt();
        this.sensorFreq = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.locationFreq);
        parcel.writeInt(this.drivingFreq);
        parcel.writeInt(this.sensorFreq);
    }
}
