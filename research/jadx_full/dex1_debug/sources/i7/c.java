package i7;

import android.content.pm.ResolveInfo;
import java.io.File;
import java.nio.file.Path;
import java.util.function.Predicate;
import m0.k2;
import org.apache.commons.io.ByteOrderMark;
import org.apache.commons.io.filefilter.IOFileFilter;
import org.apache.commons.io.filefilter.WildcardFilter;
import org.apache.commons.io.input.BOMInputStream;
import org.apache.commons.io.monitor.FileAlterationListener;
import org.apache.commons.io.monitor.FileAlterationObserver;
import org.apache.commons.net.ftp.FTPFile;
import org.apache.commons.net.ftp.FTPFileFilter;
import s1.q0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class c implements Predicate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2670a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2671b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c(int i9, Object obj) {
        this.f2670a = i9;
        this.f2671b = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        int i9 = this.f2670a;
        Object obj2 = this.f2671b;
        switch (i9) {
            case 0:
                a aVar = (a) obj;
                double d = aVar.f2666a.f2725b;
                x xVar = ((a) obj2).f2666a;
                return Math.abs(d - xVar.f2725b) < 1.0E-4d && Math.abs(aVar.f2666a.c - xVar.c) < 1.0E-4d;
            case 1:
                e4.o oVar = (e4.o) obj2;
                String str = (String) obj;
                if (str != null && oVar != null && ((a5.h) oVar.c) != null && ((a5.h) oVar.d) != null) {
                    String[] strArrSplit = str.split(e0.m.h(new byte[]{112}, new byte[]{92, 44, -115, -88, -46, -67, 68, -73}));
                    if (strArrSplit.length >= 3) {
                        try {
                            int i10 = Integer.parseInt(strArrSplit[2].trim());
                            int i11 = strArrSplit.length >= 4 ? Integer.parseInt(strArrSplit[3].trim()) : 50;
                            if ((i10 == 2 ? (char) 2 : (char) 1) == (oVar.f2072a != 2 ? (char) 1 : (char) 2) && k2.w(i11) == k2.w(oVar.f2073b) && k2.v(strArrSplit[0].trim(), strArrSplit[1].trim(), (String) ((a5.h) oVar.c).d, (String) ((a5.h) oVar.d).d)) {
                                return true;
                            }
                            break;
                        } catch (Exception unused) {
                        }
                    }
                }
                return false;
            case 2:
                return ((IOFileFilter) obj2).accept((File) obj);
            case 3:
                return WildcardFilter.b((String) obj2, (String) obj);
            case 4:
                return WildcardFilter.a((Path) obj2, (String) obj);
            case 5:
                return BOMInputStream.b((BOMInputStream) obj2, (ByteOrderMark) obj);
            case 6:
                return ((FileAlterationObserver) obj2).equals((FileAlterationObserver) obj);
            case 7:
                return ((FileAlterationListener) obj2).equals((FileAlterationListener) obj);
            case 8:
                return ((FTPFileFilter) obj2).accept((FTPFile) obj);
            default:
                ResolveInfo resolveInfo = (ResolveInfo) obj;
                return resolveInfo.activityInfo == null || ((q0) obj2).getContext().getPackageName().equals(resolveInfo.activityInfo.packageName);
        }
    }

    public /* synthetic */ c(int i9, Object obj, Object obj2) {
        this.f2670a = i9;
        this.f2671b = obj2;
    }
}
