package com.google.android.material.appbar;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import androidx.customview.view.AbsSavedState;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d extends AbsSavedState {
    public static final Parcelable$Creator<d> CREATOR = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f1133b;
    public boolean c;
    public int d;
    public float e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f1134f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f1133b = parcel.readByte() != 0;
        this.c = parcel.readByte() != 0;
        this.d = parcel.readInt();
        this.e = parcel.readFloat();
        this.f1134f = parcel.readByte() != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        super.writeToParcel(parcel, i9);
        parcel.writeByte(this.f1133b ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.c ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.d);
        parcel.writeFloat(this.e);
        parcel.writeByte(this.f1134f ? (byte) 1 : (byte) 0);
    }
}
