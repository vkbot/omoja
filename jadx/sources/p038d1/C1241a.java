package p038d1;

import ai.onnxruntime.AbstractC0074a;
import android.content.Context;
import android.util.Base64;
import com.google.protobuf.AbstractC1178q;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigInteger;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import kotlin.jvm.internal.ByteCompanionObject;
import org.apache.commons.net.tftp.TFTP;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1406p3;
import p047e0.C1440x1;
import p078h0.C1652b;
import p099j1.C1929i;
import p142n0.C2467b;
import p206u0.C3277a;

/* JADX INFO: renamed from: d1.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1241a implements Closeable {

    /* JADX INFO: renamed from: b */
    public final String f2914b;

    /* JADX INFO: renamed from: c */
    public final int f2915c;

    /* JADX INFO: renamed from: d */
    public final C1242b f2916d;

    /* JADX INFO: renamed from: e */
    public Socket f2917e;

    static {
        AbstractC1387m.m2421h(new byte[]{-124, -89, 74, -5, -1, -62, -35, -27, -124}, new byte[]{-75, -107, 125, -43, -49, -20, -19, -53});
    }

    public C1241a(Context context, String str) throws NoSuchAlgorithmException, IOException {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        C1242b c1242b;
        m2225S();
        String strTrim = str.trim();
        if (strTrim.isEmpty()) {
            C1929i.m3029k(AbstractC1387m.m2421h(new byte[]{-15, 5, -117, 85, 22, 38, 67, -81, -15, 47, -118, 101, 22, 38, -77, -53, -111, 71, -17, 54, 70, 67, 38, -54, -96, -73, 26, -93, -124}, new byte[]{33, -105, 91, -25, -58, -109, -109, 27}));
            throw null;
        }
        this.f2914b = strTrim;
        this.f2915c = 5555;
        File file = new File(context.getFilesDir(), AbstractC1387m.m2421h(new byte[]{-106, 70, -1}, new byte[]{-9, 34, -99, -85, 49, 74, 0, 20}));
        if (!file.exists() && !file.mkdirs()) {
            C2467b.m3820A(AbstractC1387m.m2421h(new byte[]{47, 88, -8, 57, -92, -42, 38, -57, 75, 21, -104, 92, 63, -41, 27, -58, 126, 20, -92, -84, 85, -122, 117, -87, 47, 114, -8, 56, 84, -73, 116, -107, 46, 73, 8, 93, 1, -42, 37, -57, 79, 21, -107, 92, 60, -41, 30, -57, 71, 20, -95, 92, 49, 39, -28, 83, -67, -24, -8, 54, 84, -68, 116, -103, 46, 66, -8, 60}, new byte[]{-1, -59, 40, -116, -124, 7, -91, 23}));
            throw null;
        }
        byte[] bArr = C1242b.f2918b;
        File file2 = new File(file, AbstractC1387m.m2421h(new byte[]{17, 66, 4, ByteCompanionObject.MIN_VALUE, -31, 105}, new byte[]{112, 38, 102, -21, -124, 16, 43, 41}));
        File file3 = new File(file, AbstractC1387m.m2421h(new byte[]{-32, 46, -58, -1, -48, -3, -55, 0, -12, 40}, new byte[]{-127, 74, -92, -108, -75, -124, -25, 112}));
        if (file2.isFile() && file3.isFile()) {
            try {
                KeyFactory keyFactory = KeyFactory.getInstance(AbstractC1387m.m2421h(new byte[]{-98, 118, 55}, new byte[]{-52, 37, 118, 53, 63, 99, 72, 36}));
                c1242b = new C1242b(new KeyPair(keyFactory.generatePublic(new X509EncodedKeySpec(C1242b.m2230a(file3))), keyFactory.generatePrivate(new PKCS8EncodedKeySpec(C1242b.m2230a(file2)))));
            } catch (IOException | GeneralSecurityException unused) {
                KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance(AbstractC1387m.m2421h(new byte[]{118, 31, 87}, new byte[]{36, 76, 22, 100, 73, 23, -34, -11}));
                keyPairGenerator.initialize(2048);
                KeyPair keyPairGenerateKeyPair = keyPairGenerator.generateKeyPair();
                byte[] encoded = keyPairGenerateKeyPair.getPrivate().getEncoded();
                fileOutputStream = new FileOutputStream(file2);
                fileOutputStream.write(encoded);
                fileOutputStream.close();
                byte[] encoded2 = keyPairGenerateKeyPair.getPublic().getEncoded();
                fileOutputStream2 = new FileOutputStream(file3);
                fileOutputStream2.write(encoded2);
                fileOutputStream2.close();
                c1242b = new C1242b(keyPairGenerateKeyPair);
            }
        } else {
            KeyPairGenerator keyPairGenerator2 = KeyPairGenerator.getInstance(AbstractC1387m.m2421h(new byte[]{118, 31, 87}, new byte[]{36, 76, 22, 100, 73, 23, -34, -11}));
            keyPairGenerator2.initialize(2048);
            KeyPair keyPairGenerateKeyPair2 = keyPairGenerator2.generateKeyPair();
            byte[] encoded3 = keyPairGenerateKeyPair2.getPrivate().getEncoded();
            fileOutputStream = new FileOutputStream(file2);
            try {
                fileOutputStream.write(encoded3);
                fileOutputStream.close();
                byte[] encoded4 = keyPairGenerateKeyPair2.getPublic().getEncoded();
                fileOutputStream2 = new FileOutputStream(file3);
                try {
                    fileOutputStream2.write(encoded4);
                    fileOutputStream2.close();
                    c1242b = new C1242b(keyPairGenerateKeyPair2);
                } catch (Throwable th) {
                    try {
                        fileOutputStream2.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        }
        this.f2916d = c1242b;
    }

    /* JADX INFO: renamed from: S */
    public static void m2225S() {
        Boolean boolValueOf;
        try {
            if (m2226c().booleanValue()) {
                C1652b.m2734a();
                C3277a c3277aM2745o = C1652b.m2745o();
                byte[] bArr = AbstractC1387m.f3318f;
                String[] strArr = AbstractC1406p3.f3368a;
                boolean z9 = true;
                if (C1652b.m2734a().m2755j().m1635l(Long.MAX_VALUE).longValue() >= Long.parseLong(new String(Base64.decode(C1652b.m2745o().loadString(c3277aM2745o.loadString(new String(bArr), new String(AbstractC1387m.f3319g)), AbstractC1387m.m2421h(new byte[]{-9}, new byte[]{-57, -14, 11, 47, 90, -86, 92, -75})), 0), StandardCharsets.UTF_8))) {
                    z9 = false;
                }
                boolValueOf = Boolean.valueOf(z9);
            } else {
                boolValueOf = Boolean.FALSE;
            }
        } catch (Exception unused) {
        }
        if (!boolValueOf.booleanValue()) {
            throw new SecurityException(AbstractC1387m.m2421h(new byte[]{-38, -5, 102, 41, 77, -97, 95, 88, -38, -35, 102, 38, 76, -95, 94, 98, 42, -80, 11, 65, 41, 57, 95, 93, -38, -38, 103, 19, 76, -95, 95, 95, -38, -35, 102, 33, -68, -55, 55, kotlin.p118io.encoding.Base64.padSymbol, -79, -80, 14, -79, 77, -104, 94, 109, -38, -34, 102, 43, -68, -55, 58, 60, -101, 64, 102, 37, 76, -84, 95, 84, -37, -31, 103, 19, 76, -85, 95, 85, -37, -17, -106, 65, 36, -56, 14, 60, -120, -79, 39, 65, 38}, new byte[]{10, 96, -74, -111, -100, 25, -113, -19}));
        }
    }

    /* JADX INFO: renamed from: c */
    public static Boolean m2226c() {
        StringBuilder sb = new StringBuilder();
        C3277a c3277aM2745o = C1652b.m2745o();
        byte[] bArr = AbstractC1387m.f3322j;
        String[] strArr = AbstractC1406p3.f3368a;
        AbstractC1178q.m2085s(bArr, c3277aM2745o, "", sb);
        AbstractC1178q.m2084r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        return Boolean.valueOf(AbstractC1178q.m2073g(sb, C1440x1.f3470q).equals(C1652b.m2745o().loadString(new String(AbstractC1387m.f3318f), "")));
    }

    /* JADX INFO: renamed from: V */
    public final String m2227V(String str) throws IOException {
        int i10;
        int i11;
        boolean z9 = false;
        C1243c.m2234d(this.f2917e.getOutputStream(), C1243c.f2924i, 1, 0, (AbstractC1387m.m2421h(new byte[]{-88, kotlin.p118io.encoding.Base64.padSymbol, -62, ByteCompanionObject.MAX_VALUE, 12, -85}, new byte[]{-37, 85, -89, 19, 96, -111, -98, -78}) + str + "\u0000").getBytes(StandardCharsets.UTF_8));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i12 = 0;
        while (true) {
            C1243c c1243cM2232b = C1243c.m2232b(this.f2917e.getInputStream());
            i10 = c1243cM2232b.f2927b;
            int i13 = c1243cM2232b.f2928c;
            int i14 = c1243cM2232b.f2926a;
            int i15 = C1243c.f2923h;
            if (i14 == i15 && i13 == 1) {
                z9 = true;
            } else if (i14 != C1243c.f2925j || i13 != 1) {
                i11 = C1243c.f2921f;
                if (i14 == i11 && i13 == 1) {
                    break;
                }
            } else {
                byteArrayOutputStream.write(c1243cM2232b.f2929d);
                C1243c.m2234d(this.f2917e.getOutputStream(), i15, 1, i10, null);
            }
            i12 = i10;
        }
        if (!z9) {
            C2467b.m3820A(AbstractC1387m.m2421h(new byte[]{-110, -29, 36, 22, -10, -105, -17, 117, 3, 29, -74, -115, -10, -105, -18, 74, 3, 31, -74, -115, 6, -7, -119, 39, 99, 119, -39, -25, -91, -8, -65, 39, 105, -121, -74, -116, -10, -105, -18, 75, 3, 23, -74, -117, -10, -99, -17, 124}, new byte[]{-45, -89, 102, 54, 38, 41, 62, -9}));
            return null;
        }
        OutputStream outputStream = this.f2917e.getOutputStream();
        if (i12 == 0) {
            i12 = i10;
        }
        C1243c.m2234d(outputStream, i11, 1, i12, null);
        return byteArrayOutputStream.toString(StandardCharsets.UTF_8.name());
    }

    /* JADX INFO: renamed from: b */
    public final void m2228b() throws NoSuchPaddingException, NoSuchAlgorithmException, IOException, InvalidKeyException {
        C1243c.m2234d(this.f2917e.getOutputStream(), C1243c.f2922g, 16777216, 4096, AbstractC1387m.m2421h(new byte[]{69, 8, 26, -1, 21, -123, -99}, new byte[]{45, 103, 105, -117, 47, -65, -99, -101}).getBytes(StandardCharsets.UTF_8));
        boolean z9 = false;
        while (true) {
            C1243c c1243cM2232b = C1243c.m2232b(this.f2917e.getInputStream());
            int i10 = c1243cM2232b.f2926a;
            if (i10 == C1243c.f2922g) {
                return;
            }
            int i11 = C1243c.f2920e;
            if (i10 != i11 || c1243cM2232b.f2927b != 1) {
                C2467b.m3820A(AbstractC1387m.m2421h(new byte[]{119, 31, -57, 24, 52, 48, -45, -46, 119, 58, -57, 25, 52, 62, -45, -39, 119, 63, -58, 38, 52, 55, 35, -76, 25, 83, -107, 125, 86, 94, -74, -75, 37, -94, 86, -23, -90, -82, -45, -37, 118, 2, -57, 21, -60, 94, -68, -76, 25, 82, -93, 125, 94, 94, -72, -75, 41, 83, -112, 125, 81, 94, -66, -76, 31, 82, -81}, new byte[]{-89, -126, 23, -83, -28, -114, 3, 100}));
                return;
            }
            Socket socket = this.f2917e;
            C1242b c1242b = this.f2916d;
            if (z9) {
                OutputStream outputStream = socket.getOutputStream();
                RSAPublicKey rSAPublicKey = (RSAPublicKey) c1242b.f2919a.getPublic();
                BigInteger bigInteger = BigInteger.ZERO;
                BigInteger bit = bigInteger.setBit(32);
                BigInteger modulus = rSAPublicKey.getModulus();
                BigInteger bigIntegerModPow = bigInteger.setBit(2048).modPow(BigInteger.valueOf(2L), modulus);
                int iIntValue = modulus.remainder(bit).modInverse(bit).negate().intValue();
                ByteBuffer byteBufferOrder = ByteBuffer.allocate(524).order(ByteOrder.LITTLE_ENDIAN);
                byteBufferOrder.putInt(64);
                byteBufferOrder.putInt(iIntValue);
                int i12 = 0;
                while (i12 < 64) {
                    BigInteger[] bigIntegerArrDivideAndRemainder = modulus.divideAndRemainder(bit);
                    BigInteger bigInteger2 = bigIntegerArrDivideAndRemainder[0];
                    byteBufferOrder.putInt(bigIntegerArrDivideAndRemainder[1].intValue());
                    i12++;
                    modulus = bigInteger2;
                }
                int i13 = 0;
                while (i13 < 64) {
                    BigInteger[] bigIntegerArrDivideAndRemainder2 = bigIntegerModPow.divideAndRemainder(bit);
                    BigInteger bigInteger3 = bigIntegerArrDivideAndRemainder2[0];
                    byteBufferOrder.putInt(bigIntegerArrDivideAndRemainder2[1].intValue());
                    i13++;
                    bigIntegerModPow = bigInteger3;
                }
                byteBufferOrder.putInt(rSAPublicKey.getPublicExponent().intValue());
                C1243c.m2234d(outputStream, i11, 3, 0, AbstractC1178q.m2075i(new byte[]{-16, ByteCompanionObject.MIN_VALUE, 21, 122, 87, 125, -42, -122, -68, -103, 54, 122, 75, 109, -53, -122, -71, -114, 118}, new byte[]{-48, -22, 118, 27, 37, 9, -71, -23}, AbstractC0074a.m170u(Base64.encodeToString(byteBufferOrder.array(), 2))).getBytes(StandardCharsets.UTF_8));
            } else {
                OutputStream outputStream2 = socket.getOutputStream();
                byte[] bArr = c1243cM2232b.f2929d;
                c1242b.getClass();
                Cipher cipher = Cipher.getInstance(AbstractC1387m.m2421h(new byte[]{105, 56, -82, -5, -62, 62, 24, -45, 117, 4, -65, -75, -29, 25, 51, -110, 92}, new byte[]{59, 107, -17, -44, -121, 125, 90, -4}));
                cipher.init(1, c1242b.f2919a.getPrivate());
                cipher.update(C1242b.f2918b);
                C1243c.m2234d(outputStream2, i11, 2, 0, cipher.doFinal(bArr));
                z9 = true;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Socket socket = this.f2917e;
        if (socket != null) {
            try {
                socket.close();
            } catch (IOException unused) {
            }
            this.f2917e = null;
        }
    }

    /* JADX INFO: renamed from: y */
    public final String m2229y(String str) {
        String strTrim = str.trim();
        if (strTrim.isEmpty()) {
            C1929i.m3029k(AbstractC1387m.m2421h(new byte[]{-3, -123, 49, 12, -77, -100, 121, -75, -3, -81, 48, 60, -77, -100, -119, -47, -105, -57, 95, 110, -33, -7, 25, -47, -112, -57, 85, 111, -32}, new byte[]{45, 23, -31, -66, 99, 41, -87, 1}));
            return null;
        }
        m2225S();
        Socket socket = new Socket();
        this.f2917e = socket;
        socket.connect(new InetSocketAddress(this.f2914b, this.f2915c), TFTP.DEFAULT_TIMEOUT);
        this.f2917e.setSoTimeout(30000);
        try {
            try {
                m2228b();
                String strM2227V = m2227V(strTrim);
                close();
                return strM2227V;
            } catch (SocketTimeoutException e) {
                throw new IOException(AbstractC1387m.m2421h(new byte[]{-35, 87, -98, -85, -86, 65, -14, -14, -35, 117, -97, -111, -85, 125, 2, -105, -65, 30, -49, -6, -50, 19, -98, -106, -126, -17, -97, -108, -85, 117, -14, -1, -35, 123, -97, -102, -85, 126, -14, -1, -36, 64, 111, 107, 63, -127, 12, 103, -35, 80, -98, -86, -85, 125, -14, -11, -35, 122, -98, -86, -86, 79, -13, -59, -35, 122, 111, -6, -53, 19, -106, -106, -115, 31, -6, -5, -6, -29, -14, -1, 45, 31, -16, -6, -59, 19, -106, -106, -113, 31, -3, -6, -50, 18, -94, -105, -69, 31, -5, -6, -50, 19, -97, -105, -75, 31, -6, 10, 41, -112, 99, 106, -35, 117, -97, -111, -86, 77, -13, -64, -35, ByteCompanionObject.MAX_VALUE, 97}, new byte[]{13, -49, 79, 42, 123, -61, 34, 71}), e);
            }
        } catch (Throwable th) {
            close();
            throw th;
        }
    }
}
