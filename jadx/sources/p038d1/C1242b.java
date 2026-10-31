package p038d1;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.KeyPair;
import java.util.Arrays;
import kotlin.jvm.internal.ByteCompanionObject;
import org.apache.commons.net.telnet.TelnetCommand;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: d1.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1242b {

    /* JADX INFO: renamed from: b */
    public static final byte[] f2918b;

    /* JADX INFO: renamed from: a */
    public final KeyPair f2919a;

    static {
        byte[] bArr = new byte[TelnetCommand.EOF];
        bArr[0] = 0;
        bArr[1] = 1;
        Arrays.fill(bArr, 2, 220, (byte) -1);
        System.arraycopy(new byte[]{0, 48, 33, 48, 9, 6, 5, 43, 14, 3, 2, 26, 5, 0, 4, 20}, 0, bArr, 220, 16);
        f2918b = bArr;
    }

    public C1242b(KeyPair keyPair) {
        this.f2919a = keyPair;
    }

    /* JADX INFO: renamed from: a */
    public static byte[] m2230a(File file) throws IOException {
        int length = (int) file.length();
        byte[] bArr = new byte[length];
        FileInputStream fileInputStream = new FileInputStream(file);
        int i10 = 0;
        while (i10 < length) {
            try {
                int i11 = fileInputStream.read(bArr, i10, length - i10);
                if (i11 < 0) {
                    throw new IOException(AbstractC1387m.m2421h(new byte[]{-23, -118, 126, -126, 76, 3, -68, -60, -115, -57, 30, -25, -41, 2, -127, -59, -72, -58, 34, 23, -68, 109, -18, -108, -23, -87, ByteCompanionObject.MAX_VALUE, -80, -68, 106, -18, -106, -23, -89, ByteCompanionObject.MAX_VALUE, -75, -67, 94, 31, 85, 125, 85, -125, -25, -42, 2, -124, -59, -73, -58, 41}, new byte[]{57, 23, -82, 55, 108, -46, 63, 20}));
                }
                i10 += i11;
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        fileInputStream.close();
        return bArr;
    }
}
