package com.chery.ivi.vdb.event.id.vr.bean;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class VDP2P implements Parcelable {
    public static final Parcelable$Creator<VDP2P> CREATOR = new VDP2P$1();
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
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

    public VDP2P(String str, int i9, String str2, boolean z8) {
        this(str, i9, str2, z8, null, 0, null, null, null, null);
    }

    private VDP2P(String str, int i9, String str2, boolean z8, String str3, int i10, String str4, String str5, String str6, String str7) {
        this.semanticType = str;
        this.functionId = i9;
        this.value = str2;
        this.enable = z8;
        this.time = str3;
        this.resultCode = i10;
        this.respondId = str4;
        this.position = str5;
        this.user = str6;
        this.unique = str7;
    }

    public /* synthetic */ VDP2P(Parcel parcel, int i9) {
        this(parcel);
    }
}
