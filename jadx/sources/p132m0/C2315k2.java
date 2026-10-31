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
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import com.example.navistart.DialogUni.Fragmenti.MaxHeightRecyclerView;
import com.example.navistart.R;
import com.google.android.material.button.MaterialButtonToggleGroup;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p006a5.C0023h;
import p047e0.AbstractC1387m;
import p051e4.C1482o;
import p078h0.C1652b;
import p080h3.InterfaceC1662h;
import p094i7.C1754c;
import p121l0.C2194a;
import p121l0.C2195b;
import p206u0.C3277a;

/* JADX INFO: renamed from: m0.k2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C2315k2 extends C2195b {

    /* JADX INFO: renamed from: b */
    public String f6187b;

    /* JADX INFO: renamed from: d */
    public MaxHeightRecyclerView f6189d;

    /* JADX INFO: renamed from: e */
    public C2305i2 f6190e;

    /* JADX INFO: renamed from: f */
    public ImageView f6191f;

    /* JADX INFO: renamed from: g */
    public ImageView f6192g;

    /* JADX INFO: renamed from: h */
    public MaterialButtonToggleGroup f6193h;

    /* JADX INFO: renamed from: k */
    public Display[] f6196k;

    /* JADX INFO: renamed from: c */
    public final C1482o f6188c = new C1482o();

    /* JADX INFO: renamed from: i */
    public final ArrayList f6194i = new ArrayList();

    /* JADX INFO: renamed from: j */
    public int f6195j = 0;

    /* JADX INFO: renamed from: t */
    public static void m3701t(C2315k2 c2315k2, C1482o c1482o) {
        C1482o c1482o2;
        ArrayList arrayList = c2315k2.f6194i;
        if (c1482o == null || ((C0023h) c1482o.f3599c) == null || ((C0023h) c1482o.f3600d) == null) {
            return;
        }
        int size = arrayList.size() - 1;
        while (true) {
            if (size < 0) {
                break;
            }
            C2310j2 c2310j2 = (C2310j2) arrayList.get(size);
            if (c2310j2.f6171a && (c1482o2 = c2310j2.f6173c) != null && ((C0023h) c1482o2.f3599c) != null && ((C0023h) c1482o2.f3600d) != null && ((C0023h) c1482o.f3599c) != null && ((C0023h) c1482o.f3600d) != null) {
                if ((c1482o2.f3597a == 2 ? 2 : 1) == (c1482o.f3597a != 2 ? 1 : 2) && m3704w(c1482o2.f3598b) == m3704w(c1482o.f3598b) && m3703v((String) ((C0023h) c1482o2.f3599c).f82d, (String) ((C0023h) c1482o2.f3600d).f82d, (String) ((C0023h) c1482o.f3599c).f82d, (String) ((C0023h) c1482o.f3600d).f82d)) {
                    arrayList.remove(size);
                }
            }
            size--;
        }
        C1482o c1482o3 = new C1482o();
        c1482o3.f3599c = (C0023h) c1482o.f3599c;
        c1482o3.f3600d = (C0023h) c1482o.f3600d;
        c1482o3.f3597a = c1482o.f3597a != 2 ? 1 : 2;
        c1482o3.f3598b = m3704w(c1482o.f3598b);
        int i10 = 0;
        arrayList.add(0, new C2310j2(true, null, c1482o3));
        int i11 = 0;
        while (i10 < arrayList.size()) {
            if (((C2310j2) arrayList.get(i10)).f6171a && (i11 = i11 + 1) > 8) {
                arrayList.remove(i10);
                i10--;
            }
            i10++;
        }
    }

    /* JADX INFO: renamed from: u */
    public static void m3702u(C2315k2 c2315k2, C1482o c1482o) {
        if (c1482o == null || ((C0023h) c1482o.f3599c) == null || ((C0023h) c1482o.f3600d) == null) {
            return;
        }
        String strM2421h = AbstractC1387m.m2421h(new byte[]{-8, -25, 125, 79, -92, 77, 96, -68, -37, -28, 69, 103, -126, 102, 103, -66, -54, -48, 92, 99, -98, 102, 126, -97, -54, -63, 84, 64, -97, 96, 68, -70, -50, -59, 112, 118, ByteCompanionObject.MIN_VALUE}, new byte[]{-85, -73, 49, 6, -16, 18, 33, -52});
        String strLoadString = C1652b.m2745o().loadString(strM2421h, "");
        ArrayList arrayList = new ArrayList();
        if (!strLoadString.isEmpty()) {
            arrayList.addAll(Arrays.asList(strLoadString.split(AbstractC1387m.m2421h(new byte[]{-106}, new byte[]{-83, -90, 45, -12, -54, -65, -49, 76}))));
        }
        String str = ((String) ((C0023h) c1482o.f3599c).f82d) + AbstractC1387m.m2421h(new byte[]{95}, new byte[]{115, -43, -51, 121, 113, 91, -66, -53}) + ((String) ((C0023h) c1482o.f3600d).f82d) + AbstractC1387m.m2421h(new byte[]{6}, new byte[]{42, 30, 118, 70, 54, -89, 13, -7}) + c1482o.f3597a + AbstractC1387m.m2421h(new byte[]{97}, new byte[]{77, 0, 65, -54, -40, 34, 51, -20}) + m3704w(c1482o.f3598b);
        arrayList.removeIf(new C1754c(1, c2315k2, c1482o));
        arrayList.add(0, str);
        int size = arrayList.size();
        List listSubList = arrayList;
        if (size > 8) {
            listSubList = arrayList.subList(0, 8);
        }
        C3277a c3277aM2745o = C1652b.m2745o();
        String strM2421h2 = AbstractC1387m.m2421h(new byte[]{-89}, new byte[]{-100, 123, -58, 24, -126, -89, 62, -50});
        StringBuilder sb = new StringBuilder();
        Iterator it = listSubList.iterator();
        if (it.hasNext()) {
            while (true) {
                sb.append((CharSequence) it.next());
                if (!it.hasNext()) {
                    break;
                } else {
                    sb.append((CharSequence) strM2421h2);
                }
            }
        }
        c3277aM2745o.saveString(strM2421h, sb.toString());
    }

    /* JADX INFO: renamed from: v */
    public static boolean m3703v(String str, String str2, String str3, String str4) {
        if (str == null || str2 == null || str3 == null || str4 == null) {
            return false;
        }
        if (str.equals(str3) && str2.equals(str4)) {
            return true;
        }
        return str.equals(str4) && str2.equals(str3);
    }

    /* JADX INFO: renamed from: w */
    public static int m3704w(int i10) {
        if (i10 == 30 || i10 == 70) {
            return i10;
        }
        return 50;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        final int i10 = 0;
        View viewInflate = layoutInflater.inflate(R.layout.fragment_apps2, viewGroup, false);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f6195j = arguments.getInt(AbstractC1387m.m2421h(new byte[]{-85, -2, 70}, new byte[]{-49, -105, 53, 75, -103, -28, 43, -95}), 0);
        }
        this.f6189d = (MaxHeightRecyclerView) viewInflate.findViewById(R.id.recyclerView);
        this.f6191f = (ImageView) viewInflate.findViewById(R.id.btnVertical);
        this.f6192g = (ImageView) viewInflate.findViewById(R.id.btnHorizontal);
        this.f6193h = (MaterialButtonToggleGroup) viewInflate.findViewById(R.id.splitRatioGroup);
        final int i11 = 1;
        int iLoadInt = C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{-83, -100, -80, -111, -76, 7, -74, 91, -73, -119, -78, -116}, new byte[]{-2, -52, -4, -40, -32, 88, -7, 9}), 1);
        int iLoadInt2 = C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{-6, -61, 2, 40, 122, -66, -19, 6, -3, -38, 1}, new byte[]{-87, -109, 78, 97, 46, -31, -65, 71}), 50);
        m3705x(iLoadInt);
        m3706y(iLoadInt2);
        this.f6191f.setOnClickListener(new View.OnClickListener(this) { // from class: m0.f2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2315k2 f6078c;

            {
                this.f6078c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i10) {
                    case 0:
                        this.f6078c.m3705x(1);
                        break;
                    default:
                        this.f6078c.m3705x(2);
                        break;
                }
            }
        });
        this.f6192g.setOnClickListener(new View.OnClickListener(this) { // from class: m0.f2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2315k2 f6078c;

            {
                this.f6078c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i11) {
                    case 0:
                        this.f6078c.m3705x(1);
                        break;
                    default:
                        this.f6078c.m3705x(2);
                        break;
                }
            }
        });
        MaterialButtonToggleGroup materialButtonToggleGroup = this.f6193h;
        materialButtonToggleGroup.f2213l.add(new InterfaceC1662h() { // from class: m0.g2
            @Override // p080h3.InterfaceC1662h
            /* JADX INFO: renamed from: a */
            public final void mo1877a(int i12, boolean z9) {
                if (z9) {
                    C2315k2 c2315k2 = this.f6093a;
                    if (i12 == R.id.splitRatio30) {
                        c2315k2.m3706y(30);
                    } else if (i12 == R.id.splitRatio70) {
                        c2315k2.m3706y(70);
                    } else {
                        c2315k2.m3706y(50);
                    }
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

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        int i10;
        int i11;
        PackageInfo packageInfo;
        PackageInfo packageInfo2;
        super.onStart();
        int i12 = 8;
        Display[] displays = ((DisplayManager) requireContext().getSystemService(AbstractC1387m.m2421h(new byte[]{-120, -32, 74, 110, 11, -100, 64}, new byte[]{-20, -119, 57, 30, 103, -3, 57, -34}))).getDisplays();
        this.f6196k = displays;
        if (displays == null || (i10 = this.f6195j) < 0 || i10 >= displays.length) {
            return;
        }
        Display defaultDisplay = ((WindowManager) requireContext().createDisplayContext(this.f6196k[this.f6195j]).getSystemService(AbstractC1387m.m2421h(new byte[]{107, 92, 88, -11, -23, 111}, new byte[]{28, 53, 54, -111, -122, 24, 105, 70}))).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        int i13 = (int) (((double) point.x) * 0.6d);
        int i14 = (int) (((double) point.y) * 0.7d);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f6189d.getLayoutParams();
        layoutParams.width = i13;
        layoutParams.height = -2;
        Context contextRequireContext = requireContext();
        float f8 = contextRequireContext.getResources().getDisplayMetrics().density;
        int i15 = 3;
        this.f6189d.setLayoutManager(new GridLayoutManager(contextRequireContext, 3));
        this.f6189d.setLayoutParams(layoutParams);
        this.f6189d.setMaxHeight(i14);
        C2305i2 c2305i2 = new C2305i2(this);
        this.f6190e = c2305i2;
        this.f6189d.setAdapter(c2305i2);
        C1482o c1482o = this.f6188c;
        c1482o.f3599c = null;
        c1482o.f3600d = null;
        PackageManager packageManager = requireContext().getPackageManager();
        List<ApplicationInfo> installedApplications = packageManager.getInstalledApplications(128);
        ArrayList arrayList = this.f6194i;
        arrayList.clear();
        String strLoadString = C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{36, -33, 74, -97, -1, 59, -70, 49, 7, -36, 114, -73, -39, 16, -67, 51, 22, -24, 107, -77, -59, 16, -92, 18, 22, -7, 99, -112, -60, 22, -98, 55, 18, -3, 71, -90, -37}, new byte[]{119, -113, 6, -42, -85, 100, -5, 65}), "");
        int i16 = 1;
        char c = 0;
        if (!strLoadString.isEmpty()) {
            String[] strArrSplit = strLoadString.split(AbstractC1387m.m2421h(new byte[]{-20}, new byte[]{-41, -11, -56, -28, -4, -30, 47, -3}));
            PackageManager packageManager2 = requireContext().getPackageManager();
            int length = strArrSplit.length;
            int i17 = 0;
            while (i17 < length) {
                String str = strArrSplit[i17];
                byte[] bArr = new byte[i16];
                bArr[c] = -15;
                boolean z9 = i16;
                byte[] bArr2 = new byte[i12];
                // fill-array-data instruction
                bArr2[0] = -35;
                bArr2[1] = -17;
                bArr2[2] = -47;
                bArr2[3] = 93;
                bArr2[4] = 53;
                bArr2[5] = 71;
                bArr2[6] = -115;
                bArr2[7] = 53;
                String[] strArrSplit2 = str.split(AbstractC1387m.m2421h(bArr, bArr2));
                if (strArrSplit2.length < i15) {
                    i11 = i15;
                } else {
                    String str2 = strArrSplit2[c];
                    String str3 = strArrSplit2[z9 ? 1 : 0];
                    try {
                        i11 = i15;
                        try {
                            int i18 = Integer.parseInt(strArrSplit2[2].trim());
                            int i19 = strArrSplit2.length >= 4 ? Integer.parseInt(strArrSplit2[i11].trim()) : 50;
                            try {
                                packageInfo = requireContext().getPackageManager().getPackageInfo(str2, 0);
                            } catch (PackageManager.NameNotFoundException unused) {
                                packageInfo = null;
                            }
                            int i20 = i19;
                            try {
                                packageInfo2 = requireContext().getPackageManager().getPackageInfo(str3, 0);
                            } catch (PackageManager.NameNotFoundException unused2) {
                                packageInfo2 = null;
                            }
                            if (packageInfo != null && packageInfo2 != null) {
                                installedApplications = installedApplications;
                                int i21 = 17;
                                C0023h c0023h = new C0023h(packageManager2.getApplicationLabel(packageInfo.applicationInfo).toString(), str2, packageManager2.getApplicationIcon(packageInfo.applicationInfo), i21);
                                C0023h c0023h2 = new C0023h(packageManager2.getApplicationLabel(packageInfo2.applicationInfo).toString(), str3, packageManager2.getApplicationIcon(packageInfo2.applicationInfo), i21);
                                C1482o c1482o2 = new C1482o();
                                c1482o2.f3599c = c0023h;
                                c1482o2.f3600d = c0023h2;
                                c1482o2.f3597a = i18 != 2 ? z9 ? 1 : 0 : 2;
                                c1482o2.f3598b = m3704w(i20);
                                arrayList.add(new C2310j2(z9, null, c1482o2));
                            }
                        } catch (NumberFormatException unused3) {
                        }
                    } catch (NumberFormatException unused4) {
                        i11 = i15;
                    }
                }
                i17++;
                i15 = i11;
                installedApplications = installedApplications;
                strArrSplit = strArrSplit;
                i12 = 8;
                i16 = 1;
                c = 0;
            }
        }
        for (ApplicationInfo applicationInfo : installedApplications) {
            if ((applicationInfo.flags & 1) == 0 && packageManager.getLaunchIntentForPackage(applicationInfo.packageName) != null) {
                arrayList.add(new C2310j2(false, new C0023h(packageManager.getApplicationLabel(applicationInfo).toString(), applicationInfo.packageName, packageManager.getApplicationIcon(applicationInfo), 17), null));
            }
        }
        this.f6190e.notifyDataSetChanged();
        this.f6189d.post(new RunnableC2307j(this, f8, contextRequireContext, 1));
    }

    /* JADX INFO: renamed from: x */
    public final void m3705x(int i10) {
        this.f6188c.f3597a = i10;
        C1652b.m2745o().saveInt(AbstractC1387m.m2421h(new byte[]{81, -43, 7, 116, -111, 3, 25, 78, 75, -64, 5, 105}, new byte[]{2, -123, 75, Base64.padSymbol, -59, 92, 86, 28}), i10);
        this.f6191f.setImageResource(i10 == 1 ? R.drawable.ic_split_vertical_selected : R.drawable.ic_split_vertical);
        this.f6192g.setImageResource(i10 == 2 ? R.drawable.ic_split_horizontal_selected : R.drawable.ic_split_horizontal);
    }

    /* JADX INFO: renamed from: y */
    public final void m3706y(int i10) {
        int i11;
        int iM3704w = m3704w(i10);
        C1482o c1482o = this.f6188c;
        c1482o.f3598b = iM3704w;
        C1652b.m2745o().saveInt(AbstractC1387m.m2421h(new byte[]{-73, -4, 52, -113, -13, -105, -111, -70, -80, -27, 55}, new byte[]{-28, -84, 120, -58, -89, -56, -61, -5}), c1482o.f3598b);
        int i12 = c1482o.f3598b;
        if (i12 == 30) {
            i11 = R.id.splitRatio30;
        } else {
            i11 = i12 == 70 ? R.id.splitRatio70 : R.id.splitRatio50;
        }
        if (this.f6193h.getCheckedButtonId() != i11) {
            this.f6193h.m1782f(i11, true);
        }
    }
}
