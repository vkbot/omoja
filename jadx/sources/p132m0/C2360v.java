package p132m0;

import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Point;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.constraintlayout.core.utils.C0279a;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.R;
import com.woha.appmanag.ManageAppsActivity;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Locale;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1434w;
import p047e0.C1329a1;
import p078h0.C1652b;
import p094i7.RunnableC1757f;
import p121l0.C2194a;
import p121l0.C2195b;
import p206u0.C3277a;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: m0.v */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C2360v extends C2195b {

    /* JADX INFO: renamed from: h */
    public static final String f6378h = AbstractC1387m.m2421h(new byte[]{11, -48, -105, 25, 86, -104, -23, 7, 2, -62, -116, 22}, new byte[]{104, -79, -29, 120, 58, -9, -114, 88});

    /* JADX INFO: renamed from: i */
    public static final String f6379i = AbstractC1387m.m2421h(new byte[]{57, 114, ByteCompanionObject.MIN_VALUE, -75, 81, 0, -45, 65, 62, 112, -111, -127, 72, 10, -49, 80, 39, 65, -111, -110, 68, 3, -50, 67, 59, 99, -109, -114, 64}, new byte[]{120, 2, -16, -26, 37, 111, -95, 36});

    /* JADX INFO: renamed from: j */
    public static final String f6380j = AbstractC1387m.m2421h(new byte[]{36, -112, 125}, new byte[]{82, -95, 71, 89, -17, 37, 16, 45});

    /* JADX INFO: renamed from: k */
    public static final byte[] f6381k = {74, 67, 84, 95, 65, 80, 80, 95, 83, 84, 79, 82, 69};

    /* JADX INFO: renamed from: b */
    public final ArrayList f6382b = new ArrayList();

    /* JADX INFO: renamed from: c */
    public final ArrayList f6383c = new ArrayList();

    /* JADX INFO: renamed from: d */
    public RecyclerView f6384d;

    /* JADX INFO: renamed from: e */
    public C2352t f6385e;

    /* JADX INFO: renamed from: f */
    public EditText f6386f;

    /* JADX INFO: renamed from: g */
    public TextView f6387g;

    /* JADX INFO: renamed from: A */
    public static String m3726A(String str) {
        return str == null ? "" : str.trim().toLowerCase(Locale.ROOT);
    }

    /* JADX INFO: renamed from: B */
    public static ArrayList m3727B(String str) {
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(str)) {
            try {
                Object objNextValue = new JSONTokener(str).nextValue();
                JSONArray jSONArrayOptJSONArray = objNextValue instanceof JSONArray ? (JSONArray) objNextValue : objNextValue instanceof JSONObject ? ((JSONObject) objNextValue).optJSONArray(AbstractC1387m.m2421h(new byte[]{103, -40, 119, 73}, new byte[]{6, -88, 7, 58, 64, -17, -97, -70})) : null;
                if (jSONArrayOptJSONArray != null) {
                    for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                        JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i10);
                        if (jSONObjectOptJSONObject != null) {
                            C2356u c2356u = new C2356u();
                            c2356u.f6361a = jSONObjectOptJSONObject.optString(AbstractC1387m.m2421h(new byte[]{-9, 10, -67, -31}, new byte[]{-103, 107, -48, -124, 39, 106, 38, 98}));
                            c2356u.f6362b = jSONObjectOptJSONObject.optString(AbstractC1387m.m2421h(new byte[]{-53, -117, -112, 47, 88, -98, 113, 77, -38, -121, -106}, new byte[]{-69, -22, -13, 68, 57, -7, 20, 3}));
                            c2356u.f6363c = jSONObjectOptJSONObject.optString(AbstractC1387m.m2421h(new byte[]{-34, -63, 92, -31, 65, -66}, new byte[]{-65, -79, 55, -76, 51, -46, -103, -12}));
                            c2356u.f6364d = jSONObjectOptJSONObject.optString(AbstractC1387m.m2421h(new byte[]{8, -111, 64, -35, 27, -22}, new byte[]{123, -2, 53, -81, 120, -113, -6, 10}));
                            c2356u.f6365e = jSONObjectOptJSONObject.optString(AbstractC1387m.m2421h(new byte[]{-127, 82, -110, 34, -77, 75, -100}, new byte[]{-9, 55, -32, 81, -38, 36, -14, 18}));
                            if (!TextUtils.isEmpty(c2356u.f6361a) && !TextUtils.isEmpty(c2356u.f6363c)) {
                                arrayList.add(c2356u);
                            }
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: t */
    public static void m3728t(C2360v c2360v, C2356u c2356u) {
        Intent launchIntentForPackage;
        if (TextUtils.isEmpty(c2356u.f6362b) || (launchIntentForPackage = c2360v.requireContext().getPackageManager().getLaunchIntentForPackage(c2356u.f6362b)) == null) {
            return;
        }
        AbstractC3656k.m5875u(c2360v.requireContext(), launchIntentForPackage, null);
    }

    /* JADX INFO: renamed from: w */
    public static String m3729w(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String str2 = f6380j;
        if (!str.startsWith(str2)) {
            return "";
        }
        try {
            byte[] bArrDecode = Base64.decode(str.substring(str2.length()), 2);
            byte[] bArr = f6381k;
            for (int i10 = 0; i10 < bArrDecode.length; i10++) {
                bArrDecode[i10] = (byte) (bArrDecode[i10] ^ bArr[i10 % bArr.length]);
            }
            return new String(bArrDecode, StandardCharsets.UTF_8);
        } catch (Exception unused) {
            return "";
        }
    }

    /* JADX INFO: renamed from: x */
    public static String m3730x(String str) {
        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
        for (int i10 = 0; i10 < bytes.length; i10++) {
            byte b10 = bytes[i10];
            byte[] bArr = f6381k;
            bytes[i10] = (byte) (b10 ^ bArr[i10 % bArr.length]);
        }
        return f6380j + Base64.encodeToString(bytes, 2);
    }

    /* JADX INFO: renamed from: z */
    public static String m3731z() {
        try {
            C3277a c3277aM2745o = C1652b.m2745o();
            String str = f6379i;
            String strLoadString = c3277aM2745o.loadString(str, "");
            String strM3729w = m3729w(strLoadString);
            if (!TextUtils.isEmpty(strM3729w)) {
                return strM3729w;
            }
            if (!m3727B(strLoadString).isEmpty()) {
                if (!TextUtils.isEmpty(strLoadString)) {
                    try {
                        C1652b.m2745o().saveString(str, m3730x(strLoadString));
                    } catch (Exception unused) {
                    }
                }
                return strLoadString;
            }
        } catch (Exception unused2) {
        }
        return "";
    }

    /* JADX INFO: renamed from: C */
    public final void m3732C() {
        PackageManager packageManager = requireContext().getPackageManager();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.f6382b;
        int size = arrayList2.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList2.get(i10);
            i10++;
            C2356u c2356u = (C2356u) obj;
            if (c2356u.f6369i) {
                m3736y(c2356u, packageManager);
                arrayList.add(c2356u);
            }
        }
        m3734u(arrayList, packageManager);
        arrayList2.clear();
        arrayList2.addAll(arrayList);
        EditText editText = this.f6386f;
        m3735v(editText == null ? "" : editText.getText().toString());
    }

    /* JADX INFO: renamed from: D */
    public final void m3733D(ArrayList arrayList) {
        PackageManager packageManager = requireContext().getPackageManager();
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C2356u c2356u = (C2356u) obj;
            c2356u.f6369i = true;
            m3736y(c2356u, packageManager);
            arrayList2.add(c2356u);
        }
        m3734u(arrayList2, packageManager);
        boolean zIsEmpty = arrayList2.isEmpty();
        ArrayList arrayList3 = this.f6382b;
        if (zIsEmpty) {
            arrayList3.clear();
            this.f6383c.clear();
            this.f6385e.notifyDataSetChanged();
            this.f6384d.setVisibility(8);
            TextView textView = this.f6387g;
            if (textView != null) {
                textView.setVisibility(0);
            }
            AbstractC3656k.m5878x(requireContext(), getString(R.string.app_store_catalog_unavailable));
            return;
        }
        this.f6384d.setVisibility(0);
        TextView textView2 = this.f6387g;
        if (textView2 != null) {
            textView2.setVisibility(8);
        }
        arrayList3.clear();
        arrayList3.addAll(arrayList2);
        EditText editText = this.f6386f;
        m3735v(editText == null ? "" : editText.getText().toString());
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        final int i10 = 0;
        View viewInflate = layoutInflater.cloneInContext(new ContextThemeWrapper(AbstractC1387m.m2437x(requireContext()), R.style.Theme_JCarTools_Modern)).inflate(R.layout.fragment_app_store, viewGroup, false);
        Button button = (Button) viewInflate.findViewById(R.id.storeBackButton);
        this.f6386f = (EditText) viewInflate.findViewById(R.id.storeSearchInput);
        this.f6384d = (RecyclerView) viewInflate.findViewById(R.id.recyclerView);
        this.f6387g = (TextView) viewInflate.findViewById(R.id.storeCatalogStatus);
        final int i11 = 1;
        this.f6384d.setLayoutManager(new GridLayoutManager(requireContext(), 1));
        C2352t c2352t = new C2352t(this);
        this.f6385e = c2352t;
        this.f6384d.setAdapter(c2352t);
        button.setOnClickListener(new View.OnClickListener(this) { // from class: m0.p

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2360v f6290c;

            {
                this.f6290c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i12 = i10;
                C2360v c2360v = this.f6290c;
                switch (i12) {
                    case 0:
                        String str = C2360v.f6378h;
                        Fragment parentFragment = c2360v.getParentFragment();
                        if (!(parentFragment instanceof C2194a)) {
                            FragmentActivity activity = c2360v.getActivity();
                            if (activity != null) {
                                activity.finish();
                            }
                        } else {
                            ((C2194a) parentFragment).dismiss();
                        }
                        break;
                    default:
                        String str2 = C2360v.f6378h;
                        AbstractC3656k.m5875u(c2360v.requireActivity(), new Intent(c2360v.requireActivity(), (Class<?>) ManageAppsActivity.class), null);
                        break;
                }
            }
        });
        viewInflate.findViewById(R.id.storeManageAppsButton).setOnClickListener(new View.OnClickListener(this) { // from class: m0.p

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2360v f6290c;

            {
                this.f6290c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i12 = i11;
                C2360v c2360v = this.f6290c;
                switch (i12) {
                    case 0:
                        String str = C2360v.f6378h;
                        Fragment parentFragment = c2360v.getParentFragment();
                        if (!(parentFragment instanceof C2194a)) {
                            FragmentActivity activity = c2360v.getActivity();
                            if (activity != null) {
                                activity.finish();
                            }
                        } else {
                            ((C2194a) parentFragment).dismiss();
                        }
                        break;
                    default:
                        String str2 = C2360v.f6378h;
                        AbstractC3656k.m5875u(c2360v.requireActivity(), new Intent(c2360v.requireActivity(), (Class<?>) ManageAppsActivity.class), null);
                        break;
                }
            }
        });
        this.f6386f.addTextChangedListener(new C1329a1(i11, this));
        Bundle arguments = getArguments();
        ArrayList arrayListM3727B = m3727B(arguments != null ? arguments.getString(f6378h) : null);
        if (arrayListM3727B.isEmpty()) {
            AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{-64, 14, -88, -41, -17, -57, -91, -70, -57, 12, -71, -29, -10, -51, -71, -85}, new byte[]{-127, 126, -40, -124, -101, -88, -41, -33})).execute(new RunnableC2340q(this, i10));
            return viewInflate;
        }
        m3733D(arrayListM3727B);
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        if (this.f6385e == null || this.f6382b.isEmpty()) {
            return;
        }
        m3732C();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        Display defaultDisplay = ((WindowManager) requireContext().getSystemService(AbstractC1387m.m2421h(new byte[]{-110, -65, 54, 20, -122, 65}, new byte[]{-27, -42, 88, 112, -23, 54, 114, 39}))).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        int i10 = (int) (((double) point.x) * 0.47d);
        int i11 = (int) (((double) point.y) * 0.75d);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f6384d.getLayoutParams();
        layoutParams.width = i10;
        layoutParams.height = i11;
        layoutParams.gravity = 1;
        this.f6384d.setLayoutParams(layoutParams);
        this.f6384d.post(new RunnableC1757f(this, this.f6384d.getContext().getResources().getDisplayMetrics().density, 1));
    }

    /* JADX INFO: renamed from: u */
    public final void m3734u(ArrayList arrayList, PackageManager packageManager) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C2356u c2356u = (C2356u) obj;
            String strM3726A = m3726A(c2356u.f6362b);
            String strM3726A2 = m3726A(c2356u.f6361a);
            if (!strM3726A.isEmpty()) {
                hashSet.add(strM3726A);
            }
            if (!strM3726A2.isEmpty()) {
                hashSet2.add(strM3726A2);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Intent intent = new Intent(AbstractC1387m.m2421h(new byte[]{124, -32, -67, 111, -40, 35, 50, -69, 116, -32, -83, 120, -39, 62, 120, -12, 126, -6, -80, 114, -39, 100, 27, -44, 84, -64}, new byte[]{29, -114, -39, 29, -73, 74, 86, -107}), (Uri) null);
        intent.addCategory(AbstractC1387m.m2421h(new byte[]{119, -20, -76, 102, -95, -74, 49, -24, ByteCompanionObject.MAX_VALUE, -20, -92, 113, -96, -85, 123, -91, 119, -10, -75, 115, -95, -83, 44, -24, 90, -61, -123, 90, -115, -105, 16, -108}, new byte[]{22, -126, -48, 20, -50, -33, 85, -58}));
        for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent, 0)) {
            ApplicationInfo applicationInfo = resolveInfo.activityInfo.applicationInfo;
            String str = applicationInfo.packageName;
            String strM3726A3 = m3726A(str);
            String string = resolveInfo.loadLabel(packageManager).toString();
            String strM3726A4 = m3726A(string);
            if (!requireContext().getPackageName().equals(str) && (applicationInfo.flags & 1) == 0 && !hashSet.contains(strM3726A3) && !hashSet2.contains(strM3726A4)) {
                hashSet.add(strM3726A3);
                hashSet2.add(strM3726A4);
                C2356u c2356u2 = new C2356u();
                c2356u2.f6361a = string;
                c2356u2.f6362b = str;
                c2356u2.f6369i = false;
                m3736y(c2356u2, packageManager);
                arrayList2.add(c2356u2);
            }
        }
        arrayList2.sort(new C0279a(8));
        arrayList.addAll(arrayList2);
    }

    /* JADX INFO: renamed from: v */
    public final void m3735v(String str) {
        String lowerCase = str == null ? "" : str.trim().toLowerCase(Locale.ROOT);
        ArrayList arrayList = this.f6383c;
        arrayList.clear();
        boolean zIsEmpty = lowerCase.isEmpty();
        ArrayList arrayList2 = this.f6382b;
        if (zIsEmpty) {
            arrayList.addAll(arrayList2);
        } else {
            int size = arrayList2.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList2.get(i10);
                i10++;
                C2356u c2356u = (C2356u) obj;
                String str2 = c2356u.f6361a;
                String lowerCase2 = str2 == null ? "" : str2.toLowerCase(Locale.ROOT);
                String str3 = c2356u.f6362b;
                String lowerCase3 = str3 == null ? "" : str3.toLowerCase(Locale.ROOT);
                if (lowerCase2.contains(lowerCase) || lowerCase3.contains(lowerCase)) {
                    arrayList.add(c2356u);
                }
            }
        }
        this.f6385e.notifyDataSetChanged();
    }

    /* JADX INFO: renamed from: y */
    public final void m3736y(C2356u c2356u, PackageManager packageManager) {
        c2356u.f6366f = false;
        String str = "";
        c2356u.f6367g = "";
        c2356u.f6368h = ContextCompat.getDrawable(requireContext(), R.drawable.ic_download);
        if (TextUtils.isEmpty(c2356u.f6362b)) {
            return;
        }
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(c2356u.f6362b, 0);
            c2356u.f6366f = true;
            String str2 = packageInfo.versionName;
            if (str2 != null) {
                str = str2;
            }
            c2356u.f6367g = str;
            c2356u.f6368h = packageManager.getApplicationIcon(packageInfo.applicationInfo);
        } catch (Exception unused) {
        }
    }
}
