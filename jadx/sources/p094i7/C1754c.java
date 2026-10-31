package p094i7;

import android.content.pm.ResolveInfo;
import java.io.File;
import java.nio.file.Path;
import java.util.function.Predicate;
import org.apache.commons.net.ftp.FTPFile;
import org.apache.commons.net.ftp.FTPFileFilter;
import org.apache.commons.p161io.ByteOrderMark;
import org.apache.commons.p161io.FilenameUtils;
import org.apache.commons.p161io.filefilter.IOFileFilter;
import org.apache.commons.p161io.filefilter.WildcardFilter;
import org.apache.commons.p161io.input.BOMInputStream;
import org.apache.commons.p161io.monitor.FileAlterationListener;
import org.apache.commons.p161io.monitor.FileAlterationObserver;
import p006a5.C0023h;
import p047e0.AbstractC1387m;
import p051e4.C1482o;
import p132m0.C2315k2;
import p190s1.C3166q0;

/* JADX INFO: renamed from: i7.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1754c implements Predicate {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f4572a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f4573b;

    public /* synthetic */ C1754c(int i10, Object obj) {
        this.f4572a = i10;
        this.f4573b = obj;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        int i10 = this.f4572a;
        Object obj2 = this.f4573b;
        switch (i10) {
            case 0:
                C1752a c1752a = (C1752a) obj;
                double d = c1752a.f4567a.f4661b;
                C1775x c1775x = ((C1752a) obj2).f4567a;
                return Math.abs(d - c1775x.f4661b) < 1.0E-4d && Math.abs(c1752a.f4567a.f4662c - c1775x.f4662c) < 1.0E-4d;
            case 1:
                C1482o c1482o = (C1482o) obj2;
                String str = (String) obj;
                if (str != null && c1482o != null && ((C0023h) c1482o.f3599c) != null && ((C0023h) c1482o.f3600d) != null) {
                    String[] strArrSplit = str.split(AbstractC1387m.m2421h(new byte[]{112}, new byte[]{92, 44, -115, -88, -46, -67, 68, -73}));
                    if (strArrSplit.length >= 3) {
                        try {
                            int i11 = Integer.parseInt(strArrSplit[2].trim());
                            int i12 = strArrSplit.length >= 4 ? Integer.parseInt(strArrSplit[3].trim()) : 50;
                            if ((i11 == 2 ? (char) 2 : (char) 1) == (c1482o.f3597a != 2 ? (char) 1 : (char) 2) && C2315k2.m3704w(i12) == C2315k2.m3704w(c1482o.f3598b) && C2315k2.m3703v(strArrSplit[0].trim(), strArrSplit[1].trim(), (String) ((C0023h) c1482o.f3599c).f82d, (String) ((C0023h) c1482o.f3600d).f82d)) {
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
                return FilenameUtils.wildcardMatch((String) obj2, (String) obj);
            case 4:
                return WildcardFilter.lambda$accept$2((Path) obj2, (String) obj);
            case 5:
                return ((BOMInputStream) obj2).matches((ByteOrderMark) obj);
            case 6:
                return ((FileAlterationObserver) obj2).equals((FileAlterationObserver) obj);
            case 7:
                return ((FileAlterationListener) obj2).equals((FileAlterationListener) obj);
            case 8:
                return ((FTPFileFilter) obj2).accept((FTPFile) obj);
            default:
                ResolveInfo resolveInfo = (ResolveInfo) obj;
                return resolveInfo.activityInfo == null || ((C3166q0) obj2).getContext().getPackageName().equals(resolveInfo.activityInfo.packageName);
        }
    }

    public /* synthetic */ C1754c(int i10, Object obj, Object obj2) {
        this.f4572a = i10;
        this.f4573b = obj2;
    }
}
