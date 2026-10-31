package d1;

import android.content.Context;
import android.util.Base64;
import com.google.protobuf.q;
import e0.m;
import e0.p3;
import e0.x1;
import j1.i;
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

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f1652b;
    public final int c;
    public final b d;
    public Socket e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        m.h(new byte[]{-124, -89, 74, -5, -1, -62, -35, -27, -124}, new byte[]{-75, -107, 125, -43, -49, -20, -19, -53});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(Context context, String str) throws NoSuchAlgorithmException, IOException {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        b bVar;
        S();
        String strTrim = str.trim();
        if (strTrim.isEmpty()) {
            i.k(m.h(new byte[]{-15, 5, -117, 85, 22, 38, 67, -81, -15, 47, -118, 101, 22, 38, -77, -53, -111, 71, -17, 54, 70, 67, 38, -54, -96, -73, 26, -93, -124}, new byte[]{33, -105, 91, -25, -58, -109, -109, 27}));
            throw null;
        }
        this.f1652b = strTrim;
        this.c = 5555;
        File file = new File(context.getFilesDir(), m.h(new byte[]{-106, 70, -1}, new byte[]{-9, 34, -99, -85, 49, 74, 0, 20}));
        if (!file.exists() && !file.mkdirs()) {
            n0.b.A(m.h(new byte[]{47, 88, -8, 57, -92, -42, 38, -57, 75, 21, -104, 92, 63, -41, 27, -58, 126, 20, -92, -84, 85, -122, 117, -87, 47, 114, -8, 56, 84, -73, 116, -107, 46, 73, 8, 93, 1, -42, 37, -57, 79, 21, -107, 92, 60, -41, 30, -57, 71, 20, -95, 92, 49, 39, -28, 83, -67, -24, -8, 54, 84, -68, 116, -103, 46, 66, -8, 60}, new byte[]{-1, -59, 40, -116, -124, 7, -91, 23}));
            throw null;
        }
        byte[] bArr = b.f1653b;
        File file2 = new File(file, m.h(new byte[]{17, 66, 4, ByteCompanionObject.MIN_VALUE, -31, 105}, new byte[]{112, 38, 102, -21, -124, 16, 43, 41}));
        File file3 = new File(file, m.h(new byte[]{-32, 46, -58, -1, -48, -3, -55, 0, -12, 40}, new byte[]{-127, 74, -92, -108, -75, -124, -25, 112}));
        if (file2.isFile() && file3.isFile()) {
            try {
                KeyFactory keyFactory = KeyFactory.getInstance(m.h(new byte[]{-98, 118, 55}, new byte[]{-52, 37, 118, 53, 63, 99, 72, 36}));
                bVar = new b(new KeyPair(keyFactory.generatePublic(new X509EncodedKeySpec(b.a(file3))), keyFactory.generatePrivate(new PKCS8EncodedKeySpec(b.a(file2)))));
            } catch (IOException | GeneralSecurityException unused) {
                KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance(m.h(new byte[]{118, 31, 87}, new byte[]{36, 76, 22, 100, 73, 23, -34, -11}));
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
                bVar = new b(keyPairGenerateKeyPair);
            }
        } else {
            KeyPairGenerator keyPairGenerator2 = KeyPairGenerator.getInstance(m.h(new byte[]{118, 31, 87}, new byte[]{36, 76, 22, 100, 73, 23, -34, -11}));
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
                    bVar = new b(keyPairGenerateKeyPair2);
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
        this.d = bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void S() {
        Boolean boolValueOf;
        try {
            if (c().booleanValue()) {
                h0.b.a();
                u0.a aVarO = h0.b.o();
                byte[] bArr = m.f1892f;
                String[] strArr = p3.f1924a;
                boolean z8 = true;
                if (h0.b.a().j().l(Long.MAX_VALUE).longValue() >= Long.parseLong(new String(Base64.decode(h0.b.o().loadString(aVarO.loadString(new String(bArr), new String(m.f1893g)), m.h(new byte[]{-9}, new byte[]{-57, -14, 11, 47, 90, -86, 92, -75})), 0), StandardCharsets.UTF_8))) {
                    z8 = false;
                }
                boolValueOf = Boolean.valueOf(z8);
            } else {
                boolValueOf = Boolean.FALSE;
            }
        } catch (Exception unused) {
        }
        if (!boolValueOf.booleanValue()) {
            throw new SecurityException(m.h(new byte[]{-38, -5, 102, 41, 77, -97, 95, 88, -38, -35, 102, 38, 76, -95, 94, 98, 42, -80, 11, 65, 41, 57, 95, 93, -38, -38, 103, 19, 76, -95, 95, 95, -38, -35, 102, 33, -68, -55, 55, kotlin.io.encoding.Base64.padSymbol, -79, -80, 14, -79, 77, -104, 94, 109, -38, -34, 102, 43, -68, -55, 58, 60, -101, 64, 102, 37, 76, -84, 95, 84, -37, -31, 103, 19, 76, -85, 95, 85, -37, -17, -106, 65, 36, -56, 14, 60, -120, -79, 39, 65, 38}, new byte[]{10, 96, -74, -111, -100, 25, -113, -19}));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Boolean c() {
        StringBuilder sb = new StringBuilder();
        u0.a aVarO = h0.b.o();
        byte[] bArr = m.f1896j;
        String[] strArr = p3.f1924a;
        q.s(bArr, aVarO, "", sb);
        q.r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        return Boolean.valueOf(q.g(sb, x1.f1989q).equals(h0.b.o().loadString(new String(m.f1892f), "")));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String V(String str) throws IOException {
        int i9;
        int i10;
        boolean z8 = false;
        c.d(this.e.getOutputStream(), c.f1658i, 1, 0, (m.h(new byte[]{-88, kotlin.io.encoding.Base64.padSymbol, -62, ByteCompanionObject.MAX_VALUE, 12, -85}, new byte[]{-37, 85, -89, 19, 96, -111, -98, -78}) + str + "\u0000").getBytes(StandardCharsets.UTF_8));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i11 = 0;
        while (true) {
            c cVarB = c.b(this.e.getInputStream());
            i9 = cVarB.f1661b;
            int i12 = cVarB.c;
            int i13 = cVarB.f1660a;
            int i14 = c.f1657h;
            if (i13 == i14 && i12 == 1) {
                z8 = true;
            } else if (i13 != c.f1659j || i12 != 1) {
                i10 = c.f1655f;
                if (i13 == i10 && i12 == 1) {
                    break;
                }
            } else {
                byteArrayOutputStream.write(cVarB.d);
                c.d(this.e.getOutputStream(), i14, 1, i9, null);
            }
            i11 = i9;
        }
        if (!z8) {
            n0.b.A(m.h(new byte[]{-110, -29, 36, 22, -10, -105, -17, 117, 3, 29, -74, -115, -10, -105, -18, 74, 3, 31, -74, -115, 6, -7, -119, 39, 99, 119, -39, -25, -91, -8, -65, 39, 105, -121, -74, -116, -10, -105, -18, 75, 3, 23, -74, -117, -10, -99, -17, 124}, new byte[]{-45, -89, 102, 54, 38, 41, 62, -9}));
            return null;
        }
        OutputStream outputStream = this.e.getOutputStream();
        if (i11 == 0) {
            i11 = i9;
        }
        c.d(outputStream, i10, 1, i11, null);
        return byteArrayOutputStream.toString(StandardCharsets.UTF_8.name());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b() throws NoSuchPaddingException, NoSuchAlgorithmException, IOException, InvalidKeyException {
        c.d(this.e.getOutputStream(), c.f1656g, 16777216, 4096, m.h(new byte[]{69, 8, 26, -1, 21, -123, -99}, new byte[]{45, 103, 105, -117, 47, -65, -99, -101}).getBytes(StandardCharsets.UTF_8));
        boolean z8 = false;
        while (true) {
            c cVarB = c.b(this.e.getInputStream());
            int i9 = cVarB.f1660a;
            if (i9 == c.f1656g) {
                return;
            }
            int i10 = c.e;
            if (i9 != i10 || cVarB.f1661b != 1) {
                n0.b.A(m.h(new byte[]{119, 31, -57, 24, 52, 48, -45, -46, 119, 58, -57, 25, 52, 62, -45, -39, 119, 63, -58, 38, 52, 55, 35, -76, 25, 83, -107, 125, 86, 94, -74, -75, 37, -94, 86, -23, -90, -82, -45, -37, 118, 2, -57, 21, -60, 94, -68, -76, 25, 82, -93, 125, 94, 94, -72, -75, 41, 83, -112, 125, 81, 94, -66, -76, 31, 82, -81}, new byte[]{-89, -126, 23, -83, -28, -114, 3, 100}));
                return;
            }
            Socket socket = this.e;
            b bVar = this.d;
            if (z8) {
                OutputStream outputStream = socket.getOutputStream();
                RSAPublicKey rSAPublicKey = (RSAPublicKey) bVar.f1654a.getPublic();
                BigInteger bigInteger = BigInteger.ZERO;
                BigInteger bit = bigInteger.setBit(32);
                BigInteger modulus = rSAPublicKey.getModulus();
                BigInteger bigIntegerModPow = bigInteger.setBit(2048).modPow(BigInteger.valueOf(2L), modulus);
                int iIntValue = modulus.remainder(bit).modInverse(bit).negate().intValue();
                ByteBuffer byteBufferOrder = ByteBuffer.allocate(524).order(ByteOrder.LITTLE_ENDIAN);
                byteBufferOrder.putInt(64);
                byteBufferOrder.putInt(iIntValue);
                int i11 = 0;
                while (i11 < 64) {
                    BigInteger[] bigIntegerArrDivideAndRemainder = modulus.divideAndRemainder(bit);
                    BigInteger bigInteger2 = bigIntegerArrDivideAndRemainder[0];
                    byteBufferOrder.putInt(bigIntegerArrDivideAndRemainder[1].intValue());
                    i11++;
                    modulus = bigInteger2;
                }
                int i12 = 0;
                while (i12 < 64) {
                    BigInteger[] bigIntegerArrDivideAndRemainder2 = bigIntegerModPow.divideAndRemainder(bit);
                    BigInteger bigInteger3 = bigIntegerArrDivideAndRemainder2[0];
                    byteBufferOrder.putInt(bigIntegerArrDivideAndRemainder2[1].intValue());
                    i12++;
                    bigIntegerModPow = bigInteger3;
                }
                byteBufferOrder.putInt(rSAPublicKey.getPublicExponent().intValue());
                c.d(outputStream, i10, 3, 0, q.i(new byte[]{-16, ByteCompanionObject.MIN_VALUE, 21, 122, 87, 125, -42, -122, -68, -103, 54, 122, 75, 109, -53, -122, -71, -114, 118}, new byte[]{-48, -22, 118, 27, 37, 9, -71, -23}, ai.onnxruntime.a.u(Base64.encodeToString(byteBufferOrder.array(), 2))).getBytes(StandardCharsets.UTF_8));
            } else {
                OutputStream outputStream2 = socket.getOutputStream();
                byte[] bArr = cVarB.d;
                bVar.getClass();
                Cipher cipher = Cipher.getInstance(m.h(new byte[]{105, 56, -82, -5, -62, 62, 24, -45, 117, 4, -65, -75, -29, 25, 51, -110, 92}, new byte[]{59, 107, -17, -44, -121, 125, 90, -4}));
                cipher.init(1, bVar.f1654a.getPrivate());
                cipher.update(b.f1653b);
                c.d(outputStream2, i10, 2, 0, cipher.doFinal(bArr));
                z8 = true;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Socket socket = this.e;
        if (socket != null) {
            try {
                socket.close();
            } catch (IOException unused) {
            }
            this.e = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String y(String str) {
        String strTrim = str.trim();
        if (strTrim.isEmpty()) {
            i.k(m.h(new byte[]{-3, -123, 49, 12, -77, -100, 121, -75, -3, -81, 48, 60, -77, -100, -119, -47, -105, -57, 95, 110, -33, -7, 25, -47, -112, -57, 85, 111, -32}, new byte[]{45, 23, -31, -66, 99, 41, -87, 1}));
            return null;
        }
        S();
        Socket socket = new Socket();
        this.e = socket;
        socket.connect(new InetSocketAddress(this.f1652b, this.c), 5000);
        this.e.setSoTimeout(30000);
        try {
            try {
                b();
                String strV = V(strTrim);
                close();
                return strV;
            } catch (SocketTimeoutException e) {
                throw new IOException(m.h(new byte[]{-35, 87, -98, -85, -86, 65, -14, -14, -35, 117, -97, -111, -85, 125, 2, -105, -65, 30, -49, -6, -50, 19, -98, -106, -126, -17, -97, -108, -85, 117, -14, -1, -35, 123, -97, -102, -85, 126, -14, -1, -36, 64, 111, 107, 63, -127, 12, 103, -35, 80, -98, -86, -85, 125, -14, -11, -35, 122, -98, -86, -86, 79, -13, -59, -35, 122, 111, -6, -53, 19, -106, -106, -115, 31, -6, -5, -6, -29, -14, -1, 45, 31, -16, -6, -59, 19, -106, -106, -113, 31, -3, -6, -50, 18, -94, -105, -69, 31, -5, -6, -50, 19, -97, -105, -75, 31, -6, 10, 41, -112, 99, 106, -35, 117, -97, -111, -86, 77, -13, -64, -35, ByteCompanionObject.MAX_VALUE, 97}, new byte[]{13, -49, 79, 42, 123, -61, 34, 71}), e);
            }
        } catch (Throwable th) {
            close();
            throw th;
        }
    }
}
