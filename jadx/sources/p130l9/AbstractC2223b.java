package p130l9;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Logger;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.text.StringsKt__StringsKt;
import p099j1.C1929i;

/* JADX INFO: renamed from: l9.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2223b {

    /* JADX INFO: renamed from: a */
    public static final C2239j f5848a = new C2239j();

    /* JADX INFO: renamed from: a */
    public static final C2256z m3568a(InterfaceC2230e0 interfaceC2230e0) {
        interfaceC2230e0.getClass();
        return new C2256z(interfaceC2230e0);
    }

    /* JADX INFO: renamed from: b */
    public static final C2222a0 m3569b(InterfaceC2234g0 interfaceC2234g0) {
        interfaceC2234g0.getClass();
        return new C2222a0(interfaceC2234g0);
    }

    /* JADX INFO: renamed from: c */
    public static void m3570c(long j10, C2242l c2242l, int i10, List list, int i11, int i12, List list2) {
        int i13;
        int i14;
        List list3;
        long j11;
        int i15;
        int i16 = i10;
        List list4 = list;
        List list5 = list2;
        if (i11 >= i12) {
            C1929i.m3029k("Failed requirement.");
            return;
        }
        for (int i17 = i11; i17 < i12; i17++) {
            if (((C2245o) list4.get(i17)).mo3585c() < i16) {
                C1929i.m3029k("Failed requirement.");
                return;
            }
        }
        C2245o c2245o = (C2245o) list.get(i11);
        C2245o c2245o2 = (C2245o) list4.get(i12 - 1);
        if (i16 == c2245o.mo3585c()) {
            int iIntValue = ((Number) list5.get(i11)).intValue();
            int i18 = i11 + 1;
            C2245o c2245o3 = (C2245o) list4.get(i18);
            i13 = i18;
            i14 = iIntValue;
            c2245o = c2245o3;
        } else {
            i13 = i11;
            i14 = -1;
        }
        if (c2245o.mo3588f(i16) == c2245o2.mo3588f(i16)) {
            int iMin = Math.min(c2245o.mo3585c(), c2245o2.mo3585c());
            int i19 = 0;
            for (int i20 = i16; i20 < iMin && c2245o.mo3588f(i20) == c2245o2.mo3588f(i20); i20++) {
                i19++;
            }
            long j12 = 4;
            long j13 = (c2242l.f5878c / j12) + j10 + ((long) 2) + ((long) i19) + 1;
            c2242l.m3625p0(-i19);
            c2242l.m3625p0(i14);
            int i21 = i16 + i19;
            while (i16 < i21) {
                c2242l.m3625p0(c2245o.mo3588f(i16) & 255);
                i16++;
            }
            if (i13 + 1 == i12) {
                if (i21 == ((C2245o) list4.get(i13)).mo3585c()) {
                    c2242l.m3625p0(((Number) list5.get(i13)).intValue());
                    return;
                } else {
                    C1929i.m3030l("Check failed.");
                    return;
                }
            }
            C2242l c2242l2 = new C2242l();
            c2242l.m3625p0(((int) ((c2242l2.f5878c / j12) + j13)) * (-1));
            m3570c(j13, c2242l2, i21, list4, i13, i12, list5);
            c2242l.mo3603G(c2242l2);
            return;
        }
        int i22 = 1;
        for (int i23 = i13 + 1; i23 < i12; i23++) {
            if (((C2245o) list4.get(i23 - 1)).mo3588f(i16) != ((C2245o) list4.get(i23)).mo3588f(i16)) {
                i22++;
            }
        }
        long j14 = 4;
        long j15 = (c2242l.f5878c / j14) + j10 + ((long) 2) + ((long) (i22 * 2));
        c2242l.m3625p0(i22);
        c2242l.m3625p0(i14);
        for (int i24 = i13; i24 < i12; i24++) {
            int iMo3588f = ((C2245o) list4.get(i24)).mo3588f(i16);
            if (i24 == i13 || iMo3588f != ((C2245o) list4.get(i24 - 1)).mo3588f(i16)) {
                c2242l.m3625p0(iMo3588f & 255);
            }
        }
        C2242l c2242l3 = new C2242l();
        int i25 = i13;
        while (i25 < i12) {
            byte bMo3588f = ((C2245o) list4.get(i25)).mo3588f(i16);
            int i26 = i25 + 1;
            int i27 = i26;
            while (true) {
                if (i27 >= i12) {
                    i27 = i12;
                    break;
                } else if (bMo3588f != ((C2245o) list4.get(i27)).mo3588f(i16)) {
                    break;
                } else {
                    i27++;
                }
            }
            if (i26 == i27 && i16 + 1 == ((C2245o) list4.get(i25)).mo3585c()) {
                c2242l.m3625p0(((Number) list5.get(i25)).intValue());
                list3 = list5;
                j11 = j15;
                i15 = i27;
            } else {
                c2242l.m3625p0(((int) ((c2242l3.f5878c / j14) + j15)) * (-1));
                list3 = list5;
                j11 = j15;
                i15 = i27;
                m3570c(j11, c2242l3, i16 + 1, list, i25, i15, list3);
                list4 = list;
            }
            j15 = j11;
            i25 = i15;
            list5 = list3;
        }
        c2242l.mo3603G(c2242l3);
    }

    /* JADX INFO: renamed from: d */
    public static final void m3571d(long j10, long j11, long j12) {
        if ((j11 | j12) < 0 || j11 > j10 || j10 - j11 < j12) {
            throw new ArrayIndexOutOfBoundsException("size=" + j10 + " offset=" + j11 + " byteCount=" + j12);
        }
    }

    /* JADX INFO: renamed from: e */
    public static final boolean m3572e(AssertionError assertionError) {
        Logger logger = AbstractC2252v.f5896a;
        if (assertionError.getCause() != null) {
            String message = assertionError.getMessage();
            if (message != null ? StringsKt__StringsKt.contains$default(message, (CharSequence) "getsockname failed", false, 2, (Object) null) : false) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: f */
    public static C2253w m3573f(C2245o... c2245oArr) {
        int i10 = 0;
        if (c2245oArr.length == 0) {
            return new C2253w(new C2245o[0], new int[]{0, -1});
        }
        List mutableList = ArraysKt.toMutableList(c2245oArr);
        CollectionsKt.sort(mutableList);
        ArrayList arrayList = new ArrayList(c2245oArr.length);
        for (C2245o c2245o : c2245oArr) {
            arrayList.add(-1);
        }
        Integer[] numArr = (Integer[]) arrayList.toArray(new Integer[0]);
        List listMutableListOf = CollectionsKt.mutableListOf(Arrays.copyOf(numArr, numArr.length));
        int length = c2245oArr.length;
        int i11 = 0;
        int i12 = 0;
        while (i11 < length) {
            listMutableListOf.set(CollectionsKt__CollectionsKt.binarySearch$default(mutableList, c2245oArr[i11], 0, 0, 6, (Object) null), Integer.valueOf(i12));
            i11++;
            i12++;
        }
        if (((C2245o) mutableList.get(0)).mo3585c() <= 0) {
            C1929i.m3029k("the empty byte string is not a supported option");
            return null;
        }
        int i13 = 0;
        while (i13 < mutableList.size()) {
            C2245o c2245o2 = (C2245o) mutableList.get(i13);
            int i14 = i13 + 1;
            int i15 = i14;
            while (i15 < mutableList.size()) {
                C2245o c2245o3 = (C2245o) mutableList.get(i15);
                c2245o3.getClass();
                c2245o2.getClass();
                if (!c2245o3.mo3590i(c2245o2, c2245o2.mo3585c())) {
                    break;
                }
                if (c2245o3.mo3585c() == c2245o2.mo3585c()) {
                    C2237i.m3598e(c2245o3, "duplicate option: ");
                    return null;
                }
                if (((Number) listMutableListOf.get(i15)).intValue() > ((Number) listMutableListOf.get(i13)).intValue()) {
                    mutableList.remove(i15);
                    listMutableListOf.remove(i15);
                } else {
                    i15++;
                }
            }
            i13 = i14;
        }
        C2242l c2242l = new C2242l();
        m3570c(0L, c2242l, 0, mutableList, 0, mutableList.size(), listMutableListOf);
        int[] iArr = new int[(int) (c2242l.f5878c / ((long) 4))];
        while (!c2242l.mo3564k()) {
            iArr[i10] = c2242l.readInt();
            i10++;
        }
        return new C2253w((C2245o[]) Arrays.copyOf(c2245oArr, c2245oArr.length), iArr);
    }

    /* JADX INFO: renamed from: g */
    public static final InterfaceC2230e0 m3574g(Socket socket) throws IOException {
        Logger logger = AbstractC2252v.f5896a;
        socket.getClass();
        C2232f0 c2232f0 = new C2232f0(socket);
        OutputStream outputStream = socket.getOutputStream();
        outputStream.getClass();
        return c2232f0.sink(new C2254x(outputStream, c2232f0));
    }

    /* JADX INFO: renamed from: h */
    public static final InterfaceC2234g0 m3575h(Socket socket) throws IOException {
        Logger logger = AbstractC2252v.f5896a;
        socket.getClass();
        C2232f0 c2232f0 = new C2232f0(socket);
        InputStream inputStream = socket.getInputStream();
        inputStream.getClass();
        return c2232f0.source(new C2231f(inputStream, c2232f0));
    }
}
