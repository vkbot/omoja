package m0;

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
import android.widget.LinearLayout$LayoutParams;
import android.widget.TextView;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Locale;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class v extends l0.b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f3604h = e0.m.h(new byte[]{11, -48, -105, 25, 86, -104, -23, 7, 2, -62, -116, 22}, new byte[]{104, -79, -29, 120, 58, -9, -114, 88});

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f3605i = e0.m.h(new byte[]{57, 114, ByteCompanionObject.MIN_VALUE, -75, 81, 0, -45, 65, 62, 112, -111, -127, 72, 10, -49, 80, 39, 65, -111, -110, 68, 3, -50, 67, 59, 99, -109, -114, 64}, new byte[]{120, 2, -16, -26, 37, 111, -95, 36});

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f3606j = e0.m.h(new byte[]{36, -112, 125}, new byte[]{82, -95, 71, 89, -17, 37, 16, 45});

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final byte[] f3607k = {74, 67, 84, 95, 65, 80, 80, 95, 83, 84, 79, 82, 69};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f3608b = new ArrayList();
    public final ArrayList c = new ArrayList();
    public RecyclerView d;
    public t e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public EditText f3609f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public TextView f3610g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String A(String str) {
        return str == null ? "" : str.trim().toLowerCase(Locale.ROOT);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ArrayList B(String str) {
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(str)) {
            try {
                Object objNextValue = new JSONTokener(str).nextValue();
                JSONArray jSONArrayOptJSONArray = objNextValue instanceof JSONArray ? (JSONArray) objNextValue : objNextValue instanceof JSONObject ? ((JSONObject) objNextValue).optJSONArray(e0.m.h(new byte[]{103, -40, 119, 73}, new byte[]{6, -88, 7, 58, 64, -17, -97, -70})) : null;
                if (jSONArrayOptJSONArray != null) {
                    for (int i9 = 0; i9 < jSONArrayOptJSONArray.length(); i9++) {
                        JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i9);
                        if (jSONObjectOptJSONObject != null) {
                            u uVar = new u();
                            uVar.f3593a = jSONObjectOptJSONObject.optString(e0.m.h(new byte[]{-9, 10, -67, -31}, new byte[]{-103, 107, -48, -124, 39, 106, 38, 98}));
                            uVar.f3594b = jSONObjectOptJSONObject.optString(e0.m.h(new byte[]{-53, -117, -112, 47, 88, -98, 113, 77, -38, -121, -106}, new byte[]{-69, -22, -13, 68, 57, -7, 20, 3}));
                            uVar.c = jSONObjectOptJSONObject.optString(e0.m.h(new byte[]{-34, -63, 92, -31, 65, -66}, new byte[]{-65, -79, 55, -76, 51, -46, -103, -12}));
                            uVar.d = jSONObjectOptJSONObject.optString(e0.m.h(new byte[]{8, -111, 64, -35, 27, -22}, new byte[]{123, -2, 53, -81, 120, -113, -6, 10}));
                            uVar.e = jSONObjectOptJSONObject.optString(e0.m.h(new byte[]{-127, 82, -110, 34, -77, 75, -100}, new byte[]{-9, 55, -32, 81, -38, 36, -14, 18}));
                            if (!TextUtils.isEmpty(uVar.f3593a) && !TextUtils.isEmpty(uVar.c)) {
                                arrayList.add(uVar);
                            }
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void t(v vVar, u uVar) {
        Intent launchIntentForPackage;
        if (TextUtils.isEmpty(uVar.f3594b) || (launchIntentForPackage = vVar.requireContext().getPackageManager().getLaunchIntentForPackage(uVar.f3594b)) == null) {
            return;
        }
        y5.k.u(vVar.requireContext(), launchIntentForPackage, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String w(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String str2 = f3606j;
        if (!str.startsWith(str2)) {
            return "";
        }
        try {
            byte[] bArrDecode = Base64.decode(str.substring(str2.length()), 2);
            byte[] bArr = f3607k;
            for (int i9 = 0; i9 < bArrDecode.length; i9++) {
                bArrDecode[i9] = (byte) (bArrDecode[i9] ^ bArr[i9 % bArr.length]);
            }
            return new String(bArrDecode, StandardCharsets.UTF_8);
        } catch (Exception unused) {
            return "";
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String x(String str) {
        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
        for (int i9 = 0; i9 < bytes.length; i9++) {
            byte b9 = bytes[i9];
            byte[] bArr = f3607k;
            bytes[i9] = (byte) (b9 ^ bArr[i9 % bArr.length]);
        }
        return f3606j + Base64.encodeToString(bytes, 2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String z() {
        try {
            u0.a aVarO = h0.b.o();
            String str = f3605i;
            String strLoadString = aVarO.loadString(str, "");
            String strW = w(strLoadString);
            if (!TextUtils.isEmpty(strW)) {
                return strW;
            }
            if (!B(strLoadString).isEmpty()) {
                if (!TextUtils.isEmpty(strLoadString)) {
                    try {
                        h0.b.o().saveString(str, x(strLoadString));
                    } catch (Exception unused) {
                    }
                }
                return strLoadString;
            }
        } catch (Exception unused2) {
        }
        return "";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void C() {
        PackageManager packageManager = requireContext().getPackageManager();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.f3608b;
        int size = arrayList2.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList2.get(i9);
            i9++;
            u uVar = (u) obj;
            if (uVar.f3598i) {
                y(uVar, packageManager);
                arrayList.add(uVar);
            }
        }
        u(arrayList, packageManager);
        arrayList2.clear();
        arrayList2.addAll(arrayList);
        EditText editText = this.f3609f;
        v(editText == null ? "" : editText.getText().toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void D(ArrayList arrayList) {
        PackageManager packageManager = requireContext().getPackageManager();
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList.get(i9);
            i9++;
            u uVar = (u) obj;
            uVar.f3598i = true;
            y(uVar, packageManager);
            arrayList2.add(uVar);
        }
        u(arrayList2, packageManager);
        boolean zIsEmpty = arrayList2.isEmpty();
        ArrayList arrayList3 = this.f3608b;
        if (zIsEmpty) {
            arrayList3.clear();
            this.c.clear();
            this.e.notifyDataSetChanged();
            this.d.setVisibility(8);
            TextView textView = this.f3610g;
            if (textView != null) {
                textView.setVisibility(0);
            }
            y5.k.x(requireContext(), getString(2131951803));
            return;
        }
        this.d.setVisibility(0);
        TextView textView2 = this.f3610g;
        if (textView2 != null) {
            textView2.setVisibility(8);
        }
        arrayList3.clear();
        arrayList3.addAll(arrayList2);
        EditText editText = this.f3609f;
        v(editText == null ? "" : editText.getText().toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.cloneInContext(new ContextThemeWrapper(e0.m.x(requireContext()), 2132017805)).inflate(2131492950, viewGroup, false);
        Button button = (Button) viewInflate.findViewById(2131297461);
        this.f3609f = (EditText) viewInflate.findViewById(2131297468);
        this.d = (RecyclerView) viewInflate.findViewById(2131297259);
        this.f3610g = (TextView) viewInflate.findViewById(2131297462);
        this.d.setLayoutManager(new GridLayoutManager(requireContext(), 1));
        t tVar = new t(this);
        this.e = tVar;
        this.d.setAdapter(tVar);
        button.setOnClickListener(new p(this, 0));
        viewInflate.findViewById(2131297465).setOnClickListener(new p(this, 1));
        this.f3609f.addTextChangedListener(new e0.a1(1, this));
        Bundle arguments = getArguments();
        ArrayList arrayListB = B(arguments != null ? arguments.getString(f3604h) : null);
        if (arrayListB.isEmpty()) {
            e0.w.c(-1, e0.m.h(new byte[]{-64, 14, -88, -41, -17, -57, -91, -70, -57, 12, -71, -29, -10, -51, -71, -85}, new byte[]{-127, 126, -40, -124, -101, -88, -41, -33})).execute(new q(this, 0));
            return viewInflate;
        }
        D(arrayListB);
        return viewInflate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        if (this.e == null || this.f3608b.isEmpty()) {
            return;
        }
        C();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        Display defaultDisplay = ((WindowManager) requireContext().getSystemService(e0.m.h(new byte[]{-110, -65, 54, 20, -122, 65}, new byte[]{-27, -42, 88, 112, -23, 54, 114, 39}))).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        int i9 = (int) (((double) point.x) * 0.47d);
        int i10 = (int) (((double) point.y) * 0.75d);
        LinearLayout$LayoutParams linearLayout$LayoutParams = (LinearLayout$LayoutParams) this.d.getLayoutParams();
        linearLayout$LayoutParams.width = i9;
        linearLayout$LayoutParams.height = i10;
        linearLayout$LayoutParams.gravity = 1;
        this.d.setLayoutParams(linearLayout$LayoutParams);
        this.d.post(new i7.f(this, this.d.getContext().getResources().getDisplayMetrics().density, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void u(ArrayList arrayList, PackageManager packageManager) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList.get(i9);
            i9++;
            u uVar = (u) obj;
            String strA = A(uVar.f3594b);
            String strA2 = A(uVar.f3593a);
            if (!strA.isEmpty()) {
                hashSet.add(strA);
            }
            if (!strA2.isEmpty()) {
                hashSet2.add(strA2);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Intent intent = new Intent(e0.m.h(new byte[]{124, -32, -67, 111, -40, 35, 50, -69, 116, -32, -83, 120, -39, 62, 120, -12, 126, -6, -80, 114, -39, 100, 27, -44, 84, -64}, new byte[]{29, -114, -39, 29, -73, 74, 86, -107}), (Uri) null);
        intent.addCategory(e0.m.h(new byte[]{119, -20, -76, 102, -95, -74, 49, -24, ByteCompanionObject.MAX_VALUE, -20, -92, 113, -96, -85, 123, -91, 119, -10, -75, 115, -95, -83, 44, -24, 90, -61, -123, 90, -115, -105, 16, -108}, new byte[]{22, -126, -48, 20, -50, -33, 85, -58}));
        for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent, 0)) {
            ApplicationInfo applicationInfo = resolveInfo.activityInfo.applicationInfo;
            String str = applicationInfo.packageName;
            String strA3 = A(str);
            String string = resolveInfo.loadLabel(packageManager).toString();
            String strA4 = A(string);
            if (!requireContext().getPackageName().equals(str) && (applicationInfo.flags & 1) == 0 && !hashSet.contains(strA3) && !hashSet2.contains(strA4)) {
                hashSet.add(strA3);
                hashSet2.add(strA4);
                u uVar2 = new u();
                uVar2.f3593a = string;
                uVar2.f3594b = str;
                uVar2.f3598i = false;
                y(uVar2, packageManager);
                arrayList2.add(uVar2);
            }
        }
        arrayList2.sort(new androidx.constraintlayout.core.utils.a(8));
        arrayList.addAll(arrayList2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void v(String str) {
        String lowerCase = str == null ? "" : str.trim().toLowerCase(Locale.ROOT);
        ArrayList arrayList = this.c;
        arrayList.clear();
        boolean zIsEmpty = lowerCase.isEmpty();
        ArrayList arrayList2 = this.f3608b;
        if (zIsEmpty) {
            arrayList.addAll(arrayList2);
        } else {
            int size = arrayList2.size();
            int i9 = 0;
            while (i9 < size) {
                Object obj = arrayList2.get(i9);
                i9++;
                u uVar = (u) obj;
                String str2 = uVar.f3593a;
                String lowerCase2 = str2 == null ? "" : str2.toLowerCase(Locale.ROOT);
                String str3 = uVar.f3594b;
                String lowerCase3 = str3 == null ? "" : str3.toLowerCase(Locale.ROOT);
                if (lowerCase2.contains(lowerCase) || lowerCase3.contains(lowerCase)) {
                    arrayList.add(uVar);
                }
            }
        }
        this.e.notifyDataSetChanged();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void y(u uVar, PackageManager packageManager) {
        uVar.f3595f = false;
        String str = "";
        uVar.f3596g = "";
        uVar.f3597h = ContextCompat.getDrawable(requireContext(), 2131165454);
        if (TextUtils.isEmpty(uVar.f3594b)) {
            return;
        }
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(uVar.f3594b, 0);
            uVar.f3595f = true;
            String str2 = packageInfo.versionName;
            if (str2 != null) {
                str = str2;
            }
            uVar.f3596g = str;
            uVar.f3597h = packageManager.getApplicationIcon(packageInfo.applicationInfo);
        } catch (Exception unused) {
        }
    }
}
