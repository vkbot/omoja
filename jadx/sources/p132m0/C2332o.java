package p132m0;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.os.Bundle;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.Switch;
import androidx.recyclerview.widget.GridLayoutManager;
import com.example.navistart.DialogUni.Fragmenti.MaxHeightRecyclerView;
import com.example.navistart.R;
import com.google.protobuf.AbstractC1178q;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1406p3;
import p047e0.C1440x1;
import p078h0.C1652b;
import p121l0.C2194a;
import p121l0.C2195b;
import p206u0.C3277a;

/* JADX INFO: renamed from: m0.o */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C2332o extends C2195b {

    /* JADX INFO: renamed from: g */
    public static final String f6273g = AbstractC1387m.m2421h(new byte[]{-127, -121, -15, 4, -97, -127, 79, -98, -122, -123, -32, 48, -122, -123, 83, -98, -97, -124, -23, 56, -100, -77, 68, -103, -76, -110, -20, 22, -101, -112, 78}, new byte[]{-64, -9, -127, 87, -21, -32, Base64.padSymbol, -22});

    /* JADX INFO: renamed from: h */
    public static final String f6274h = AbstractC1387m.m2421h(new byte[]{93, -98, 89, -83, -63, -60, 21, -113, 90, -100, 72, -103, -40, -64, 9, -113, 67, -67, 72, -120, -48, -29, 8, -119, 121, -104, 76, -116, -12, -43, 23}, new byte[]{28, -18, 41, -2, -75, -91, 103, -5});

    /* JADX INFO: renamed from: b */
    public MaxHeightRecyclerView f6275b;

    /* JADX INFO: renamed from: c */
    public C2327n f6276c;

    /* JADX INFO: renamed from: d */
    public final ArrayList f6277d = new ArrayList();

    /* JADX INFO: renamed from: e */
    public int f6278e = 0;

    /* JADX INFO: renamed from: f */
    public Display[] f6279f;

    /* JADX INFO: renamed from: t */
    public static void m3715t(C2332o c2332o, String str) {
        C3277a c3277aM2745o = C1652b.m2745o();
        String str2 = f6274h;
        String strLoadString = c3277aM2745o.loadString(str2, "");
        ArrayList arrayList = new ArrayList();
        if (!strLoadString.isEmpty()) {
            arrayList.addAll(Arrays.asList(strLoadString.split(AbstractC1387m.m2421h(new byte[]{-42}, new byte[]{-19, 106, -96, 24, 46, 4, -29, 124}))));
        }
        arrayList.remove(str);
        arrayList.add(0, str);
        int size = arrayList.size();
        List listSubList = arrayList;
        if (size > 8) {
            listSubList = arrayList.subList(0, 8);
        }
        String strM2421h = AbstractC1387m.m2421h(new byte[]{14}, new byte[]{53, 80, 70, 47, 102, -32, 105, -13});
        StringBuilder sb = new StringBuilder();
        Iterator it = listSubList.iterator();
        if (it.hasNext()) {
            while (true) {
                sb.append((CharSequence) it.next());
                if (!it.hasNext()) {
                    break;
                } else {
                    sb.append((CharSequence) strM2421h);
                }
            }
        }
        C1652b.m2745o().saveString(str2, sb.toString());
    }

    /* JADX INFO: renamed from: w */
    public static boolean m3716w() {
        return C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-74, 123, -80, 93, 41, -6, -45, -69, -79, 121, -95, 105, 48, -2, -49, -69, -88, 103, -81, 111, 57, -35, -50, -67, -110, 125, -91, 124, 28, -21, -47}, new byte[]{-9, 11, -64, 14, 93, -101, -95, -49}), true);
    }

    /* JADX INFO: renamed from: x */
    public static ArrayList m3717x() {
        String strLoadString = C1652b.m2745o().loadString(f6274h, "");
        ArrayList arrayList = new ArrayList();
        if (!strLoadString.isEmpty()) {
            for (String str : strLoadString.split(AbstractC1387m.m2421h(new byte[]{-84}, new byte[]{-105, 86, 16, 24, -8, -126, 60, 10}))) {
                if (!str.isEmpty() && !arrayList.contains(str)) {
                    arrayList.add(str);
                }
            }
        }
        return arrayList;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        final int i10 = 0;
        View viewInflate = layoutInflater.inflate(R.layout.fragment_apps, viewGroup, false);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f6278e = arguments.getInt(AbstractC1387m.m2421h(new byte[]{42, 41, -76}, new byte[]{78, 64, -57, -72, -55, -15, 45, -52}), 0);
        }
        this.f6275b = (MaxHeightRecyclerView) viewInflate.findViewById(R.id.recyclerView);
        Switch r9 = (Switch) viewInflate.findViewById(R.id.switch24);
        r9.setChecked(m3716w());
        r9.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: m0.k

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ C2332o f6181b;

            {
                this.f6181b = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z9) {
                int i11 = i10;
                C2332o c2332o = this.f6181b;
                switch (i11) {
                    case 0:
                        String str = C2332o.f6273g;
                        C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-83, -52, 123, -31, 51, 28, 55, -60, -86, -50, 106, -43, 42, 24, 43, -60, -77, -48, 100, -45, 35, 59, 42, -62, -119, -54, 110, -64, 6, 13, 53}, new byte[]{-20, -68, 11, -78, 71, 125, 69, -80}), z9);
                        c2332o.m3719v();
                        break;
                    default:
                        String str2 = C2332o.f6273g;
                        C1652b.m2745o().saveBoolean(C2332o.f6273g, z9);
                        c2332o.m3719v();
                        break;
                }
            }
        });
        Switch r10 = (Switch) viewInflate.findViewById(R.id.showSystemApps);
        r10.setChecked(C1652b.m2745o().loadBoolean(f6273g, false));
        final int i11 = 1;
        r10.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: m0.k

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ C2332o f6181b;

            {
                this.f6181b = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z9) {
                int i12 = i11;
                C2332o c2332o = this.f6181b;
                switch (i12) {
                    case 0:
                        String str = C2332o.f6273g;
                        C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-83, -52, 123, -31, 51, 28, 55, -60, -86, -50, 106, -43, 42, 24, 43, -60, -77, -48, 100, -45, 35, 59, 42, -62, -119, -54, 110, -64, 6, 13, 53}, new byte[]{-20, -68, 11, -78, 71, 125, 69, -80}), z9);
                        c2332o.m3719v();
                        break;
                    default:
                        String str2 = C2332o.f6273g;
                        C1652b.m2745o().saveBoolean(C2332o.f6273g, z9);
                        c2332o.m3719v();
                        break;
                }
            }
        });
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        C2194a c2194a;
        super.onPause();
        if (!isAdded() || (c2194a = (C2194a) getParentFragment()) == null) {
            return;
        }
        c2194a.dismiss();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        int i10;
        super.onStart();
        Display[] displays = ((DisplayManager) requireContext().getSystemService(AbstractC1387m.m2421h(new byte[]{19, -102, 93, -55, 6, -116, 88}, new byte[]{119, -13, 46, -71, 106, -19, 33, 36}))).getDisplays();
        this.f6279f = displays;
        if (displays == null || (i10 = this.f6278e) < 0 || i10 >= displays.length) {
            return;
        }
        Display defaultDisplay = ((WindowManager) requireContext().createDisplayContext(this.f6279f[this.f6278e]).getSystemService(AbstractC1387m.m2421h(new byte[]{-24, -75, -73, 70, -63, -71}, new byte[]{-97, -36, -39, 34, -82, -50, -123, 123}))).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        int i11 = (int) (((double) point.x) * 0.6d);
        int i12 = (int) (((double) point.y) * 0.7d);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f6275b.getLayoutParams();
        layoutParams.width = i11;
        layoutParams.height = -2;
        Context contextRequireContext = requireContext();
        float f8 = contextRequireContext.getResources().getDisplayMetrics().density;
        this.f6275b.setLayoutManager(new GridLayoutManager(contextRequireContext, 3));
        this.f6275b.setLayoutParams(layoutParams);
        this.f6275b.setMaxHeight(i12);
        C2327n c2327n = new C2327n(this);
        this.f6276c = c2327n;
        this.f6275b.setAdapter(c2327n);
        m3719v();
        this.f6275b.post(new RunnableC2307j(this, f8, contextRequireContext, 0));
    }

    /* JADX INFO: renamed from: u */
    public final Boolean m3718u() {
        StringBuilder sb = new StringBuilder();
        C3277a c3277aM2745o = C1652b.m2745o();
        byte[] bArr = AbstractC1387m.f3322j;
        String[] strArr = AbstractC1406p3.f3368a;
        AbstractC1178q.m2085s(bArr, c3277aM2745o, "", sb);
        AbstractC1178q.m2084r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strM2073g = AbstractC1178q.m2073g(sb, C1440x1.f3470q);
        C3277a c3277aM2745o2 = C1652b.m2745o();
        byte[] bArr2 = AbstractC1387m.f3318f;
        if (!AbstractC1178q.m2089w(bArr2, c3277aM2745o2, "", strM2073g)) {
            return Boolean.FALSE;
        }
        C1652b.m2734a();
        return Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{26}, new byte[]{42, 110, 42, -81, -89, -95, -127, -104}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0))));
    }

    /* JADX INFO: renamed from: v */
    public final void m3719v() {
        PackageInfo packageInfo;
        PackageManager packageManager = requireContext().getPackageManager();
        List<ApplicationInfo> installedApplications = packageManager.getInstalledApplications(128);
        boolean zLoadBoolean = C1652b.m2745o().loadBoolean(f6273g, false);
        ArrayList arrayList = this.f6277d;
        arrayList.clear();
        if (m3716w()) {
            ArrayList arrayListM3717x = m3717x();
            int size = arrayListM3717x.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayListM3717x.get(i10);
                i10++;
                try {
                    packageInfo = requireContext().getPackageManager().getPackageInfo((String) obj, 0);
                } catch (PackageManager.NameNotFoundException unused) {
                    packageInfo = null;
                }
                if (packageInfo != null) {
                    boolean z9 = (packageInfo.applicationInfo.flags & 1) != 0;
                    if (zLoadBoolean || !z9) {
                        PackageManager packageManager2 = requireContext().getPackageManager();
                        arrayList.add(new C2317l(packageManager2.getApplicationLabel(packageInfo.applicationInfo).toString(), packageInfo.packageName, packageManager2.getApplicationIcon(packageInfo.applicationInfo)));
                    }
                }
            }
        }
        for (ApplicationInfo applicationInfo : installedApplications) {
            boolean z10 = (applicationInfo.flags & 1) != 0;
            if (zLoadBoolean || !z10) {
                if (packageManager.getLaunchIntentForPackage(applicationInfo.packageName) != null) {
                    arrayList.add(new C2317l(packageManager.getApplicationLabel(applicationInfo).toString(), applicationInfo.packageName, packageManager.getApplicationIcon(applicationInfo)));
                }
            }
        }
        this.f6276c.notifyDataSetChanged();
    }
}
