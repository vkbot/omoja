package p148n7;

import java.nio.ByteBuffer;
import java.security.cert.Certificate;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import p091i4.AbstractC1744b;
import p170p7.C2984i;

/* JADX INFO: renamed from: n7.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2512h implements InterfaceC2545u0, InterfaceC2539r0 {

    /* JADX INFO: renamed from: c */
    public static final C2512h f6956c = new C2512h(0);

    /* JADX INFO: renamed from: d */
    public static final byte[] f6957d = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70};

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f6958b;

    public C2512h(SSLSession sSLSession) {
        this.f6958b = 4;
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
            C2550x.f7049d.log(Level.FINE, "Peer cert not available for peerHost=" + sSLSession.getPeerHost(), (Throwable) e);
        }
    }

    /* JADX INFO: renamed from: a */
    public String m3936a() {
        switch (this.f6958b) {
            case 0:
                return "identity";
            default:
                return "gzip";
        }
    }

    @Override // p148n7.InterfaceC2545u0
    /* JADX INFO: renamed from: b */
    public byte[] mo3938b(Object obj) {
        switch (this.f6958b) {
            case 1:
                byte[] bytes = ((String) obj).getBytes(AbstractC1744b.f4559b);
                int i10 = 0;
                while (i10 < bytes.length) {
                    byte b10 = bytes[i10];
                    if (b10 < 32 || b10 >= 126 || b10 == 37) {
                        byte[] bArr = new byte[((bytes.length - i10) * 3) + i10];
                        if (i10 != 0) {
                            System.arraycopy(bytes, 0, bArr, 0, i10);
                        }
                        int i11 = i10;
                        while (i10 < bytes.length) {
                            byte b11 = bytes[i10];
                            if (b11 < 32 || b11 >= 126 || b11 == 37) {
                                bArr[i11] = 37;
                                byte[] bArr2 = f6957d;
                                bArr[i11 + 1] = bArr2[(b11 >> 4) & 15];
                                bArr[i11 + 2] = bArr2[b11 & 15];
                                i11 += 3;
                            } else {
                                bArr[i11] = b11;
                                i11++;
                            }
                            i10++;
                        }
                        return Arrays.copyOf(bArr, i11);
                    }
                    i10++;
                }
                return bytes;
            default:
                return ((C2508f1) obj).f6948a.f6928c;
        }
    }

    /* JADX INFO: renamed from: c */
    public int m3939c(Object obj) {
        switch (this.f6958b) {
            case 6:
                ((AbstractC2522k0) obj).getClass();
                return 5;
            case 7:
                ((C2984i) ((AbstractC2531n0) obj)).getClass();
                try {
                    Class.forName("android.app.Application", false, C2984i.class.getClassLoader());
                    return 8;
                } catch (Exception unused) {
                    return 3;
                }
            default:
                ((AbstractC2493a1) obj).getClass();
                return 5;
        }
    }

    @Override // p148n7.InterfaceC2545u0
    /* JADX INFO: renamed from: k */
    public Object mo3941k(byte[] bArr) {
        int i10;
        byte b10;
        switch (this.f6958b) {
            case 1:
                for (int i11 = 0; i11 < bArr.length; i11++) {
                    byte b11 = bArr[i11];
                    if (b11 < 32 || b11 >= 126 || (b11 == 37 && i11 + 2 < bArr.length)) {
                        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArr.length);
                        int i12 = 0;
                        while (i12 < bArr.length) {
                            if (bArr[i12] == 37 && i12 + 2 < bArr.length) {
                                try {
                                    byteBufferAllocate.put((byte) Integer.parseInt(new String(bArr, i12 + 1, 2, AbstractC1744b.f4558a), 16));
                                    i12 += 3;
                                } catch (NumberFormatException unused) {
                                    byteBufferAllocate.put(bArr[i12]);
                                    i12++;
                                }
                            }
                            byteBufferAllocate.put(bArr[i12]);
                            i12++;
                        }
                        return new String(byteBufferAllocate.array(), 0, byteBufferAllocate.position(), AbstractC1744b.f4559b);
                    }
                }
                return new String(bArr, 0);
            default:
                char c = 0;
                if (bArr.length == 1 && bArr[0] == 48) {
                    return C2508f1.f6937e;
                }
                int length = bArr.length;
                if (length != 1) {
                    if (length == 2 && (b10 = bArr[0]) >= 48 && b10 <= 57) {
                        i10 = (b10 - 48) * 10;
                        c = 1;
                    }
                    return C2508f1.f6939g.m3934h("Unknown code ".concat(new String(bArr, AbstractC1744b.f4558a)));
                }
                i10 = 0;
                byte b12 = bArr[c];
                if (b12 >= 48 && b12 <= 57) {
                    int i13 = (b12 - 48) + i10;
                    List list = C2508f1.f6936d;
                    if (i13 < list.size()) {
                        return (C2508f1) list.get(i13);
                    }
                }
                return C2508f1.f6939g.m3934h("Unknown code ".concat(new String(bArr, AbstractC1744b.f4558a)));
        }
    }

    public String toString() {
        switch (this.f6958b) {
            case 5:
                return "internal:health-check-consumer-listener";
            default:
                return super.toString();
        }
    }

    @Override // p148n7.InterfaceC2539r0
    /* JADX INFO: renamed from: j */
    public Object mo3940j(String str) {
        return str;
    }

    public /* synthetic */ C2512h(int i10) {
        this.f6958b = i10;
    }

    @Override // p148n7.InterfaceC2539r0
    /* JADX INFO: renamed from: b */
    public String mo3937b(Object obj) {
        return (String) obj;
    }
}
