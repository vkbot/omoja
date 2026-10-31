package m0;

import android.view.View;
import android.view.View$OnClickListener;
import androidx.appcompat.app.AlertDialog$Builder;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class r2 implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3580b;
    public final /* synthetic */ c3 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ r2(c3 c3Var, int i9) {
        this.f3580b = i9;
        this.c = c3Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        int i9 = this.f3580b;
        c3 c3Var = this.c;
        switch (i9) {
            case 0:
                if (c3Var.getParentFragment() instanceof l0.a) {
                    ((l0.a) c3Var.getParentFragment()).dismiss();
                } else {
                    FragmentActivity activity = c3Var.getActivity();
                    if (activity != null) {
                        activity.finish();
                    }
                }
                break;
            case 1:
                h7.k kVar = c3Var.r;
                if (kVar != null) {
                    kVar.o(c3Var.requireContext());
                }
                ArrayList arrayList = new ArrayList();
                HashSet hashSet = new HashSet();
                try {
                    h7.k kVar2 = c3Var.r;
                    if (kVar2 != null) {
                        ArrayList arrayListE = kVar2.e();
                        int size = arrayListE.size();
                        int i10 = 0;
                        while (i10 < size) {
                            Object obj = arrayListE.get(i10);
                            i10++;
                            c3.t(arrayList, hashSet, (File) obj);
                        }
                    }
                } catch (Exception unused) {
                }
                try {
                    for (File file : ContextCompat.getExternalFilesDirs(c3Var.requireContext(), null)) {
                        if (file != null) {
                            String absolutePath = file.getAbsolutePath();
                            int iIndexOf = absolutePath.indexOf(e0.m.h(new byte[]{-41, -87, -84, -122, -86, 16, -123, -31}, new byte[]{-8, -24, -62, -30, -40, ByteCompanionObject.MAX_VALUE, -20, -123}));
                            if (absolutePath.contains(e0.m.h(new byte[]{11, -77, -33, 9, -72, 64, -22, 0, 11}, new byte[]{36, -64, -85, 102, -54, 33, -115, 101})) && iIndexOf > 0) {
                                c3.t(arrayList, hashSet, new File(absolutePath.substring(0, iIndexOf)));
                            }
                        }
                    }
                } catch (Exception unused2) {
                }
                try {
                    File[] fileArrListFiles = new File(e0.m.h(new byte[]{-69, -24, 124, -73, 105, -88, -80, 123, -69}, new byte[]{-108, -101, 8, -40, 27, -55, -41, 30})).listFiles();
                    if (fileArrListFiles != null) {
                        for (File file2 : fileArrListFiles) {
                            c3.t(arrayList, hashSet, file2);
                        }
                    }
                } catch (Exception unused3) {
                }
                if (arrayList.isEmpty()) {
                    c3Var.I(c3Var.getString(2131952662));
                } else {
                    String[] strArr = new String[arrayList.size()];
                    for (int i11 = 0; i11 < arrayList.size(); i11++) {
                        strArr[i11] = ((File) arrayList.get(i11)).getAbsolutePath();
                    }
                    new AlertDialog$Builder(c3Var.requireContext(), 2132017903).setTitle(c3Var.getString(2131952661)).setItems(strArr, new e0.e0(7, c3Var, arrayList)).show();
                }
                break;
            case 2:
                c3Var.D(c3Var.f3368s);
                break;
            case 3:
                File file3 = c3Var.t;
                if (file3 == null || file3.getParentFile() == null) {
                    c3Var.I(c3Var.getString(2131952656));
                } else {
                    c3Var.D(c3Var.t.getParentFile());
                }
                break;
            case 4:
                h7.k kVar3 = c3Var.r;
                if (kVar3 != null) {
                    kVar3.o(c3Var.requireContext());
                }
                c3Var.v();
                c3Var.D(c3Var.t);
                break;
            case 5:
                File file4 = c3Var.f3369u;
                File file5 = c3Var.t;
                if (!c3Var.f3370v && file4 != null && file5 != null) {
                    if (file4.exists()) {
                        c3Var.H(c3Var.getString(2131952696), true);
                        e0.w.c(-1, e0.m.h(new byte[]{-31, 52, -69, 9, 85, 3, 13, 20, -7, 38, -80, 26, 116, 15, 19, 55, -58, 38, -71, 22, 118, 4, 21}, new byte[]{-76, 71, -34, 123, 19, 106, 97, 113})).execute(new b1.n(c3Var, file5, file4, 10));
                    } else {
                        c3Var.f3369u = null;
                        c3Var.K();
                        c3Var.I(c3Var.getString(2131952716));
                    }
                    break;
                }
                break;
            default:
                c3Var.f3369u = null;
                c3Var.I(c3Var.getString(2131952692));
                c3Var.K();
                break;
        }
    }
}
