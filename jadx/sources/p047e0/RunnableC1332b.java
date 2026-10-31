package p047e0;

import android.content.IntentFilter;
import android.util.Log;
import com.example.navistart.APInAct;
import java.io.File;

/* JADX INFO: renamed from: e0.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1332b implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3181b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ APInAct f3182c;

    public /* synthetic */ RunnableC1332b(APInAct aPInAct, int i10) {
        this.f3181b = i10;
        this.f3182c = aPInAct;
    }

    @Override // java.lang.Runnable
    public final void run() {
        File[] fileArrListFiles;
        int i10 = this.f3181b;
        APInAct aPInAct = this.f3182c;
        switch (i10) {
            case 0:
                aPInAct.registerReceiver(aPInAct.f1207e, new IntentFilter(APInAct.f1203g));
                break;
            default:
                String str = APInAct.f1202f;
                File file = new File(aPInAct.getApplicationContext().getFilesDir(), AbstractC1387m.m2421h(new byte[]{-84, 89, 53, -37, -10, -123, 48, 81, -102, 86, 38, -33, -24}, new byte[]{-59, 55, 86, -76, -101, -20, 94, 54}));
                if (file.exists() && file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
                    for (File file2 : fileArrListFiles) {
                        boolean zDelete = file2.delete();
                        Log.d(AbstractC1387m.m2421h(new byte[]{-98, -84, -24, 65, 51, 114, -12, -99, -78, -83, -28, 78, 38, 122, -22, -107, -82}, new byte[]{-35, -64, -115, 32, 65, 59, -102, -2}), AbstractC1387m.m2421h(new byte[]{-11, 41, -18, -109, -44}, new byte[]{-79, 76, -126, -87, -12, 68, 46, -109}) + file2.getName());
                        if (!zDelete) {
                            Log.w(AbstractC1387m.m2421h(new byte[]{-33, -52, -30, 49, -21, 93, 43, 109, -13, -51, -18, 62, -2, 85, 53, 101, -17}, new byte[]{-100, -96, -121, 80, -103, 20, 69, 14}), AbstractC1387m.m2421h(new byte[]{-43, -127, 28, 36, 89, -81, -116, 7, -79, -52, 124, 65, -62, -82, -79, 6, -124, -51, 64, -79, -88, -3, -33, 99, -43, -84, 28, 42, -87, -58, -34, 85, -44, -112, -20, 64, -3, -82, -65, 7, -68, -52, 119, -85, 89}, new byte[]{5, 28, -52, -111, 121, 126, 15, -41}) + file2.getAbsolutePath());
                        }
                    }
                    break;
                }
                break;
        }
    }
}
