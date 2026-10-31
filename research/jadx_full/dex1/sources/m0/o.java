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
import android.widget.LinearLayout$LayoutParams;
import android.widget.Switch;
import androidx.recyclerview.widget.GridLayoutManager;
import com.example.navistart.DialogUni.Fragmenti.MaxHeightRecyclerView;
import e0.p3;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.io.encoding.Base64;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class o extends l0.b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f3550g = e0.m.h(new byte[]{-127, -121, -15, 4, -97, -127, 79, -98, -122, -123, -32, 48, -122, -123, 83, -98, -97, -124, -23, 56, -100, -77, 68, -103, -76, -110, -20, 22, -101, -112, 78}, new byte[]{-64, -9, -127, 87, -21, -32, Base64.padSymbol, -22});

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f3551h = e0.m.h(new byte[]{93, -98, 89, -83, -63, -60, 21, -113, 90, -100, 72, -103, -40, -64, 9, -113, 67, -67, 72, -120, -48, -29, 8, -119, 121, -104, 76, -116, -12, -43, 23}, new byte[]{28, -18, 41, -2, -75, -91, 103, -5});

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MaxHeightRecyclerView f3552b;
    public n c;
    public final ArrayList d = new ArrayList();
    public int e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Display[] f3553f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void t(o oVar, String str) {
        u0.a aVarO = h0.b.o();
        String str2 = f3551h;
        String strLoadString = aVarO.loadString(str2, "");
        ArrayList arrayList = new ArrayList();
        if (!strLoadString.isEmpty()) {
            arrayList.addAll(Arrays.asList(strLoadString.split(e0.m.h(new byte[]{-42}, new byte[]{-19, 106, -96, 24, 46, 4, -29, 124}))));
        }
        arrayList.remove(str);
        arrayList.add(0, str);
        int size = arrayList.size();
        List listSubList = arrayList;
        if (size > 8) {
            listSubList = arrayList.subList(0, 8);
        }
        String strH = e0.m.h(new byte[]{14}, new byte[]{53, 80, 70, 47, 102, -32, 105, -13});
        StringBuilder sb = new StringBuilder();
        Iterator it = listSubList.iterator();
        if (it.hasNext()) {
            while (true) {
                sb.append((CharSequence) it.next());
                if (!it.hasNext()) {
                    break;
                } else {
                    sb.append((CharSequence) strH);
                }
            }
        }
        h0.b.o().saveString(str2, sb.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean w() {
        return h0.b.o().loadBoolean(e0.m.h(new byte[]{-74, 123, -80, 93, 41, -6, -45, -69, -79, 121, -95, 105, 48, -2, -49, -69, -88, 103, -81, 111, 57, -35, -50, -67, -110, 125, -91, 124, 28, -21, -47}, new byte[]{-9, 11, -64, 14, 93, -101, -95, -49}), true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ArrayList x() {
        String strLoadString = h0.b.o().loadString(f3551h, "");
        ArrayList arrayList = new ArrayList();
        if (!strLoadString.isEmpty()) {
            for (String str : strLoadString.split(e0.m.h(new byte[]{-84}, new byte[]{-105, 86, 16, 24, -8, -126, 60, 10}))) {
                if (!str.isEmpty() && !arrayList.contains(str)) {
                    arrayList.add(str);
                }
            }
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(2131492951, viewGroup, false);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.e = arguments.getInt(e0.m.h(new byte[]{42, 41, -76}, new byte[]{78, 64, -57, -72, -55, -15, 45, -52}), 0);
        }
        this.f3552b = (MaxHeightRecyclerView) viewInflate.findViewById(2131297259);
        Switch r9 = (Switch) viewInflate.findViewById(2131297517);
        r9.setChecked(w());
        r9.setOnCheckedChangeListener(new k(this, 0));
        Switch r10 = (Switch) viewInflate.findViewById(2131297362);
        r10.setChecked(h0.b.o().loadBoolean(f3550g, false));
        r10.setOnCheckedChangeListener(new k(this, 1));
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
    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        int i9;
        super.onStart();
        Display[] displays = ((DisplayManager) requireContext().getSystemService(e0.m.h(new byte[]{19, -102, 93, -55, 6, -116, 88}, new byte[]{119, -13, 46, -71, 106, -19, 33, 36}))).getDisplays();
        this.f3553f = displays;
        if (displays == null || (i9 = this.e) < 0 || i9 >= displays.length) {
            return;
        }
        Display defaultDisplay = ((WindowManager) requireContext().createDisplayContext(this.f3553f[this.e]).getSystemService(e0.m.h(new byte[]{-24, -75, -73, 70, -63, -71}, new byte[]{-97, -36, -39, 34, -82, -50, -123, 123}))).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        int i10 = (int) (((double) point.x) * 0.6d);
        int i11 = (int) (((double) point.y) * 0.7d);
        LinearLayout$LayoutParams linearLayout$LayoutParams = (LinearLayout$LayoutParams) this.f3552b.getLayoutParams();
        linearLayout$LayoutParams.width = i10;
        linearLayout$LayoutParams.height = -2;
        Context contextRequireContext = requireContext();
        float f8 = contextRequireContext.getResources().getDisplayMetrics().density;
        this.f3552b.setLayoutManager(new GridLayoutManager(contextRequireContext, 3));
        this.f3552b.setLayoutParams(linearLayout$LayoutParams);
        this.f3552b.setMaxHeight(i11);
        n nVar = new n(this);
        this.c = nVar;
        this.f3552b.setAdapter(nVar);
        v();
        this.f3552b.post(new j(this, f8, contextRequireContext, 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Boolean u() {
        StringBuilder sb = new StringBuilder();
        u0.a aVarO = h0.b.o();
        byte[] bArr = e0.m.f1896j;
        String[] strArr = p3.f1924a;
        com.google.protobuf.q.s(bArr, aVarO, "", sb);
        com.google.protobuf.q.r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strG = com.google.protobuf.q.g(sb, e0.x1.f1989q);
        u0.a aVarO2 = h0.b.o();
        byte[] bArr2 = e0.m.f1892f;
        if (!com.google.protobuf.q.w(bArr2, aVarO2, "", strG)) {
            return Boolean.FALSE;
        }
        h0.b.a();
        return Boolean.valueOf(com.google.protobuf.q.d(Long.MAX_VALUE, h0.b.a().j()) < Long.parseLong(new String(com.google.protobuf.q.x(new byte[]{26}, new byte[]{42, 110, 42, -81, -89, -95, -127, -104}, h0.b.o(), com.google.protobuf.q.h(e0.m.f1893g, h0.b.o(), new String(bArr2)), 0))));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void v() {
        PackageInfo packageInfo;
        PackageManager packageManager = requireContext().getPackageManager();
        List<ApplicationInfo> installedApplications = packageManager.getInstalledApplications(128);
        boolean zLoadBoolean = h0.b.o().loadBoolean(f3550g, false);
        ArrayList arrayList = this.d;
        arrayList.clear();
        if (w()) {
            ArrayList arrayListX = x();
            int size = arrayListX.size();
            int i9 = 0;
            while (i9 < size) {
                Object obj = arrayListX.get(i9);
                i9++;
                try {
                    packageInfo = requireContext().getPackageManager().getPackageInfo((String) obj, 0);
                } catch (PackageManager$NameNotFoundException unused) {
                    packageInfo = null;
                }
                if (packageInfo != null) {
                    boolean z8 = (packageInfo.applicationInfo.flags & 1) != 0;
                    if (zLoadBoolean || !z8) {
                        PackageManager packageManager2 = requireContext().getPackageManager();
                        arrayList.add(new l(packageManager2.getApplicationLabel(packageInfo.applicationInfo).toString(), packageInfo.packageName, packageManager2.getApplicationIcon(packageInfo.applicationInfo)));
                    }
                }
            }
        }
        for (ApplicationInfo applicationInfo : installedApplications) {
            boolean z9 = (applicationInfo.flags & 1) != 0;
            if (zLoadBoolean || !z9) {
                if (packageManager.getLaunchIntentForPackage(applicationInfo.packageName) != null) {
                    arrayList.add(new l(packageManager.getApplicationLabel(applicationInfo).toString(), applicationInfo.packageName, packageManager.getApplicationIcon(applicationInfo)));
                }
            }
        }
        this.c.notifyDataSetChanged();
    }
}
