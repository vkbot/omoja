package com.mega.nexus.os;

import android.os.Parcel;

/* JADX INFO: loaded from: classes2.dex */
public class MegaParcel {
    public static void writeBlob(Parcel parcel, byte[] bArr) {
        parcel.writeBlob(bArr, 0, bArr != null ? bArr.length : 0);
    }

    public static byte[] readBlob(Parcel parcel) {
        return parcel.readBlob();
    }
}
