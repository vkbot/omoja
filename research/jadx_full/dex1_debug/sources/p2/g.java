package p2;

import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class g extends w2.b implements IInterface {
    public final int c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g(byte[] bArr) {
        super("com.google.android.gms.common.internal.ICertData");
        if (bArr.length == 25) {
            this.c = Arrays.hashCode(bArr);
        } else {
            l9.i.a();
            throw null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static byte[] c(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            j1.i.e(e);
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // w2.b
    public final boolean b(Parcel parcel, int i9) {
        if (i9 == 1) {
            u2.b bVar = new u2.b(d());
            parcel.writeNoException();
            w2.c.a(parcel, bVar);
            return true;
        }
        if (i9 != 2) {
            return false;
        }
        parcel.writeNoException();
        parcel.writeInt(this.c);
        return true;
    }

    public abstract byte[] d();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof g)) {
            try {
                g gVar = (g) obj;
                if (gVar.c == this.c) {
                    return Arrays.equals(d(), (byte[]) u2.b.d(new u2.b(gVar.d())));
                }
            } catch (RemoteException e) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return this.c;
    }
}
