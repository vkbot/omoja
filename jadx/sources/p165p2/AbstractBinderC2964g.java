package p165p2;

import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import p099j1.C1929i;
import p130l9.C2237i;
import p208u2.BinderC3284b;
import p227w2.AbstractBinderC3514b;
import p227w2.AbstractC3515c;

/* JADX INFO: renamed from: p2.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractBinderC2964g extends AbstractBinderC3514b implements IInterface {

    /* JADX INFO: renamed from: c */
    public final int f8246c;

    public AbstractBinderC2964g(byte[] bArr) {
        super("com.google.android.gms.common.internal.ICertData");
        if (bArr.length == 25) {
            this.f8246c = Arrays.hashCode(bArr);
        } else {
            C2237i.m3594a();
            throw null;
        }
    }

    /* JADX INFO: renamed from: c */
    public static byte[] m4754c(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            C1929i.m3023e(e);
            return null;
        }
    }

    @Override // p227w2.AbstractBinderC3514b
    /* JADX INFO: renamed from: b */
    public final boolean mo4755b(Parcel parcel, int i10) {
        if (i10 == 1) {
            BinderC3284b binderC3284b = new BinderC3284b(mo4753d());
            parcel.writeNoException();
            AbstractC3515c.m5583a(parcel, binderC3284b);
            return true;
        }
        if (i10 != 2) {
            return false;
        }
        parcel.writeNoException();
        parcel.writeInt(this.f8246c);
        return true;
    }

    /* JADX INFO: renamed from: d */
    public abstract byte[] mo4753d();

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof AbstractBinderC2964g)) {
            try {
                AbstractBinderC2964g abstractBinderC2964g = (AbstractBinderC2964g) obj;
                if (abstractBinderC2964g.f8246c == this.f8246c) {
                    return Arrays.equals(mo4753d(), (byte[]) BinderC3284b.m5218d(new BinderC3284b(abstractBinderC2964g.mo4753d())));
                }
            } catch (RemoteException e) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f8246c;
    }
}
