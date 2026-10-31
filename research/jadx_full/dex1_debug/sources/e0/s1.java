package e0;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class s1 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1949b;
    public final /* synthetic */ int c;
    public final /* synthetic */ int d;
    public final /* synthetic */ boolean e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f1950f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ s1(m0.q2 q2Var, int i9, int i10, boolean z8) {
        this.f1949b = 1;
        this.f1950f = q2Var;
        this.c = i9;
        this.d = i10;
        this.e = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:147:0x01c3 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:0x01b8  */
    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        boolean z8;
        boolean z9;
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2;
        boolean z10;
        boolean z11 = true;
        int i9 = 2;
        int i10 = 8;
        switch (this.f1949b) {
            case 0:
                t1 t1Var = (t1) this.f1950f;
                boolean z12 = this.e;
                int i11 = this.c;
                int i12 = this.d;
                u1 u1Var = t1Var.c;
                try {
                    u1Var.f1961b.updateViewLayout(u1Var.f1960a, u1Var.c);
                    if (z12) {
                        int[] iArr = new int[2];
                        u1Var.f1960a.getLocationOnScreen(iArr);
                        u1Var.c(m.h(new byte[]{-27, 21, -97, -118, 23, 54, 67, 105, -37, 101, -81, -86, 49, 20, 6, 114, -115, 109}, new byte[]{-80, 69, -37, -53, 67, 115, 99, 6}) + i11 + m.h(new byte[]{-66, 28}, new byte[]{-110, 60, 71, -33, -6, -102, -52, 31}) + i12 + m.h(new byte[]{-51, -11, -89, 79, -79, -46, 9, 13, -39, -3}, new byte[]{-28, -43, -44, 44, -61, -73, 108, 99}) + iArr[0] + m.h(new byte[]{-20, 21}, new byte[]{-64, 53, 97, -28, 82, -47, 62, -93}) + iArr[1] + m.h(new byte[]{73}, new byte[]{96, -58, 82, 57, 64, 48, -98, -107}));
                        return;
                    }
                    return;
                } catch (Exception e) {
                    StringBuilder sb = new StringBuilder();
                    com.google.protobuf.q.t(new byte[]{90, -100, 1, -40, -101, -29, 80, -41, 125, -66, 42, -21, -17, -46, 17, -64, 104, -87, 49, -92, -25}, new byte[]{15, -52, 69, -103, -49, -90, 112, -78}, sb, i11);
                    com.google.protobuf.q.t(new byte[]{-107, 88}, new byte[]{-71, 120, 10, ByteCompanionObject.MAX_VALUE, 59, 8, -8, 24}, sb, i12);
                    sb.append(m.h(new byte[]{35, 69, -40}, new byte[]{10, ByteCompanionObject.MAX_VALUE, -8, -104, -30, 123, 10, 123}));
                    sb.append(e);
                    u1Var.c(sb.toString());
                    return;
                }
            case 1:
                ((m0.q2) this.f1950f).u(this.c, this.d, this.e);
                return;
            default:
                s1.q0 q0Var = (s1.q0) this.f1950f;
                boolean z13 = this.e;
                int i13 = this.c;
                int i14 = this.d;
                if (q0Var.E) {
                    return;
                }
                File file = new File(q0Var.getContext().getFilesDir(), s1.q0.L);
                if (!z13 && file.isFile() && System.currentTimeMillis() - file.lastModified() < 86400000) {
                    q0Var.r.post(new s1.c0(q0Var, 2));
                    return;
                }
                File file2 = new File(q0Var.getContext().getCacheDir(), m.h(new byte[]{-53, 59, 77, 83, 97, -68, 101, -72, -60, 47, 87, 89, ByteCompanionObject.MAX_VALUE, -68, 72, -117, -46, 59, 85, 86, 103, -72, 74, -79, -41, 116, 83, 74, 112, -9, 94, -69, -46, 52, 85, 85, 118, -67}, new byte[]{-91, 90, 57, 58, 23, -39, 58, -44}));
                String strValueOf = String.valueOf(System.currentTimeMillis());
                StringBuilder sb2 = new StringBuilder();
                boolean z14 = false;
                com.google.protobuf.q.t(new byte[]{45, -93, 17, -84, 101, 24, -23, -9, 47, -76, 4, -82, 98, 77, -87, -76, 54, -7, 23, -87, 57, 80, -77, -74, 106, -89, 12, -65, 101, 87, -85, -121, 53, -91, 10, -92, 111, 12, -74, -80, 53, -24}, new byte[]{69, -41, 101, -36, 22, 34, -58, -40}, sb2, i13);
                com.google.protobuf.q.t(new byte[]{92}, new byte[]{115, 101, 76, 98, 122, 36, 35, -73}, sb2, i14);
                String strL = com.google.protobuf.q.l(new byte[]{118, 96, -39}, new byte[]{80, 18, -28, 48, -104, -110, 103, 45}, sb2, strValueOf);
                StringBuilder sb3 = new StringBuilder();
                com.google.protobuf.q.t(new byte[]{-113, 31, -76, 74, -60, -49, -48, 15, -105, 2, -93, 73, -62, -104, -47, 80, -113, 4, -76, 85, -60, -38}, new byte[]{-25, 107, -64, 58, -73, -11, -1, 32}, sb3, i13);
                com.google.protobuf.q.t(new byte[]{-97}, new byte[]{-80, -27, -75, -30, 69, 34, 35, -35}, sb3, i14);
                String[] strArr = {strL, com.google.protobuf.q.l(new byte[]{-56, -67, 37}, new byte[]{-9, -49, 24, 75, -55, 10, -73, 87}, sb3, strValueOf)};
                int i15 = 0;
                Bitmap bitmapDecodeFile = null;
                while (true) {
                    if (i15 < i9) {
                        try {
                            httpURLConnection2 = (HttpURLConnection) new URL(strArr[i15]).openConnection();
                            try {
                                try {
                                    httpURLConnection2.setConnectTimeout(8000);
                                    httpURLConnection2.setReadTimeout(12000);
                                    httpURLConnection2.setInstanceFollowRedirects(z11);
                                    byte[] bArr = new byte[i10];
                                    // fill-array-data instruction
                                    bArr[0] = 19;
                                    bArr[1] = -15;
                                    bArr[2] = -128;
                                    bArr[3] = -92;
                                    bArr[4] = 41;
                                    bArr[5] = 0;
                                    bArr[6] = 125;
                                    bArr[7] = -53;
                                    byte[] bArr2 = new byte[i10];
                                    // fill-array-data instruction
                                    bArr2[0] = -20;
                                    bArr2[1] = 19;
                                    bArr2[2] = 13;
                                    bArr2[3] = -73;
                                    bArr2[4] = 10;
                                    bArr2[5] = 55;
                                    bArr2[6] = 91;
                                    bArr2[7] = -104;
                                    httpURLConnection2.setRequestProperty(m.h(new byte[]{70, -126, -27, -42, 4, 65, 26, -82, 125, -123}, bArr), m.h(new byte[]{-90, 80, 108, -59, 94, 88, 52, -12, -97, 62, 67, -42, 126, 94, 45, -3, -96, 114, 120, -39, 105, 95, 62, -22}, bArr2));
                                    if (httpURLConnection2.getResponseCode() < 200 || httpURLConnection2.getResponseCode() >= 300) {
                                        z8 = z11;
                                    } else {
                                        if (httpURLConnection2.getContentLength() > 20971520) {
                                            httpURLConnection2.disconnect();
                                            z8 = z11;
                                            z10 = z14;
                                        } else {
                                            BufferedInputStream bufferedInputStream = new BufferedInputStream(httpURLConnection2.getInputStream());
                                            z8 = z11;
                                            try {
                                                FileOutputStream fileOutputStream = new FileOutputStream(file2, z14);
                                                try {
                                                    byte[] bArr3 = new byte[16384];
                                                    int i16 = 0;
                                                    while (true) {
                                                        int i17 = bufferedInputStream.read(bArr3);
                                                        if (i17 != -1) {
                                                            i16 += i17;
                                                            if (i16 > 20971520) {
                                                                fileOutputStream.close();
                                                                try {
                                                                    bufferedInputStream.close();
                                                                } catch (Exception unused) {
                                                                    if (httpURLConnection2 != null) {
                                                                    }
                                                                    z10 = false;
                                                                    if (z10) {
                                                                    }
                                                                    i15++;
                                                                    z11 = z8;
                                                                    i9 = 2;
                                                                    i10 = 8;
                                                                    z14 = false;
                                                                }
                                                            } else {
                                                                fileOutputStream.write(bArr3, 0, i17);
                                                            }
                                                        } else {
                                                            fileOutputStream.flush();
                                                            z10 = i16 > 0 ? z8 : false;
                                                            fileOutputStream.close();
                                                            bufferedInputStream.close();
                                                            httpURLConnection2.disconnect();
                                                        }
                                                    }
                                                } catch (Throwable th) {
                                                    try {
                                                        fileOutputStream.close();
                                                        break;
                                                    } catch (Throwable th2) {
                                                        th.addSuppressed(th2);
                                                    }
                                                    throw th;
                                                }
                                            } catch (Throwable th3) {
                                                try {
                                                    bufferedInputStream.close();
                                                    break;
                                                } catch (Throwable th4) {
                                                    th3.addSuppressed(th4);
                                                }
                                                throw th3;
                                            }
                                        }
                                        if (z10 || (bitmapDecodeFile = BitmapFactory.decodeFile(file2.getAbsolutePath())) == null) {
                                            i15++;
                                            z11 = z8;
                                            i9 = 2;
                                            i10 = 8;
                                            z14 = false;
                                        }
                                    }
                                } catch (Exception unused2) {
                                    z8 = z11;
                                }
                            } catch (Throwable th5) {
                                th = th5;
                                httpURLConnection = httpURLConnection2;
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                }
                                throw th;
                            }
                        } catch (Exception unused3) {
                            z8 = z11;
                            httpURLConnection2 = null;
                        } catch (Throwable th6) {
                            th = th6;
                            httpURLConnection = null;
                        }
                        httpURLConnection2.disconnect();
                        z10 = false;
                        if (z10) {
                        }
                        i15++;
                        z11 = z8;
                        i9 = 2;
                        i10 = 8;
                        z14 = false;
                    } else {
                        z8 = z11;
                    }
                }
                if (bitmapDecodeFile != null && (z13 || !s1.q0.N.equals(h0.b.o().loadString(s1.q0.M, s1.q0.O)))) {
                    File file3 = new File(file.getParentFile(), m.h(new byte[]{37, 95, -122, 85, -105, -5, -78, 12, 42, 75, -100, 95, -119, -5, -97, 63, 60, 95, -98, 80, -111, -1, -99, 5, 57, 16, -104, 76, -122, -80, -99, 18, 46, 72, -101, 83, -108, -19}, new byte[]{75, 62, -14, 60, -31, -98, -19, 96}));
                    if (file3.exists()) {
                        file3.delete();
                    }
                    boolean z15 = (file.exists() && file.renameTo(file3)) ? z8 : false;
                    if (file2.renameTo(file)) {
                        file.setLastModified(System.currentTimeMillis());
                        if (file3.exists()) {
                            file3.delete();
                        }
                        h0.b.o().saveString(s1.q0.M, s1.q0.O);
                        z9 = z8;
                    } else {
                        if (z15) {
                            file3.renameTo(file);
                        }
                        z9 = false;
                    }
                    if (z9) {
                        q0Var.r.post(new e2(q0Var, bitmapDecodeFile, z13, 5));
                    } else if (z13) {
                        q0Var.r.post(new s1.c0(q0Var, 3));
                    }
                } else if (z13) {
                    q0Var.r.post(new s1.c0(q0Var, 4));
                }
                if (file2.exists()) {
                    file2.delete();
                }
                q0Var.r.post(new s1.c0(q0Var, 5));
                return;
        }
    }

    public /* synthetic */ s1(Object obj, boolean z8, int i9, int i10, int i11) {
        this.f1949b = i11;
        this.f1950f = obj;
        this.e = z8;
        this.c = i9;
        this.d = i10;
    }
}
