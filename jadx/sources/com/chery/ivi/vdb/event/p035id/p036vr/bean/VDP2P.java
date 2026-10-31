package com.chery.ivi.vdb.event.p035id.p036vr.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class VDP2P implements Parcelable {
    public static final Parcelable.Creator<VDP2P> CREATOR = new Parcelable.Creator<VDP2P>() { // from class: com.chery.ivi.vdb.event.id.vr.bean.VDP2P.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VDP2P createFromParcel(Parcel parcel) {
            return new VDP2P(parcel, 0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VDP2P[] newArray(int i10) {
            return new VDP2P[i10];
        }
    };
    private final boolean enable;
    private final int functionId;
    private final String position;
    private final String respondId;
    private final int resultCode;
    private final String semanticType;
    private final String time;
    private final String unique;
    private final String user;
    private final String value;

    private VDP2P(Parcel parcel) {
        this.semanticType = parcel.readString();
        this.functionId = parcel.readInt();
        this.value = parcel.readString();
        this.enable = parcel.readInt() != 0;
        this.time = parcel.readString();
        this.resultCode = parcel.readInt();
        this.respondId = parcel.readString();
        this.position = parcel.readString();
        this.user = parcel.readString();
        this.unique = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.semanticType);
        parcel.writeInt(this.functionId);
        parcel.writeString(this.value);
        parcel.writeInt(this.enable ? 1 : 0);
        parcel.writeString(this.time);
        parcel.writeInt(this.resultCode);
        parcel.writeString(this.respondId);
        parcel.writeString(this.position);
        parcel.writeString(this.user);
        parcel.writeString(this.unique);
    }

    public VDP2P(String str, int i10, String str2, boolean z9) {
        this(str, i10, str2, z9, null, 0, null, null, null, null);
    }

    private VDP2P(String str, int i10, String str2, boolean z9, String str3, int i11, String str4, String str5, String str6, String str7) {
        this.semanticType = str;
        this.functionId = i10;
        this.value = str2;
        this.enable = z9;
        this.time = str3;
        this.resultCode = i11;
        this.respondId = str4;
        this.position = str5;
        this.user = str6;
        this.unique = str7;
    }

    public /* synthetic */ VDP2P(Parcel parcel, int i10) {
        this(parcel);
    }
}
