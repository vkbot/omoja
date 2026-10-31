package m0;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.os.Bundle;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout$LayoutParams;
import androidx.recyclerview.widget.GridLayoutManager;
import com.example.navistart.DialogUni.Fragmenti.MaxHeightRecyclerView;
import com.google.android.material.button.MaterialButtonToggleGroup;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class k2 extends l0.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f3492b;
    public MaxHeightRecyclerView d;
    public i2 e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ImageView f3493f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ImageView f3494g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public MaterialButtonToggleGroup f3495h;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Display[] f3498k;
    public final e4.o c = new e4.o();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList f3496i = new ArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f3497j = 0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void t(k2 k2Var, e4.o oVar) {
        e4.o oVar2;
        ArrayList arrayList = k2Var.f3496i;
        if (oVar == null || ((a5.h) oVar.c) == null || ((a5.h) oVar.d) == null) {
            return;
        }
        int size = arrayList.size() - 1;
        while (true) {
            if (size < 0) {
                break;
            }
            j2 j2Var = (j2) arrayList.get(size);
            if (j2Var.f3482a && (oVar2 = j2Var.c) != null && ((a5.h) oVar2.c) != null && ((a5.h) oVar2.d) != null && ((a5.h) oVar.c) != null && ((a5.h) oVar.d) != null) {
                if ((oVar2.f2072a == 2 ? 2 : 1) == (oVar.f2072a != 2 ? 1 : 2) && w(oVar2.f2073b) == w(oVar.f2073b) && v((String) ((a5.h) oVar2.c).d, (String) ((a5.h) oVar2.d).d, (String) ((a5.h) oVar.c).d, (String) ((a5.h) oVar.d).d)) {
                    arrayList.remove(size);
                }
            }
            size--;
        }
        e4.o oVar3 = new e4.o();
        oVar3.c = (a5.h) oVar.c;
        oVar3.d = (a5.h) oVar.d;
        oVar3.f2072a = oVar.f2072a != 2 ? 1 : 2;
        oVar3.f2073b = w(oVar.f2073b);
        int i9 = 0;
        arrayList.add(0, new j2(true, null, oVar3));
        int i10 = 0;
        while (i9 < arrayList.size()) {
            if (((j2) arrayList.get(i9)).f3482a && (i10 = i10 + 1) > 8) {
                arrayList.remove(i9);
                i9--;
            }
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void u(k2 k2Var, e4.o oVar) {
        if (oVar == null || ((a5.h) oVar.c) == null || ((a5.h) oVar.d) == null) {
            return;
        }
        String strH = e0.m.h(new byte[]{-8, -25, 125, 79, -92, 77, 96, -68, -37, -28, 69, 103, -126, 102, 103, -66, -54, -48, 92, 99, -98, 102, 126, -97, -54, -63, 84, 64, -97, 96, 68, -70, -50, -59, 112, 118, ByteCompanionObject.MIN_VALUE}, new byte[]{-85, -73, 49, 6, -16, 18, 33, -52});
        String strLoadString = h0.b.o().loadString(strH, "");
        ArrayList arrayList = new ArrayList();
        if (!strLoadString.isEmpty()) {
            arrayList.addAll(Arrays.asList(strLoadString.split(e0.m.h(new byte[]{-106}, new byte[]{-83, -90, 45, -12, -54, -65, -49, 76}))));
        }
        String str = ((String) ((a5.h) oVar.c).d) + e0.m.h(new byte[]{95}, new byte[]{115, -43, -51, 121, 113, 91, -66, -53}) + ((String) ((a5.h) oVar.d).d) + e0.m.h(new byte[]{6}, new byte[]{42, 30, 118, 70, 54, -89, 13, -7}) + oVar.f2072a + e0.m.h(new byte[]{97}, new byte[]{77, 0, 65, -54, -40, 34, 51, -20}) + w(oVar.f2073b);
        arrayList.removeIf(new i7.c(1, k2Var, oVar));
        arrayList.add(0, str);
        int size = arrayList.size();
        List listSubList = arrayList;
        if (size > 8) {
            listSubList = arrayList.subList(0, 8);
        }
        u0.a aVarO = h0.b.o();
        String strH2 = e0.m.h(new byte[]{-89}, new byte[]{-100, 123, -58, 24, -126, -89, 62, -50});
        StringBuilder sb = new StringBuilder();
        Iterator it = listSubList.iterator();
        if (it.hasNext()) {
            while (true) {
                sb.append((CharSequence) it.next());
                if (!it.hasNext()) {
                    break;
                } else {
                    sb.append((CharSequence) strH2);
                }
            }
        }
        aVarO.saveString(strH, sb.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean v(String str, String str2, String str3, String str4) {
        if (str == null || str2 == null || str3 == null || str4 == null) {
            return false;
        }
        if (str.equals(str3) && str2.equals(str4)) {
            return true;
        }
        return str.equals(str4) && str2.equals(str3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int w(int i9) {
        if (i9 == 30 || i9 == 70) {
            return i9;
        }
        return 50;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(2131492952, viewGroup, false);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f3497j = arguments.getInt(e0.m.h(new byte[]{-85, -2, 70}, new byte[]{-49, -105, 53, 75, -103, -28, 43, -95}), 0);
        }
        this.d = (MaxHeightRecyclerView) viewInflate.findViewById(2131297259);
        this.f3493f = (ImageView) viewInflate.findViewById(2131296532);
        this.f3494g = (ImageView) viewInflate.findViewById(2131296524);
        this.f3495h = (MaterialButtonToggleGroup) viewInflate.findViewById(2131297436);
        int iLoadInt = h0.b.o().loadInt(e0.m.h(new byte[]{-83, -100, -80, -111, -76, 7, -74, 91, -73, -119, -78, -116}, new byte[]{-2, -52, -4, -40, -32, 88, -7, 9}), 1);
        int iLoadInt2 = h0.b.o().loadInt(e0.m.h(new byte[]{-6, -61, 2, 40, 122, -66, -19, 6, -3, -38, 1}, new byte[]{-87, -109, 78, 97, 46, -31, -65, 71}), 50);
        x(iLoadInt);
        y(iLoadInt2);
        this.f3493f.setOnClickListener(new f2(this, 0));
        this.f3494g.setOnClickListener(new f2(this, 1));
        MaterialButtonToggleGroup materialButtonToggleGroup = this.f3495h;
        materialButtonToggleGroup.f1204l.add(new g2(this));
        return viewInflate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        l0.a aVar;
        super.onPause();
        if (!isAdded() || (aVar = (l0.a) getParentFragment()) == null) {
            return;
        }
        aVar.dismiss();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r16v1, resolved type: boolean */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        int i9;
        int i10;
        PackageInfo packageInfo;
        PackageInfo packageInfo2;
        super.onStart();
        int i11 = 8;
        Display[] displays = ((DisplayManager) requireContext().getSystemService(e0.m.h(new byte[]{-120, -32, 74, 110, 11, -100, 64}, new byte[]{-20, -119, 57, 30, 103, -3, 57, -34}))).getDisplays();
        this.f3498k = displays;
        if (displays == null || (i9 = this.f3497j) < 0 || i9 >= displays.length) {
            return;
        }
        Display defaultDisplay = ((WindowManager) requireContext().createDisplayContext(this.f3498k[this.f3497j]).getSystemService(e0.m.h(new byte[]{107, 92, 88, -11, -23, 111}, new byte[]{28, 53, 54, -111, -122, 24, 105, 70}))).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        int i12 = (int) (((double) point.x) * 0.6d);
        int i13 = (int) (((double) point.y) * 0.7d);
        LinearLayout$LayoutParams linearLayout$LayoutParams = (LinearLayout$LayoutParams) this.d.getLayoutParams();
        linearLayout$LayoutParams.width = i12;
        linearLayout$LayoutParams.height = -2;
        Context contextRequireContext = requireContext();
        float f8 = contextRequireContext.getResources().getDisplayMetrics().density;
        int i14 = 3;
        this.d.setLayoutManager(new GridLayoutManager(contextRequireContext, 3));
        this.d.setLayoutParams(linearLayout$LayoutParams);
        this.d.setMaxHeight(i13);
        i2 i2Var = new i2(this);
        this.e = i2Var;
        this.d.setAdapter(i2Var);
        e4.o oVar = this.c;
        oVar.c = null;
        oVar.d = null;
        PackageManager packageManager = requireContext().getPackageManager();
        List<ApplicationInfo> installedApplications = packageManager.getInstalledApplications(128);
        ArrayList arrayList = this.f3496i;
        arrayList.clear();
        String strLoadString = h0.b.o().loadString(e0.m.h(new byte[]{36, -33, 74, -97, -1, 59, -70, 49, 7, -36, 114, -73, -39, 16, -67, 51, 22, -24, 107, -77, -59, 16, -92, 18, 22, -7, 99, -112, -60, 22, -98, 55, 18, -3, 71, -90, -37}, new byte[]{119, -113, 6, -42, -85, 100, -5, 65}), "");
        int i15 = 1;
        char c = 0;
        if (!strLoadString.isEmpty()) {
            String[] strArrSplit = strLoadString.split(e0.m.h(new byte[]{-20}, new byte[]{-41, -11, -56, -28, -4, -30, 47, -3}));
            PackageManager packageManager2 = requireContext().getPackageManager();
            int length = strArrSplit.length;
            int i16 = 0;
            while (i16 < length) {
                String str = strArrSplit[i16];
                byte[] bArr = new byte[i15];
                bArr[c] = -15;
                boolean z8 = i15;
                byte[] bArr2 = new byte[i11];
                // fill-array-data instruction
                bArr2[0] = -35;
                bArr2[1] = -17;
                bArr2[2] = -47;
                bArr2[3] = 93;
                bArr2[4] = 53;
                bArr2[5] = 71;
                bArr2[6] = -115;
                bArr2[7] = 53;
                String[] strArrSplit2 = str.split(e0.m.h(bArr, bArr2));
                if (strArrSplit2.length < i14) {
                    i10 = i14;
                } else {
                    String str2 = strArrSplit2[c];
                    String str3 = strArrSplit2[z8 ? 1 : 0];
                    try {
                        i10 = i14;
                        try {
                            int i17 = Integer.parseInt(strArrSplit2[2].trim());
                            int i18 = strArrSplit2.length >= 4 ? Integer.parseInt(strArrSplit2[i10].trim()) : 50;
                            try {
                                packageInfo = requireContext().getPackageManager().getPackageInfo(str2, 0);
                            } catch (PackageManager$NameNotFoundException unused) {
                                packageInfo = null;
                            }
                            int i19 = i18;
                            try {
                                packageInfo2 = requireContext().getPackageManager().getPackageInfo(str3, 0);
                            } catch (PackageManager$NameNotFoundException unused2) {
                                packageInfo2 = null;
                            }
                            if (packageInfo != null && packageInfo2 != null) {
                                installedApplications = installedApplications;
                                a5.h hVar = new a5.h(packageManager2.getApplicationLabel(packageInfo.applicationInfo).toString(), str2, packageManager2.getApplicationIcon(packageInfo.applicationInfo), 17);
                                a5.h hVar2 = new a5.h(packageManager2.getApplicationLabel(packageInfo2.applicationInfo).toString(), str3, packageManager2.getApplicationIcon(packageInfo2.applicationInfo), 17);
                                e4.o oVar2 = new e4.o();
                                oVar2.c = hVar;
                                oVar2.d = hVar2;
                                oVar2.f2072a = i17 != 2 ? z8 ? 1 : 0 : 2;
                                oVar2.f2073b = w(i19);
                                arrayList.add(new j2(z8, null, oVar2));
                            }
                        } catch (NumberFormatException unused3) {
                        }
                    } catch (NumberFormatException unused4) {
                        i10 = i14;
                    }
                }
                i16++;
                i14 = i10;
                installedApplications = installedApplications;
                strArrSplit = strArrSplit;
                i11 = 8;
                i15 = 1;
                c = 0;
            }
        }
        for (ApplicationInfo applicationInfo : installedApplications) {
            if ((applicationInfo.flags & 1) == 0 && packageManager.getLaunchIntentForPackage(applicationInfo.packageName) != null) {
                arrayList.add(new j2(false, new a5.h(packageManager.getApplicationLabel(applicationInfo).toString(), applicationInfo.packageName, packageManager.getApplicationIcon(applicationInfo), 17), null));
            }
        }
        this.e.notifyDataSetChanged();
        this.d.post(new j(this, f8, contextRequireContext, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void x(int i9) {
        this.c.f2072a = i9;
        h0.b.o().saveInt(e0.m.h(new byte[]{81, -43, 7, 116, -111, 3, 25, 78, 75, -64, 5, 105}, new byte[]{2, -123, 75, Base64.padSymbol, -59, 92, 86, 28}), i9);
        this.f3493f.setImageResource(i9 == 1 ? 2131165495 : 2131165494);
        this.f3494g.setImageResource(i9 == 2 ? 2131165493 : 2131165492);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void y(int i9) {
        int i10;
        int iW = w(i9);
        e4.o oVar = this.c;
        oVar.f2073b = iW;
        h0.b.o().saveInt(e0.m.h(new byte[]{-73, -4, 52, -113, -13, -105, -111, -70, -80, -27, 55}, new byte[]{-28, -84, 120, -58, -89, -56, -61, -5}), oVar.f2073b);
        int i11 = oVar.f2073b;
        if (i11 == 30) {
            i10 = 2131297433;
        } else {
            i10 = i11 == 70 ? 2131297435 : 2131297434;
        }
        if (this.f3495h.getCheckedButtonId() != i10) {
            this.f3495h.f(i10, true);
        }
    }
}
