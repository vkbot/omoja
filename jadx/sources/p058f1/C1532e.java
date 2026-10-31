package p058f1;

import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.fragment.app.Fragment;
import androidx.navigation.ViewOnClickListenerC0675c;
import androidx.navigation.ViewOnClickListenerC0677d;
import com.bumptech.glide.RunnableC1054m;
import com.google.android.material.button.MaterialButton;
import java.util.HashMap;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import org.apache.commons.net.ftp.FTPReply;
import org.apache.commons.net.nntp.NNTPReply;
import org.apache.commons.net.telnet.TelnetCommand;
import org.json.JSONObject;
import p016b1.RunnableC0873n;
import p047e0.AbstractC1387m;
import p047e0.ViewOnClickListenerC1393n0;
import p078h0.C1652b;
import p142n0.EnumC2468c;

/* JADX INFO: renamed from: f1.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1532e extends Fragment {

    /* JADX INFO: renamed from: q */
    public static final int f3757q = Color.rgb(9, 14, 23);

    /* JADX INFO: renamed from: r */
    public static final int f3758r = Color.rgb(20, 29, 43);

    /* JADX INFO: renamed from: s */
    public static final int f3759s = Color.rgb(42, 57, 77);

    /* JADX INFO: renamed from: t */
    public static final int f3760t = Color.rgb(TelnetCommand.ABORT, TelnetCommand.AYT, 255);

    /* JADX INFO: renamed from: u */
    public static final int f3761u = Color.rgb(139, 157, 180);

    /* JADX INFO: renamed from: v */
    public static final int f3762v = Color.rgb(25, 165, 255);

    /* JADX INFO: renamed from: w */
    public static final int f3763w = Color.rgb(39, 51, 68);

    /* JADX INFO: renamed from: x */
    public static final int f3764x = Color.rgb(255, 111, 61);

    /* JADX INFO: renamed from: y */
    public static final int f3765y = Color.rgb(62, 193, 255);

    /* JADX INFO: renamed from: h */
    public TextView f3772h;

    /* JADX INFO: renamed from: i */
    public TextView f3773i;

    /* JADX INFO: renamed from: j */
    public TextView f3774j;

    /* JADX INFO: renamed from: k */
    public TextView f3775k;

    /* JADX INFO: renamed from: l */
    public SeekBar f3776l;

    /* JADX INFO: renamed from: n */
    public boolean f3778n;

    /* JADX INFO: renamed from: o */
    public boolean f3779o;

    /* JADX INFO: renamed from: b */
    public final Handler f3766b = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: c */
    public final ExecutorService f3767c = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: d */
    public final HashMap f3768d = new HashMap();

    /* JADX INFO: renamed from: e */
    public final HashMap f3769e = new HashMap();

    /* JADX INFO: renamed from: f */
    public final HashMap f3770f = new HashMap();

    /* JADX INFO: renamed from: g */
    public final HashMap f3771g = new HashMap();

    /* JADX INFO: renamed from: m */
    public JSONObject f3777m = new JSONObject();

    /* JADX INFO: renamed from: p */
    public final RunnableC1054m f3780p = new RunnableC1054m(4, this);

    /* JADX INFO: renamed from: A */
    public static int m2601A() {
        return (m2604D() || m2605E()) ? 7 : 10;
    }

    /* JADX INFO: renamed from: B */
    public static int m2602B() {
        return (m2604D() || m2605E()) ? 0 : 1;
    }

    /* JADX INFO: renamed from: C */
    public static boolean m2603C() {
        String strLoadString = C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-30, 6, -27, -76, -122, -18, 45, 24, -51, 34}, new byte[]{-95, 71, -73, -28, -12, -127, 75, 113}), "");
        return EnumC2468c.f6696t.name().equals(strLoadString) || EnumC2468c.f6685F.name().equals(strLoadString) || EnumC2468c.f6697u.name().equals(strLoadString) || EnumC2468c.f6694r.name().equals(strLoadString) || EnumC2468c.f6683D.name().equals(strLoadString) || EnumC2468c.f6688l.name().equals(strLoadString) || EnumC2468c.f6689m.name().equals(strLoadString) || EnumC2468c.f6690n.name().equals(strLoadString) || EnumC2468c.f6691o.name().equals(strLoadString) || EnumC2468c.f6692p.name().equals(strLoadString) || EnumC2468c.f6693q.name().equals(strLoadString);
    }

    /* JADX INFO: renamed from: D */
    public static boolean m2604D() {
        String strLoadString = C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{11, -24, 43, -37, -118, -23, 36, -7, 36, -52}, new byte[]{72, -87, 121, -117, -8, -122, 66, -112}), "");
        return EnumC2468c.f6696t.name().equals(strLoadString) || EnumC2468c.f6685F.name().equals(strLoadString) || EnumC2468c.f6697u.name().equals(strLoadString);
    }

    /* JADX INFO: renamed from: E */
    public static boolean m2605E() {
        return EnumC2468c.f6694r.name().equals(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{67, -94, 89, -2, 118, -33, -48, -67, 108, -122}, new byte[]{0, -29, 11, -82, 4, -80, -74, -44}), ""));
    }

    /* JADX INFO: renamed from: G */
    public static LinearLayout.LayoutParams m2606G() {
        return new LinearLayout.LayoutParams(-1, -2);
    }

    /* JADX INFO: renamed from: M */
    public static String m2607M(int i10, String str) {
        int iMax = Math.max(0, Math.min(3, i10));
        StringBuilder sb = new StringBuilder(str);
        sb.append('\n');
        int i11 = 1;
        while (i11 <= 3) {
            if (i11 > 1) {
                sb.append("  ");
            }
            sb.append(i11 <= iMax ? (char) 9679 : (char) 9675);
            i11++;
        }
        return sb.toString();
    }

    /* JADX INFO: renamed from: V */
    public static LinearLayout.LayoutParams m2608V(int i10) {
        return new LinearLayout.LayoutParams(0, i10, 1.0f);
    }

    /* JADX INFO: renamed from: W */
    public static LinearLayout.LayoutParams m2609W(int i10, int i11) {
        return new LinearLayout.LayoutParams(i11, i10);
    }

    /* JADX INFO: renamed from: v */
    public static JSONObject m2610v(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            try {
                jSONObject = new JSONObject();
            } catch (Exception unused) {
                return null;
            }
        }
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{115, 97, -40, 89, -10, -117, 34}, new byte[]{16, 14, -75, 52, -105, -27, 70, -58}), str);
        C1652b.m2734a();
        return C1652b.m2736d().m1618c(jSONObject);
    }

    /* JADX INFO: renamed from: F */
    public final TextView m2611F(String str, int i10, int i11, boolean z9) {
        TextView textView = new TextView(requireContext());
        textView.setText(str);
        textView.setTextSize(i10);
        textView.setTextColor(i11);
        if (z9) {
            textView.setTypeface(Typeface.DEFAULT, 1);
        }
        return textView;
    }

    /* JADX INFO: renamed from: H */
    public final TextView m2612H() {
        TextView textViewM2611F = m2611F(AbstractC1387m.m2421h(new byte[]{-124, -98, -84, -76, 22, -96, -52, -73, -124, -76, -83, -115, -21, -56, -90, -37, -22, -44, -63, -34, 68, -55, -100, -37, -22, -44, -57, -34, 74, 56, -52, -74, -124, -79, -84, -69, 22, -90, -51, -118, -123, -122, -83, -116, 22, -89, -52, -66, -124, -71, 92, -33, 114, -56, -89, -38, -37, 36, -84, -67, 23, -109, -52, -70, -123, -124, -84, -65, 22, -91, -52, -74, -124, -70, -84, -68, 22, -90, 60, -37, -21, -43, -4, -33, 120, -55, -104, -37, -20, -44, -57, -34, 73}, new byte[]{84, 4, 124, 15, -58, 24, 28, 11}), 20, f3760t, true);
        textViewM2611F.setGravity(17);
        textViewM2611F.setPadding(m2630z(30), m2630z(30), m2630z(30), m2630z(30));
        textViewM2611F.setBackgroundColor(f3757q);
        return textViewM2611F;
    }

    /* JADX INFO: renamed from: I */
    public final void m2613I(JSONObject jSONObject, String str, int i10) {
        int iMax = Math.max(0, Math.min(3, jSONObject.optInt(str, 0)));
        this.f3770f.put(str, Integer.valueOf(iMax));
        m2614J(iMax, i10, str);
    }

    /* JADX INFO: renamed from: J */
    public final void m2614J(int i10, int i11, String str) {
        int iRgb;
        MaterialButton materialButton = (MaterialButton) this.f3771g.get(str);
        if (materialButton == null) {
            return;
        }
        materialButton.setText(m2607M(i10, str.endsWith(AbstractC1387m.m2421h(new byte[]{-25, 126, -54, -125}, new byte[]{-81, 27, -85, -9, -1, 126, -31, -51})) ? AbstractC1387m.m2421h(new byte[]{-21, 53, -37, -64, -67, -70, 119, -121, -21, 29, -37, -62}, new byte[]{59, -88, 11, 112, 109, 9, -90, 7}) : AbstractC1387m.m2421h(new byte[]{40, 83, -50, 2, 62, -17, 30, 37, 40, 121, -50, 12, 63, -35, 30, 33, 40, 121, -49, 56}, new byte[]{-8, -63, 30, -73, -18, 82, -49, -89})));
        materialButton.setTextColor(i10 > 0 ? i11 : Color.rgb(192, 207, FTPReply.DATA_CONNECTION_OPEN));
        if (i10 > 0) {
            iRgb = i11 == f3764x ? Color.rgb(78, 43, 39) : Color.rgb(26, 61, 82);
        } else {
            iRgb = f3763w;
        }
        materialButton.setBackgroundTintList(ColorStateList.valueOf(iRgb));
        if (i10 <= 0) {
            i11 = f3759s;
        }
        materialButton.setStrokeColor(ColorStateList.valueOf(i11));
        materialButton.setStrokeWidth(m2630z(i10 > 0 ? 2 : 1));
    }

    /* JADX INFO: renamed from: K */
    public final void m2615K(int i10, float f8) {
        TextView textView = i10 == 2 ? this.f3774j : this.f3773i;
        if (textView != null) {
            textView.setText(String.format(Locale.US, AbstractC1387m.m2421h(new byte[]{-27, 22, 47, -79, 30, 41}, new byte[]{-64, 56, 30, -41, -36, -103, 41, -25}), Float.valueOf(f8)));
        }
    }

    /* JADX INFO: renamed from: L */
    public final LinearLayout m2616L(int i10) {
        LinearLayout linearLayout = new LinearLayout(requireContext());
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        linearLayout.setShowDividers(2);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(0);
        gradientDrawable.setSize(m2630z(i10), m2630z(i10));
        linearLayout.setDividerDrawable(gradientDrawable);
        return linearLayout;
    }

    /* JADX INFO: renamed from: N */
    public final LinearLayout m2617N(String str, final int i10, final String str2, final String str3) {
        LinearLayout linearLayoutM2616L = m2616L(10);
        final int i11 = 1;
        linearLayoutM2616L.addView(m2611F(str, 16, f3760t, true), m2608V(m2630z(64)));
        final int i12 = 0;
        String strM2607M = m2607M(0, AbstractC1387m.m2421h(new byte[]{98, 111, -49, -6, 22, -66, -85, 48, 98, 71, -49, -8}, new byte[]{-78, -14, 31, 74, -58, 13, 122, -80}));
        Runnable runnable = new Runnable(this) { // from class: f1.a

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C1532e f3748c;

            {
                this.f3748c = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                int i13 = i12;
                String str4 = str2;
                int i14 = i10;
                C1532e c1532e = this.f3748c;
                switch (i13) {
                    case 0:
                        int i15 = C1532e.f3757q;
                        c1532e.m2629y(i14, str4, AbstractC1387m.m2421h(new byte[]{3, -36, -57, 125, 125, -43, -124, -81, 19, -43, -38, 79, 111, -60, ByteCompanionObject.MIN_VALUE, -124, 63, -40, -53, 113, 104}, new byte[]{96, -80, -82, 16, 28, -95, -31, -16}));
                        break;
                    default:
                        int i16 = C1532e.f3757q;
                        c1532e.m2629y(i14, str4, AbstractC1387m.m2421h(new byte[]{-106, 123, 91, 117, 45, 75, -14, -18, -122, 114, 70, 71, 63, 90, -10, -59, -86, 97, 87, 118, 56}, new byte[]{-11, 23, 50, 24, 76, 63, -105, -79}));
                        break;
                }
            }
        };
        MaterialButton materialButtonM2626u = m2626u(strM2607M);
        materialButtonM2626u.setOnClickListener(new ViewOnClickListenerC1530c(runnable, 0));
        materialButtonM2626u.setTextSize(13.0f);
        materialButtonM2626u.setGravity(17);
        HashMap map = this.f3771g;
        map.put(str2, materialButtonM2626u);
        linearLayoutM2616L.addView(materialButtonM2626u, new LinearLayout.LayoutParams(m2630z(138), m2630z(64)));
        String strM2607M2 = m2607M(0, AbstractC1387m.m2421h(new byte[]{-27, -72, 57, -19, -73, 43, -23, 58, -27, -110, 57, -29, -74, 25, -23, 62, -27, -110, 56, -41}, new byte[]{53, 42, -23, 88, 103, -106, 56, -72}));
        Runnable runnable2 = new Runnable(this) { // from class: f1.a

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C1532e f3748c;

            {
                this.f3748c = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                int i13 = i11;
                String str4 = str3;
                int i14 = i10;
                C1532e c1532e = this.f3748c;
                switch (i13) {
                    case 0:
                        int i15 = C1532e.f3757q;
                        c1532e.m2629y(i14, str4, AbstractC1387m.m2421h(new byte[]{3, -36, -57, 125, 125, -43, -124, -81, 19, -43, -38, 79, 111, -60, ByteCompanionObject.MIN_VALUE, -124, 63, -40, -53, 113, 104}, new byte[]{96, -80, -82, 16, 28, -95, -31, -16}));
                        break;
                    default:
                        int i16 = C1532e.f3757q;
                        c1532e.m2629y(i14, str4, AbstractC1387m.m2421h(new byte[]{-106, 123, 91, 117, 45, 75, -14, -18, -122, 114, 70, 71, 63, 90, -10, -59, -86, 97, 87, 118, 56}, new byte[]{-11, 23, 50, 24, 76, 63, -105, -79}));
                        break;
                }
            }
        };
        MaterialButton materialButtonM2626u2 = m2626u(strM2607M2);
        materialButtonM2626u2.setOnClickListener(new ViewOnClickListenerC1530c(runnable2, 0));
        materialButtonM2626u2.setTextSize(13.0f);
        materialButtonM2626u2.setGravity(17);
        map.put(str3, materialButtonM2626u2);
        linearLayoutM2616L.addView(materialButtonM2626u2, new LinearLayout.LayoutParams(m2630z(158), m2630z(64)));
        return linearLayoutM2616L;
    }

    /* JADX INFO: renamed from: O */
    public final void m2618O(Object obj, String str) {
        JSONObject jSONObject = new JSONObject();
        int i10 = 5;
        try {
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{62, -91, -81, -3, -72}, new byte[]{72, -60, -61, -120, -35, -106, -71, -26}), obj);
        } catch (Exception unused) {
        }
        this.f3767c.execute(new RunnableC0873n(this, str, jSONObject, i10));
    }

    /* JADX INFO: renamed from: P */
    public final void m2619P(String str, boolean z9) {
        MaterialButton materialButton = (MaterialButton) this.f3768d.get(str);
        if (materialButton != null) {
            m2622S(materialButton, z9, f3762v);
        }
    }

    /* JADX INFO: renamed from: Q */
    public final void m2620Q(boolean z9) {
        int i10;
        int i11;
        int i12;
        TextView textView = this.f3772h;
        if (textView == null) {
            return;
        }
        textView.setText(AbstractC1387m.m2421h(new byte[]{126, 6, -43}, new byte[]{-100, -111, 90, -29, 4, -69, -4, -49}));
        this.f3772h.setContentDescription(z9 ? AbstractC1387m.m2421h(new byte[]{-113, 101, -90, 114, -98, -25, -57, 50, -113, 73, -90, 126, -97, -44, -57, 52, -113, 78, -89, 76, 111, -75, -88, 92, -31, 37, -62, 16, -11, -75, -84, 93, -47, 36, -15, 17, -34, -75, -86}, new byte[]{95, -11, 118, -64, 79, 101, 23, -116}) : AbstractC1387m.m2421h(new byte[]{-112, 105, -111, 125, 121, 64, -61, -98, -12, 36, -15, 24, 21, 18, 94, -97, -53, 37, -60, -24, 120, 114, 51, -4, -111, 118, -111, 118, 120, 126, 51, -16, -112, 69, -111, 112, 120, 121, 50, -63}, new byte[]{64, -12, 65, -56, -88, -62, -29, 78}));
        TextView textView2 = this.f3772h;
        if (z9) {
            i10 = 220;
            i11 = 155;
            i12 = 70;
        } else {
            i10 = 132;
            i11 = 107;
            i12 = 255;
        }
        textView2.setTextColor(Color.rgb(i12, i10, i11));
    }

    /* JADX INFO: renamed from: R */
    public final void m2621R(LinearLayout linearLayout, int i10) {
        linearLayout.addView(new View(requireContext()), new LinearLayout.LayoutParams(1, m2630z(i10)));
    }

    /* JADX INFO: renamed from: S */
    public final void m2622S(MaterialButton materialButton, boolean z9, int i10) {
        materialButton.setBackgroundTintList(ColorStateList.valueOf(z9 ? i10 : f3763w));
        materialButton.setTextColor(z9 ? -1 : Color.rgb(192, 207, FTPReply.DATA_CONNECTION_OPEN));
        if (!z9) {
            i10 = f3759s;
        }
        materialButton.setStrokeColor(ColorStateList.valueOf(i10));
        materialButton.setStrokeWidth(m2630z(1));
    }

    /* JADX INFO: renamed from: T */
    public final LinearLayout m2623T(final int i10, String str, boolean z9) {
        LinearLayout linearLayoutM2627w = m2627w();
        final int i11 = 1;
        TextView textViewM2611F = m2611F(AbstractC1387m.m2421h(new byte[]{54, 46, ByteCompanionObject.MAX_VALUE, 87, -58, 105}, new byte[]{4, 28, 81, 103, 4, -39, -65, 92}), 42, z9 ? f3765y : Color.rgb(159, NNTPReply.CLOSING_CONNECTION, 255), true);
        textViewM2611F.setGravity(17);
        if (z9) {
            this.f3773i = textViewM2611F;
        } else {
            this.f3774j = textViewM2611F;
        }
        TextView textViewM2611F2 = m2611F(str, 12, f3761u, true);
        textViewM2611F2.setGravity(17);
        linearLayoutM2627w.addView(textViewM2611F2, m2606G());
        linearLayoutM2627w.addView(textViewM2611F, new LinearLayout.LayoutParams(-1, m2630z(64)));
        LinearLayout linearLayoutM2616L = m2616L(10);
        String strM2421h = AbstractC1387m.m2421h(new byte[]{84, 67, 111}, new byte[]{-74, -53, -3, 98, -105, -45, 30, 3});
        final int i12 = 0;
        Runnable runnable = new Runnable(this) { // from class: f1.b

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C1532e f3752c;

            {
                this.f3752c = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i12) {
                    case 0:
                        this.f3752c.m2628x(i10, C1532e.m2605E() ? -1.0f : -0.5f);
                        break;
                    default:
                        this.f3752c.m2628x(i10, C1532e.m2605E() ? 1.0f : 0.5f);
                        break;
                }
            }
        };
        MaterialButton materialButtonM2626u = m2626u(strM2421h);
        materialButtonM2626u.setOnClickListener(new ViewOnClickListenerC1530c(runnable, 0));
        linearLayoutM2616L.addView(materialButtonM2626u, m2608V(m2630z(52)));
        String strM2421h2 = AbstractC1387m.m2421h(new byte[]{-12}, new byte[]{-33, -70, 48, 14, -22, -53, 59, -80});
        Runnable runnable2 = new Runnable(this) { // from class: f1.b

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C1532e f3752c;

            {
                this.f3752c = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i11) {
                    case 0:
                        this.f3752c.m2628x(i10, C1532e.m2605E() ? -1.0f : -0.5f);
                        break;
                    default:
                        this.f3752c.m2628x(i10, C1532e.m2605E() ? 1.0f : 0.5f);
                        break;
                }
            }
        };
        MaterialButton materialButtonM2626u2 = m2626u(strM2421h2);
        materialButtonM2626u2.setOnClickListener(new ViewOnClickListenerC1530c(runnable2, 0));
        linearLayoutM2616L.addView(materialButtonM2626u2, m2608V(m2630z(52)));
        linearLayoutM2627w.addView(linearLayoutM2616L, m2606G());
        return linearLayoutM2627w;
    }

    /* JADX INFO: renamed from: U */
    public final MaterialButton m2624U(String str, String str2, String str3) {
        MaterialButton materialButtonM2626u = m2626u(str2);
        this.f3768d.put(str, materialButtonM2626u);
        materialButtonM2626u.setOnClickListener(new ViewOnClickListenerC1393n0(this, str3, str, 1));
        return materialButtonM2626u;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (!m2603C()) {
            return m2612H();
        }
        ScrollView scrollView = new ScrollView(requireContext());
        scrollView.setFillViewport(true);
        scrollView.setBackgroundColor(f3757q);
        LinearLayout linearLayout = new LinearLayout(requireContext());
        linearLayout.setOrientation(1);
        linearLayout.setShowDividers(2);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(0);
        gradientDrawable.setSize(m2630z(16), m2630z(16));
        linearLayout.setDividerDrawable(gradientDrawable);
        linearLayout.setPadding(m2630z(24), m2630z(20), m2630z(24), m2630z(36));
        scrollView.addView(linearLayout, m2606G());
        LinearLayout linearLayoutM2616L = m2616L(10);
        String strM2421h = AbstractC1387m.m2421h(new byte[]{-93, ByteCompanionObject.MAX_VALUE, 2}, new byte[]{65, -24, -115, -80, 109, 71, 117, 115});
        int i10 = f3761u;
        TextView textViewM2611F = m2611F(strM2421h, 15, i10, false);
        this.f3772h = textViewM2611F;
        textViewM2611F.setGravity(8388627);
        this.f3772h.setContentDescription(AbstractC1387m.m2421h(new byte[]{11, -61, -89, -79, 116, -72, -84, 51, 11, -25, -90, -127, 117, -117, -84, 60, 11, -31, -89, -73, 116, -71, 92, 89, 97, 124, -89, -65, 116, -66, -83, 11, 11, -30, -89, -77, 116, -78, -84, 56, 11, -28, -89, -76, 117, -126}, new byte[]{-37, 92, 119, 15, -92, 12, 124, -119}));
        linearLayoutM2616L.addView(this.f3772h, new LinearLayout.LayoutParams(0, -2, 1.0f));
        MaterialButton materialButtonM2626u = m2626u(AbstractC1387m.m2421h(new byte[]{-86, 41, 28}, new byte[]{72, -75, -119, -81, -88, -112, -39, 111}));
        materialButtonM2626u.setTextSize(21.0f);
        materialButtonM2626u.setContentDescription(AbstractC1387m.m2421h(new byte[]{-59, -92, 44, -64, -29, 58, -35, -14, -60, -72, 45, -14, -30, 12, 44, -94, -81, -29, 71, -96, -117, 80, -80, -94, -91, -30, 126, 93, -29, 58, -36, -52, -59, -114, 45, -14, -30, 0, -36, -52, -59, -120, 45, -4}, new byte[]{21, 51, -4, 112, 51, ByteCompanionObject.MIN_VALUE, 12, 114}));
        materialButtonM2626u.setOnClickListener(new ViewOnClickListenerC0675c(13, this));
        linearLayoutM2616L.addView(materialButtonM2626u, m2609W(m2630z(42), m2630z(48)));
        linearLayout.addView(linearLayoutM2616L, new LinearLayout.LayoutParams(-1, m2630z(42)));
        m2621R(linearLayout, 8);
        LinearLayout linearLayoutM2616L2 = m2616L(14);
        linearLayoutM2616L2.addView(m2623T(1, AbstractC1387m.m2421h(new byte[]{-59, 39, -120, -28, 11, 78, -54, -124, -59, 23, -120, -17, 11, 65, -54, -80}, new byte[]{21, -75, 88, 122, -37, -38, 26, 28}), true), new LinearLayout.LayoutParams(0, -2, 1.0f));
        linearLayoutM2616L2.addView(m2623T(2, AbstractC1387m.m2421h(new byte[]{39, 57, -19, -29, 53, 9, -64, -6, 39, 54, -19, -27, 53, 48, -64, -5}, new byte[]{-9, -90, Base64.padSymbol, 115, -27, -88, 16, 91}), false), new LinearLayout.LayoutParams(0, -2, 1.0f));
        linearLayout.addView(linearLayoutM2616L2, m2606G());
        m2621R(linearLayout, 14);
        LinearLayout linearLayoutM2627w = m2627w();
        linearLayoutM2627w.addView(m2611F(AbstractC1387m.m2421h(new byte[]{5, -22, -61, 96, -14, 6, -76, -63, 5, -37, -61, 96, -14, 50, 68, -77, 117, -85, -122, 27, -76, 119, -4, -77, 73, -85, -72}, new byte[]{-43, 123, 19, -53, 34, -89, 100, 99}), 13, i10, true));
        LinearLayout linearLayoutM2616L3 = m2616L(8);
        linearLayoutM2616L3.addView(m2624U(AbstractC1387m.m2421h(new byte[]{-103, 94, -81, 30, 38}, new byte[]{-23, 49, -40, 123, 84, -94, -27, 2}), AbstractC1387m.m2421h(new byte[]{-105, 116, 107, 96, -60, -110, 64, 29, -105, 86, 107, 96, -59, -91}, new byte[]{71, -21, -69, -40, 21, 16, -112, -83}), AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MAX_VALUE, 105, -6, -42, 56, -124, -47, -73, 111, 96, -25, -28, 41, -97, -61, -115, 110}, new byte[]{28, 5, -109, -69, 89, -16, -76, -24})), m2608V(m2630z(58)));
        linearLayoutM2616L3.addView(m2624U(AbstractC1387m.m2421h(new byte[]{-5, -11}, new byte[]{-102, -106, 33, 125, 45, -26, -117, 80}), AbstractC1387m.m2421h(new byte[]{-100, -67, 26}, new byte[]{-35, -110, 89, 124, 22, 20, -81, 40}), AbstractC1387m.m2421h(new byte[]{-90, -11, -50, -55, -40, -9, 68, 26, -74, -4, -45, -5, -40, -32}, new byte[]{-59, -103, -89, -92, -71, -125, 33, 69})), m2608V(m2630z(58)));
        linearLayoutM2616L3.addView(m2624U(AbstractC1387m.m2421h(new byte[]{-83, 0, 2, -26}, new byte[]{-52, 117, 118, -119, 65, -54, 80, -84}), AbstractC1387m.m2421h(new byte[]{-37, -113, 11, -34}, new byte[]{-102, -38, 95, -111, 18, 66, 40, 31}), AbstractC1387m.m2421h(new byte[]{16, 85, -8, 14, 36, -91, 73, 125, 0, 92, -27, 60, 36, -92, 88, 77}, new byte[]{115, 57, -111, 99, 69, -47, 44, 34})), m2608V(m2630z(58)));
        linearLayoutM2616L3.addView(m2624U(AbstractC1387m.m2421h(new byte[]{99, -60, -100, 105}, new byte[]{16, -67, -14, 10, -38, -86, -43, -1}), AbstractC1387m.m2421h(new byte[]{49, -47, -117, -117}, new byte[]{98, -120, -59, -56, -69, -106, -53, -67}), AbstractC1387m.m2421h(new byte[]{-103, 75, 108, 19, 66, 94, 5, -121, -119, 66, 113, 33, 80, 83, 14, -69}, new byte[]{-6, 39, 5, 126, 35, 42, 96, -40})), m2608V(m2630z(58)));
        linearLayoutM2627w.addView(linearLayoutM2616L3, m2606G());
        m2621R(linearLayoutM2627w, 8);
        LinearLayout linearLayoutM2616L4 = m2616L(8);
        linearLayoutM2616L4.addView(m2624U(AbstractC1387m.m2421h(new byte[]{33, -98, 78, 16, 75, -85, -82, 86, 50, -113, 68, 22, 87}, new byte[]{83, -5, 45, 121, 57, -56, -37, 58}), AbstractC1387m.m2421h(new byte[]{-87, 77, 53, -42, 72, -39, 73, -111, -88, 109, 53, -39, 72, -36, 73, -110, -88, 98, 52, -27, 73, -25, 72, -90}, new byte[]{121, -19, -27, 99, -103, 95, -103, 41}), AbstractC1387m.m2421h(new byte[]{-39, -3, 86, -59, 75, 81, 6, 126, -55, -12, 75, -9, 88, 64, 0, 72, -56, -14, 74, -60, 75, 81, 10, 78, -44}, new byte[]{-70, -111, 63, -88, 42, 37, 99, 33})), m2608V(m2630z(58)));
        linearLayoutM2616L4.addView(m2624U(AbstractC1387m.m2421h(new byte[]{65, -110, 0, -110, 28, 110, 5, 39, 85, -113, 28, -120}, new byte[]{39, -32, 111, -4, 104, 42, 96, 65}), AbstractC1387m.m2421h(new byte[]{-95, -119, Base64.padSymbol, -65, 10, -2, -48, -92, 60, 125, -75, 37, 11, -60, -47, -104}, new byte[]{-20, -56, 101, -97, -37, ByteCompanionObject.MAX_VALUE, 1, 38}), AbstractC1387m.m2421h(new byte[]{75, 49, 5, 58, -31, 87, 107, -40, 91, 56, 24, 8, -26, 81, 97, -23, 92, 2, 8, 50, -26, 81, 97, -12, 92}, new byte[]{40, 93, 108, 87, ByteCompanionObject.MIN_VALUE, 35, 14, -121})), m2608V(m2630z(58)));
        linearLayoutM2616L4.addView(m2624U(AbstractC1387m.m2421h(new byte[]{-72, -66, -26, -49, 47, 83, -66, 73, -91, -88, -13}, new byte[]{-54, -37, -121, -67, 107, 54, -40, 59}), AbstractC1387m.m2421h(new byte[]{43, 47, 28, 75, -65, 36, 53, 125, 43, 13, 28, 78, 79, 65, 100, 17, 121, 104, 121, 43, -43, 64, 94, 16, 69}, new byte[]{-5, -72, -52, -5, 111, -112, -27, -64}), AbstractC1387m.m2421h(new byte[]{-19, -91, -99, 102, 70, -72, 30, 3, -3, -84, ByteCompanionObject.MIN_VALUE, 84, 85, -87, 26, 46, -47, -83, -111, 109, 85, -93, 8, 40}, new byte[]{-114, -55, -12, 11, 39, -52, 123, 92})), m2608V(m2630z(58)));
        linearLayoutM2627w.addView(linearLayoutM2616L4, m2606G());
        linearLayout.addView(linearLayoutM2627w, m2606G());
        m2621R(linearLayout, 14);
        LinearLayout linearLayoutM2627w2 = m2627w();
        linearLayoutM2627w2.addView(m2611F(AbstractC1387m.m2421h(new byte[]{79, -28, -105, -21, 107, -114, 35, 63, 79, -31, 103, -91, 41, -4, 109, 113, 8, -85, -45, -91, 24, -4, 86, 113, 15}, new byte[]{-97, 123, 71, 117, -69, 44, -13, -95}), 13, i10, true));
        LinearLayout linearLayoutM2616L5 = m2616L(8);
        linearLayoutM2616L5.addView(m2611F(AbstractC1387m.m2421h(new byte[]{43, 108, 1, 54, 120, 107, 112, 65, 43, 115, 0, 13, 121, 87, 112, 77, -37, 29, 99, 92, 29, 5, 28, 16, 121, 29, 105, 92, 19, 4, 46, 16, 121, 29, 111, 93, 40, 5, 17}, new byte[]{-5, -51, -47, -116, -88, -43, -95, -63}), 16, f3760t, false), new LinearLayout.LayoutParams(0, -2, 1.0f));
        TextView textViewM2611F2 = m2611F(m2604D() ? AbstractC1387m.m2421h(new byte[]{88, -101, 19, -27, 72}, new byte[]{104, -69, 60, -59, ByteCompanionObject.MAX_VALUE, -101, 72, -108}) : AbstractC1387m.m2421h(new byte[]{6, -44, 123, Base64.padSymbol, 5, 45}, new byte[]{55, -12, 84, 29, 52, 29, -71, -118}), 18, f3765y, true);
        this.f3775k = textViewM2611F2;
        linearLayoutM2616L5.addView(textViewM2611F2, new LinearLayout.LayoutParams(-2, -2));
        linearLayoutM2627w2.addView(linearLayoutM2616L5, m2606G());
        SeekBar seekBar = new SeekBar(requireContext());
        this.f3776l = seekBar;
        seekBar.setMax(m2604D() ? 7 : 9);
        this.f3776l.setProgressTintList(ColorStateList.valueOf(f3762v));
        this.f3776l.setThumbTintList(ColorStateList.valueOf(-1));
        this.f3776l.setOnSeekBarChangeListener(new C1531d(this));
        linearLayoutM2627w2.addView(this.f3776l, new LinearLayout.LayoutParams(-1, m2630z(48)));
        linearLayoutM2627w2.addView(m2611F(AbstractC1387m.m2421h(new byte[]{-51, -53, 125, -90, 17, -110, -48, -38, -51, -26, 125, -92, 17, -106, -47, -17, -51, -21, 125, -82, 17, -104}, new byte[]{29, 86, -83, 22, -63, 45, 1, 90}), 14, i10, false), m2606G());
        HorizontalScrollView horizontalScrollView = new HorizontalScrollView(requireContext());
        horizontalScrollView.setHorizontalScrollBarEnabled(false);
        LinearLayout linearLayoutM2616L6 = m2616L(8);
        m2625t(linearLayoutM2616L6, AbstractC1387m.m2421h(new byte[]{59, 82, 3, -40, 16, 66, 38, 32}, new byte[]{-21, -55, -45, 96, -63, -60, -10, -98}), 0);
        m2625t(linearLayoutM2616L6, AbstractC1387m.m2421h(new byte[]{125, 77, 55, 11, 102, -109, 33, 89, -115, -3, -57, 99, 10, -59, 79, 55, 30, 6, 95}, new byte[]{-83, -42, -25, -77, -73, 21, -15, -25}), 1);
        m2625t(linearLayoutM2616L6, AbstractC1387m.m2421h(new byte[]{-124, Base64.padSymbol, 35, 98, -63, 30, -95, 35}, new byte[]{84, -96, -13, -36, 17, -83, 113, -101}), 2);
        m2625t(linearLayoutM2616L6, AbstractC1387m.m2421h(new byte[]{40, 8, -26, -33, 65, -98, 33, -19, -40, -66, 22, -80, 16, -4, 115, -123, 77, 69, -116, -79, 42, -3, 79}, new byte[]{-8, -107, 54, 97, -111, 45, -15, 85}), 3);
        m2625t(linearLayoutM2616L6, AbstractC1387m.m2421h(new byte[]{-64, 81, -31, -107, 113, 41, -72, 105, -64, 75, -32, -87}, new byte[]{16, -16, 48, 23, -95, -100, 104, -45}), 4);
        if (!m2604D()) {
            m2625t(linearLayoutM2616L6, AbstractC1387m.m2421h(new byte[]{35, -62, -58, 117, 5, 57, 5, -22, -45, 114, 54, 28, 85, 110, 87, -124, 70, -119, -84, 29, 111, 111, 107}, new byte[]{-13, 89, 22, -51, -44, -65, -43, 84}), 5);
        }
        if (!m2604D()) {
            m2625t(linearLayoutM2616L6, AbstractC1387m.m2421h(new byte[]{126, 48, 80, 31, 55, -26, 105, -78, 28, 114, Base64.padSymbol, 78, 83, -90, -56, -77, 44, 114, 52}, new byte[]{-82, -94, -127, -98, -26, 119, 73, 98}), 6);
        }
        horizontalScrollView.addView(linearLayoutM2616L6, new LinearLayout.LayoutParams(-2, -2));
        linearLayoutM2627w2.addView(horizontalScrollView, new LinearLayout.LayoutParams(-1, m2630z(64)));
        linearLayout.addView(linearLayoutM2627w2, m2606G());
        m2621R(linearLayout, 14);
        LinearLayout linearLayoutM2627w3 = m2627w();
        linearLayoutM2627w3.addView(m2611F(AbstractC1387m.m2421h(new byte[]{-99, 13, -22, 9, 114, -103, 85, -56, -99, 9, -22, 55, 114, -89}, new byte[]{77, -105, 58, -105, -94, 5, -123, 108}), 13, i10, true));
        LinearLayout linearLayoutM2616L7 = m2616L(8);
        linearLayoutM2616L7.addView(m2624U(AbstractC1387m.m2421h(new byte[]{40, -11, 70, 29, 101, -75, -73, 7, Base64.padSymbol, -12, 97, 22, 112, -122}, new byte[]{78, -121, 41, 115, 17, -14, -37, 102}), AbstractC1387m.m2421h(new byte[]{-78, -20, -92, -39, -60, -33, -116, -40, -77, -14, -92, -35, -60, -45, 124, -69, -39, -94, -54, -72, -91, -79, -30, -69, -48, -94, -54, -72, -89, -79, -30}, new byte[]{98, 114, 116, 104, 20, 97, 92, 107}), AbstractC1387m.m2421h(new byte[]{41, 5, 90, -70, 119, 12, 76, -108, 57, 12, 71, -120, 112, 10, 70, -91, 62, 54, 84, -69, 119, 11, 90, -108, 34, 12, 82, -93}, new byte[]{74, 105, 51, -41, 22, 120, 41, -53})), m2608V(m2630z(58)));
        linearLayoutM2616L7.addView(m2624U(AbstractC1387m.m2421h(new byte[]{69, -1, 103, 47, 120, -99, 45, -6, 97, -29, 103, 47, 102, -68, 38, -4, 66}, new byte[]{54, -117, 2, 74, 10, -12, 67, -99}), AbstractC1387m.m2421h(new byte[]{115, -68, -36, 114, Base64.padSymbol, 108, -122, 40, 114, -94, -36, 118, Base64.padSymbol, 96, 118, 74, 35, -13, -113, 19, 86, 3, -39}, new byte[]{-93, 34, 12, -61, -19, -46, 86, -101}), AbstractC1387m.m2421h(new byte[]{-55, -76, -59, -35, -97, -116, -8, 107, -39, -67, -40, -17, -115, -116, -8, 81, -40, -79, -62, -41, -95, -113, -11, 81, -49, -76, -13, -40, -101, -103, -23}, new byte[]{-86, -40, -84, -80, -2, -8, -99, 52})), m2608V(m2630z(58)));
        linearLayoutM2627w3.addView(linearLayoutM2616L7, m2606G());
        m2621R(linearLayoutM2627w3, 12);
        linearLayoutM2627w3.addView(m2617N(AbstractC1387m.m2421h(new byte[]{-120, 97, 73, -51, 88, -14, 94, Base64.padSymbol, -119, 113, 73, -58, 88, -3, 95, 9}, new byte[]{88, -13, -103, 115, -120, 70, -114, -123}), 1, AbstractC1387m.m2421h(new byte[]{-71, -99, 29, 95, 8, 43, 62, 62, -68, -101, 60, 76, 12, 45}, new byte[]{-35, -17, 116, 41, 109, 89, 109, 91}), AbstractC1387m.m2421h(new byte[]{5, 100, -52, 96, -107, 74, -98, 69, 0, 98, -13, 115, -98, 76}, new byte[]{97, 22, -91, 22, -16, 56, -51, 32})), m2606G());
        m2621R(linearLayoutM2627w3, 8);
        linearLayoutM2627w3.addView(m2617N(AbstractC1387m.m2421h(new byte[]{11, -102, -115, -81, 110, 119, -76, 64, 11, -75, -115, -87, 111, 78, -76, 65}, new byte[]{-37, 5, 93, 31, -65, -10, 101, -63}), 2, AbstractC1387m.m2421h(new byte[]{97, 97, -74, 85, -31, -23, -75, 58, 99, 83, -96, 71, -16, -49, -73, 62, 101}, new byte[]{17, 0, -59, 38, -124, -121, -46, 95}), AbstractC1387m.m2421h(new byte[]{62, -67, 107, 89, -93, 71, 47, -4, 60, -113, 125, 75, -78, ByteCompanionObject.MAX_VALUE, 45, -9, 58}, new byte[]{78, -36, 24, 42, -58, 41, 72, -103})), m2606G());
        linearLayout.addView(linearLayoutM2627w3, m2606G());
        return scrollView;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        this.f3767c.shutdownNow();
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        this.f3779o = true;
        this.f3766b.post(this.f3780p);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        this.f3779o = false;
        this.f3766b.removeCallbacksAndMessages(null);
        super.onStop();
    }

    /* JADX INFO: renamed from: t */
    public final void m2625t(LinearLayout linearLayout, String str, int i10) {
        MaterialButton materialButtonM2626u = m2626u(str);
        this.f3769e.put(Integer.valueOf(i10), materialButtonM2626u);
        materialButtonM2626u.setOnClickListener(new ViewOnClickListenerC0677d(this, i10));
        linearLayout.addView(materialButtonM2626u, new LinearLayout.LayoutParams(m2630z(str.length() > 10 ? 142 : AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR), m2630z(54)));
    }

    /* JADX INFO: renamed from: u */
    public final MaterialButton m2626u(String str) {
        MaterialButton materialButton = new MaterialButton(requireContext(), null);
        materialButton.setText(str);
        materialButton.setAllCaps(false);
        materialButton.setTextSize(14.0f);
        materialButton.setCornerRadius(m2630z(15));
        materialButton.setInsetTop(0);
        materialButton.setInsetBottom(0);
        m2622S(materialButton, false, f3762v);
        return materialButton;
    }

    /* JADX INFO: renamed from: w */
    public final LinearLayout m2627w() {
        LinearLayout linearLayout = new LinearLayout(requireContext());
        linearLayout.setOrientation(1);
        linearLayout.setShowDividers(2);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(0);
        gradientDrawable.setSize(m2630z(10), m2630z(10));
        linearLayout.setDividerDrawable(gradientDrawable);
        linearLayout.setPadding(m2630z(18), m2630z(16), m2630z(18), m2630z(18));
        GradientDrawable gradientDrawable2 = new GradientDrawable(GradientDrawable.Orientation.TL_BR, new int[]{Color.rgb(24, 35, 51), f3758r});
        gradientDrawable2.setCornerRadius(m2630z(20));
        gradientDrawable2.setStroke(m2630z(1), f3759s);
        linearLayout.setBackground(gradientDrawable2);
        return linearLayout;
    }

    /* JADX INFO: renamed from: x */
    public final void m2628x(int i10, float f8) {
        double d;
        double d10;
        String strM2421h = i10 == 2 ? AbstractC1387m.m2421h(new byte[]{-50, 98, 24, 79, 58, -28, -121, 34, -52, 87, 14, 81, 47, -17, -110, 38, -54, 118, 25, 89}, new byte[]{-66, 3, 107, 60, 95, -118, -32, 71}) : AbstractC1387m.m2421h(new byte[]{98, -86, -104, 23, -118, -9, 43, 21, 107, -88, -108, 19, -114, -15, 10, 2, 99}, new byte[]{6, -40, -15, 97, -17, -123, ByteCompanionObject.MAX_VALUE, 112});
        if (m2605E()) {
            d = 15.0d;
        } else {
            d = m2604D() ? 17.5d : 15.5d;
        }
        if (m2605E()) {
            d10 = 31.0d;
        } else {
            d10 = m2604D() ? 32.5d : 30.5d;
        }
        float fMax = (float) Math.max(d, Math.min(d10, this.f3777m.optDouble(strM2421h, 22.0d) + ((double) f8)));
        try {
            this.f3777m.put(strM2421h, fMax);
        } catch (Exception unused) {
        }
        m2615K(i10, fMax);
        JSONObject jSONObject = new JSONObject();
        int i11 = 5;
        try {
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{-6, 108, -81, 84}, new byte[]{ByteCompanionObject.MIN_VALUE, 3, -63, 49, 16, 90, -93, -29}), i10).put(AbstractC1387m.m2421h(new byte[]{-72, -14, 76, -11, -94}, new byte[]{-50, -109, 32, ByteCompanionObject.MIN_VALUE, -57, -45, 15, 10}), fMax);
        } catch (Exception unused2) {
        }
        this.f3767c.execute(new RunnableC0873n(this, AbstractC1387m.m2421h(new byte[]{90, -7, 47, -37, 105, 84, 105, 34, 74, -16, 50, -23, 124, 69, 97, 13, 92, -25, 39, -62, 125, 82, 105}, new byte[]{57, -107, 70, -74, 8, 32, 12, 125}), jSONObject, i11));
    }

    /* JADX INFO: renamed from: y */
    public final void m2629y(int i10, String str, String str2) {
        HashMap map = this.f3770f;
        int iIntValue = (((Integer) map.getOrDefault(str, 0)).intValue() + 1) % 4;
        map.put(str, Integer.valueOf(iIntValue));
        m2614J(iIntValue, str.endsWith(AbstractC1387m.m2421h(new byte[]{-48, -98, 113, -23}, new byte[]{-104, -5, 16, -99, 7, -84, -45, 26})) ? f3764x : f3765y, str);
        JSONObject jSONObject = new JSONObject();
        int i11 = 5;
        try {
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{117, 0, -81, 88}, new byte[]{6, 101, -50, 44, -55, 71, 79, -19}), i10).put(AbstractC1387m.m2421h(new byte[]{-101, 91, 76, -79, -121}, new byte[]{-19, 58, 32, -60, -30, 68, 80, 81}), iIntValue);
        } catch (Exception unused) {
        }
        this.f3767c.execute(new RunnableC0873n(this, str2, jSONObject, i11));
    }

    /* JADX INFO: renamed from: z */
    public final int m2630z(int i10) {
        return Math.round(i10 * getResources().getDisplayMetrics().density);
    }
}
