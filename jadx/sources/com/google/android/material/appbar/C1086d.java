package com.google.android.material.appbar;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.customview.view.AbsSavedState;

/* JADX INFO: renamed from: com.google.android.material.appbar.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1086d extends AbsSavedState {
    public static final Parcelable.Creator<C1086d> CREATOR = new C1085c();

    /* JADX INFO: renamed from: b */
    public boolean f2085b;

    /* JADX INFO: renamed from: c */
    public boolean f2086c;

    /* JADX INFO: renamed from: d */
    public int f2087d;

    /* JADX INFO: renamed from: e */
    public float f2088e;

    /* JADX INFO: renamed from: f */
    public boolean f2089f;

    public C1086d(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f2085b = parcel.readByte() != 0;
        this.f2086c = parcel.readByte() != 0;
        this.f2087d = parcel.readInt();
        this.f2088e = parcel.readFloat();
        this.f2089f = parcel.readByte() != 0;
    }

    @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        parcel.writeByte(this.f2085b ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f2086c ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.f2087d);
        parcel.writeFloat(this.f2088e);
        parcel.writeByte(this.f2089f ? (byte) 1 : (byte) 0);
    }
}
