package v2;

import android.os.Parcel;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h extends w2.a {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final u2.a d(u2.b bVar, int i9, u2.b bVar2) {
        Parcel parcelC = c();
        w2.c.a(parcelC, bVar);
        parcelC.writeString("com.google.android.gms.providerinstaller.dynamite");
        parcelC.writeInt(i9);
        w2.c.a(parcelC, bVar2);
        Parcel parcelB = b(parcelC, 2);
        u2.a aVarC = u2.b.c(parcelB.readStrongBinder());
        parcelB.recycle();
        return aVarC;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final u2.a e(u2.b bVar, int i9, u2.b bVar2) {
        Parcel parcelC = c();
        w2.c.a(parcelC, bVar);
        parcelC.writeString("com.google.android.gms.providerinstaller.dynamite");
        parcelC.writeInt(i9);
        w2.c.a(parcelC, bVar2);
        Parcel parcelB = b(parcelC, 3);
        u2.a aVarC = u2.b.c(parcelB.readStrongBinder());
        parcelB.recycle();
        return aVarC;
    }
}
