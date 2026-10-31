package androidx.constraintlayout.core.utils;

import android.net.wifi.ScanResult;
import com.example.navistart.MainActivity;
import com.woha.appmanag.FilePickerActivity;
import com.woha.wifim.MainWifiManadger;
import e0.j1;
import h7.i;
import java.io.File;
import java.util.Comparator;
import m0.h;
import m0.k3;
import m0.u;
import m0.v;
import x5.c;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class a implements Comparator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f126b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(int i9) {
        this.f126b = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f126b) {
            case 0:
                return GridCore.a((String) obj, (String) obj2);
            case 1:
                String str = MainActivity.f688e1;
                return ((j1) obj).f1870b.compareToIgnoreCase(((j1) obj2).f1870b);
            case 2:
                c cVar = (c) obj;
                c cVar2 = (c) obj2;
                if (cVar.q() && !cVar2.q()) {
                    return -1;
                }
                if (!cVar2.q() || cVar.q()) {
                    return Integer.compare(cVar.s().o(), cVar2.s().o());
                }
                return 1;
            case 3:
                File file = (File) obj;
                File file2 = (File) obj2;
                String str2 = FilePickerActivity.f1601j;
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
                return ((i) obj).f2498a.getAbsolutePath().compareToIgnoreCase(((i) obj2).f2498a.getAbsolutePath());
            case 6:
                return ((i) obj).f2498a.getAbsolutePath().compareToIgnoreCase(((i) obj2).f2498a.getAbsolutePath());
            case 7:
                return ((h) obj).f3439a.compareToIgnoreCase(((h) obj2).f3439a);
            case 8:
                String str3 = v.f3604h;
                return ((u) obj).f3593a.compareToIgnoreCase(((u) obj2).f3593a);
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
                return ((k3) obj).f3499a.compareToIgnoreCase(((k3) obj2).f3499a);
            default:
                String str4 = MainWifiManadger.f1632v;
                return Integer.compare(((ScanResult) obj2).level, ((ScanResult) obj).level);
        }
    }
}
