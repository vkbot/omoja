package s1;

import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout$LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import m0.b2;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class v extends Fragment {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f5219f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f5220g;
    public LinearLayout c;
    public b1.m d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f5221b = new ArrayList();
    public String e = e0.m.h(new byte[]{115, 86, 32, -44, 24, Base64.padSymbol, 8, -41, 96, 86, 36, -22, 1, 48, 9, -26, 116, 91, 35, -57}, new byte[]{23, 51, 70, -75, 109, 81, 124, -120});

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        e0.m.h(new byte[]{-124, 79, 28, -40, -101, 20, Base64.padSymbol, -5, -93, 83, 40, -55, -75, 37, 58, -6, -86, 94, 46, -49}, new byte[]{-55, 54, 75, -67, -7, 68, 79, -108});
        f5219f = e0.m.h(new byte[]{8, -59, -96, 83, -65, 48, Base64.padSymbol, 111, 47, -39, -108, 66, -111, 1, 58, 110, 38, -44, -110, 68, -126, 51, 42, 116, 49, -43, -103, 81, -82, 63, 4, 101, 60}, new byte[]{69, -68, -9, 54, -35, 96, 79, 0});
        f5220g = e0.m.h(new byte[]{16, -42, -39, -45, -59, ByteCompanionObject.MAX_VALUE, 31, 45, 3, -42, -35, -19, -36, 114, 30, 28, 23, -37, -38, -64}, new byte[]{116, -77, -65, -78, -80, 19, 107, 114});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String u(String str) {
        if (f5220g.equals(str)) {
            return e0.m.h(new byte[]{41, -104, -29, 20, 62, -4, -53, 52, 41, -115, -30, 38, 63, -52, -54, 11, 41, -124, -30, 38, 63, -61, 59, 88, 123, -23, -121, 70, 82, -100, -85, -87, -77, 122, 102}, new byte[]{-7, 57, 50, -106, -18, 76, 27, -119});
        }
        String strTrim = str.replace('_', ' ').replace('-', ' ').trim();
        if (strTrim.isEmpty()) {
            return str;
        }
        return strTrim.substring(0, 1).toUpperCase(Locale.getDefault()) + strTrim.substring(1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i9, int i10, Intent intent) {
        String stringExtra;
        super.onActivityResult(i9, i10, intent);
        if (i9 != 101845 || i10 != -1 || intent == null || (stringExtra = intent.getStringExtra(e0.m.h(new byte[]{-68, 17, -31, -20, -66, -124, 52, -47, -112, 18, -28, -27, -72}, new byte[]{-49, 116, -115, -119, -35, -16, 81, -75}))) == null) {
            return;
        }
        try {
            String strR = b1.u.r(new File(stringExtra), (File) this.d.f270f, true);
            w();
            if (this.f5221b.contains(strR)) {
                this.e = strR;
                h0.b.o().saveString(f5219f, strR);
                x();
            }
            y5.k.x(requireContext(), e0.m.h(new byte[]{-78, 10, -57, -122, -115, -9, -125, -57, 66, 121, -108, -30, -36, -102, -47, -89, -46, 120, -86, -29, -29, -101, -31, -89, -39, 120, -94, -29, -32, -101, -29, 87, -78, 16, 55, -29, -17, -102, -40, -89, -45, 121, -105, -29, -19, -101, -18, -89, -46}, new byte[]{98, -88, 23, 51, 93, 75, 83, 119}));
        } catch (Exception e) {
            y5.k.x(requireContext(), e0.m.h(new byte[]{-51, -31, 14, 4, -34, -36, -65, -77, -51, -59, 15, 60, 46, 62, 38, 82, 39, 95}, new byte[]{29, ByteCompanionObject.MAX_VALUE, -33, -116, 14, 100, 111, 2}) + e.getMessage());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        ScrollView scrollView = new ScrollView(requireContext());
        scrollView.setFillViewport(true);
        scrollView.setBackgroundColor(-16051943);
        LinearLayout linearLayout = new LinearLayout(requireContext());
        linearLayout.setOrientation(1);
        linearLayout.setPadding(v(24), v(22), v(24), v(24));
        scrollView.addView(linearLayout, new FrameLayout$LayoutParams(-1, -2));
        TextView textViewText = text(e0.m.h(new byte[]{-49, -64, -126, 49, -27, -3, 25, -72, -49, -62, -126, 14, -27, -10, 25, -123, -49, -58, -126, 0, 21, 41, -118, 76, 63, 22, 29, -40, 112}, new byte[]{31, 94, 82, -107, 53, 99, -55, 24}), 13, -13129771);
        Typeface typeface = Typeface.DEFAULT_BOLD;
        textViewText.setTypeface(typeface);
        textViewText.setLetterSpacing(0.08f);
        linearLayout.addView(textViewText);
        TextView textViewText2 = text(e0.m.h(new byte[]{12, -73, -13, -32, 103, 85, -55, 59, -4, -59, -104, -123, 7, 56, -101, 96, 97, -60, -92, -123, 2, 56, -104, 96, 108}, new byte[]{-36, 21, 35, 85, -73, -23, 24, -80}), 26, -722950);
        textViewText2.setTypeface(typeface);
        textViewText2.setPadding(0, v(5), 0, 0);
        linearLayout.addView(textViewText2);
        TextView textViewText3 = text(e0.m.h(new byte[]{-45, 84, 75, 43, -74, 17, 23, -99, -46, 70, 74, 24, -73, 34, 23, -99, 35, 23, 25, 113, -25, 113, 69, -8, -77, 22, 39, 112, -40, 112, 117, -8, -72, 22, 47, 112, -37, 112, 122, -7, ByteCompanionObject.MIN_VALUE, 23, 20, ByteCompanionObject.MIN_VALUE, -73, 34, 23, -99, -45, 122, 75, 35, 70, 112, ByteCompanionObject.MAX_VALUE, -8, -72, 22, 34, ByteCompanionObject.MIN_VALUE, -74, 20, 23, -106, -45, 119, 74, 16, -74, 18, 22, -92, -46, 68, 74, 21, 70, 112, 122, -8, -67, 22, 40, 113, -27, 113, 73, 8, -45, 126, 74, 23, 70, 112, 125, -8, -77, 23, 24, 112, -42, 112, 124, -8, -67, 22, 41, 112, -42, -114, -25, -8, -101, 22, 45, 112, -38, 112, 114, -8, -66, 22, 47, 112, -37, 112, ByteCompanionObject.MAX_VALUE, -8, -74, -26, 74, 31, -73, 32, 23, -112, -45, 122, 74, 21, -74, 29, 22, -89, -45, 115, 75, 34, -73, 33, 22, -89, 35, 23, 27, 113, -26, 112, 119, -8, -76, 23, 25, -114}, new byte[]{3, -58, -102, -96, 102, -96, -57, 40}), 15, -6575430);
        textViewText3.setLineSpacing(0.0f, 1.15f);
        textViewText3.setPadding(0, v(8), 0, v(20));
        linearLayout.addView(textViewText3);
        LinearLayout linearLayout2 = new LinearLayout(requireContext());
        this.c = linearLayout2;
        linearLayout2.setOrientation(1);
        linearLayout.addView(this.c, new LinearLayout$LayoutParams(-1, -2));
        TextView textViewText4 = text(e0.m.h(new byte[]{-103, 27, 88, -121, 100, ByteCompanionObject.MIN_VALUE, 48, -118, -103, 29, 88, -127, 100, -77, 48, -74, 105, 95, 42, -55, 33, -63, 124, -54, -22}, new byte[]{73, -113, -120, 25, -76, 17, -32, 26}), 13, -6575430);
        textViewText4.setTypeface(typeface);
        textViewText4.setLetterSpacing(0.08f);
        textViewText4.setPadding(0, v(14), 0, v(9));
        linearLayout.addView(textViewText4);
        LinearLayout linearLayout3 = new LinearLayout(requireContext());
        linearLayout3.setOrientation(0);
        linearLayout3.setGravity(16);
        Button buttonT = t(e0.m.h(new byte[]{92, 114, -23, 27, 107, 20, 24, -117, 93, 103, -23, 27, 106, 34, -23, -37, 54, 60, -120, 72, 57, 126, 121, -37, 55, 60, -122, 73, 8}, new byte[]{-116, -20, 56, -103, -69, -82, -55, 11}), true);
        buttonT.setOnClickListener(new u(this, 0));
        LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(0, v(54), 1.0f);
        linearLayout$LayoutParams.setMarginStart(0);
        linearLayout3.addView(buttonT, linearLayout$LayoutParams);
        Button buttonT2 = t(e0.m.h(new byte[]{102, -107, 100, 114, -95, -28, 26, -73, 102, -117, 101, 77, -96, -44, 26, -65, 103, -76, 100, ByteCompanionObject.MAX_VALUE, 80, -74, 114, -41, 1, 22, -17, -70, 32}, new byte[]{-74, 54, -75, -13, 112, 102, -54, 7}), false);
        buttonT2.setOnClickListener(new u(this, 1));
        int iV = v(10);
        LinearLayout$LayoutParams linearLayout$LayoutParams2 = new LinearLayout$LayoutParams(0, v(54), 1.0f);
        linearLayout$LayoutParams2.setMarginStart(iV);
        linearLayout3.addView(buttonT2, linearLayout$LayoutParams2);
        linearLayout.addView(linearLayout3);
        TextView textViewText5 = text(e0.m.h(new byte[]{22, -113, -88, -42, -100, 79, -90, 32, 68, -51, 56, -42, -99, 79, -88, 33, 117, -51, Base64.padSymbol, 38, -10, 34, -58, 65, 22, -85, 88, -70, -10, 39, -57, 115, 22, -88, -88, -60, -115, 79, -75, 32, 71, -52, 10, -42, -106, 79, -85, 33, 120, -51, 58, -42, -98, 78, -108, 32, 74, -33, 51, 38, -60, 31, -126, -47, 22, -86, 88, -74, -10, 44, -57, 113, 23, -98, 88, -80, -10, 42, -58, 76, 22, -96, 88, -74, -9, 16, 54, 32, 68, -51, Base64.padSymbol, -42, -102, 79, -90, -47, 23, -100, 89, -124, -10, 47, -58, 76, 22, -88, 89, -124, 6, 79, -90, 33, 124, -52, 10, -42, -98, 79, -92, 33, 123, -51, 54, -42, -97, -65, -58, 65, 22, -81, 89, -124, -10, 33, -58, 77, 22, -83, 89, -124, -10, 39, -57, 118, 22, -88, 89, -121, -10, 37, -58, 73, -24}, new byte[]{-58, 29, -120, 6, 38, -97, 22, -15}), 13, -6575430);
        textViewText5.setPadding(0, v(12), 0, 0);
        linearLayout.addView(textViewText5);
        Context contextRequireContext = requireContext();
        Context contextRequireContext2 = requireContext();
        String str = s.f5198a;
        this.d = new b1.m(contextRequireContext, "", new File(contextRequireContext2.getFilesDir(), s.f5198a), f5220g);
        w();
        return scrollView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        if (this.c == null || this.d == null) {
            return;
        }
        w();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Button t(String str, boolean z8) {
        Button button = new Button(requireContext());
        button.setText(str);
        button.setTextSize(15.0f);
        button.setTextColor(-722950);
        button.setAllCaps(false);
        button.setMinHeight(0);
        button.setMinimumHeight(0);
        button.setPadding(v(14), 0, v(14), 0);
        button.setBackground(y(z8 ? -13129771 : -15195860, z8 ? -13129771 : -13352366, 14));
        return button;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final TextView text(String str, int i9, int i10) {
        TextView textView = new TextView(requireContext());
        textView.setText(str);
        textView.setTextSize(i9);
        textView.setTextColor(i10);
        return textView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int v(int i9) {
        return Math.round(i9 * getResources().getDisplayMetrics().density);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void w() {
        List<String> list;
        ArrayList arrayList = this.f5221b;
        arrayList.clear();
        String str = f5220g;
        arrayList.add(str);
        Context contextRequireContext = requireContext();
        String str2 = s.f5198a;
        File[] fileArrListFiles = new File(contextRequireContext.getFilesDir(), s.f5198a).listFiles(new b2());
        if (fileArrListFiles == null) {
            list = Collections.EMPTY_LIST;
        } else {
            ArrayList arrayList2 = new ArrayList();
            for (File file : fileArrListFiles) {
                String name = file.getName();
                if (!s.c.equals(name)) {
                    try {
                        File fileB = s.b(contextRequireContext, name);
                        if (fileB != null && fileB.isFile()) {
                            arrayList2.add(name);
                        }
                    } catch (IOException unused) {
                    }
                }
            }
            arrayList2.sort(String.CASE_INSENSITIVE_ORDER);
            list = arrayList2;
        }
        for (String str3 : list) {
            if (str3 != null && !str3.trim().isEmpty() && !arrayList.contains(str3)) {
                arrayList.add(str3);
            }
        }
        u0.a aVarO = h0.b.o();
        String str4 = f5219f;
        String strLoadString = aVarO.loadString(str4, str);
        this.e = strLoadString;
        if (!arrayList.contains(strLoadString)) {
            this.e = str;
            h0.b.o().saveString(str4, this.e);
        }
        x();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void x() {
        String strH;
        this.c.removeAllViews();
        ArrayList arrayList = this.f5221b;
        int size = arrayList.size();
        int i9 = 0;
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            String str = (String) obj;
            LinearLayout linearLayout = this.c;
            boolean zEquals = str.equals(this.e);
            boolean zEquals2 = f5220g.equals(str);
            LinearLayout linearLayout2 = new LinearLayout(requireContext());
            linearLayout2.setOrientation(i9);
            linearLayout2.setGravity(16);
            linearLayout2.setPadding(v(16), v(12), v(10), v(12));
            linearLayout2.setMinimumHeight(v(76));
            linearLayout2.setBackground(y(zEquals ? -14995392 : -15195860, zEquals ? -13129771 : -14273726, 16));
            linearLayout2.setClickable(true);
            linearLayout2.setFocusable(true);
            linearLayout2.setContentDescription((zEquals ? e0.m.h(new byte[]{-9, 116, -12, -93, 35, 80, 47, 69, -9, 86, -11, -107, 35, 81, -34, 20, -91, 54, -112, -8, 79, 49, 78, -27}, new byte[]{39, -26, 37, 40, -13, -31, -2, -59}) : e0.m.h(new byte[]{23, 22, -42, 75, -98, -46, -41, 106, 23, 52, -42, 66, -97, -17, 38, 59, 69, 84, -78, 16, -14, -78, -123, -54}, new byte[]{-57, -124, 7, -64, 78, 99, 6, -22})).concat(u(str)));
            linearLayout2.setOnClickListener(new t(this, str, i9));
            TextView textViewText = text(zEquals ? e0.m.h(new byte[]{-70, 126, -58}, new byte[]{88, -30, 85, 55, -126, 34, 105, -35}) : e0.m.h(new byte[]{-35, 102, 23}, new byte[]{63, -15, -100, -123, -52, 37, -5, 76}), 24, zEquals ? -13129771 : -6575430);
            textViewText.setGravity(17);
            linearLayout2.addView(textViewText, new LinearLayout$LayoutParams(v(42), v(48)));
            LinearLayout linearLayout3 = new LinearLayout(requireContext());
            linearLayout3.setOrientation(1);
            linearLayout3.setGravity(16);
            TextView textViewText2 = text(u(str), 17, -722950);
            textViewText2.setTypeface(Typeface.DEFAULT_BOLD);
            linearLayout3.addView(textViewText2);
            if (zEquals) {
                strH = e0.m.h(new byte[]{92, 39, 19, 57, -81, -24, -9, 18, 92, 4, 19, 52, -81, -32, -10, 47, 92, 10, 19, 58, -82, -42, -10, 35, -84, 110, 67, 104, -54, -121, -98, 125, 11, 111, 114, 105, -2}, new byte[]{-116, -65, -62, -72, ByteCompanionObject.MAX_VALUE, 87, 39, -84});
            } else {
                strH = zEquals2 ? e0.m.h(new byte[]{-46, 101, -74, 14, 52, 108, 57, -23, -46, 73, -73, 58, 53, 83, 56, -44, -46, 71, -74, 0, -59, 63, 106, -71, -73, 39, -37, 95, 85}, new byte[]{2, -9, 103, -113, -27, -18, -24, 105}) : e0.m.h(new byte[]{-98, -94, 30, -84, -13, -100, 56, 60, -98, -121, 31, -98, -13, -97, -60, -96, -97, -72, 31, -98, -13, -108, 56, 49, -97, -76, -18, -52, -100, -5, 104, 80, -10, -17, 114, -52, -106, -6, 85, 80, -10, -18, 76, -51, -81}, new byte[]{78, 63, -50, 28, 35, 42, -24, ByteCompanionObject.MIN_VALUE});
            }
            TextView textViewText3 = text(strH, 13, zEquals ? -13129771 : -6575430);
            textViewText3.setPadding(0, v(3), 0, 0);
            linearLayout3.addView(textViewText3);
            linearLayout2.addView(linearLayout3, new LinearLayout$LayoutParams(0, -2, 1.0f));
            if (!zEquals2) {
                Button buttonT = t(e0.m.h(new byte[]{36, 14, 93, 50, 29, -26, 8, ByteCompanionObject.MIN_VALUE, 36, 21, 92, 4, 28, -38}, new byte[]{-12, -83, -115, -122, -51, 86, -40, 59}), false);
                buttonT.setTextSize(13.0f);
                buttonT.setTextColor(-25701);
                buttonT.setPadding(v(12), 0, v(12), 0);
                buttonT.setBackground(y(-13295321, -9356475, 12));
                buttonT.setContentDescription(e0.m.h(new byte[]{-41, 104, 49, -52, -90, -87, -96, 115, -41, 115, 48, -6, -89, -107, 80, 25, -123, 27, 84, -88, -54, -56, -13, -24}, new byte[]{7, -53, -31, 120, 118, 25, 112, -56}).concat(u(str)));
                buttonT.setOnClickListener(new t(this, str, 1));
                LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(v(92), v(42));
                linearLayout$LayoutParams.setMarginStart(v(8));
                linearLayout2.addView(buttonT, linearLayout$LayoutParams);
            }
            LinearLayout$LayoutParams linearLayout$LayoutParams2 = new LinearLayout$LayoutParams(-1, -2);
            linearLayout$LayoutParams2.bottomMargin = v(10);
            linearLayout.addView(linearLayout2, linearLayout$LayoutParams2);
            i9 = 0;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final GradientDrawable y(int i9, int i10, int i11) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i9);
        gradientDrawable.setCornerRadius(v(i11));
        gradientDrawable.setStroke(v(1), i10);
        return gradientDrawable;
    }
}
