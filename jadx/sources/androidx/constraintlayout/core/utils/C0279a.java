package androidx.constraintlayout.core.utils;

import android.net.wifi.ScanResult;
import com.example.navistart.MainActivity;
import com.woha.appmanag.FilePickerActivity;
import com.woha.wifim.MainWifiManadger;
import java.io.File;
import java.util.Comparator;
import p047e0.C1374j1;
import p084h7.C1681i;
import p132m0.C2297h;
import p132m0.C2316k3;
import p132m0.C2356u;
import p132m0.C2360v;
import p240x5.C3577c;

/* JADX INFO: renamed from: androidx.constraintlayout.core.utils.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0279a implements Comparator {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f308b;

    public /* synthetic */ C0279a(int i10) {
        this.f308b = i10;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f308b) {
            case 0:
                return GridCore.lambda$parseSpans$0((String) obj, (String) obj2);
            case 1:
                String str = MainActivity.f1288e1;
                return ((C1374j1) obj).f3280b.compareToIgnoreCase(((C1374j1) obj2).f3280b);
            case 2:
                C3577c c3577c = (C3577c) obj;
                C3577c c3577c2 = (C3577c) obj2;
                if (c3577c.m5695q() && !c3577c2.m5695q()) {
                    return -1;
                }
                if (!c3577c2.m5695q() || c3577c.m5695q()) {
                    return Integer.compare(c3577c.m5697s().m2289o(), c3577c2.m5697s().m2289o());
                }
                return 1;
            case 3:
                File file = (File) obj;
                File file2 = (File) obj2;
                String str2 = FilePickerActivity.f2838j;
                if (file.isDirectory() && !file2.isDirectory()) {
                    return -1;
                }
                if (file.isDirectory() || !file2.isDirectory()) {
                    return file.getName().compareToIgnoreCase(file2.getName());
                }
                return 1;
            case 4:
                File file3 = (File) obj;
                File file4 = (File) obj2;
                if (file3.isDirectory() && !file4.isDirectory()) {
                    return -1;
                }
                if (file3.isDirectory() || !file4.isDirectory()) {
                    return file3.getName().compareToIgnoreCase(file4.getName());
                }
                return 1;
            case 5:
                return ((C1681i) obj).f4307a.getAbsolutePath().compareToIgnoreCase(((C1681i) obj2).f4307a.getAbsolutePath());
            case 6:
                return ((C1681i) obj).f4307a.getAbsolutePath().compareToIgnoreCase(((C1681i) obj2).f4307a.getAbsolutePath());
            case 7:
                return ((C2297h) obj).f6101a.compareToIgnoreCase(((C2297h) obj2).f6101a);
            case 8:
                String str3 = C2360v.f6378h;
                return ((C2356u) obj).f6361a.compareToIgnoreCase(((C2356u) obj2).f6361a);
            case 9:
                File file5 = (File) obj;
                File file6 = (File) obj2;
                if (file5.isDirectory() && !file6.isDirectory()) {
                    return -1;
                }
                if (file5.isDirectory() || !file6.isDirectory()) {
                    return file5.getName().compareToIgnoreCase(file6.getName());
                }
                return 1;
            case 10:
                return ((C2316k3) obj).f6197a.compareToIgnoreCase(((C2316k3) obj2).f6197a);
            default:
                String str4 = MainWifiManadger.f2888v;
                return Integer.compare(((ScanResult) obj2).level, ((ScanResult) obj).level);
        }
    }
}
