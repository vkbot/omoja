package f1;

import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.GradientDrawable$Orientation;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.fragment.app.Fragment;
import b1.n;
import com.bumptech.glide.m;
import com.google.android.material.button.MaterialButton;
import e0.n0;
import java.util.HashMap;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e extends Fragment {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f2162q = Color.rgb(9, 14, 23);
    public static final int r = Color.rgb(20, 29, 43);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f2163s = Color.rgb(42, 57, 77);
    public static final int t = Color.rgb(238, 246, 255);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f2164u = Color.rgb(139, 157, 180);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int f2165v = Color.rgb(25, 165, 255);
    public static final int w = Color.rgb(39, 51, 68);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int f2166x = Color.rgb(255, 111, 61);

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int f2167y = Color.rgb(62, 193, 255);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public TextView f2171h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public TextView f2172i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public TextView f2173j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public TextView f2174k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public SeekBar f2175l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f2177n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f2178o;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f2168b = new Handler(Looper.getMainLooper());
    public final ExecutorService c = Executors.newSingleThreadExecutor();
    public final HashMap d = new HashMap();
    public final HashMap e = new HashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final HashMap f2169f = new HashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final HashMap f2170g = new HashMap();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public JSONObject f2176m = new JSONObject();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final m f2179p = new m(4, this);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int A() {
        return (D() || E()) ? 7 : 10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int B() {
        return (D() || E()) ? 0 : 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean C() {
        String strLoadString = h0.b.o().loadString(e0.m.h(new byte[]{-30, 6, -27, -76, -122, -18, 45, 24, -51, 34}, new byte[]{-95, 71, -73, -28, -12, -127, 75, 113}), "");
        return n0.c.t.name().equals(strLoadString) || n0.c.F.name().equals(strLoadString) || n0.c.f3788u.name().equals(strLoadString) || n0.c.r.name().equals(strLoadString) || n0.c.D.name().equals(strLoadString) || n0.c.f3781l.name().equals(strLoadString) || n0.c.f3782m.name().equals(strLoadString) || n0.c.f3783n.name().equals(strLoadString) || n0.c.f3784o.name().equals(strLoadString) || n0.c.f3785p.name().equals(strLoadString) || n0.c.f3786q.name().equals(strLoadString);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean D() {
        String strLoadString = h0.b.o().loadString(e0.m.h(new byte[]{11, -24, 43, -37, -118, -23, 36, -7, 36, -52}, new byte[]{72, -87, 121, -117, -8, -122, 66, -112}), "");
        return n0.c.t.name().equals(strLoadString) || n0.c.F.name().equals(strLoadString) || n0.c.f3788u.name().equals(strLoadString);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean E() {
        return n0.c.r.name().equals(h0.b.o().loadString(e0.m.h(new byte[]{67, -94, 89, -2, 118, -33, -48, -67, 108, -122}, new byte[]{0, -29, 11, -82, 4, -80, -74, -44}), ""));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static LinearLayout$LayoutParams G() {
        return new LinearLayout$LayoutParams(-1, -2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String M(int i9, String str) {
        int iMax = Math.max(0, Math.min(3, i9));
        StringBuilder sb = new StringBuilder(str);
        sb.append('\n');
        int i10 = 1;
        while (i10 <= 3) {
            if (i10 > 1) {
                sb.append("  ");
            }
            sb.append(i10 <= iMax ? (char) 9679 : (char) 9675);
            i10++;
        }
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static LinearLayout$LayoutParams V(int i9) {
        return new LinearLayout$LayoutParams(0, i9, 1.0f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static LinearLayout$LayoutParams W(int i9, int i10) {
        return new LinearLayout$LayoutParams(i10, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static JSONObject v(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            try {
                jSONObject = new JSONObject();
            } catch (Exception unused) {
                return null;
            }
        }
        jSONObject.put(e0.m.h(new byte[]{115, 97, -40, 89, -10, -117, 34}, new byte[]{16, 14, -75, 52, -105, -27, 70, -58}), str);
        h0.b.a();
        return h0.b.d().c(jSONObject);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final TextView F(String str, int i9, int i10, boolean z8) {
        TextView textView = new TextView(requireContext());
        textView.setText(str);
        textView.setTextSize(i9);
        textView.setTextColor(i10);
        if (z8) {
            textView.setTypeface(Typeface.DEFAULT, 1);
        }
        return textView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final TextView H() {
        TextView textViewF = F(e0.m.h(new byte[]{-124, -98, -84, -76, 22, -96, -52, -73, -124, -76, -83, -115, -21, -56, -90, -37, -22, -44, -63, -34, 68, -55, -100, -37, -22, -44, -57, -34, 74, 56, -52, -74, -124, -79, -84, -69, 22, -90, -51, -118, -123, -122, -83, -116, 22, -89, -52, -66, -124, -71, 92, -33, 114, -56, -89, -38, -37, 36, -84, -67, 23, -109, -52, -70, -123, -124, -84, -65, 22, -91, -52, -74, -124, -70, -84, -68, 22, -90, 60, -37, -21, -43, -4, -33, 120, -55, -104, -37, -20, -44, -57, -34, 73}, new byte[]{84, 4, 124, 15, -58, 24, 28, 11}), 20, t, true);
        textViewF.setGravity(17);
        textViewF.setPadding(z(30), z(30), z(30), z(30));
        textViewF.setBackgroundColor(f2162q);
        return textViewF;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void I(JSONObject jSONObject, String str, int i9) {
        int iMax = Math.max(0, Math.min(3, jSONObject.optInt(str, 0)));
        this.f2169f.put(str, Integer.valueOf(iMax));
        J(iMax, i9, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void J(int i9, int i10, String str) {
        int iRgb;
        MaterialButton materialButton = (MaterialButton) this.f2170g.get(str);
        if (materialButton == null) {
            return;
        }
        materialButton.setText(M(i9, str.endsWith(e0.m.h(new byte[]{-25, 126, -54, -125}, new byte[]{-81, 27, -85, -9, -1, 126, -31, -51})) ? e0.m.h(new byte[]{-21, 53, -37, -64, -67, -70, 119, -121, -21, 29, -37, -62}, new byte[]{59, -88, 11, 112, 109, 9, -90, 7}) : e0.m.h(new byte[]{40, 83, -50, 2, 62, -17, 30, 37, 40, 121, -50, 12, 63, -35, 30, 33, 40, 121, -49, 56}, new byte[]{-8, -63, 30, -73, -18, 82, -49, -89})));
        materialButton.setTextColor(i9 > 0 ? i10 : Color.rgb(192, 207, 225));
        if (i9 > 0) {
            iRgb = i10 == f2166x ? Color.rgb(78, 43, 39) : Color.rgb(26, 61, 82);
        } else {
            iRgb = w;
        }
        materialButton.setBackgroundTintList(ColorStateList.valueOf(iRgb));
        if (i9 <= 0) {
            i10 = f2163s;
        }
        materialButton.setStrokeColor(ColorStateList.valueOf(i10));
        materialButton.setStrokeWidth(z(i9 > 0 ? 2 : 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void K(int i9, float f8) {
        TextView textView = i9 == 2 ? this.f2173j : this.f2172i;
        if (textView != null) {
            textView.setText(String.format(Locale.US, e0.m.h(new byte[]{-27, 22, 47, -79, 30, 41}, new byte[]{-64, 56, 30, -41, -36, -103, 41, -25}), Float.valueOf(f8)));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final LinearLayout L(int i9) {
        LinearLayout linearLayout = new LinearLayout(requireContext());
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        linearLayout.setShowDividers(2);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(0);
        gradientDrawable.setSize(z(i9), z(i9));
        linearLayout.setDividerDrawable(gradientDrawable);
        return linearLayout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final LinearLayout N(String str, int i9, String str2, String str3) {
        LinearLayout linearLayoutL = L(10);
        linearLayoutL.addView(F(str, 16, t, true), V(z(64)));
        String strM = M(0, e0.m.h(new byte[]{98, 111, -49, -6, 22, -66, -85, 48, 98, 71, -49, -8}, new byte[]{-78, -14, 31, 74, -58, 13, 122, -80}));
        a aVar = new a(this, i9, str2, 0);
        MaterialButton materialButtonU = u(strM);
        materialButtonU.setOnClickListener(new c(aVar, 0));
        materialButtonU.setTextSize(13.0f);
        materialButtonU.setGravity(17);
        HashMap map = this.f2170g;
        map.put(str2, materialButtonU);
        linearLayoutL.addView(materialButtonU, new LinearLayout$LayoutParams(z(138), z(64)));
        String strM2 = M(0, e0.m.h(new byte[]{-27, -72, 57, -19, -73, 43, -23, 58, -27, -110, 57, -29, -74, 25, -23, 62, -27, -110, 56, -41}, new byte[]{53, 42, -23, 88, 103, -106, 56, -72}));
        a aVar2 = new a(this, i9, str3, 1);
        MaterialButton materialButtonU2 = u(strM2);
        materialButtonU2.setOnClickListener(new c(aVar2, 0));
        materialButtonU2.setTextSize(13.0f);
        materialButtonU2.setGravity(17);
        map.put(str3, materialButtonU2);
        linearLayoutL.addView(materialButtonU2, new LinearLayout$LayoutParams(z(158), z(64)));
        return linearLayoutL;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void O(Object obj, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(e0.m.h(new byte[]{62, -91, -81, -3, -72}, new byte[]{72, -60, -61, -120, -35, -106, -71, -26}), obj);
        } catch (Exception unused) {
        }
        this.c.execute(new n(this, str, jSONObject, 5));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void P(String str, boolean z8) {
        MaterialButton materialButton = (MaterialButton) this.d.get(str);
        if (materialButton != null) {
            S(materialButton, z8, f2165v);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void Q(boolean z8) {
        int i9;
        int i10;
        int i11;
        TextView textView = this.f2171h;
        if (textView == null) {
            return;
        }
        textView.setText(e0.m.h(new byte[]{126, 6, -43}, new byte[]{-100, -111, 90, -29, 4, -69, -4, -49}));
        this.f2171h.setContentDescription(z8 ? e0.m.h(new byte[]{-113, 101, -90, 114, -98, -25, -57, 50, -113, 73, -90, 126, -97, -44, -57, 52, -113, 78, -89, 76, 111, -75, -88, 92, -31, 37, -62, 16, -11, -75, -84, 93, -47, 36, -15, 17, -34, -75, -86}, new byte[]{95, -11, 118, -64, 79, 101, 23, -116}) : e0.m.h(new byte[]{-112, 105, -111, 125, 121, 64, -61, -98, -12, 36, -15, 24, 21, 18, 94, -97, -53, 37, -60, -24, 120, 114, 51, -4, -111, 118, -111, 118, 120, 126, 51, -16, -112, 69, -111, 112, 120, 121, 50, -63}, new byte[]{64, -12, 65, -56, -88, -62, -29, 78}));
        TextView textView2 = this.f2171h;
        if (z8) {
            i9 = 220;
            i10 = 155;
            i11 = 70;
        } else {
            i9 = 132;
            i10 = 107;
            i11 = 255;
        }
        textView2.setTextColor(Color.rgb(i11, i9, i10));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void R(LinearLayout linearLayout, int i9) {
        linearLayout.addView(new View(requireContext()), new LinearLayout$LayoutParams(1, z(i9)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void S(MaterialButton materialButton, boolean z8, int i9) {
        materialButton.setBackgroundTintList(ColorStateList.valueOf(z8 ? i9 : w));
        materialButton.setTextColor(z8 ? -1 : Color.rgb(192, 207, 225));
        if (!z8) {
            i9 = f2163s;
        }
        materialButton.setStrokeColor(ColorStateList.valueOf(i9));
        materialButton.setStrokeWidth(z(1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final LinearLayout T(int i9, String str, boolean z8) {
        LinearLayout linearLayoutW = w();
        TextView textViewF = F(e0.m.h(new byte[]{54, 46, ByteCompanionObject.MAX_VALUE, 87, -58, 105}, new byte[]{4, 28, 81, 103, 4, -39, -65, 92}), 42, z8 ? f2167y : Color.rgb(159, 205, 255), true);
        textViewF.setGravity(17);
        if (z8) {
            this.f2172i = textViewF;
        } else {
            this.f2173j = textViewF;
        }
        TextView textViewF2 = F(str, 12, f2164u, true);
        textViewF2.setGravity(17);
        linearLayoutW.addView(textViewF2, G());
        linearLayoutW.addView(textViewF, new LinearLayout$LayoutParams(-1, z(64)));
        LinearLayout linearLayoutL = L(10);
        String strH = e0.m.h(new byte[]{84, 67, 111}, new byte[]{-74, -53, -3, 98, -105, -45, 30, 3});
        b bVar = new b(this, i9, 0);
        MaterialButton materialButtonU = u(strH);
        materialButtonU.setOnClickListener(new c(bVar, 0));
        linearLayoutL.addView(materialButtonU, V(z(52)));
        String strH2 = e0.m.h(new byte[]{-12}, new byte[]{-33, -70, 48, 14, -22, -53, 59, -80});
        b bVar2 = new b(this, i9, 1);
        MaterialButton materialButtonU2 = u(strH2);
        materialButtonU2.setOnClickListener(new c(bVar2, 0));
        linearLayoutL.addView(materialButtonU2, V(z(52)));
        linearLayoutW.addView(linearLayoutL, G());
        return linearLayoutW;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final MaterialButton U(String str, String str2, String str3) {
        MaterialButton materialButtonU = u(str2);
        this.d.put(str, materialButtonU);
        materialButtonU.setOnClickListener(new n0(this, str3, str, 1));
        return materialButtonU;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (!C()) {
            return H();
        }
        ScrollView scrollView = new ScrollView(requireContext());
        scrollView.setFillViewport(true);
        scrollView.setBackgroundColor(f2162q);
        LinearLayout linearLayout = new LinearLayout(requireContext());
        linearLayout.setOrientation(1);
        linearLayout.setShowDividers(2);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(0);
        gradientDrawable.setSize(z(16), z(16));
        linearLayout.setDividerDrawable(gradientDrawable);
        linearLayout.setPadding(z(24), z(20), z(24), z(36));
        scrollView.addView(linearLayout, G());
        LinearLayout linearLayoutL = L(10);
        String strH = e0.m.h(new byte[]{-93, ByteCompanionObject.MAX_VALUE, 2}, new byte[]{65, -24, -115, -80, 109, 71, 117, 115});
        int i9 = f2164u;
        TextView textViewF = F(strH, 15, i9, false);
        this.f2171h = textViewF;
        textViewF.setGravity(8388627);
        this.f2171h.setContentDescription(e0.m.h(new byte[]{11, -61, -89, -79, 116, -72, -84, 51, 11, -25, -90, -127, 117, -117, -84, 60, 11, -31, -89, -73, 116, -71, 92, 89, 97, 124, -89, -65, 116, -66, -83, 11, 11, -30, -89, -77, 116, -78, -84, 56, 11, -28, -89, -76, 117, -126}, new byte[]{-37, 92, 119, 15, -92, 12, 124, -119}));
        linearLayoutL.addView(this.f2171h, new LinearLayout$LayoutParams(0, -2, 1.0f));
        MaterialButton materialButtonU = u(e0.m.h(new byte[]{-86, 41, 28}, new byte[]{72, -75, -119, -81, -88, -112, -39, 111}));
        materialButtonU.setTextSize(21.0f);
        materialButtonU.setContentDescription(e0.m.h(new byte[]{-59, -92, 44, -64, -29, 58, -35, -14, -60, -72, 45, -14, -30, 12, 44, -94, -81, -29, 71, -96, -117, 80, -80, -94, -91, -30, 126, 93, -29, 58, -36, -52, -59, -114, 45, -14, -30, 0, -36, -52, -59, -120, 45, -4}, new byte[]{21, 51, -4, 112, 51, ByteCompanionObject.MIN_VALUE, 12, 114}));
        materialButtonU.setOnClickListener(new androidx.navigation.c(13, this));
        linearLayoutL.addView(materialButtonU, W(z(42), z(48)));
        linearLayout.addView(linearLayoutL, new LinearLayout$LayoutParams(-1, z(42)));
        R(linearLayout, 8);
        LinearLayout linearLayoutL2 = L(14);
        linearLayoutL2.addView(T(1, e0.m.h(new byte[]{-59, 39, -120, -28, 11, 78, -54, -124, -59, 23, -120, -17, 11, 65, -54, -80}, new byte[]{21, -75, 88, 122, -37, -38, 26, 28}), true), new LinearLayout$LayoutParams(0, -2, 1.0f));
        linearLayoutL2.addView(T(2, e0.m.h(new byte[]{39, 57, -19, -29, 53, 9, -64, -6, 39, 54, -19, -27, 53, 48, -64, -5}, new byte[]{-9, -90, Base64.padSymbol, 115, -27, -88, 16, 91}), false), new LinearLayout$LayoutParams(0, -2, 1.0f));
        linearLayout.addView(linearLayoutL2, G());
        R(linearLayout, 14);
        LinearLayout linearLayoutW = w();
        linearLayoutW.addView(F(e0.m.h(new byte[]{5, -22, -61, 96, -14, 6, -76, -63, 5, -37, -61, 96, -14, 50, 68, -77, 117, -85, -122, 27, -76, 119, -4, -77, 73, -85, -72}, new byte[]{-43, 123, 19, -53, 34, -89, 100, 99}), 13, i9, true));
        LinearLayout linearLayoutL3 = L(8);
        linearLayoutL3.addView(U(e0.m.h(new byte[]{-103, 94, -81, 30, 38}, new byte[]{-23, 49, -40, 123, 84, -94, -27, 2}), e0.m.h(new byte[]{-105, 116, 107, 96, -60, -110, 64, 29, -105, 86, 107, 96, -59, -91}, new byte[]{71, -21, -69, -40, 21, 16, -112, -83}), e0.m.h(new byte[]{ByteCompanionObject.MAX_VALUE, 105, -6, -42, 56, -124, -47, -73, 111, 96, -25, -28, 41, -97, -61, -115, 110}, new byte[]{28, 5, -109, -69, 89, -16, -76, -24})), V(z(58)));
        linearLayoutL3.addView(U(e0.m.h(new byte[]{-5, -11}, new byte[]{-102, -106, 33, 125, 45, -26, -117, 80}), e0.m.h(new byte[]{-100, -67, 26}, new byte[]{-35, -110, 89, 124, 22, 20, -81, 40}), e0.m.h(new byte[]{-90, -11, -50, -55, -40, -9, 68, 26, -74, -4, -45, -5, -40, -32}, new byte[]{-59, -103, -89, -92, -71, -125, 33, 69})), V(z(58)));
        linearLayoutL3.addView(U(e0.m.h(new byte[]{-83, 0, 2, -26}, new byte[]{-52, 117, 118, -119, 65, -54, 80, -84}), e0.m.h(new byte[]{-37, -113, 11, -34}, new byte[]{-102, -38, 95, -111, 18, 66, 40, 31}), e0.m.h(new byte[]{16, 85, -8, 14, 36, -91, 73, 125, 0, 92, -27, 60, 36, -92, 88, 77}, new byte[]{115, 57, -111, 99, 69, -47, 44, 34})), V(z(58)));
        linearLayoutL3.addView(U(e0.m.h(new byte[]{99, -60, -100, 105}, new byte[]{16, -67, -14, 10, -38, -86, -43, -1}), e0.m.h(new byte[]{49, -47, -117, -117}, new byte[]{98, -120, -59, -56, -69, -106, -53, -67}), e0.m.h(new byte[]{-103, 75, 108, 19, 66, 94, 5, -121, -119, 66, 113, 33, 80, 83, 14, -69}, new byte[]{-6, 39, 5, 126, 35, 42, 96, -40})), V(z(58)));
        linearLayoutW.addView(linearLayoutL3, G());
        R(linearLayoutW, 8);
        LinearLayout linearLayoutL4 = L(8);
        linearLayoutL4.addView(U(e0.m.h(new byte[]{33, -98, 78, 16, 75, -85, -82, 86, 50, -113, 68, 22, 87}, new byte[]{83, -5, 45, 121, 57, -56, -37, 58}), e0.m.h(new byte[]{-87, 77, 53, -42, 72, -39, 73, -111, -88, 109, 53, -39, 72, -36, 73, -110, -88, 98, 52, -27, 73, -25, 72, -90}, new byte[]{121, -19, -27, 99, -103, 95, -103, 41}), e0.m.h(new byte[]{-39, -3, 86, -59, 75, 81, 6, 126, -55, -12, 75, -9, 88, 64, 0, 72, -56, -14, 74, -60, 75, 81, 10, 78, -44}, new byte[]{-70, -111, 63, -88, 42, 37, 99, 33})), V(z(58)));
        linearLayoutL4.addView(U(e0.m.h(new byte[]{65, -110, 0, -110, 28, 110, 5, 39, 85, -113, 28, -120}, new byte[]{39, -32, 111, -4, 104, 42, 96, 65}), e0.m.h(new byte[]{-95, -119, Base64.padSymbol, -65, 10, -2, -48, -92, 60, 125, -75, 37, 11, -60, -47, -104}, new byte[]{-20, -56, 101, -97, -37, ByteCompanionObject.MAX_VALUE, 1, 38}), e0.m.h(new byte[]{75, 49, 5, 58, -31, 87, 107, -40, 91, 56, 24, 8, -26, 81, 97, -23, 92, 2, 8, 50, -26, 81, 97, -12, 92}, new byte[]{40, 93, 108, 87, ByteCompanionObject.MIN_VALUE, 35, 14, -121})), V(z(58)));
        linearLayoutL4.addView(U(e0.m.h(new byte[]{-72, -66, -26, -49, 47, 83, -66, 73, -91, -88, -13}, new byte[]{-54, -37, -121, -67, 107, 54, -40, 59}), e0.m.h(new byte[]{43, 47, 28, 75, -65, 36, 53, 125, 43, 13, 28, 78, 79, 65, 100, 17, 121, 104, 121, 43, -43, 64, 94, 16, 69}, new byte[]{-5, -72, -52, -5, 111, -112, -27, -64}), e0.m.h(new byte[]{-19, -91, -99, 102, 70, -72, 30, 3, -3, -84, ByteCompanionObject.MIN_VALUE, 84, 85, -87, 26, 46, -47, -83, -111, 109, 85, -93, 8, 40}, new byte[]{-114, -55, -12, 11, 39, -52, 123, 92})), V(z(58)));
        linearLayoutW.addView(linearLayoutL4, G());
        linearLayout.addView(linearLayoutW, G());
        R(linearLayout, 14);
        LinearLayout linearLayoutW2 = w();
        linearLayoutW2.addView(F(e0.m.h(new byte[]{79, -28, -105, -21, 107, -114, 35, 63, 79, -31, 103, -91, 41, -4, 109, 113, 8, -85, -45, -91, 24, -4, 86, 113, 15}, new byte[]{-97, 123, 71, 117, -69, 44, -13, -95}), 13, i9, true));
        LinearLayout linearLayoutL5 = L(8);
        linearLayoutL5.addView(F(e0.m.h(new byte[]{43, 108, 1, 54, 120, 107, 112, 65, 43, 115, 0, 13, 121, 87, 112, 77, -37, 29, 99, 92, 29, 5, 28, 16, 121, 29, 105, 92, 19, 4, 46, 16, 121, 29, 111, 93, 40, 5, 17}, new byte[]{-5, -51, -47, -116, -88, -43, -95, -63}), 16, t, false), new LinearLayout$LayoutParams(0, -2, 1.0f));
        TextView textViewF2 = F(D() ? e0.m.h(new byte[]{88, -101, 19, -27, 72}, new byte[]{104, -69, 60, -59, ByteCompanionObject.MAX_VALUE, -101, 72, -108}) : e0.m.h(new byte[]{6, -44, 123, Base64.padSymbol, 5, 45}, new byte[]{55, -12, 84, 29, 52, 29, -71, -118}), 18, f2167y, true);
        this.f2174k = textViewF2;
        linearLayoutL5.addView(textViewF2, new LinearLayout$LayoutParams(-2, -2));
        linearLayoutW2.addView(linearLayoutL5, G());
        SeekBar seekBar = new SeekBar(requireContext());
        this.f2175l = seekBar;
        seekBar.setMax(D() ? 7 : 9);
        this.f2175l.setProgressTintList(ColorStateList.valueOf(f2165v));
        this.f2175l.setThumbTintList(ColorStateList.valueOf(-1));
        this.f2175l.setOnSeekBarChangeListener(new d(this));
        linearLayoutW2.addView(this.f2175l, new LinearLayout$LayoutParams(-1, z(48)));
        linearLayoutW2.addView(F(e0.m.h(new byte[]{-51, -53, 125, -90, 17, -110, -48, -38, -51, -26, 125, -92, 17, -106, -47, -17, -51, -21, 125, -82, 17, -104}, new byte[]{29, 86, -83, 22, -63, 45, 1, 90}), 14, i9, false), G());
        HorizontalScrollView horizontalScrollView = new HorizontalScrollView(requireContext());
        horizontalScrollView.setHorizontalScrollBarEnabled(false);
        LinearLayout linearLayoutL6 = L(8);
        t(linearLayoutL6, e0.m.h(new byte[]{59, 82, 3, -40, 16, 66, 38, 32}, new byte[]{-21, -55, -45, 96, -63, -60, -10, -98}), 0);
        t(linearLayoutL6, e0.m.h(new byte[]{125, 77, 55, 11, 102, -109, 33, 89, -115, -3, -57, 99, 10, -59, 79, 55, 30, 6, 95}, new byte[]{-83, -42, -25, -77, -73, 21, -15, -25}), 1);
        t(linearLayoutL6, e0.m.h(new byte[]{-124, Base64.padSymbol, 35, 98, -63, 30, -95, 35}, new byte[]{84, -96, -13, -36, 17, -83, 113, -101}), 2);
        t(linearLayoutL6, e0.m.h(new byte[]{40, 8, -26, -33, 65, -98, 33, -19, -40, -66, 22, -80, 16, -4, 115, -123, 77, 69, -116, -79, 42, -3, 79}, new byte[]{-8, -107, 54, 97, -111, 45, -15, 85}), 3);
        t(linearLayoutL6, e0.m.h(new byte[]{-64, 81, -31, -107, 113, 41, -72, 105, -64, 75, -32, -87}, new byte[]{16, -16, 48, 23, -95, -100, 104, -45}), 4);
        if (!D()) {
            t(linearLayoutL6, e0.m.h(new byte[]{35, -62, -58, 117, 5, 57, 5, -22, -45, 114, 54, 28, 85, 110, 87, -124, 70, -119, -84, 29, 111, 111, 107}, new byte[]{-13, 89, 22, -51, -44, -65, -43, 84}), 5);
        }
        if (!D()) {
            t(linearLayoutL6, e0.m.h(new byte[]{126, 48, 80, 31, 55, -26, 105, -78, 28, 114, Base64.padSymbol, 78, 83, -90, -56, -77, 44, 114, 52}, new byte[]{-82, -94, -127, -98, -26, 119, 73, 98}), 6);
        }
        horizontalScrollView.addView(linearLayoutL6, new LinearLayout$LayoutParams(-2, -2));
        linearLayoutW2.addView(horizontalScrollView, new LinearLayout$LayoutParams(-1, z(64)));
        linearLayout.addView(linearLayoutW2, G());
        R(linearLayout, 14);
        LinearLayout linearLayoutW3 = w();
        linearLayoutW3.addView(F(e0.m.h(new byte[]{-99, 13, -22, 9, 114, -103, 85, -56, -99, 9, -22, 55, 114, -89}, new byte[]{77, -105, 58, -105, -94, 5, -123, 108}), 13, i9, true));
        LinearLayout linearLayoutL7 = L(8);
        linearLayoutL7.addView(U(e0.m.h(new byte[]{40, -11, 70, 29, 101, -75, -73, 7, Base64.padSymbol, -12, 97, 22, 112, -122}, new byte[]{78, -121, 41, 115, 17, -14, -37, 102}), e0.m.h(new byte[]{-78, -20, -92, -39, -60, -33, -116, -40, -77, -14, -92, -35, -60, -45, 124, -69, -39, -94, -54, -72, -91, -79, -30, -69, -48, -94, -54, -72, -89, -79, -30}, new byte[]{98, 114, 116, 104, 20, 97, 92, 107}), e0.m.h(new byte[]{41, 5, 90, -70, 119, 12, 76, -108, 57, 12, 71, -120, 112, 10, 70, -91, 62, 54, 84, -69, 119, 11, 90, -108, 34, 12, 82, -93}, new byte[]{74, 105, 51, -41, 22, 120, 41, -53})), V(z(58)));
        linearLayoutL7.addView(U(e0.m.h(new byte[]{69, -1, 103, 47, 120, -99, 45, -6, 97, -29, 103, 47, 102, -68, 38, -4, 66}, new byte[]{54, -117, 2, 74, 10, -12, 67, -99}), e0.m.h(new byte[]{115, -68, -36, 114, Base64.padSymbol, 108, -122, 40, 114, -94, -36, 118, Base64.padSymbol, 96, 118, 74, 35, -13, -113, 19, 86, 3, -39}, new byte[]{-93, 34, 12, -61, -19, -46, 86, -101}), e0.m.h(new byte[]{-55, -76, -59, -35, -97, -116, -8, 107, -39, -67, -40, -17, -115, -116, -8, 81, -40, -79, -62, -41, -95, -113, -11, 81, -49, -76, -13, -40, -101, -103, -23}, new byte[]{-86, -40, -84, -80, -2, -8, -99, 52})), V(z(58)));
        linearLayoutW3.addView(linearLayoutL7, G());
        R(linearLayoutW3, 12);
        linearLayoutW3.addView(N(e0.m.h(new byte[]{-120, 97, 73, -51, 88, -14, 94, Base64.padSymbol, -119, 113, 73, -58, 88, -3, 95, 9}, new byte[]{88, -13, -103, 115, -120, 70, -114, -123}), 1, e0.m.h(new byte[]{-71, -99, 29, 95, 8, 43, 62, 62, -68, -101, 60, 76, 12, 45}, new byte[]{-35, -17, 116, 41, 109, 89, 109, 91}), e0.m.h(new byte[]{5, 100, -52, 96, -107, 74, -98, 69, 0, 98, -13, 115, -98, 76}, new byte[]{97, 22, -91, 22, -16, 56, -51, 32})), G());
        R(linearLayoutW3, 8);
        linearLayoutW3.addView(N(e0.m.h(new byte[]{11, -102, -115, -81, 110, 119, -76, 64, 11, -75, -115, -87, 111, 78, -76, 65}, new byte[]{-37, 5, 93, 31, -65, -10, 101, -63}), 2, e0.m.h(new byte[]{97, 97, -74, 85, -31, -23, -75, 58, 99, 83, -96, 71, -16, -49, -73, 62, 101}, new byte[]{17, 0, -59, 38, -124, -121, -46, 95}), e0.m.h(new byte[]{62, -67, 107, 89, -93, 71, 47, -4, 60, -113, 125, 75, -78, ByteCompanionObject.MAX_VALUE, 45, -9, 58}, new byte[]{78, -36, 24, 42, -58, 41, 72, -103})), G());
        linearLayout.addView(linearLayoutW3, G());
        return scrollView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        this.c.shutdownNow();
        super.onDestroy();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        this.f2178o = true;
        this.f2168b.post(this.f2179p);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        this.f2178o = false;
        this.f2168b.removeCallbacksAndMessages(null);
        super.onStop();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void t(LinearLayout linearLayout, String str, int i9) {
        MaterialButton materialButtonU = u(str);
        this.e.put(Integer.valueOf(i9), materialButtonU);
        materialButtonU.setOnClickListener(new androidx.navigation.d(this, i9));
        linearLayout.addView(materialButtonU, new LinearLayout$LayoutParams(z(str.length() > 10 ? 142 : AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR), z(54)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final MaterialButton u(String str) {
        MaterialButton materialButton = new MaterialButton(requireContext(), null);
        materialButton.setText(str);
        materialButton.setAllCaps(false);
        materialButton.setTextSize(14.0f);
        materialButton.setCornerRadius(z(15));
        materialButton.setInsetTop(0);
        materialButton.setInsetBottom(0);
        S(materialButton, false, f2165v);
        return materialButton;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final LinearLayout w() {
        LinearLayout linearLayout = new LinearLayout(requireContext());
        linearLayout.setOrientation(1);
        linearLayout.setShowDividers(2);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(0);
        gradientDrawable.setSize(z(10), z(10));
        linearLayout.setDividerDrawable(gradientDrawable);
        linearLayout.setPadding(z(18), z(16), z(18), z(18));
        GradientDrawable gradientDrawable2 = new GradientDrawable(GradientDrawable$Orientation.TL_BR, new int[]{Color.rgb(24, 35, 51), r});
        gradientDrawable2.setCornerRadius(z(20));
        gradientDrawable2.setStroke(z(1), f2163s);
        linearLayout.setBackground(gradientDrawable2);
        return linearLayout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void x(int i9, float f8) {
        double d;
        double d9;
        String strH = i9 == 2 ? e0.m.h(new byte[]{-50, 98, 24, 79, 58, -28, -121, 34, -52, 87, 14, 81, 47, -17, -110, 38, -54, 118, 25, 89}, new byte[]{-66, 3, 107, 60, 95, -118, -32, 71}) : e0.m.h(new byte[]{98, -86, -104, 23, -118, -9, 43, 21, 107, -88, -108, 19, -114, -15, 10, 2, 99}, new byte[]{6, -40, -15, 97, -17, -123, ByteCompanionObject.MAX_VALUE, 112});
        if (E()) {
            d = 15.0d;
        } else {
            d = D() ? 17.5d : 15.5d;
        }
        if (E()) {
            d9 = 31.0d;
        } else {
            d9 = D() ? 32.5d : 30.5d;
        }
        float fMax = (float) Math.max(d, Math.min(d9, this.f2176m.optDouble(strH, 22.0d) + ((double) f8)));
        try {
            this.f2176m.put(strH, fMax);
        } catch (Exception unused) {
        }
        K(i9, fMax);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(e0.m.h(new byte[]{-6, 108, -81, 84}, new byte[]{ByteCompanionObject.MIN_VALUE, 3, -63, 49, 16, 90, -93, -29}), i9).put(e0.m.h(new byte[]{-72, -14, 76, -11, -94}, new byte[]{-50, -109, 32, ByteCompanionObject.MIN_VALUE, -57, -45, 15, 10}), fMax);
        } catch (Exception unused2) {
        }
        this.c.execute(new n(this, e0.m.h(new byte[]{90, -7, 47, -37, 105, 84, 105, 34, 74, -16, 50, -23, 124, 69, 97, 13, 92, -25, 39, -62, 125, 82, 105}, new byte[]{57, -107, 70, -74, 8, 32, 12, 125}), jSONObject, 5));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void y(int i9, String str, String str2) {
        HashMap map = this.f2169f;
        int iIntValue = (((Integer) map.getOrDefault(str, 0)).intValue() + 1) % 4;
        map.put(str, Integer.valueOf(iIntValue));
        J(iIntValue, str.endsWith(e0.m.h(new byte[]{-48, -98, 113, -23}, new byte[]{-104, -5, 16, -99, 7, -84, -45, 26})) ? f2166x : f2167y, str);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(e0.m.h(new byte[]{117, 0, -81, 88}, new byte[]{6, 101, -50, 44, -55, 71, 79, -19}), i9).put(e0.m.h(new byte[]{-101, 91, 76, -79, -121}, new byte[]{-19, 58, 32, -60, -30, 68, 80, 81}), iIntValue);
        } catch (Exception unused) {
        }
        this.c.execute(new n(this, str2, jSONObject, 5));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int z(int i9) {
        return Math.round(i9 * getResources().getDisplayMetrics().density);
    }
}
