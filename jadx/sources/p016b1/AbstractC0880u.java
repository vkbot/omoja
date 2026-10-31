package p016b1;

import android.app.AppOpsManager;
import android.content.Context;
import android.hardware.Camera;
import android.os.Process;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.bumptech.glide.AbstractC1031d;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.UUID;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.reflect.KClass;
import p000a.AbstractC0000a;
import p010a9.C0058t;
import p033c8.C1014d;
import p047e0.AbstractC1387m;
import p062f5.C1548f;
import p063f6.C1580d;
import p076g9.C1630b;
import p076g9.InterfaceC1633e;
import p096i9.C1842m1;
import p142n0.C2467b;
import p166p3.C2968a;
import p173q0.C3042f;
import p184r5.C3103a;
import p200t4.C3240a;
import p200t4.C3247h;
import p224v8.AbstractC3366a0;
import p224v8.C3395k;
import p224v8.C3429v0;
import p224v8.InterfaceC3426u0;
import p242x7.InterfaceC3584a;
import p258z3.C3719e;
import p258z3.C3722h;
import p258z3.C3725k;
import p258z3.C3727m;

/* JADX INFO: renamed from: b1.u */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0880u {

    /* JADX INFO: renamed from: a */
    public static int f644a;

    /* JADX INFO: renamed from: c */
    public static void m996c(int i10, String str) {
        if (i10 >= 0) {
            return;
        }
        throw new IllegalArgumentException(str + " cannot be negative but was: " + i10);
    }

    /* JADX INFO: renamed from: d */
    public static C3240a m997d(String str, String str2) {
        C3103a c3103a = new C3103a(str, str2);
        C1580d c1580dM5180a = C3240a.m5180a(C3103a.class);
        c1580dM5180a.f3911c = 1;
        c1580dM5180a.f3914f = new C3042f(4, c3103a);
        return c1580dM5180a.m2665b();
    }

    /* JADX INFO: renamed from: e */
    public static AbstractC0000a m998e(int i10) {
        if (i10 != 0) {
            return i10 != 1 ? new C3727m() : new C3719e();
        }
        return new C3727m();
    }

    /* JADX INFO: renamed from: f */
    public static C3240a m999f(String str, C2467b c2467b) {
        C1580d c1580dM5180a = C3240a.m5180a(C3103a.class);
        c1580dM5180a.f3911c = 1;
        c1580dM5180a.m2664a(C3247h.m5187a(Context.class));
        c1580dM5180a.f3914f = new C1548f(24, str, c2467b);
        return c1580dM5180a.m2665b();
    }

    /* JADX INFO: renamed from: g */
    public static String m1000g(String str) {
        StringBuilder sb = new StringBuilder();
        int i10 = 0;
        while (i10 < str.length()) {
            int i11 = i10 + 2;
            sb.append((char) Integer.parseInt(str.substring(i10, i11), 16));
            i10 = i11;
        }
        return sb.toString();
    }

    /* JADX INFO: renamed from: h */
    public static int m1001h(int i10) {
        int numberOfCameras = Camera.getNumberOfCameras();
        if (numberOfCameras == 0) {
            Log.w("b1.u", "No cameras!");
            return -1;
        }
        boolean z9 = i10 >= 0;
        if (!z9) {
            i10 = 0;
            while (i10 < numberOfCameras) {
                Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
                Camera.getCameraInfo(i10, cameraInfo);
                if (cameraInfo.facing == 0) {
                    break;
                }
                i10++;
            }
        }
        if (i10 < numberOfCameras) {
            return i10;
        }
        return z9 ? -1 : 0;
    }

    /* JADX INFO: renamed from: i */
    public static final KClass m1002i(InterfaceC1633e interfaceC1633e) {
        interfaceC1633e.getClass();
        if (interfaceC1633e instanceof C1630b) {
            return ((C1630b) interfaceC1633e).f4137b;
        }
        if (interfaceC1633e instanceof C1842m1) {
            return m1002i(((C1842m1) interfaceC1633e).f4794a);
        }
        return null;
    }

    /* JADX INFO: renamed from: q */
    public static boolean m1003q(Context context) {
        AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService(AbstractC1387m.m2421h(new byte[]{22, 115, -88, -76, 82, -11}, new byte[]{119, 3, -40, -37, 34, -122, 14, -30}));
        return appOpsManager != null && appOpsManager.checkOpNoThrow(AbstractC1387m.m2421h(new byte[]{43, 44, 108, -72, 115, 35, -10, -47, 45, 39, 124, -107, 105, 57, -13, -116, 47, 29, 123, -66, 125, 62, -31}, new byte[]{74, 66, 8, -54, 28, 74, -110, -21}), Process.myUid(), context.getPackageName()) == 0;
    }

    /* JADX WARN: Code duplicated, block: B:147:0x01c2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:171:? A[Catch: all -> 0x0164, SYNTHETIC, TryCatch #2 {all -> 0x0164, blocks: (B:26:0x00fe, B:27:0x0103, B:29:0x0109, B:31:0x013b, B:33:0x0141, B:35:0x0147, B:38:0x014e, B:39:0x0163, B:42:0x0168, B:44:0x0172, B:47:0x0179, B:48:0x018e, B:49:0x018f, B:60:0x01ad, B:74:0x01ca, B:73:0x01c7, B:75:0x01cb, B:76:0x01e0, B:50:0x0193, B:59:0x01aa, B:68:0x01bf, B:67:0x01bc, B:52:0x019a, B:53:0x019c, B:55:0x01a3, B:64:0x01b7, B:70:0x01c2), top: B:146:0x00fe, outer: #7, inners: #1, #3 }] */
    /* JADX INFO: renamed from: r */
    public static synchronized String m1004r(File file, File file2, boolean z9) {
        String strReplaceFirst;
        File[] fileArrListFiles;
        try {
            strReplaceFirst = file.getName().replaceFirst(AbstractC1387m.m2421h(new byte[]{121, -122, -74, -68, -71, -20, 13, 7, 33, -99}, new byte[]{81, -71, -33, -107, -27, -62, 119, 110}), "");
            if (!strReplaceFirst.isEmpty()) {
                boolean z10 = true;
                if (!strReplaceFirst.startsWith(AbstractC1387m.m2421h(new byte[]{-54}, new byte[]{-28, 56, 25, 98, -120, 96, -107, -31})) && !strReplaceFirst.contains(AbstractC1387m.m2421h(new byte[]{57}, new byte[]{101, 116, 112, 60, -19, -78, -56, ByteCompanionObject.MIN_VALUE})) && !strReplaceFirst.contains(AbstractC1387m.m2421h(new byte[]{-90}, new byte[]{-119, 77, -57, 24, ByteCompanionObject.MAX_VALUE, 58, 16, 75}))) {
                    File canonicalFile = file2.getCanonicalFile();
                    if (!canonicalFile.isDirectory() && !canonicalFile.mkdirs()) {
                        throw new IOException(AbstractC1387m.m2421h(new byte[]{-125, 98, -108, 100, -38, 1, -98, -19, -78, 102, -101, 126, -48, 85, -55, -25, -92, 100, -97, 126, -107, 17, -41, -4, -91, 96, -114, 101, -57, 12}, new byte[]{-64, 3, -6, 10, -75, 117, -66, -114}));
                    }
                    File canonicalFile2 = new File(canonicalFile, strReplaceFirst).getCanonicalFile();
                    if (!canonicalFile.equals(canonicalFile2.getParentFile())) {
                        throw new IOException(AbstractC1387m.m2421h(new byte[]{-104, -51, 20, 74, 49, -14, 94, 41, -90, -54, 6, 76, 56, -17, 26, 121, -80, -41, 10}, new byte[]{-47, -93, 98, 43, 93, -101, 58, 9}));
                    }
                    File file3 = new File(canonicalFile, AbstractC1387m.m2421h(new byte[]{49, 58, 86, -65, 99, 6, 21, -5, 50}, new byte[]{31, 83, 56, -52, 23, 103, 121, -105}) + UUID.randomUUID());
                    File file4 = new File(canonicalFile, AbstractC1387m.m2421h(new byte[]{-61, -87, -118, -55, -5, 87, -91, 115}, new byte[]{-19, -53, -21, -86, -112, 34, -43, 94}) + UUID.randomUUID());
                    if (!file3.mkdir()) {
                        throw new IOException(AbstractC1387m.m2421h(new byte[]{77, 93, 28, -82, -75, -30, 42, -48, 124, 89, 19, -76, -65, -74, 121, -57, 111, 91, 27, -82, -67, -74, 110, -38, 124, 89, 17, -76, -75, -28, 115}, new byte[]{14, 60, 114, -64, -38, -106, 10, -77}));
                    }
                    try {
                        ZipFile zipFile = new ZipFile(file);
                        try {
                            Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
                            int i10 = 0;
                            while (enumerationEntries.hasMoreElements()) {
                                ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                                File canonicalFile3 = new File(file3, zipEntryNextElement.getName()).getCanonicalFile();
                                if (!canonicalFile3.getPath().startsWith(file3.getCanonicalPath() + File.separator)) {
                                    throw new IOException(AbstractC1387m.m2421h(new byte[]{-102, 66, -37, -2, 93, -6, 121, -106, -66, 94, -52, -28, 77, -84, 115, -61, -81, 67, -47, -14, 81, -84, 107, -33, -65, 87, -35, -30, 20, -24, 117, -60, -66, 83, -52, -7, 70, -11}, new byte[]{-37, 48, -72, -106, 52, -116, 28, -74}));
                                }
                                if (!zipEntryNextElement.isDirectory()) {
                                    File parentFile = canonicalFile3.getParentFile();
                                    if (!parentFile.isDirectory() && !parentFile.mkdirs()) {
                                        throw new IOException(AbstractC1387m.m2421h(new byte[]{52, 83, -102, -115, 104, -97, 125, 57, 5, 87, -107, -105, 98, -53, 57, 51, 5, 87, -105, -105, 104, -103, 36}, new byte[]{119, 50, -12, -29, 7, -21, 93, 90}));
                                    }
                                    InputStream inputStream = zipFile.getInputStream(zipEntryNextElement);
                                    try {
                                        FileOutputStream fileOutputStream = new FileOutputStream(canonicalFile3);
                                        try {
                                            byte[] bArr = new byte[8192];
                                            while (true) {
                                                int i11 = inputStream.read(bArr);
                                                if (i11 == -1) {
                                                    break;
                                                }
                                                fileOutputStream.write(bArr, 0, i11);
                                                if (inputStream != null) {
                                                    throw th;
                                                }
                                                try {
                                                    inputStream.close();
                                                    throw th;
                                                } catch (Throwable th) {
                                                    th.addSuppressed(th);
                                                    throw th;
                                                }
                                            }
                                            fileOutputStream.close();
                                            inputStream.close();
                                            i10++;
                                        } catch (Throwable th2) {
                                            try {
                                                fileOutputStream.close();
                                                throw th2;
                                            } catch (Throwable th3) {
                                                th2.addSuppressed(th3);
                                                throw th2;
                                            }
                                        }
                                    } catch (Throwable th4) {
                                        if (inputStream != null) {
                                            throw th4;
                                        }
                                        inputStream.close();
                                        throw th4;
                                        m1005v(file3);
                                        throw th;
                                    }
                                } else if (!canonicalFile3.isDirectory() && !canonicalFile3.mkdirs()) {
                                    throw new IOException(AbstractC1387m.m2421h(new byte[]{-85, -85, -58, 4, -78, -18, -26, -119, -102, -81, -55, 30, -72, -70, -94, -125, -102, -81, -53, 30, -78, -24, -65}, new byte[]{-24, -54, -88, 106, -35, -102, -58, -22}));
                                }
                                m1005v(file3);
                                throw th;
                            }
                            zipFile.close();
                            if (i10 == 0) {
                                throw new IOException(AbstractC1387m.m2421h(new byte[]{4, 4, 19, -50, -61, -7, -48, -17, 37, 14, 6, -50, -102, -72, -43, -27, 41, 0, 21, -33}, new byte[]{65, 105, 99, -70, -70, -39, -89, -122}));
                            }
                            if (z9 && (fileArrListFiles = file3.listFiles()) != null && fileArrListFiles.length == 1 && fileArrListFiles[0].isDirectory()) {
                                File file5 = fileArrListFiles[0];
                                File[] fileArrListFiles2 = file5.listFiles();
                                if (fileArrListFiles2 == null) {
                                    throw new IOException(AbstractC1387m.m2421h(new byte[]{-82, 103, -50, 86, 110, -13, 56, -94, -120, 103, -60, 24, 118, -18, 124, -73, -120, 114, ByteCompanionObject.MIN_VALUE, 92, 104, -11, 125, -77, -103, 105, -46, 65}, new byte[]{-19, 6, -96, 56, 1, -121, 24, -48}));
                                }
                                for (File file6 : fileArrListFiles2) {
                                    if (!file6.renameTo(new File(file3, file6.getName()))) {
                                        throw new IOException(AbstractC1387m.m2421h(new byte[]{60, -97, -1, -52, 123, 14, -110, 116, 16, -120, -12, -126, 99, 19, -42, 126, 26, -118, -79, -60, 125, 22, -41}, new byte[]{ByteCompanionObject.MAX_VALUE, -2, -111, -94, 20, 122, -78, 25}));
                                    }
                                }
                                if (!file5.delete()) {
                                    throw new IOException(AbstractC1387m.m2421h(new byte[]{-12, -94, -57, 2, -53, 85, -105, 33, -46, -82, -58, 26, -63, 1, -64, 33, -42, -77, -39, 9, -42, 1, -45, 58, -59, -90, -54, 24, -53, 83, -50}, new byte[]{-73, -61, -87, 108, -92, 33, -73, 83}));
                                }
                            }
                            if (!canonicalFile2.exists()) {
                                z10 = false;
                            } else if (!canonicalFile2.renameTo(file4)) {
                                throw new IOException(AbstractC1387m.m2421h(new byte[]{87, -116, 48, -124, 76, 7, -57, -8, 117, -114, 53, -54, 86, 3, -57, -13, 122, -98, 42, -117, 79, 31, -126, -2, 52, -102, 55, -114, 68, 22, -109}, new byte[]{20, -19, 94, -22, 35, 115, -25, -102}));
                            }
                            if (!file3.renameTo(canonicalFile2)) {
                                if (!z10 || file4.renameTo(canonicalFile2)) {
                                    throw new IOException(AbstractC1387m.m2421h(new byte[]{37, -104, -124, -121, -37, -73, 113, 69, 8, -118, -98, -120, -40, -81, 113, 91, 15, -99, -115, -116, -64}, new byte[]{102, -7, -22, -23, -76, -61, 81, 44}));
                                }
                                throw new IOException(AbstractC1387m.m2421h(new byte[]{-124, 77, -112, -90, -27, -83, -87, 34, -85, 66, -118, -66, -31, -91, -2, 34, -94, 81, -118, -75, -19, -81, -92, 110, -19, 83, -111, -73, -9, -92, -73, 116, -88, 71, -61, -77, -16, -31}, new byte[]{-51, 35, -29, -46, -124, -63, -59, 2}) + file4);
                            }
                            m1005v(file4);
                            m1005v(file3);
                        } catch (Throwable th5) {
                            try {
                                zipFile.close();
                                throw th5;
                            } catch (Throwable th6) {
                                th5.addSuppressed(th6);
                                throw th5;
                            }
                        }
                    } catch (Throwable th7) {
                        m1005v(file3);
                        throw th7;
                    }
                }
            }
            throw new IOException(AbstractC1387m.m2421h(new byte[]{8, -79, 52, 72, 42, 62, -94, -48, 54, -74, 38, 78, 35, 35, -26, -98, 32, -78, 39}, new byte[]{65, -33, 66, 41, 70, 87, -58, -16}));
        } catch (Throwable th8) {
            throw th8;
        }
        return strReplaceFirst;
    }

    /* JADX INFO: renamed from: v */
    public static void m1005v(File file) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                m1005v(file2);
            }
        }
        file.delete();
    }

    /* JADX INFO: renamed from: w */
    public static void m1006w(View view, C3725k c3725k) {
        C2968a c2968a = c3725k.f11048c.f11023c;
        if (c2968a == null || !c2968a.f8253a) {
            return;
        }
        float elevation = 0.0f;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            elevation += ((View) parent).getElevation();
        }
        C3722h c3722h = c3725k.f11048c;
        if (c3722h.f11033m != elevation) {
            c3722h.f11033m = elevation;
            c3725k.m5955x();
        }
    }

    /* JADX INFO: renamed from: y */
    public static final Object m1007y(C0058t c0058t, C0058t c0058t2, Function2 function2) {
        Object c3395k;
        InterfaceC3426u0 interfaceC3426u0;
        try {
            c3395k = ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(c0058t2, c0058t);
        } catch (Throwable th) {
            c3395k = new C3395k(false, th);
        }
        if (c3395k == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            return IntrinsicsKt.getCOROUTINE_SUSPENDED();
        }
        Object objM5324B = c0058t.m5324B(c3395k);
        if (objM5324B == AbstractC3366a0.f9844d) {
            return IntrinsicsKt.getCOROUTINE_SUSPENDED();
        }
        if (objM5324B instanceof C3395k) {
            throw ((C3395k) objM5324B).f9892a;
        }
        C3429v0 c3429v0 = objM5324B instanceof C3429v0 ? (C3429v0) objM5324B : null;
        return (c3429v0 == null || (interfaceC3426u0 = c3429v0.f9912a) == null) ? objM5324B : interfaceC3426u0;
    }

    /* JADX INFO: renamed from: A */
    public void m1008A(InterfaceC3584a interfaceC3584a) {
        try {
            mo1009B(interfaceC3584a);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            AbstractC1031d.m1292v(th);
            AbstractC0000a.m18s(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't pass out an exception otherwise...");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    /* JADX INFO: renamed from: B */
    public abstract void mo1009B(InterfaceC3584a interfaceC3584a);

    /* JADX INFO: renamed from: C */
    public abstract void mo38C(ViewGroup.MarginLayoutParams marginLayoutParams, int i10, int i11);

    /* JADX INFO: renamed from: a */
    public abstract int mo39a(ViewGroup.MarginLayoutParams marginLayoutParams);

    /* JADX INFO: renamed from: b */
    public abstract float mo40b(int i10);

    /* JADX INFO: renamed from: j */
    public abstract int mo41j();

    /* JADX INFO: renamed from: k */
    public abstract int mo42k();

    /* JADX INFO: renamed from: l */
    public abstract int mo43l();

    /* JADX INFO: renamed from: m */
    public abstract int mo44m();

    /* JADX INFO: renamed from: n */
    public abstract int mo45n(View view);

    /* JADX INFO: renamed from: o */
    public abstract int mo46o(CoordinatorLayout coordinatorLayout);

    /* JADX INFO: renamed from: p */
    public abstract int mo47p();

    /* JADX INFO: renamed from: s */
    public abstract boolean mo48s(float f8);

    /* JADX INFO: renamed from: t */
    public abstract boolean mo49t(View view);

    /* JADX INFO: renamed from: u */
    public abstract boolean mo50u(float f8, float f10);

    /* JADX INFO: renamed from: x */
    public abstract boolean mo51x(View view, float f8);

    /* JADX INFO: renamed from: z */
    public void m1010z() {
        m1008A(new C1014d(1));
    }
}
