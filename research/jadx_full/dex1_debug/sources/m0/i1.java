package m0;

import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.LinearLayout$LayoutParams;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Locale;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import okhttp3.Request;
import okhttp3.Request$Builder;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class i1 extends l0.b {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f3465i = e0.m.h(new byte[]{37, -122, -126, -107, -48, -122, -119, 92, 23, -109, -107, -116, -45, -68, -100, 65, 36, -109, -119, -114}, new byte[]{72, -25, -20, -4, -74, -29, -6, 40});

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f3466j = e0.m.h(new byte[]{95, 113, 1, -96, 70, -54, -21, 38, 109, 100, 22, -71, 69, -36, -57, 52, 91, 124, 27, -84, 82}, new byte[]{50, 16, 111, -55, 32, -81, -104, 82});

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f3467k = e0.m.h(new byte[]{-52, 18, -36, 119, 89, 99, 116, 73, -2, 26, -36, 109, 75, 103, 107, 81, -2, 7, -45, 108, 88, 99, 115}, new byte[]{-95, 115, -78, 30, 63, 6, 7, Base64.padSymbol});

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String f3468l = e0.m.h(new byte[]{-105, -122, 22, 123, 57}, new byte[]{-11, -22, 119, 24, 82, -18, 15, -80});

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final String f3469m = e0.m.h(new byte[]{91, -72, 84, 88, -33}, new byte[]{57, -41, 53, 42, -69, -79, 74, -48});

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final String f3470n = e0.m.h(new byte[]{30, -8, -95}, new byte[]{118, -115, -59, -115, 26, 102, -10, -118});

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final String f3471o = e0.m.h(new byte[]{26, -88, -45, 104, 65, -61, 54, -8}, new byte[]{118, -55, -90, 6, 34, -85, 83, -118});

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public RecyclerView f3472b;
    public TextView d;
    public final Handler c = new Handler(Looper.getMainLooper());
    public final ArrayList e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final HashSet f3473f = new HashSet();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f3474g = "";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f3475h = e0.m.h(new byte[]{124, 67, 64, -10, -88, -53, -94, -48, 102, 86, 67, -88, -68, -104, -7, -105, 97, 85, 65, -11, -66, -125, -18, -112, 122, 67, 81, -24, -81, -33, -18, -112, 121, 24, 126, -59, -70, -125, -39, -112, 123, 91, 71, -87, -72, -98, -1, -102, 75, 90, 85, -24, -78, -105, -24, -116, 96, 24, 70, -29, -67, -126, -94, -105, 113, 86, 80, -11, -12, -100, -20, -116, 96, 82, 70, -87, -74, -112, -29, -106, 114, 82, 71, -14, -11, -101, -2, -112, 122}, new byte[]{20, 55, 52, -122, -37, -15, -115, -1});

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:21:0x00ce  */
    public static boolean t(i1 i1Var, Context context, String str, String str2, File file) {
        b1.m mVar;
        String str3 = f3471o;
        if (str3.equals(str)) {
            mVar = new b1.m(context, e0.m.h(new byte[]{-124, 35, -49, 39, 106, 0, 60, 26, -93, 63, -5, 54, 68, 49, 59, 27, -86, 50, -3, 48}, new byte[]{-55, 90, -104, 66, 8, 80, 78, 117}), e0.m.h(new byte[]{22, 126, -50, 38, 70, -118, -36, 5, 5, 126, -54, 24, 95, -121, -35, 52, 17, 115, -51, 53}, new byte[]{114, 27, -88, 71, 51, -26, -88, 90}));
        } else {
            int iHashCode = str2.hashCode();
            if (iHashCode != 103671) {
                if (iHashCode != 93818879) {
                    if (iHashCode == 93908710 && str2.equals(f3469m)) {
                        mVar = new b1.m(context, e0.m.h(new byte[]{93, -105, -57, -101, 25, ByteCompanionObject.MIN_VALUE, -94, -55, 122, -117, -13, -118, 57, -65, -79, -44, 116}, new byte[]{16, -18, -112, -2, 123, -48, -48, -90}), e0.m.h(new byte[]{-119, -90, -85, 67, -125, -118, 81, 0, -101, -73, -106, 111, -111, -113, 80, 4, -118, -90, -83}, new byte[]{-2, -61, -55, 28, -12, -29, 53, 103}));
                    } else {
                        mVar = null;
                    }
                } else if (str2.equals(f3468l)) {
                    mVar = new b1.m(context, e0.m.h(new byte[]{96, 43, 50, 80, -124, 0, 2, 35, 71, 55, 6, 65, -92, 60, 17, 47, 70}, new byte[]{45, 82, 101, 53, -26, 80, 112, 76}), e0.m.h(new byte[]{6, 83, 105, 107, 13, -22, 73, -114, 33, 79, 93, 122, 45, -42, 90, -126, 32, 117, 109, 107, 27, -50, 82, -113, 44, 89, 97, 69, 10, -61}, new byte[]{75, 42, 62, 14, 111, -70, 59, -31}));
                } else {
                    mVar = null;
                }
            } else if (str2.equals(f3470n)) {
                mVar = new b1.m(context, e0.m.h(new byte[]{108, -13, -53, 109, -9, 126, -84, 76, 75, -17, -1, 124, -35, 123, -102}, new byte[]{33, -118, -100, 8, -107, 46, -34, 35}), e0.m.h(new byte[]{126, -62, 29, -92, -39, -121, 30, 5, 89, -34, 41, -75, -13, -126, 40, 53, 96, -34, 62, -75, -46, -71, 11, 25, 108, -16, 47, -72}, new byte[]{51, -69, 74, -63, -69, -41, 108, 106}));
            } else {
                mVar = null;
            }
        }
        if (mVar == null) {
            return false;
        }
        try {
            String strR = b1.u.r(file, (File) mVar.f270f, true);
            if (str3.equals(str)) {
                h0.b.o().saveString(e0.m.h(new byte[]{-1, -114, -45, -114, -48, 85, 118, 108, -40, -110, -25, -97, -2, 100, 113, 109, -47, -97, -31, -103, -19, 86, 97, 119, -58, -98, -22, -116, -63, 90, 79, 102, -53}, new byte[]{-78, -9, -124, -21, -78, 5, 4, 3}), strR);
            }
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void u(i1 i1Var, String str, RecyclerView recyclerView) {
        try {
            JSONArray jSONArray = new JSONObject(str).getJSONArray(e0.m.h(new byte[]{-112, 20, 81, -120, ByteCompanionObject.MIN_VALUE, 35, 28, -92}, new byte[]{-32, 102, 62, -30, -27, 64, 104, -41}));
            ArrayList arrayList = new ArrayList();
            for (int i9 = 0; i9 < jSONArray.length(); i9++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i9);
                if (jSONObject.optBoolean(e0.m.h(new byte[]{-37, 108, -73, 72, 11, -86}, new byte[]{-70, 15, -61, 33, 125, -49, 26, -103}), true)) {
                    ArrayList arrayList2 = new ArrayList();
                    JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(e0.m.h(new byte[]{-36, -83, -114, -6, 22}, new byte[]{-88, -44, -2, -97, 101, -122, 2, -94}));
                    if (jSONArrayOptJSONArray != null) {
                        for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                            String strOptString = jSONArrayOptJSONArray.optString(i10);
                            if (strOptString != null && !strOptString.trim().isEmpty()) {
                                arrayList2.add(strOptString.trim());
                            }
                        }
                    }
                    if (arrayList2.isEmpty()) {
                        arrayList2.add(e0.m.h(new byte[]{-23, -109, -101, -75, 15, Base64.padSymbol, 26}, new byte[]{-100, -3, -16, -37, 96, 74, 116, 49}));
                    }
                    if (i1Var.f3473f.isEmpty() || i1Var.y(arrayList2) != null) {
                        h1 h1Var = new h1();
                        h1Var.f3443b = jSONObject.optString(e0.m.h(new byte[]{-111, 104, -42, -9, -64, 66, 11, -118, -100, 98, -53}, new byte[]{-11, 13, -91, -108, -78, 43, 123, -2}));
                        h1Var.f3442a = jSONObject.optBoolean(e0.m.h(new byte[]{28, 96, 2, 44, 21, -13}, new byte[]{125, 3, 118, 69, 99, -106, -19, -8}));
                        h1Var.e = jSONObject.optString(e0.m.h(new byte[]{54, -39, -36, -30, 20, 95}, new byte[]{87, -84, -88, -118, 123, 45, 19, -28}));
                        h1Var.f3444f = jSONObject.optString(e0.m.h(new byte[]{76, 25, 56, -33, -36, -80, -105}, new byte[]{58, 124, 74, -84, -75, -33, -7, -30}));
                        h1Var.f3446h = jSONObject.optString(e0.m.h(new byte[]{-73, -121, -93}, new byte[]{-51, -18, -45, 35, 13, -108, 96, 76}));
                        h1Var.c = jSONObject.optString(e0.m.h(new byte[]{66, 73, 39, -85}, new byte[]{44, 40, 74, -50, 123, 42, 75, -71}));
                        h1Var.f3445g = jSONObject.optString(e0.m.h(new byte[]{-67, -53, -21, 113, 63, -119, -92}, new byte[]{-51, -71, -114, 7, 86, -20, -45, -42}));
                        String strY = i1Var.y(arrayList2);
                        h1Var.d = strY;
                        if (strY == null) {
                            h1Var.d = (String) arrayList2.get(0);
                        }
                        if (h1Var.f3442a) {
                            arrayList.add(h1Var);
                        }
                    }
                }
            }
            i1Var.z(recyclerView, new e0.j2(18, i1Var, arrayList));
        } catch (Exception e) {
            Log.e(e0.m.h(new byte[]{-115, 94, 100, 74, 62, 75, -61, 55}, new byte[]{-64, 63, 10, 35, 88, 46, -80, 67}), e0.m.h(new byte[]{-1, 32, -49, -95, 45, 71, -116, -7, Base64.padSymbol, -93, 56, 63, -68, 71, -120, -8, 5}, new byte[]{-75, 115, ByteCompanionObject.MIN_VALUE, -17, 13, -105, 50, 40}), e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void v(i1 i1Var, int i9) {
        RecyclerView recyclerView = i1Var.f3472b;
        if (recyclerView == null || recyclerView.getAdapter() == null || i9 < 0 || i9 >= i1Var.f3472b.getAdapter().getItemCount()) {
            return;
        }
        i1Var.f3472b.getAdapter().notifyItemChanged(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Bundle x(String... strArr) {
        Bundle bundle = new Bundle();
        ArrayList<String> arrayList = new ArrayList<>();
        for (String str : strArr) {
            if (str != null && !str.trim().isEmpty()) {
                arrayList.add(str.trim());
            }
        }
        if (!arrayList.isEmpty()) {
            bundle.putStringArrayList(f3466j, arrayList);
        }
        return bundle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i9 = 0;
        View viewInflate = layoutInflater.inflate(2131492957, viewGroup, false);
        this.f3472b = (RecyclerView) viewInflate.findViewById(2131297259);
        this.d = (TextView) viewInflate.findViewById(2131296957);
        this.f3472b.setLayoutManager(new LinearLayoutManager(requireContext()));
        this.f3473f.clear();
        this.f3474g = "";
        Bundle arguments = getArguments();
        if (arguments != null) {
            String string = arguments.getString(f3467k);
            this.f3474g = string != null ? string.trim().toLowerCase(Locale.US) : "";
            w(arguments.getString(f3465i));
            Object obj = arguments.get(f3466j);
            if (obj instanceof String[]) {
                String[] strArr = (String[]) obj;
                int length = strArr.length;
                while (i9 < length) {
                    w(strArr[i9]);
                    i9++;
                }
            } else if (obj instanceof ArrayList) {
                ArrayList arrayList = (ArrayList) obj;
                int size = arrayList.size();
                while (i9 < size) {
                    Object obj2 = arrayList.get(i9);
                    i9++;
                    if (obj2 instanceof String) {
                        w((String) obj2);
                    }
                }
            } else if (obj instanceof String) {
                w((String) obj);
            }
        }
        this.d.setText(f3471o.equals(this.f3474g) ? e0.m.h(new byte[]{51, 52, -69, 114, -50, -122, -16, 58, 51, 21, -69, 124, -49, -73, 0, 91, 97, 126, -34, 18, -93, 36, -16, 49, 51, 30, -70, 65, -49, -71, -15, 13, 51, 27, -70, 66, -49, -76}, new byte[]{-29, -82, 107, -62, 31, 4, 32, -118}) : e0.m.h(new byte[]{84, -38, 96, -102, -121, -61, 94, -96, 84, -5, 96, -108, -122, -14, -82, -64, 58, -111, 52, -6, -24, -112, 14, -64, 56, -112, 11, -6, -29, -111, 51, -64, 60, -111, 63}, new byte[]{-124, 64, -80, 42, 86, 65, -114, 16}));
        RecyclerView recyclerView = this.f3472b;
        Context applicationContext = requireContext().getApplicationContext();
        String string2 = getString(2131952872);
        Request requestBuild = new Request$Builder().url(this.f3475h).build();
        h0.b.a();
        h0.b.m().newCall(requestBuild).enqueue(new b1.m(this, recyclerView, applicationContext, string2));
        return viewInflate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this.f3472b = null;
        this.d = null;
        super.onDestroyView();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        Display defaultDisplay = ((WindowManager) requireContext().getSystemService(e0.m.h(new byte[]{110, -63, 54, -121, ByteCompanionObject.MIN_VALUE, 67}, new byte[]{25, -88, 88, -29, -17, 52, 111, 41}))).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        int i9 = (int) (((double) point.x) * 0.6d);
        LinearLayout$LayoutParams linearLayout$LayoutParams = (LinearLayout$LayoutParams) this.f3472b.getLayoutParams();
        linearLayout$LayoutParams.width = i9;
        linearLayout$LayoutParams.height = -2;
        Context contextRequireContext = requireContext();
        float f8 = contextRequireContext.getResources().getDisplayMetrics().density;
        this.f3472b.setLayoutManager(new GridLayoutManager(contextRequireContext, 3));
        this.f3472b.setLayoutParams(linearLayout$LayoutParams);
        RecyclerView recyclerView = this.f3472b;
        recyclerView.post(new a1(this, recyclerView, f8, contextRequireContext));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void w(String str) {
        String lowerCase = str == null ? "" : str.trim().toLowerCase(Locale.US);
        if (lowerCase.isEmpty()) {
            return;
        }
        this.f3473f.add(lowerCase);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String y(ArrayList arrayList) {
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList.get(i9);
            i9++;
            String str = (String) obj;
            if (this.f3473f.contains(str == null ? "" : str.trim().toLowerCase(Locale.US))) {
                return str;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void z(RecyclerView recyclerView, Runnable runnable) {
        this.c.post(new b1.n(this, recyclerView, runnable, 8));
    }
}
