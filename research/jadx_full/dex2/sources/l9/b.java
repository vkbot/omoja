package l9;

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
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class b {
    public static final j a = new j();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final z a(e0 e0Var) {
        e0Var.getClass();
        return new z(e0Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final a0 b(g0 g0Var) {
        g0Var.getClass();
        return new a0(g0Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void c(long j, l lVar, int i, List list, int i2, int i3, List list2) {
        int i4;
        int i5;
        List list3;
        long j2;
        int i6;
        int i7 = i;
        List list4 = list;
        List list5 = list2;
        if (i2 >= i3) {
            j1.i.k("Failed requirement.");
            return;
        }
        for (int i8 = i2; i8 < i3; i8++) {
            if (((o) list4.get(i8)).c() < i7) {
                j1.i.k("Failed requirement.");
                return;
            }
        }
        o oVar = (o) list.get(i2);
        o oVar2 = (o) list4.get(i3 - 1);
        if (i7 == oVar.c()) {
            int iIntValue = ((Number) list5.get(i2)).intValue();
            int i10 = i2 + 1;
            o oVar3 = (o) list4.get(i10);
            i4 = i10;
            i5 = iIntValue;
            oVar = oVar3;
        } else {
            i4 = i2;
            i5 = -1;
        }
        if (oVar.f(i7) == oVar2.f(i7)) {
            int iMin = Math.min(oVar.c(), oVar2.c());
            int i11 = 0;
            for (int i12 = i7; i12 < iMin && oVar.f(i12) == oVar2.f(i12); i12++) {
                i11++;
            }
            long j3 = 4;
            long j4 = (lVar.c / j3) + j + ((long) 2) + ((long) i11) + 1;
            lVar.p0(-i11);
            lVar.p0(i5);
            int i13 = i7 + i11;
            while (i7 < i13) {
                lVar.p0(oVar.f(i7) & 255);
                i7++;
            }
            if (i4 + 1 == i3) {
                if (i13 == ((o) list4.get(i4)).c()) {
                    lVar.p0(((Number) list5.get(i4)).intValue());
                    return;
                } else {
                    j1.i.l("Check failed.");
                    return;
                }
            }
            l lVar2 = new l();
            lVar.p0(((int) ((lVar2.c / j3) + j4)) * (-1));
            c(j4, lVar2, i13, list4, i4, i3, list5);
            lVar.G(lVar2);
            return;
        }
        int i14 = 1;
        for (int i15 = i4 + 1; i15 < i3; i15++) {
            if (((o) list4.get(i15 - 1)).f(i7) != ((o) list4.get(i15)).f(i7)) {
                i14++;
            }
        }
        long j5 = 4;
        long j6 = (lVar.c / j5) + j + ((long) 2) + ((long) (i14 * 2));
        lVar.p0(i14);
        lVar.p0(i5);
        for (int i16 = i4; i16 < i3; i16++) {
            int iF = ((o) list4.get(i16)).f(i7);
            if (i16 == i4 || iF != ((o) list4.get(i16 - 1)).f(i7)) {
                lVar.p0(iF & 255);
            }
        }
        l lVar3 = new l();
        int i17 = i4;
        while (i17 < i3) {
            byte bF = ((o) list4.get(i17)).f(i7);
            int i18 = i17 + 1;
            int i19 = i18;
            while (true) {
                if (i19 >= i3) {
                    i19 = i3;
                    break;
                } else if (bF != ((o) list4.get(i19)).f(i7)) {
                    break;
                } else {
                    i19++;
                }
            }
            if (i18 == i19 && i7 + 1 == ((o) list4.get(i17)).c()) {
                lVar.p0(((Number) list5.get(i17)).intValue());
                list3 = list5;
                j2 = j6;
                i6 = i19;
            } else {
                lVar.p0(((int) ((lVar3.c / j5) + j6)) * (-1));
                list3 = list5;
                j2 = j6;
                i6 = i19;
                c(j2, lVar3, i7 + 1, list, i17, i6, list3);
                list4 = list;
            }
            j6 = j2;
            i17 = i6;
            list5 = list3;
        }
        lVar.G(lVar3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final void d(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException("size=" + j + " offset=" + j2 + " byteCount=" + j3);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final boolean e(AssertionError assertionError) {
        Logger logger = v.a;
        if (assertionError.getCause() != null) {
            String message = assertionError.getMessage();
            if (message != null ? StringsKt.o(message, "getsockname failed") : false) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static w f(o... oVarArr) {
        int i = 0;
        if (oVarArr.length == 0) {
            return new w(new o[0], new int[]{0, -1});
        }
        List mutableList = ArraysKt.toMutableList(oVarArr);
        CollectionsKt.sort(mutableList);
        ArrayList arrayList = new ArrayList(oVarArr.length);
        for (o oVar : oVarArr) {
            arrayList.add(-1);
        }
        Integer[] numArr = (Integer[]) arrayList.toArray(new Integer[0]);
        List listMutableListOf = CollectionsKt.mutableListOf(Arrays.copyOf(numArr, numArr.length));
        int length = oVarArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            listMutableListOf.set(CollectionsKt.f(mutableList, oVarArr[i2]), Integer.valueOf(i3));
            i2++;
            i3++;
        }
        if (((o) mutableList.get(0)).c() <= 0) {
            j1.i.k("the empty byte string is not a supported option");
            return null;
        }
        int i4 = 0;
        while (i4 < mutableList.size()) {
            o oVar2 = (o) mutableList.get(i4);
            int i5 = i4 + 1;
            int i6 = i5;
            while (i6 < mutableList.size()) {
                o oVar3 = (o) mutableList.get(i6);
                oVar3.getClass();
                oVar2.getClass();
                if (!oVar3.i(oVar2, oVar2.c())) {
                    break;
                }
                if (oVar3.c() == oVar2.c()) {
                    i.e(oVar3, "duplicate option: ");
                    return null;
                }
                if (((Number) listMutableListOf.get(i6)).intValue() > ((Number) listMutableListOf.get(i4)).intValue()) {
                    mutableList.remove(i6);
                    listMutableListOf.remove(i6);
                } else {
                    i6++;
                }
            }
            i4 = i5;
        }
        l lVar = new l();
        c(0L, lVar, 0, mutableList, 0, mutableList.size(), listMutableListOf);
        int[] iArr = new int[(int) (lVar.c / ((long) 4))];
        while (!lVar.k()) {
            iArr[i] = lVar.readInt();
            i++;
        }
        return new w((o[]) Arrays.copyOf(oVarArr, oVarArr.length), iArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final e0 g(Socket socket) throws IOException {
        Logger logger = v.a;
        socket.getClass();
        f0 f0Var = new f0(socket);
        OutputStream outputStream = socket.getOutputStream();
        outputStream.getClass();
        return f0Var.sink(new x(outputStream, f0Var));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final g0 h(Socket socket) throws IOException {
        Logger logger = v.a;
        socket.getClass();
        f0 f0Var = new f0(socket);
        InputStream inputStream = socket.getInputStream();
        inputStream.getClass();
        return f0Var.source(new f(inputStream, f0Var));
    }
}
