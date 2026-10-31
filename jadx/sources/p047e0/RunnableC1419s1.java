package p047e0;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.google.protobuf.AbstractC1178q;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import kotlin.jvm.internal.ByteCompanionObject;
import p078h0.C1652b;
import p132m0.C2343q2;
import p190s1.C3166q0;
import p190s1.RunnableC3138c0;

/* JADX INFO: renamed from: e0.s1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1419s1 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3407b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ int f3408c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ int f3409d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ boolean f3410e;

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ Object f3411f;

    public /* synthetic */ RunnableC1419s1(C2343q2 c2343q2, int i10, int i11, boolean z9) {
        this.f3407b = 1;
        this.f3411f = c2343q2;
        this.f3408c = i10;
        this.f3409d = i11;
        this.f3410e = z9;
    }

    /* JADX WARN: Code duplicated, block: B:147:0x01c3 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:0x01b8  */
    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        boolean z9;
        boolean z10;
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2;
        boolean z11;
        boolean z12 = true;
        int i10 = 2;
        int i11 = 8;
        switch (this.f3407b) {
            case 0:
                ViewOnTouchListenerC1424t1 viewOnTouchListenerC1424t1 = (ViewOnTouchListenerC1424t1) this.f3411f;
                boolean z13 = this.f3410e;
                int i12 = this.f3408c;
                int i13 = this.f3409d;
                C1428u1 c1428u1 = viewOnTouchListenerC1424t1.f3424c;
                try {
                    c1428u1.f3430b.updateViewLayout(c1428u1.f3429a, c1428u1.f3431c);
                    if (z13) {
                        int[] iArr = new int[2];
                        c1428u1.f3429a.getLocationOnScreen(iArr);
                        c1428u1.m2478c(AbstractC1387m.m2421h(new byte[]{-27, 21, -97, -118, 23, 54, 67, 105, -37, 101, -81, -86, 49, 20, 6, 114, -115, 109}, new byte[]{-80, 69, -37, -53, 67, 115, 99, 6}) + i12 + AbstractC1387m.m2421h(new byte[]{-66, 28}, new byte[]{-110, 60, 71, -33, -6, -102, -52, 31}) + i13 + AbstractC1387m.m2421h(new byte[]{-51, -11, -89, 79, -79, -46, 9, 13, -39, -3}, new byte[]{-28, -43, -44, 44, -61, -73, 108, 99}) + iArr[0] + AbstractC1387m.m2421h(new byte[]{-20, 21}, new byte[]{-64, 53, 97, -28, 82, -47, 62, -93}) + iArr[1] + AbstractC1387m.m2421h(new byte[]{73}, new byte[]{96, -58, 82, 57, 64, 48, -98, -107}));
                        return;
                    }
                    return;
                } catch (Exception e) {
                    StringBuilder sb = new StringBuilder();
                    AbstractC1178q.m2086t(new byte[]{90, -100, 1, -40, -101, -29, 80, -41, 125, -66, 42, -21, -17, -46, 17, -64, 104, -87, 49, -92, -25}, new byte[]{15, -52, 69, -103, -49, -90, 112, -78}, sb, i12);
                    AbstractC1178q.m2086t(new byte[]{-107, 88}, new byte[]{-71, 120, 10, ByteCompanionObject.MAX_VALUE, 59, 8, -8, 24}, sb, i13);
                    sb.append(AbstractC1387m.m2421h(new byte[]{35, 69, -40}, new byte[]{10, ByteCompanionObject.MAX_VALUE, -8, -104, -30, 123, 10, 123}));
                    sb.append(e);
                    c1428u1.m2478c(sb.toString());
                    return;
                }
            case 1:
                ((C2343q2) this.f3411f).m3722u(this.f3408c, this.f3409d, this.f3410e);
                return;
            default:
                C3166q0 c3166q0 = (C3166q0) this.f3411f;
                boolean z14 = this.f3410e;
                int i14 = this.f3408c;
                int i15 = this.f3409d;
                if (c3166q0.f9160E) {
                    return;
                }
                File file = new File(c3166q0.getContext().getFilesDir(), C3166q0.f9152L);
                if (!z14 && file.isFile() && System.currentTimeMillis() - file.lastModified() < 86400000) {
                    c3166q0.f9182r.post(new RunnableC3138c0(c3166q0, i10));
                    return;
                }
                File file2 = new File(c3166q0.getContext().getCacheDir(), AbstractC1387m.m2421h(new byte[]{-53, 59, 77, 83, 97, -68, 101, -72, -60, 47, 87, 89, ByteCompanionObject.MAX_VALUE, -68, 72, -117, -46, 59, 85, 86, 103, -72, 74, -79, -41, 116, 83, 74, 112, -9, 94, -69, -46, 52, 85, 85, 118, -67}, new byte[]{-91, 90, 57, 58, 23, -39, 58, -44}));
                String strValueOf = String.valueOf(System.currentTimeMillis());
                StringBuilder sb2 = new StringBuilder();
                boolean z15 = false;
                AbstractC1178q.m2086t(new byte[]{45, -93, 17, -84, 101, 24, -23, -9, 47, -76, 4, -82, 98, 77, -87, -76, 54, -7, 23, -87, 57, 80, -77, -74, 106, -89, 12, -65, 101, 87, -85, -121, 53, -91, 10, -92, 111, 12, -74, -80, 53, -24}, new byte[]{69, -41, 101, -36, 22, 34, -58, -40}, sb2, i14);
                AbstractC1178q.m2086t(new byte[]{92}, new byte[]{115, 101, 76, 98, 122, 36, 35, -73}, sb2, i15);
                String strM2078l = AbstractC1178q.m2078l(new byte[]{118, 96, -39}, new byte[]{80, 18, -28, 48, -104, -110, 103, 45}, sb2, strValueOf);
                StringBuilder sb3 = new StringBuilder();
                AbstractC1178q.m2086t(new byte[]{-113, 31, -76, 74, -60, -49, -48, 15, -105, 2, -93, 73, -62, -104, -47, 80, -113, 4, -76, 85, -60, -38}, new byte[]{-25, 107, -64, 58, -73, -11, -1, 32}, sb3, i14);
                AbstractC1178q.m2086t(new byte[]{-97}, new byte[]{-80, -27, -75, -30, 69, 34, 35, -35}, sb3, i15);
                String[] strArr = {strM2078l, AbstractC1178q.m2078l(new byte[]{-56, -67, 37}, new byte[]{-9, -49, 24, 75, -55, 10, -73, 87}, sb3, strValueOf)};
                int i16 = 0;
                Bitmap bitmapDecodeFile = null;
                while (true) {
                    if (i16 < i10) {
                        try {
                            httpURLConnection2 = (HttpURLConnection) new URL(strArr[i16]).openConnection();
                            try {
                                try {
                                    httpURLConnection2.setConnectTimeout(8000);
                                    httpURLConnection2.setReadTimeout(12000);
                                    httpURLConnection2.setInstanceFollowRedirects(z12);
                                    byte[] bArr = new byte[i11];
                                    // fill-array-data instruction
                                    bArr[0] = 19;
                                    bArr[1] = -15;
                                    bArr[2] = -128;
                                    bArr[3] = -92;
                                    bArr[4] = 41;
                                    bArr[5] = 0;
                                    bArr[6] = 125;
                                    bArr[7] = -53;
                                    byte[] bArr2 = new byte[i11];
                                    // fill-array-data instruction
                                    bArr2[0] = -20;
                                    bArr2[1] = 19;
                                    bArr2[2] = 13;
                                    bArr2[3] = -73;
                                    bArr2[4] = 10;
                                    bArr2[5] = 55;
                                    bArr2[6] = 91;
                                    bArr2[7] = -104;
                                    httpURLConnection2.setRequestProperty(AbstractC1387m.m2421h(new byte[]{70, -126, -27, -42, 4, 65, 26, -82, 125, -123}, bArr), AbstractC1387m.m2421h(new byte[]{-90, 80, 108, -59, 94, 88, 52, -12, -97, 62, 67, -42, 126, 94, 45, -3, -96, 114, 120, -39, 105, 95, 62, -22}, bArr2));
                                    if (httpURLConnection2.getResponseCode() < 200 || httpURLConnection2.getResponseCode() >= 300) {
                                        z9 = z12;
                                    } else {
                                        if (httpURLConnection2.getContentLength() > 20971520) {
                                            httpURLConnection2.disconnect();
                                            z9 = z12;
                                            z11 = z15;
                                        } else {
                                            BufferedInputStream bufferedInputStream = new BufferedInputStream(httpURLConnection2.getInputStream());
                                            z9 = z12;
                                            try {
                                                FileOutputStream fileOutputStream = new FileOutputStream(file2, z15);
                                                try {
                                                    byte[] bArr3 = new byte[16384];
                                                    int i17 = 0;
                                                    while (true) {
                                                        int i18 = bufferedInputStream.read(bArr3);
                                                        if (i18 != -1) {
                                                            i17 += i18;
                                                            if (i17 > 20971520) {
                                                                fileOutputStream.close();
                                                                try {
                                                                    bufferedInputStream.close();
                                                                } catch (Exception unused) {
                                                                    if (httpURLConnection2 != null) {
                                                                    }
                                                                    z11 = false;
                                                                    if (z11) {
                                                                    }
                                                                    i16++;
                                                                    z12 = z9;
                                                                    i10 = 2;
                                                                    i11 = 8;
                                                                    z15 = false;
                                                                }
                                                            } else {
                                                                fileOutputStream.write(bArr3, 0, i18);
                                                            }
                                                        } else {
                                                            fileOutputStream.flush();
                                                            z11 = i17 > 0 ? z9 : false;
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
                                        if (z11 || (bitmapDecodeFile = BitmapFactory.decodeFile(file2.getAbsolutePath())) == null) {
                                            i16++;
                                            z12 = z9;
                                            i10 = 2;
                                            i11 = 8;
                                            z15 = false;
                                        }
                                    }
                                } catch (Throwable th5) {
                                    th = th5;
                                    httpURLConnection = httpURLConnection2;
                                    if (httpURLConnection != null) {
                                        httpURLConnection.disconnect();
                                    }
                                    throw th;
                                }
                            } catch (Exception unused2) {
                                z9 = z12;
                            }
                        } catch (Exception unused3) {
                            z9 = z12;
                            httpURLConnection2 = null;
                        } catch (Throwable th6) {
                            th = th6;
                            httpURLConnection = null;
                        }
                        httpURLConnection2.disconnect();
                        z11 = false;
                        if (z11) {
                        }
                        i16++;
                        z12 = z9;
                        i10 = 2;
                        i11 = 8;
                        z15 = false;
                    } else {
                        z9 = z12;
                    }
                }
                if (bitmapDecodeFile != null && (z14 || !C3166q0.f9154N.equals(C1652b.m2745o().loadString(C3166q0.f9153M, C3166q0.f9155O)))) {
                    File file3 = new File(file.getParentFile(), AbstractC1387m.m2421h(new byte[]{37, 95, -122, 85, -105, -5, -78, 12, 42, 75, -100, 95, -119, -5, -97, 63, 60, 95, -98, 80, -111, -1, -99, 5, 57, 16, -104, 76, -122, -80, -99, 18, 46, 72, -101, 83, -108, -19}, new byte[]{75, 62, -14, 60, -31, -98, -19, 96}));
                    if (file3.exists()) {
                        file3.delete();
                    }
                    boolean z16 = (file.exists() && file.renameTo(file3)) ? z9 : false;
                    if (file2.renameTo(file)) {
                        file.setLastModified(System.currentTimeMillis());
                        if (file3.exists()) {
                            file3.delete();
                        }
                        C1652b.m2745o().saveString(C3166q0.f9153M, C3166q0.f9155O);
                        z10 = z9;
                    } else {
                        if (z16) {
                            file3.renameTo(file);
                        }
                        z10 = false;
                    }
                    if (z10) {
                        c3166q0.f9182r.post(new RunnableC1350e2(c3166q0, bitmapDecodeFile, z14, 5));
                    } else if (z14) {
                        c3166q0.f9182r.post(new RunnableC3138c0(c3166q0, 3));
                    }
                } else if (z14) {
                    c3166q0.f9182r.post(new RunnableC3138c0(c3166q0, 4));
                }
                if (file2.exists()) {
                    file2.delete();
                }
                c3166q0.f9182r.post(new RunnableC3138c0(c3166q0, 5));
                return;
        }
    }

    public /* synthetic */ RunnableC1419s1(Object obj, boolean z9, int i10, int i11, int i12) {
        this.f3407b = i12;
        this.f3411f = obj;
        this.f3410e = z9;
        this.f3408c = i10;
        this.f3409d = i11;
    }
}
