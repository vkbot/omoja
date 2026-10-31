package n7;

import java.nio.ByteBuffer;
import java.security.cert.Certificate;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h implements u0, r0 {
    public static final h c = new h(0);
    public static final byte[] d = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3938b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h(SSLSession sSLSession) {
        this.f3938b = 4;
        sSLSession.getCipherSuite();
        Certificate[] localCertificates = sSLSession.getLocalCertificates();
        if (localCertificates != null) {
            Certificate certificate = localCertificates[0];
        }
        try {
            Certificate[] peerCertificates = sSLSession.getPeerCertificates();
            if (peerCertificates != null) {
                Certificate certificate2 = peerCertificates[0];
            }
        } catch (SSLPeerUnverifiedException e) {
            x.d.log(Level.FINE, "Peer cert not available for peerHost=" + sSLSession.getPeerHost(), (Throwable) e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String a() {
        switch (this.f3938b) {
            case 0:
                return "identity";
            default:
                return "gzip";
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Possible override for method n7.r0.b(Ljava/lang/Object;)Ljava/lang/String; */
    @Override // n7.u0
    /* JADX INFO: renamed from: b, reason: collision with other method in class */
    public byte[] mo1385b(Object obj) {
        switch (this.f3938b) {
            case 1:
                byte[] bytes = ((String) obj).getBytes(i4.b.f2658b);
                int i9 = 0;
                while (i9 < bytes.length) {
                    byte b9 = bytes[i9];
                    if (b9 < 32 || b9 >= 126 || b9 == 37) {
                        byte[] bArr = new byte[((bytes.length - i9) * 3) + i9];
                        if (i9 != 0) {
                            System.arraycopy(bytes, 0, bArr, 0, i9);
                        }
                        int i10 = i9;
                        while (i9 < bytes.length) {
                            byte b10 = bytes[i9];
                            if (b10 < 32 || b10 >= 126 || b10 == 37) {
                                bArr[i10] = 37;
                                byte[] bArr2 = d;
                                bArr[i10 + 1] = bArr2[(b10 >> 4) & 15];
                                bArr[i10 + 2] = bArr2[b10 & 15];
                                i10 += 3;
                            } else {
                                bArr[i10] = b10;
                                i10++;
                            }
                            i9++;
                        }
                        return Arrays.copyOf(bArr, i10);
                    }
                    i9++;
                }
                return bytes;
            default:
                return ((f1) obj).f3933a.c;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int c(Object obj) {
        switch (this.f3938b) {
            case 6:
                ((k0) obj).getClass();
                return 5;
            case 7:
                ((p7.i) ((n0) obj)).getClass();
                try {
                    Class.forName("android.app.Application", false, p7.i.class.getClassLoader());
                    return 8;
                } catch (Exception unused) {
                    return 3;
                }
            default:
                ((a1) obj).getClass();
                return 5;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.u0
    public Object k(byte[] bArr) {
        int i9;
        byte b9;
        switch (this.f3938b) {
            case 1:
                for (int i10 = 0; i10 < bArr.length; i10++) {
                    byte b10 = bArr[i10];
                    if (b10 < 32 || b10 >= 126 || (b10 == 37 && i10 + 2 < bArr.length)) {
                        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArr.length);
                        int i11 = 0;
                        while (i11 < bArr.length) {
                            if (bArr[i11] == 37 && i11 + 2 < bArr.length) {
                                try {
                                    byteBufferAllocate.put((byte) Integer.parseInt(new String(bArr, i11 + 1, 2, i4.b.f2657a), 16));
                                    i11 += 3;
                                } catch (NumberFormatException unused) {
                                    byteBufferAllocate.put(bArr[i11]);
                                    i11++;
                                }
                            }
                            byteBufferAllocate.put(bArr[i11]);
                            i11++;
                        }
                        return new String(byteBufferAllocate.array(), 0, byteBufferAllocate.position(), i4.b.f2658b);
                    }
                }
                return new String(bArr, 0);
            default:
                char c9 = 0;
                if (bArr.length == 1 && bArr[0] == 48) {
                    return f1.e;
                }
                int length = bArr.length;
                if (length != 1) {
                    if (length == 2 && (b9 = bArr[0]) >= 48 && b9 <= 57) {
                        i9 = (b9 - 48) * 10;
                        c9 = 1;
                    }
                    return f1.f3924g.h("Unknown code ".concat(new String(bArr, i4.b.f2657a)));
                }
                i9 = 0;
                byte b11 = bArr[c9];
                if (b11 >= 48 && b11 <= 57) {
                    int i12 = (b11 - 48) + i9;
                    List list = f1.d;
                    if (i12 < list.size()) {
                        return (f1) list.get(i12);
                    }
                }
                return f1.f3924g.h("Unknown code ".concat(new String(bArr, i4.b.f2657a)));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        switch (this.f3938b) {
            case 5:
                return "internal:health-check-consumer-listener";
            default:
                return super.toString();
        }
    }

    @Override // n7.r0
    public Object j(String str) {
        return str;
    }

    public /* synthetic */ h(int i9) {
        this.f3938b = i9;
    }

    /* JADX DEBUG: Possible override for method n7.u0.b(Ljava/lang/Object;)[B */
    @Override // n7.r0
    public String b(Object obj) {
        return (String) obj;
    }
}
