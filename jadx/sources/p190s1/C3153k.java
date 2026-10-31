package p190s1;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.core.graphics.Insets;
import com.example.navistart.ModernMainActivity;
import com.example.navistart.R;
import com.example.navistart.home.WebLauncherActivity;
import com.woha.appmanag.FilePickerActivity;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;
import p047e0.C1414r1;
import p078h0.C1652b;
import p098j0.AbstractC1920f;
import p098j0.C1916b;
import p098j0.C1917c;
import p098j0.C1919e;
import p098j0.EnumC1918d;
import p132m0.C2315k2;
import p132m0.C2332o;
import p132m0.C2366w1;
import p132m0.RunnableC2351s2;
import p138m7.DialogInterfaceOnDismissListenerC2404c;
import p142n0.EnumC2469d;
import p173q0.C3045i;
import p180r0.ViewOnClickListenerC3090c;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: s1.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3153k extends FrameLayout {

    /* JADX INFO: renamed from: r */
    public static final String f9052r = AbstractC1387m.m2421h(new byte[]{-90, 113, 3, -75, 69, 73, ByteCompanionObject.MIN_VALUE, -58, -123, 114, 59, -99, 99, 98, -121, -60, -108, 70, 34, -103, ByteCompanionObject.MAX_VALUE, 98, -98, -27, -108, 87, 42, -70, 126, 100, -92, -64, -112, 83, 14, -116, 97}, new byte[]{-11, 33, 79, -4, 17, 22, -63, -74});

    /* JADX INFO: renamed from: s */
    public static final String f9053s = AbstractC1387m.m2421h(new byte[]{-108, 43, 49, 18, 39, 79, -60, -40, -89, 46, 43, 31, 47, 120, -64, -55, -116, 35, 43, 18, 27}, new byte[]{-8, 74, 68, 124, 68, 39, -95, -86});

    /* JADX INFO: renamed from: b */
    public final C3167r f9054b;

    /* JADX INFO: renamed from: c */
    public final LinearLayout f9055c;

    /* JADX INFO: renamed from: d */
    public final HorizontalScrollView f9056d;

    /* JADX INFO: renamed from: e */
    public final ScrollView f9057e;

    /* JADX INFO: renamed from: f */
    public final Button f9058f;

    /* JADX INFO: renamed from: g */
    public final RunnableC3143f f9059g;

    /* JADX INFO: renamed from: h */
    public Insets f9060h;

    /* JADX INFO: renamed from: i */
    public boolean f9061i;

    /* JADX INFO: renamed from: j */
    public boolean f9062j;

    /* JADX INFO: renamed from: k */
    public int f9063k;

    /* JADX INFO: renamed from: l */
    public EnumC3161o f9064l;

    /* JADX INFO: renamed from: m */
    public LinearLayout f9065m;

    /* JADX INFO: renamed from: n */
    public TextView f9066n;

    /* JADX INFO: renamed from: o */
    public C1414r1 f9067o;

    /* JADX INFO: renamed from: p */
    public RunnableC3176v0 f9068p;

    /* JADX INFO: renamed from: q */
    public RunnableC3176v0 f9069q;

    public C3153k(WebLauncherActivity webLauncherActivity) {
        super(webLauncherActivity);
        final int i10 = 1;
        this.f9059g = new RunnableC3143f(this, 1);
        this.f9060h = Insets.NONE;
        C3167r c3167r = new C3167r(webLauncherActivity);
        this.f9054b = c3167r;
        c3167r.m5078a(webLauncherActivity);
        final int i11 = 0;
        setClipChildren(false);
        LinearLayout linearLayout = new LinearLayout(webLauncherActivity);
        this.f9055c = linearLayout;
        linearLayout.setGravity(17);
        linearLayout.setPadding(m4997h(9), m4997h(9), m4997h(9), m4997h(9));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-401203929);
        gradientDrawable.setCornerRadius(m4997h(27));
        linearLayout.setBackground(gradientDrawable);
        linearLayout.setElevation(m4997h(21));
        linearLayout.setOnClickListener(new ViewOnClickListenerC3137c(this, 0));
        HorizontalScrollView horizontalScrollView = new HorizontalScrollView(webLauncherActivity);
        this.f9056d = horizontalScrollView;
        horizontalScrollView.setFillViewport(false);
        horizontalScrollView.setHorizontalScrollBarEnabled(true);
        horizontalScrollView.setVerticalScrollBarEnabled(false);
        horizontalScrollView.setOverScrollMode(1);
        horizontalScrollView.setOnTouchListener(new ViewOnTouchListenerC3139d(this, 0));
        horizontalScrollView.addOnLayoutChangeListener(new View.OnLayoutChangeListener(this) { // from class: s1.e

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ C3153k f8994b;

            {
                this.f8994b = this;
            }

            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19) {
                C3153k c3153k;
                RunnableC3176v0 runnableC3176v0;
                C3153k c3153k2;
                RunnableC3176v0 runnableC3176v1;
                switch (i11) {
                    case 0:
                        if ((i14 - i12 != i18 - i16 || i15 - i13 != i19 - i17) && (runnableC3176v0 = (c3153k = this.f8994b).f9068p) != null) {
                            c3153k.removeCallbacks(runnableC3176v0);
                            c3153k.post(runnableC3176v0);
                        }
                        break;
                    default:
                        if ((i14 - i12 != i18 - i16 || i15 - i13 != i19 - i17) && (runnableC3176v1 = (c3153k2 = this.f8994b).f9068p) != null) {
                            c3153k2.removeCallbacks(runnableC3176v1);
                            c3153k2.post(runnableC3176v1);
                        }
                        break;
                }
            }
        });
        addView(horizontalScrollView);
        ScrollView scrollView = new ScrollView(webLauncherActivity);
        this.f9057e = scrollView;
        scrollView.setFillViewport(false);
        scrollView.setHorizontalScrollBarEnabled(false);
        scrollView.setVerticalScrollBarEnabled(true);
        scrollView.setOverScrollMode(1);
        scrollView.setOnTouchListener(new ViewOnTouchListenerC3139d(this, 1));
        scrollView.addOnLayoutChangeListener(new View.OnLayoutChangeListener(this) { // from class: s1.e

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ C3153k f8994b;

            {
                this.f8994b = this;
            }

            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19) {
                C3153k c3153k;
                RunnableC3176v0 runnableC3176v0;
                C3153k c3153k2;
                RunnableC3176v0 runnableC3176v1;
                switch (i10) {
                    case 0:
                        if ((i14 - i12 != i18 - i16 || i15 - i13 != i19 - i17) && (runnableC3176v0 = (c3153k = this.f8994b).f9068p) != null) {
                            c3153k.removeCallbacks(runnableC3176v0);
                            c3153k.post(runnableC3176v0);
                        }
                        break;
                    default:
                        if ((i14 - i12 != i18 - i16 || i15 - i13 != i19 - i17) && (runnableC3176v1 = (c3153k2 = this.f8994b).f9068p) != null) {
                            c3153k2.removeCallbacks(runnableC3176v1);
                            c3153k2.post(runnableC3176v1);
                        }
                        break;
                }
            }
        });
        addView(scrollView);
        EnumC3161o enumC3161oM4999k = m4999k();
        m4994e(enumC3161oM4999k == EnumC3161o.f9136d || enumC3161oM4999k == EnumC3161o.f9137e);
        Button button = new Button(webLauncherActivity);
        this.f9058f = button;
        button.setAllCaps(false);
        button.setTextColor(-1);
        button.setTextSize(30.0f);
        button.setMinWidth(0);
        button.setMinHeight(0);
        button.setPadding(0, 0, 0, 0);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setColor(-651807676);
        gradientDrawable2.setCornerRadius(m4997h(18));
        button.setBackground(gradientDrawable2);
        button.setContentDescription(AbstractC1387m.m2421h(new byte[]{110, -99, 78, -79, 19, -3, 32, 60, 110, -75, 78, -65, 18, -59, 33, 0, -98, -46, 33, -33, 115, -105, 77, 92, 11, -46, 37, -34, 79, 103, 32, 55, 110, -78, 79, -116, 19, -6, 33, 11, 110, -73, 79, -113, 19, -9}, new byte[]{-66, 2, -98, 15, -61, 71, -16, -116}));
        button.setOnClickListener(new ViewOnClickListenerC3137c(this, 1));
        addView(button);
        m5002n();
        post(new RunnableC3143f(this, 0));
    }

    /* JADX INFO: renamed from: i */
    public static int m4986i(C1919e c1919e, ArrayList arrayList) {
        String strM3009g = AbstractC1920f.m3009g(c1919e);
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            if (Objects.equals(strM3009g, AbstractC1920f.m3009g((C1919e) arrayList.get(i10)))) {
                return i10;
            }
        }
        return 0;
    }

    /* JADX INFO: renamed from: v */
    public static LinearLayout.LayoutParams m4987v() {
        return new LinearLayout.LayoutParams(-1, -2);
    }

    /* JADX INFO: renamed from: A */
    public final void m4988A(MotionEvent motionEvent) {
        int iM4997h;
        int iMax;
        float rawY;
        int i10;
        int[] iArr = new int[2];
        getLocationOnScreen(iArr);
        EnumC3161o enumC3161o = this.f9064l;
        boolean z9 = enumC3161o == EnumC3161o.f9136d || enumC3161o == EnumC3161o.f9137e;
        if (z9) {
            iM4997h = m4997h(144);
            int width = getWidth();
            Insets insets = this.f9060h;
            iMax = Math.max(1, ((width - insets.left) - insets.right) - iM4997h);
            rawY = motionEvent.getRawX() - iArr[0];
            i10 = this.f9060h.left;
        } else {
            iM4997h = m4997h(144);
            int height = getHeight();
            Insets insets2 = this.f9060h;
            iMax = Math.max(1, ((height - insets2.top) - insets2.bottom) - iM4997h);
            rawY = motionEvent.getRawY() - iArr[1];
            i10 = this.f9060h.top;
        }
        this.f9063k = Math.max(0, Math.min(100, Math.round((((rawY - i10) - (iM4997h / 2.0f)) * 100.0f) / iMax)));
        TextView textView = this.f9066n;
        if (textView != null) {
            textView.setText(AbstractC1387m.m2421h(new byte[]{-59, 14, -115, 29, -30, 108, -61, 33, -60, 23, -115, 27, -29, 84, 41, -71}, new byte[]{21, -111, 93, -93, 50, -37, 19, -103}) + this.f9063k + AbstractC1387m.m2421h(new byte[]{95}, new byte[]{122, 44, 56, 65, -107, -72, 88, 65}));
        }
        Button button = this.f9058f;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) button.getLayoutParams();
        Insets insets3 = this.f9060h;
        if (z9) {
            button.setTranslationX((Math.round((iMax * this.f9063k) / 100.0f) + insets3.left) - layoutParams.leftMargin);
        } else {
            button.setTranslationY((Math.round((iMax * this.f9063k) / 100.0f) + insets3.top) - layoutParams.topMargin);
        }
    }

    /* JADX INFO: renamed from: B */
    public final void m4989B() {
        EnumC3161o enumC3161oM4999k = m4999k();
        boolean z9 = enumC3161oM4999k == EnumC3161o.f9136d || enumC3161oM4999k == EnumC3161o.f9137e;
        this.f9056d.setVisibility((this.f9061i && z9) ? 0 : 8);
        this.f9057e.setVisibility((!this.f9061i || z9) ? 8 : 0);
    }

    /* JADX INFO: renamed from: a */
    public final void m4990a(RadioGroup radioGroup, String str, EnumC3161o enumC3161o) {
        RadioButton radioButton = new RadioButton(getContext());
        radioButton.setId(View.generateViewId());
        radioButton.setText(str);
        radioButton.setTextColor(-2563349);
        radioButton.setTextSize(13.0f);
        radioButton.setTag(enumC3161o);
        radioButton.setChecked(this.f9054b.m5079b() == enumC3161o);
        radioGroup.addView(radioButton, new RadioGroup.LayoutParams(0, -2, 1.0f));
    }

    /* JADX INFO: renamed from: b */
    public final void m4991b(RadioGroup radioGroup, String str, EnumC3163p enumC3163p) {
        RadioButton radioButton = new RadioButton(getContext());
        radioButton.setId(View.generateViewId());
        radioButton.setText(str);
        radioButton.setTextColor(-2563349);
        radioButton.setTextSize(14.0f);
        radioButton.setTag(enumC3163p);
        radioButton.setChecked(this.f9054b.m5081d() == enumC3163p);
        radioGroup.addView(radioButton, new RadioGroup.LayoutParams(0, -2, 1.0f));
    }

    /* JADX INFO: renamed from: c */
    public final void m4992c(RadioGroup radioGroup, String str, EnumC3165q enumC3165q) {
        RadioButton radioButton = new RadioButton(getContext());
        radioButton.setId(View.generateViewId());
        radioButton.setText(str);
        radioButton.setTextColor(-2563349);
        radioButton.setTextSize(14.0f);
        radioButton.setTag(enumC3165q);
        radioButton.setChecked(this.f9054b.m5082e() == enumC3165q);
        radioGroup.addView(radioButton, new RadioGroup.LayoutParams(0, -2, 1.0f));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: d */
    public final void m4993d() {
        FrameLayout.LayoutParams layoutParams;
        EnumC3161o enumC3161oM4999k = m4999k();
        EnumC3161o enumC3161o = EnumC3161o.f9136d;
        boolean z9 = (enumC3161oM4999k == enumC3161o || enumC3161oM4999k == EnumC3161o.f9137e) ? 1 : 0;
        m4994e(z9);
        this.f9055c.setOrientation(!z9);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
        int iM5080c = this.f9062j ? this.f9063k : this.f9054b.m5080c();
        int iMax = Math.max(getWidth(), getResources().getDisplayMetrics().widthPixels);
        int iMax2 = Math.max(getHeight(), getResources().getDisplayMetrics().heightPixels);
        Button button = this.f9058f;
        if (z9 != 0) {
            layoutParams2.gravity = (enumC3161oM4999k == enumC3161o ? 48 : 80) | 1;
            int iM4997h = m4997h(144);
            layoutParams = new FrameLayout.LayoutParams(iM4997h, m4997h(36));
            layoutParams.gravity = (enumC3161oM4999k != enumC3161o ? 80 : 48) | 3;
            Insets insets = this.f9060h;
            layoutParams.leftMargin = Math.round((Math.max(0, ((iMax - insets.left) - insets.right) - iM4997h) * iM5080c) / 100.0f) + this.f9060h.left;
            Insets insets2 = this.f9060h;
            if (enumC3161oM4999k == enumC3161o) {
                layoutParams.topMargin = insets2.top;
            } else {
                layoutParams.bottomMargin = insets2.bottom;
            }
            button.setText(enumC3161oM4999k == enumC3161o ? AbstractC1387m.m2421h(new byte[]{13, 21, -85}, new byte[]{-17, -103, 47, 111, 58, 114, 116, 103}) : AbstractC1387m.m2421h(new byte[]{62, 98, -67}, new byte[]{-36, -18, 62, -58, -92, 42, -53, 46}));
        } else {
            EnumC3161o enumC3161o2 = EnumC3161o.f9134b;
            layoutParams2.gravity = (enumC3161oM4999k == enumC3161o2 ? 3 : 5) | 16;
            int iM4997h2 = m4997h(144);
            layoutParams = new FrameLayout.LayoutParams(m4997h(36), iM4997h2);
            layoutParams.gravity = (enumC3161oM4999k == enumC3161o2 ? 3 : 5) | 48;
            Insets insets3 = this.f9060h;
            layoutParams.topMargin = Math.round((Math.max(0, ((iMax2 - insets3.top) - insets3.bottom) - iM4997h2) * iM5080c) / 100.0f) + this.f9060h.top;
            Insets insets4 = this.f9060h;
            if (enumC3161oM4999k == enumC3161o2) {
                layoutParams.leftMargin = insets4.left;
            } else {
                layoutParams.rightMargin = insets4.right;
            }
            button.setText(enumC3161oM4999k == enumC3161o2 ? AbstractC1387m.m2421h(new byte[]{40, -110, -13}, new byte[]{-54, 18, 73, 45, -102, -80, -74, 59}) : AbstractC1387m.m2421h(new byte[]{0, -99, 75}, new byte[]{-30, 29, -14, 114, 107, -98, 118, -42}));
        }
        Insets insets5 = this.f9060h;
        layoutParams2.leftMargin = insets5.left;
        layoutParams2.topMargin = insets5.top;
        layoutParams2.rightMargin = insets5.right;
        layoutParams2.bottomMargin = insets5.bottom;
        if (z9 != 0) {
            layoutParams2.width = -1;
        } else {
            layoutParams2.height = -1;
        }
        (z9 != 0 ? this.f9056d : this.f9057e).setLayoutParams(layoutParams2);
        button.setLayoutParams(layoutParams);
        Runnable runnable = this.f9068p;
        if (runnable != null) {
            removeCallbacks(runnable);
            post(runnable);
        }
    }

    /* JADX INFO: renamed from: e */
    public final void m4994e(boolean z9) {
        ViewGroup viewGroup = z9 ? this.f9056d : this.f9057e;
        LinearLayout linearLayout = this.f9055c;
        if (linearLayout.getParent() != viewGroup) {
            ViewGroup viewGroup2 = (ViewGroup) linearLayout.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeView(linearLayout);
            }
            viewGroup.addView(linearLayout, new ViewGroup.LayoutParams(-2, -2));
        }
        m4989B();
    }

    /* JADX INFO: renamed from: f */
    public final LinearLayout m4995f() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setGravity(17);
        C3167r c3167r = this.f9054b;
        linearLayout.setOrientation(((c3167r.m5079b() == EnumC3161o.f9136d || c3167r.m5079b() == EnumC3161o.f9137e) ? 1 : 0) ^ 1);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        return linearLayout;
    }

    /* JADX INFO: renamed from: g */
    public final LinearLayout.LayoutParams m4996g() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(m4997h(78), m4997h(78));
        layoutParams.setMargins(m4997h(3), m4997h(3), m4997h(3), m4997h(3));
        return layoutParams;
    }

    /* JADX INFO: renamed from: h */
    public final int m4997h(int i10) {
        return Math.round(i10 * getResources().getDisplayMetrics().density);
    }

    /* JADX INFO: renamed from: j */
    public final void m4998j(boolean z9) {
        if (this.f9062j) {
            C3167r c3167r = this.f9054b;
            if (z9) {
                c3167r.f9201a.edit().putString(C3167r.f9192c, this.f9064l.name()).apply();
                c3167r.f9201a.edit().putInt(C3167r.f9193d, Math.max(0, Math.min(100, this.f9063k))).apply();
            }
            this.f9062j = false;
            this.f9064l = null;
            Button button = this.f9058f;
            button.setOnTouchListener(null);
            button.setTranslationX(0.0f);
            button.setTranslationY(0.0f);
            button.setContentDescription(AbstractC1387m.m2421h(new byte[]{-45, -82, 43, -33, 21, -7, -77, -84, -45, -122, 43, -47, 20, -63, -78, -112, 35, -31, 68, -79, 117, -109, -34, -52, -74, -31, 64, -80, 73, 99, -77, -89, -45, -127, 42, -30, 21, -2, -78, -101, -45, -124, 42, -31, 21, -13}, new byte[]{3, 49, -5, 97, -59, 67, 99, 28}));
            LinearLayout linearLayout = this.f9065m;
            if (linearLayout != null) {
                removeView(linearLayout);
            }
            this.f9065m = null;
            this.f9066n = null;
            m4993d();
            if (c3167r.m5083f()) {
                m5000l();
            } else {
                m5012y();
            }
            C1414r1 c1414r1 = this.f9067o;
            this.f9067o = null;
            if (c1414r1 != null) {
                C3153k c3153k = (C3153k) c1414r1.f3393b;
                RadioGroup radioGroup = (RadioGroup) c1414r1.f3394c;
                TextView textView = (TextView) c1414r1.f3395d;
                AlertDialog alertDialog = (AlertDialog) c1414r1.f3396e;
                C3167r c3167r2 = c3153k.f9054b;
                if (!z9) {
                    EnumC3161o enumC3161oM5079b = c3167r2.m5079b();
                    for (int i10 = 0; i10 < radioGroup.getChildCount(); i10++) {
                        View childAt = radioGroup.getChildAt(i10);
                        if ((childAt instanceof RadioButton) && enumC3161oM5079b == childAt.getTag()) {
                            ((RadioButton) childAt).setChecked(true);
                            break;
                        }
                    }
                }
                textView.setText(AbstractC1387m.m2421h(new byte[]{29, -77, 74, -31, -15, 6, -94, -66, 29, -102, 74, -22, -15, 0, -94, -72, 29, -103, -70, -113, -101, 109, -49, -48, 115, -4, 37, -113, -101, 109, -54, 32, 29, -98, 74, -21, -15, 3, -94, -69, 28, -96, -70, -113, -101, 108, -14, -48, 125, -3, 21, 101, 1}, new byte[]{-51, 44, -102, 95, 33, -67, 114, 0}) + c3167r2.m5080c() + AbstractC1387m.m2421h(new byte[]{87}, new byte[]{114, -10, -56, -77, -118, 0, 114, -62}));
                if (alertDialog.isShowing()) {
                    return;
                }
                alertDialog.show();
            }
        }
    }

    /* JADX INFO: renamed from: k */
    public final EnumC3161o m4999k() {
        EnumC3161o enumC3161o;
        return (!this.f9062j || (enumC3161o = this.f9064l) == null) ? this.f9054b.m5079b() : enumC3161o;
    }

    /* JADX INFO: renamed from: l */
    public final void m5000l() {
        removeCallbacks(this.f9059g);
        boolean zM5083f = this.f9054b.m5083f();
        Button button = this.f9058f;
        if (zM5083f) {
            this.f9061i = false;
            m4989B();
            button.setVisibility(0);
        } else {
            this.f9061i = true;
            m4989B();
            button.setVisibility(8);
        }
    }

    /* JADX INFO: renamed from: m */
    public final ImageButton m5001m(String str, Drawable drawable) {
        ImageButton imageButton = new ImageButton(getContext());
        imageButton.setImageDrawable(drawable);
        imageButton.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        imageButton.setPadding(m4997h(14), m4997h(14), m4997h(14), m4997h(14));
        imageButton.setBackgroundColor(0);
        if (str == null) {
            str = AbstractC1387m.m2421h(new byte[]{-40, 62, 120, -85, 92, 18, 46, 92, -39, 40, 120, -84, 92, 19, 47, 104}, new byte[]{8, -86, -88, 30, -116, -85, -1, -35});
        }
        imageButton.setContentDescription(str);
        return imageButton;
    }

    /* JADX INFO: renamed from: n */
    public final void m5002n() {
        ResolveInfo resolveInfoResolveActivity;
        int i10;
        LinearLayout linearLayout = this.f9055c;
        linearLayout.removeAllViews();
        final int i11 = 0;
        for (int i12 = 0; i12 < 6; i12++) {
            final C1919e c1919eM3007e = AbstractC1920f.m3007e(getContext(), f9053s + i12);
            if (AbstractC1920f.m3006d(c1919eM3007e)) {
                ImageButton imageButtonM5001m = m5001m(c1919eM3007e.f5066i, c1919eM3007e.f5067j);
                imageButtonM5001m.setOnClickListener(new View.OnClickListener(this) { // from class: s1.g

                    /* JADX INFO: renamed from: c */
                    public final /* synthetic */ C3153k f9006c;

                    {
                        this.f9006c = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i11) {
                            case 0:
                                this.f9006c.m5004p(c1919eM3007e);
                                break;
                            case 1:
                                this.f9006c.m5004p(c1919eM3007e);
                                break;
                            default:
                                this.f9006c.m5004p(c1919eM3007e);
                                break;
                        }
                    }
                });
                linearLayout.addView(imageButtonM5001m, m4996g());
            }
        }
        C3167r c3167r = this.f9054b;
        final int i13 = 2;
        if (c3167r.f9201a.getBoolean(C3167r.f9196g, false)) {
            LinearLayout linearLayoutM4995f = m4995f();
            String strLoadString = C1652b.m2745o().loadString(f9052r, "");
            if (strLoadString.isEmpty()) {
                i10 = 0;
            } else {
                i10 = 0;
                for (String str : strLoadString.split(AbstractC1387m.m2421h(new byte[]{10}, new byte[]{49, -5, -21, -115, 50, -20, 87, -25}))) {
                    final C1919e c1919eM3005c = AbstractC1920f.m3005c(getContext(), str);
                    if (c1919eM3005c.f5058a == EnumC1918d.f5055d && AbstractC1920f.m3006d(c1919eM3005c)) {
                        ImageButton imageButtonM5001m2 = m5001m(c1919eM3005c.f5066i, c1919eM3005c.f5067j);
                        imageButtonM5001m2.setOnClickListener(new View.OnClickListener(this) { // from class: s1.g

                            /* JADX INFO: renamed from: c */
                            public final /* synthetic */ C3153k f9006c;

                            {
                                this.f9006c = this;
                            }

                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                switch (i13) {
                                    case 0:
                                        this.f9006c.m5004p(c1919eM3005c);
                                        break;
                                    case 1:
                                        this.f9006c.m5004p(c1919eM3005c);
                                        break;
                                    default:
                                        this.f9006c.m5004p(c1919eM3005c);
                                        break;
                                }
                            }
                        });
                        linearLayoutM4995f.addView(imageButtonM5001m2, m4996g());
                        i10++;
                        if (i10 >= 6) {
                            break;
                        }
                    }
                }
            }
            if (i10 == 0) {
                ImageButton imageButtonM5001m3 = m5001m(AbstractC1387m.m2421h(new byte[]{-114, -11, 44, 96, 84, -8, -120, -23, -29, -72, 73, 5, 49, -86, 24, -23, -20, -72, 65, 5, Base64.padSymbol, -85, 45, 25, -113, -24, 44, 101, 85, -51, 120, -115, -114, -35, 44, 110, 85, -49, 120, -124, -114, -48, 44, 108}, new byte[]{94, 104, -4, -43, -123, 122, -88, 57}), getContext().getDrawable(R.drawable.split_ico));
                imageButtonM5001m3.setEnabled(false);
                imageButtonM5001m3.setAlpha(0.35f);
                linearLayoutM4995f.addView(imageButtonM5001m3, m4996g());
            }
            linearLayout.addView(linearLayoutM4995f);
        }
        if (c3167r.f9201a.getBoolean(C3167r.f9195f, false)) {
            LinearLayout linearLayoutM4995f2 = m4995f();
            ArrayList arrayListM3717x = C2332o.m3717x();
            PackageManager packageManager = getContext().getPackageManager();
            int i14 = 0;
            for (int i15 = 0; i15 < arrayListM3717x.size() && i14 < 6; i15++) {
                Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage((String) arrayListM3717x.get(i15));
                if (launchIntentForPackage != null && (resolveInfoResolveActivity = packageManager.resolveActivity(launchIntentForPackage, 0)) != null) {
                    final C1919e c1919eM2999b = C1919e.m2999b(resolveInfoResolveActivity, packageManager);
                    ImageButton imageButtonM5001m4 = m5001m(c1919eM2999b.f5066i, c1919eM2999b.f5067j);
                    final int i16 = 1;
                    imageButtonM5001m4.setOnClickListener(new View.OnClickListener(this) { // from class: s1.g

                        /* JADX INFO: renamed from: c */
                        public final /* synthetic */ C3153k f9006c;

                        {
                            this.f9006c = this;
                        }

                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            switch (i16) {
                                case 0:
                                    this.f9006c.m5004p(c1919eM2999b);
                                    break;
                                case 1:
                                    this.f9006c.m5004p(c1919eM2999b);
                                    break;
                                default:
                                    this.f9006c.m5004p(c1919eM2999b);
                                    break;
                            }
                        }
                    });
                    linearLayoutM4995f2.addView(imageButtonM5001m4, m4996g());
                    i14++;
                }
            }
            if (i14 == 0) {
                ImageButton imageButtonM5001m5 = m5001m(AbstractC1387m.m2421h(new byte[]{112, 22, -114, -114, 55, -104, 49, -97, 113, 0, -113, -68, 55, -97, 49, -98, 112, 52, 126, -18, 88, -10, 96, -52, 24, 81, -27, -18, 89, -9, 86, -52, 21, 81, -29, -18, 95, -10, 111, 60, 112, 57, -114, -119, -57, -9, 92, -52, 21, 81, -29, -17, 105, 7, 48, -85, 112, 49, -114, -127, 54, -92, 49, -99, 112, 59, -114, -114}, new byte[]{-96, -127, 94, 62, -25, 39, -32, 28}), getContext().getDrawable(R.drawable.ic_recent_apps));
                imageButtonM5001m5.setEnabled(false);
                imageButtonM5001m5.setAlpha(0.35f);
                linearLayoutM4995f2.addView(imageButtonM5001m5, m4996g());
            }
            linearLayout.addView(linearLayoutM4995f2);
        }
        ImageButton imageButtonM5001m6 = m5001m(AbstractC1387m.m2421h(new byte[]{-51, ByteCompanionObject.MIN_VALUE, 18, -116, -37, 90, 125, 113, -52, -99, 18, -126, -38, 98, 124, 73, -51, -91, -30, -20, -79, 11, 28, 34, -98, -51, ByteCompanionObject.MAX_VALUE, -19, -115, 11, 25, 34, -99, -51, 114}, new byte[]{29, 29, -62, 60, 10, -37, -84, -13}), getContext().getDrawable(android.R.drawable.ic_menu_preferences));
        imageButtonM5001m6.setOnClickListener(new ViewOnClickListenerC3137c(this, 2));
        linearLayout.addView(imageButtonM5001m6, m4996g());
        m4993d();
    }

    /* JADX INFO: renamed from: o */
    public final GradientDrawable m5003o(int i10, int i11, int i12) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i10);
        gradientDrawable.setCornerRadius(m4997h(i11));
        gradientDrawable.setStroke(m4997h(1), i12);
        return gradientDrawable;
    }

    /* JADX INFO: renamed from: p */
    public final void m5004p(C1919e c1919e) {
        try {
            if (!m5005q(c1919e)) {
                C1652b.m2734a();
                C1652b.m2737f().m2994j(c1919e, null);
            }
            if (this.f9054b.m5083f()) {
                m5000l();
            }
        } catch (RuntimeException unused) {
            AbstractC3656k.m5878x(getContext(), AbstractC1387m.m2421h(new byte[]{15, 14, 3, -26, -84, -66, -107, -69, 14, 24, 3, -31, -84, -65, -108, -113, -1, 75, 82, -125, -55, -41, -3, -21, 88, 74, 99, -126, -3, 39, -108, -121, 15, 47, 3, -25, -84, -71, -107, -69, 14, 24, 2, -48, -84, -72, -108, -121, 15, 36}, new byte[]{-33, -102, -45, 83, 124, 7, 68, 58}));
            m5006r();
        }
    }

    /* JADX INFO: renamed from: q */
    public final boolean m5005q(C1919e c1919e) {
        if (c1919e.f5058a != EnumC1918d.f5053b || c1919e.f5059b == null) {
            return false;
        }
        Context context = getContext();
        if (!(context instanceof WebLauncherActivity)) {
            return false;
        }
        WebLauncherActivity webLauncherActivity = (WebLauncherActivity) context;
        C1652b.m2734a();
        int guDisplayID = C1652b.m2744n().getGuDisplayID();
        Bundle bundle = new Bundle();
        bundle.putInt(AbstractC1387m.m2421h(new byte[]{-87, -104, -81}, new byte[]{-51, -15, -36, -18, -118, -40, 18, 26}), guDisplayID);
        EnumC2469d enumC2469d = c1919e.f5059b;
        if (enumC2469d == EnumC2469d.f6770l) {
            webLauncherActivity.m1649G(C2332o.class, bundle);
            return true;
        }
        if (enumC2469d == EnumC2469d.f6763h0) {
            webLauncherActivity.m1649G(C2315k2.class, bundle);
            return true;
        }
        if (enumC2469d != EnumC2469d.f6713A0) {
            return false;
        }
        bundle.putBoolean(AbstractC1387m.m2421h(new byte[]{90, -112, ByteCompanionObject.MIN_VALUE, 42, -48, 104, 108, -51, 103, -110, -120, 52, -34, 111, 93, -63, 81, -107, -126, 54}, new byte[]{56, -15, -25, 88, -79, 29, 2, -87}), true);
        webLauncherActivity.m1649G(C2366w1.class, bundle);
        return true;
    }

    /* JADX INFO: renamed from: r */
    public final void m5006r() {
        RunnableC3143f runnableC3143f = this.f9059g;
        removeCallbacks(runnableC3143f);
        if (this.f9054b.m5083f() && this.f9061i) {
            postDelayed(runnableC3143f, 5000L);
        }
    }

    /* JADX INFO: renamed from: s */
    public final TextView m5007s(String str) {
        TextView textViewM5011x = m5011x(12, -11486750, str);
        textViewM5011x.setLetterSpacing(0.08f);
        textViewM5011x.setPadding(0, 0, 0, m4997h(8));
        return textViewM5011x;
    }

    /* JADX INFO: renamed from: t */
    public final Button m5008t(String str, boolean z9) {
        Button button = new Button(getContext());
        button.setText(str);
        button.setTextSize(16.0f);
        button.setTextColor(-1);
        button.setAllCaps(false);
        button.setMinHeight(0);
        button.setMinimumHeight(0);
        button.setBackground(m5003o(z9 ? -14381640 : -14668744, 15, z9 ? -11158301 : -13351337));
        return button;
    }

    /* JADX INFO: renamed from: u */
    public final LinearLayout m5009u() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.setPadding(m4997h(16), m4997h(14), m4997h(16), m4997h(14));
        linearLayout.setBackground(m5003o(-15195860, 17, -14010040));
        return linearLayout;
    }

    /* JADX INFO: renamed from: w */
    public final SwitchCompat m5010w(String str) {
        SwitchCompat switchCompat = new SwitchCompat(getContext());
        switchCompat.setText(str);
        switchCompat.setTextColor(-1511692);
        switchCompat.setTextSize(15.0f);
        switchCompat.setGravity(16);
        switchCompat.setPadding(0, m4997h(2), 0, m4997h(2));
        return switchCompat;
    }

    /* JADX INFO: renamed from: x */
    public final TextView m5011x(int i10, int i11, String str) {
        TextView textView = new TextView(getContext());
        textView.setText(str);
        textView.setTextSize(i10);
        textView.setTextColor(i11);
        return textView;
    }

    /* JADX INFO: renamed from: y */
    public final void m5012y() {
        this.f9061i = true;
        m4989B();
        this.f9058f.setVisibility(8);
        m5006r();
    }

    /* JADX INFO: renamed from: z */
    public final void m5013z() {
        removeCallbacks(this.f9059g);
        final AlertDialog[] alertDialogArr = new AlertDialog[1];
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.setPadding(m4997h(24), m4997h(22), m4997h(24), m4997h(24));
        linearLayout.setBackgroundColor(-16051943);
        TextView textViewM5011x = m5011x(12, -11486750, AbstractC1387m.m2421h(new byte[]{-57, 44, 0, 12, 87, 120, -13, 80, -57, 17, 0, 2, 87, 64, -13, 104, -57, 33, -16, -42, -60, -115, 3, -70, 88, -4, -107}, new byte[]{23, -79, -48, -100, -121, -39, 35, -14}));
        textViewM5011x.setLetterSpacing(0.09f);
        linearLayout.addView(textViewM5011x);
        TextView textViewM5011x2 = m5011x(27, -1, AbstractC1387m.m2421h(new byte[]{117, -63, 98, 116, -77, 40, 89, -71, 117, -27, 99, 72, 67, 69, 50, -36, 21, -113, 49, 20, -34, 68, 14, -36, 16, -113, 50, 20, -45}, new byte[]{-91, 94, -78, -60, 99, -107, -119, 12}));
        textViewM5011x2.setPadding(0, m4997h(5), 0, m4997h(3));
        linearLayout.addView(textViewM5011x2);
        TextView textViewM5011x3 = m5011x(14, -6575430, AbstractC1387m.m2421h(new byte[]{118, -96, -81, 63, 96, 60, -84, 123, 119, -67, -81, 49, 97, 4, -84, 123, 118, -120, 95, 95, 14, 109, -61, 41, 20, -19, -54, 95, 5, 109, -56, 41, 27, -19, -57, 95, 4, -111, 93, 40, 38, -19, -49, 94, 48, 109, -62, 41, 24, -19, -60, 95, 15, 109, -53, 41, 19, -19, -62, 95, 9, 109, -56, -39, 118, -123, 95, 95, 0, 108, -10, 40, 39, -20, -3, 94, 49, 108, -10, 41, 19, 29, -81, 59, 97, 8, -83, 64, 119, -68, -82, 13, 97, 15, -83, 65, 119, -78, 95, 95, 14, 109, -51, 41, 27, -19, -54, 95, 10, 109, -59, -41}, new byte[]{-90, Base64.padSymbol, ByteCompanionObject.MAX_VALUE, -113, -79, -67, 125, -7}));
        textViewM5011x3.setPadding(0, 0, 0, m4997h(18));
        linearLayout.addView(textViewM5011x3);
        LinearLayout linearLayoutM5009u = m5009u();
        linearLayoutM5009u.addView(m5007s(AbstractC1387m.m2421h(new byte[]{-92, -59, 111, -8, -3, 75, -58, 70, -92, -50, 111, -13, -3, 68, -58, 75, -92, -49}, new byte[]{116, 90, -65, 102, 45, -39, 22, -45})));
        final SwitchCompat switchCompatM5010w = m5010w(AbstractC1387m.m2421h(new byte[]{-98, -53, -65, 102, -8, 21, 120, 62, -98, -25, -65, 100, -8, 21, 120, 56, -97, -36, -65, 97, -8, 22, 120, 58, -98, -29, 79, 5, -88, 71, 18, 81, -50, -118, -28, 4, -101, 71, 24, 81, -52, -118, -29, -12, -7, 40, 120, 48, -98, -26, -65, 97, -7, 44, 121, 12}, new byte[]{78, 91, 111, -44, 41, -105, -88, ByteCompanionObject.MIN_VALUE}));
        C3167r c3167r = this.f9054b;
        switchCompatM5010w.setChecked(c3167r.m5083f());
        linearLayoutM5009u.addView(switchCompatM5010w, m4987v());
        SwitchCompat switchCompatM5010w2 = m5010w(AbstractC1387m.m2421h(new byte[]{-127, -45, -7, -104, -103, -51, -97, 86, ByteCompanionObject.MIN_VALUE, -62, -7, -104, -104, -15, -98, 104, -127, -13, -8, -83, -104, -9, -97, 90, -127, -13, -7, -105, -104, -9, -97, 93, 113, -109, -106, -6, -13, -97, -1, 56, -29, -109, -103, -5, -58, -98, -58, 56, -28, -109, -102, -6, -10, 111, -97, 83, -127, -3, -8, -88, -104, -11, -97, 88}, new byte[]{81, 67, 41, 42, 72, 79, 79, -24}));
        SharedPreferences sharedPreferences = c3167r.f9201a;
        switchCompatM5010w2.setChecked(sharedPreferences.getBoolean(C3167r.f9197h, true));
        linearLayoutM5009u.addView(switchCompatM5010w2, m4987v());
        final SwitchCompat switchCompatM5010w3 = m5010w(AbstractC1387m.m2421h(new byte[]{-103, 81, -86, 47, 100, -110, -112, 15, -103, 121, -85, 26, 100, -102, -112, 15, -104, 76, -85, 29, -108, -8, -1, 111, -14, 30, -54, 65, 6, -8, -16, 110, -57, 31, -13, 64, 55, -7, -50, -97, -103, 113, -86, 33, 100, -107, -112, 10, -103, 117, -85, 29, -108, -8, -1, 111, -9, 30, -56, 65, 1, -7, -64, 110, -52, -18, -86, 42, 100, -104, -111, 60, -103, 115, -85, 22, 100, -99, -111, 63, -103, 126}, new byte[]{73, -50, 122, -111, -76, 40, 64, -65}));
        switchCompatM5010w3.setChecked(sharedPreferences.getBoolean(C3167r.f9198i, true));
        linearLayoutM5009u.addView(switchCompatM5010w3, m4987v());
        TextView textViewM5011x4 = m5011x(14, -6575430, AbstractC1387m.m2421h(new byte[]{-98, -52, 124, -3, -36, 49, 35, 80, -98, -40, -116, -109, -78, 97, 72, 60, -2, -72, 30, -109, -67, 96, 125, Base64.padSymbol, -57, -72, 25, -109, -66, 97, 77, -52, -98, -45, 124, -3, -36, 51, 35, 86, -98, -40}, new byte[]{78, 104, -84, 67, 13, -79, -13, -20}));
        textViewM5011x4.setPadding(0, m4997h(10), 0, m4997h(4));
        linearLayoutM5009u.addView(textViewM5011x4);
        RadioGroup radioGroup = new RadioGroup(getContext());
        radioGroup.setOrientation(0);
        m4992c(radioGroup, AbstractC1387m.m2421h(new byte[]{-85, 50, -59, -44, 88, 82, -36, 30, -86, 40, -59, -42, 89, 96, -36, 23, -86, 35, -59, -33}, new byte[]{123, -88, 21, 102, -120, -30, 12, -86}), EnumC3165q.f9148b);
        m4992c(radioGroup, AbstractC1387m.m2421h(new byte[]{-36, 67, -115, 112, Base64.padSymbol, -33, -51, -48, -36, 97, -115, 117, 60, -23, -51, -36}, new byte[]{12, -40, 93, -56, -19, 98, 29, 101}), EnumC3165q.f9149c);
        linearLayoutM5009u.addView(radioGroup, m4987v());
        TextView textViewM5011x5 = m5011x(14, -6575430, AbstractC1387m.m2421h(new byte[]{-47, -84, -75, -103, 3, 107, -122, -111, -47, -127, -75, -101, 3, 111, -121, -92, -47, -116, -75, -111, 3, 97, 119, -63, -70, -31, -35, -7, 110, 4, -30, -63, -72, -31, -40, -7, 109, 4, -28, -63, -65, 17, -75, -110, 3, 106, -122, -109, -47, -117, -75, -103}, new byte[]{1, 49, 101, 41, -45, -44, 87, 17}));
        textViewM5011x5.setPadding(0, m4997h(8), 0, m4997h(4));
        linearLayoutM5009u.addView(textViewM5011x5);
        RadioGroup radioGroup2 = new RadioGroup(getContext());
        radioGroup2.setOrientation(0);
        m4991b(radioGroup2, AbstractC1387m.m2421h(new byte[]{-78, 99, 71, 67, 89, -127, -22, 74, -78, 71, 71, 67, 88, -68, -21, 112, -78, 64, 71, 70, 89, -115, -22, 79, -78, 78}, new byte[]{98, -16, -105, -3, -120, 1, 58, -14}), EnumC3163p.f9139b);
        m4991b(radioGroup2, AbstractC1387m.m2421h(new byte[]{33, 78, -54, -115, -86, 13, 20, 57, 33, 100, -54, -126, -85, Base64.padSymbol, 21, 0, 32, 80, -54, -123, -85, 51}, new byte[]{-15, -36, 26, 56, 123, -115, -59, -69}), EnumC3163p.f9140c);
        linearLayoutM5009u.addView(radioGroup2, m4987v());
        RadioGroup radioGroup3 = radioGroup2;
        RadioGroup radioGroup4 = radioGroup;
        RunnableC2351s2 runnableC2351s2 = new RunnableC2351s2(1, this, radioGroup4, textViewM5011x5, radioGroup3);
        radioGroup4.setOnCheckedChangeListener(new C3045i(1, runnableC2351s2));
        runnableC2351s2.run();
        final SwitchCompat switchCompatM5010w4 = m5010w(AbstractC1387m.m2421h(new byte[]{-112, -37, -75, -85, -55, -26, -110, 120, -112, -6, 69, -59, -91, -76, -9, 22, -12, -112, -43, -59, -86, -76, -1, 22, -8, -111, -32, 53, -55, -28, -110, 118, -112, -9, -75, -95, -56, -47, -110, 125, -112, -11, -75, -88, -56, -36, -110, ByteCompanionObject.MAX_VALUE}, new byte[]{64, 64, 101, 21, 24, 100, 66, -58}));
        switchCompatM5010w4.setChecked(sharedPreferences.getBoolean(C3167r.f9196g, false));
        linearLayoutM5009u.addView(switchCompatM5010w4, m4987v());
        SwitchCompat switchCompatM5010w5 = m5010w(AbstractC1387m.m2421h(new byte[]{29, 124, -35, 124, 28, 45, 101, 32, 29, 93, 45, 18, 112, ByteCompanionObject.MAX_VALUE, 0, 78, 121, 55, -67, 18, ByteCompanionObject.MAX_VALUE, ByteCompanionObject.MAX_VALUE, 8, 78, 117, 54, -120, -30, 29, 16, 100, 30, 29, 95, -35, 121, 29, 17, 101, 40, 29, 82, -35, ByteCompanionObject.MAX_VALUE, 29, 23, 101, 39}, new byte[]{-51, -25, 13, -62, -51, -81, -75, -98}));
        switchCompatM5010w5.setChecked(sharedPreferences.getBoolean(C3167r.f9195f, false));
        linearLayoutM5009u.addView(switchCompatM5010w5, m4987v());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.bottomMargin = m4997h(12);
        linearLayout.addView(linearLayoutM5009u, layoutParams);
        LinearLayout linearLayoutM5009u2 = m5009u();
        linearLayoutM5009u2.addView(m5007s(AbstractC1387m.m2421h(new byte[]{119, 18, 91, -118, 27, -90, -125, -119, 119, 44, 91, -127, 27, -103, -125, ByteCompanionObject.MIN_VALUE, 119, 39, 91, -121, 27, -97, -125, -125}, new byte[]{-89, -78, -117, 26, -53, 7, 83, 22})));
        final RadioGroup radioGroup5 = new RadioGroup(getContext());
        radioGroup5.setOrientation(0);
        m4990a(radioGroup5, AbstractC1387m.m2421h(new byte[]{-95, -67, -111, -96, -103, 103, 87, -103, -95, -84}, new byte[]{113, 28, 65, 27, 73, -46, -121, 43}), EnumC3161o.f9134b);
        m4990a(radioGroup5, AbstractC1387m.m2421h(new byte[]{53, -92, 80, -45, -111, 57, -60, -58, 53, -73, 80, -36}, new byte[]{-27, 5, ByteCompanionObject.MIN_VALUE, 108, 64, -71, 20, 118}), EnumC3161o.f9135c);
        m4990a(radioGroup5, AbstractC1387m.m2421h(new byte[]{96, -22, -55, -23, 92, ByteCompanionObject.MIN_VALUE, 74, 116, 97, -50, -56, -40}, new byte[]{-80, 75, 25, 91, -116, 53, -101, -12}), EnumC3161o.f9136d);
        m4990a(radioGroup5, AbstractC1387m.m2421h(new byte[]{-77, 25, -10, 72, -118, -127, -94, -30, -78, 59}, new byte[]{99, -72, 38, -11, 90, 57, 114, 85}), EnumC3161o.f9137e);
        linearLayoutM5009u2.addView(radioGroup5, m4987v());
        TextView textViewM5011x6 = m5011x(15, -2563349, "");
        textViewM5011x6.setText(AbstractC1387m.m2421h(new byte[]{65, -97, -36, 9, 73, -126, 0, 89, 65, -74, -36, 2, 73, -124, 0, 95, 65, -75, 44, 103, 35, -23, 109, 55, 47, -48, -77, 103, 35, -23, 104, -57, 65, -78, -36, 3, 73, -121, 0, 92, 64, -116, 44, 103, 35, -24, 80, 55, 33, -47, -125, -115, -71}, new byte[]{-111, 0, 12, -73, -103, 57, -48, -25}) + c3167r.m5080c() + AbstractC1387m.m2421h(new byte[]{100}, new byte[]{65, -54, -70, Base64.padSymbol, -45, 102, 40, -6}));
        textViewM5011x6.setPadding(0, m4997h(12), 0, m4997h(9));
        linearLayoutM5009u2.addView(textViewM5011x6);
        Button buttonM5008t = m5008t(AbstractC1387m.m2421h(new byte[]{-46, -13, 42, -3, 3, -123, -23, 0, -46, -48, 42, -3, 3, -124, -24, 55, -46, -44, 43, -54, 3, -119, 25, 101, -72, -68, 71, -104, 108, -43, -122, 101, -72, -67, 121, 104, 2, -72, -23, 5, 34, -67, 119, -104, 104, -44, -71, 101, -78, -68, 71, -104, 103}, new byte[]{2, 108, -6, 72, -46, 5, 57, -75}), false);
        buttonM5008t.setOnClickListener(new ViewOnClickListenerC3090c(this, alertDialogArr, radioGroup5, textViewM5011x6));
        linearLayoutM5009u2.addView(buttonM5008t, new LinearLayout.LayoutParams(-1, m4997h(50)));
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.bottomMargin = m4997h(12);
        linearLayout.addView(linearLayoutM5009u2, layoutParams2);
        View viewM5008t = m5008t(AbstractC1387m.m2421h(new byte[]{87, -107, -125, -38, 54, -2, -22, 6, -89, -26, -45, -65, 86, -110, -118, 93, 57, -26, -44, -65, 83, -110, -120, 93, 57, 23, -126, -18, 55, -64, -21, 51, 87, -116, -125, -33}, new byte[]{-121, 55, 83, 111, -26, 66, 59, -115}), true);
        final int i10 = 0;
        viewM5008t.setOnClickListener(new View.OnClickListener(this) { // from class: s1.i

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C3153k f9027c;

            {
                this.f9027c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i11 = i10;
                AlertDialog[] alertDialogArr2 = alertDialogArr;
                C3153k c3153k = this.f9027c;
                switch (i11) {
                    case 0:
                        AlertDialog alertDialog = alertDialogArr2[0];
                        if (alertDialog != null) {
                            alertDialog.dismiss();
                        }
                        Context context = c3153k.getContext();
                        if (context instanceof WebLauncherActivity) {
                            ((WebLauncherActivity) context).m1649G(C3175v.class, null);
                        }
                        break;
                    case 1:
                        AlertDialog alertDialog2 = alertDialogArr2[0];
                        if (alertDialog2 != null) {
                            alertDialog2.dismiss();
                        }
                        Context context2 = c3153k.getContext();
                        if (context2 instanceof WebLauncherActivity) {
                            WebLauncherActivity webLauncherActivity = (WebLauncherActivity) context2;
                            if (!AbstractC3169s.f9207c.equals(AbstractC3169s.m5084a())) {
                                C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-49, 10, -5, 90, -33, 112, -69, 116, -24, 22, -49, 75, -15, 65, -68, 117, -31, 27, -55, 77, -30, 115, -84, 111, -10, 26, -62, 88, -50, ByteCompanionObject.MAX_VALUE, -126, 126, -5}, new byte[]{-126, 115, -84, 63, -67, 32, -55, 27}), AbstractC1387m.m2421h(new byte[]{39, 82, 80, -67, -115, -51, -56, 44, 52, 82, 84, -125, -108, -64, -55, 29, 32, 95, 83, -82}, new byte[]{67, 55, 54, -36, -8, -95, -68, 115}));
                                webLauncherActivity.m1650H(null);
                            }
                            C3166q0 c3166q0 = webLauncherActivity.f1748i;
                            if (c3166q0 != null) {
                                c3166q0.m5068m();
                            }
                        }
                        break;
                    case 2:
                        AlertDialog alertDialog3 = alertDialogArr2[0];
                        if (alertDialog3 != null) {
                            alertDialog3.dismiss();
                        }
                        Context context3 = c3153k.getContext();
                        if (context3 instanceof WebLauncherActivity) {
                            WebLauncherActivity webLauncherActivity2 = (WebLauncherActivity) context3;
                            Intent intent = new Intent(webLauncherActivity2, (Class<?>) FilePickerActivity.class);
                            intent.putExtra(AbstractC1387m.m2421h(new byte[]{75, -67, 71, -77, -96, 33, 87, -95, 72, -70, 88, -65, -112, 42, 112, -72, 66, -80, 78, -119, -116, 33, 65, -79}, new byte[]{45, -44, 43, -42, -1, 68, 47, -43}), 1);
                            webLauncherActivity2.startActivityForResult(intent, 7412);
                        }
                        break;
                    default:
                        AlertDialog alertDialog4 = alertDialogArr2[0];
                        if (alertDialog4 != null) {
                            alertDialog4.dismiss();
                        }
                        c3153k.getContext().startActivity(new Intent(c3153k.getContext(), (Class<?>) ModernMainActivity.class));
                        break;
                }
            }
        });
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, m4997h(56));
        layoutParams3.bottomMargin = m4997h(12);
        linearLayout.addView(viewM5008t, layoutParams3);
        View viewM5008t2 = m5008t(AbstractC1387m.m2421h(new byte[]{-25, 69, -21, 109, -4, -84, 78, 1, -26, 88, -21, 99, -3, -107, 78, 1, -26, 84, 27, 13, -112, -3, 47, 82, -75, 8, -125, 13, -97, -3, 34, 82, -68, 8, -126, -3, -4, -96, 79, 57, -26, 88, -21, 109, -3, -112}, new byte[]{55, -40, 59, -35, 45, 45, -97, -125}), false);
        final int i11 = 1;
        viewM5008t2.setOnClickListener(new View.OnClickListener(this) { // from class: s1.i

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C3153k f9027c;

            {
                this.f9027c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i12 = i11;
                AlertDialog[] alertDialogArr2 = alertDialogArr;
                C3153k c3153k = this.f9027c;
                switch (i12) {
                    case 0:
                        AlertDialog alertDialog = alertDialogArr2[0];
                        if (alertDialog != null) {
                            alertDialog.dismiss();
                        }
                        Context context = c3153k.getContext();
                        if (context instanceof WebLauncherActivity) {
                            ((WebLauncherActivity) context).m1649G(C3175v.class, null);
                        }
                        break;
                    case 1:
                        AlertDialog alertDialog2 = alertDialogArr2[0];
                        if (alertDialog2 != null) {
                            alertDialog2.dismiss();
                        }
                        Context context2 = c3153k.getContext();
                        if (context2 instanceof WebLauncherActivity) {
                            WebLauncherActivity webLauncherActivity = (WebLauncherActivity) context2;
                            if (!AbstractC3169s.f9207c.equals(AbstractC3169s.m5084a())) {
                                C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-49, 10, -5, 90, -33, 112, -69, 116, -24, 22, -49, 75, -15, 65, -68, 117, -31, 27, -55, 77, -30, 115, -84, 111, -10, 26, -62, 88, -50, ByteCompanionObject.MAX_VALUE, -126, 126, -5}, new byte[]{-126, 115, -84, 63, -67, 32, -55, 27}), AbstractC1387m.m2421h(new byte[]{39, 82, 80, -67, -115, -51, -56, 44, 52, 82, 84, -125, -108, -64, -55, 29, 32, 95, 83, -82}, new byte[]{67, 55, 54, -36, -8, -95, -68, 115}));
                                webLauncherActivity.m1650H(null);
                            }
                            C3166q0 c3166q0 = webLauncherActivity.f1748i;
                            if (c3166q0 != null) {
                                c3166q0.m5068m();
                            }
                        }
                        break;
                    case 2:
                        AlertDialog alertDialog3 = alertDialogArr2[0];
                        if (alertDialog3 != null) {
                            alertDialog3.dismiss();
                        }
                        Context context3 = c3153k.getContext();
                        if (context3 instanceof WebLauncherActivity) {
                            WebLauncherActivity webLauncherActivity2 = (WebLauncherActivity) context3;
                            Intent intent = new Intent(webLauncherActivity2, (Class<?>) FilePickerActivity.class);
                            intent.putExtra(AbstractC1387m.m2421h(new byte[]{75, -67, 71, -77, -96, 33, 87, -95, 72, -70, 88, -65, -112, 42, 112, -72, 66, -80, 78, -119, -116, 33, 65, -79}, new byte[]{45, -44, 43, -42, -1, 68, 47, -43}), 1);
                            webLauncherActivity2.startActivityForResult(intent, 7412);
                        }
                        break;
                    default:
                        AlertDialog alertDialog4 = alertDialogArr2[0];
                        if (alertDialog4 != null) {
                            alertDialog4.dismiss();
                        }
                        c3153k.getContext().startActivity(new Intent(c3153k.getContext(), (Class<?>) ModernMainActivity.class));
                        break;
                }
            }
        });
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, m4997h(54));
        layoutParams4.bottomMargin = m4997h(12);
        linearLayout.addView(viewM5008t2, layoutParams4);
        View viewM5008t3 = m5008t(AbstractC1387m.m2421h(new byte[]{37, -51, -76, -67, 63, 125, 52, 63, 37, -17, -76, -76, 62, 64, -59, 110, 113, -113, -37, -26, 82, -20, 53, 2, 37, -17, -76, -76, 63, 116, 53, 13, 37, -30, -75, -120, 63, ByteCompanionObject.MAX_VALUE, 53, 1, -43, -114, -24, -26, 85, 29, 101, 111, 69, -113, -40, -26, 95}, new byte[]{-11, 95, 101, 54, -17, -52, -27, -65}), false);
        final int i12 = 2;
        viewM5008t3.setOnClickListener(new View.OnClickListener(this) { // from class: s1.i

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C3153k f9027c;

            {
                this.f9027c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i13 = i12;
                AlertDialog[] alertDialogArr2 = alertDialogArr;
                C3153k c3153k = this.f9027c;
                switch (i13) {
                    case 0:
                        AlertDialog alertDialog = alertDialogArr2[0];
                        if (alertDialog != null) {
                            alertDialog.dismiss();
                        }
                        Context context = c3153k.getContext();
                        if (context instanceof WebLauncherActivity) {
                            ((WebLauncherActivity) context).m1649G(C3175v.class, null);
                        }
                        break;
                    case 1:
                        AlertDialog alertDialog2 = alertDialogArr2[0];
                        if (alertDialog2 != null) {
                            alertDialog2.dismiss();
                        }
                        Context context2 = c3153k.getContext();
                        if (context2 instanceof WebLauncherActivity) {
                            WebLauncherActivity webLauncherActivity = (WebLauncherActivity) context2;
                            if (!AbstractC3169s.f9207c.equals(AbstractC3169s.m5084a())) {
                                C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-49, 10, -5, 90, -33, 112, -69, 116, -24, 22, -49, 75, -15, 65, -68, 117, -31, 27, -55, 77, -30, 115, -84, 111, -10, 26, -62, 88, -50, ByteCompanionObject.MAX_VALUE, -126, 126, -5}, new byte[]{-126, 115, -84, 63, -67, 32, -55, 27}), AbstractC1387m.m2421h(new byte[]{39, 82, 80, -67, -115, -51, -56, 44, 52, 82, 84, -125, -108, -64, -55, 29, 32, 95, 83, -82}, new byte[]{67, 55, 54, -36, -8, -95, -68, 115}));
                                webLauncherActivity.m1650H(null);
                            }
                            C3166q0 c3166q0 = webLauncherActivity.f1748i;
                            if (c3166q0 != null) {
                                c3166q0.m5068m();
                            }
                        }
                        break;
                    case 2:
                        AlertDialog alertDialog3 = alertDialogArr2[0];
                        if (alertDialog3 != null) {
                            alertDialog3.dismiss();
                        }
                        Context context3 = c3153k.getContext();
                        if (context3 instanceof WebLauncherActivity) {
                            WebLauncherActivity webLauncherActivity2 = (WebLauncherActivity) context3;
                            Intent intent = new Intent(webLauncherActivity2, (Class<?>) FilePickerActivity.class);
                            intent.putExtra(AbstractC1387m.m2421h(new byte[]{75, -67, 71, -77, -96, 33, 87, -95, 72, -70, 88, -65, -112, 42, 112, -72, 66, -80, 78, -119, -116, 33, 65, -79}, new byte[]{45, -44, 43, -42, -1, 68, 47, -43}), 1);
                            webLauncherActivity2.startActivityForResult(intent, 7412);
                        }
                        break;
                    default:
                        AlertDialog alertDialog4 = alertDialogArr2[0];
                        if (alertDialog4 != null) {
                            alertDialog4.dismiss();
                        }
                        c3153k.getContext().startActivity(new Intent(c3153k.getContext(), (Class<?>) ModernMainActivity.class));
                        break;
                }
            }
        });
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, m4997h(54));
        layoutParams5.bottomMargin = m4997h(12);
        linearLayout.addView(viewM5008t3, layoutParams5);
        View viewM5008t4 = m5008t(AbstractC1387m.m2421h(new byte[]{26, -75, 64, 116, -30, 38, -81, 120, 27, -93, 65, 70, -30, 33, -81, 121, 27, -82, -80, -114, 113, -8, 12, -81, -91, 77, -4, -73}, new byte[]{-54, 34, -112, -60, 50, -103, 126, -5}), false);
        final int i13 = 3;
        viewM5008t4.setOnClickListener(new View.OnClickListener(this) { // from class: s1.i

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C3153k f9027c;

            {
                this.f9027c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i14 = i13;
                AlertDialog[] alertDialogArr2 = alertDialogArr;
                C3153k c3153k = this.f9027c;
                switch (i14) {
                    case 0:
                        AlertDialog alertDialog = alertDialogArr2[0];
                        if (alertDialog != null) {
                            alertDialog.dismiss();
                        }
                        Context context = c3153k.getContext();
                        if (context instanceof WebLauncherActivity) {
                            ((WebLauncherActivity) context).m1649G(C3175v.class, null);
                        }
                        break;
                    case 1:
                        AlertDialog alertDialog2 = alertDialogArr2[0];
                        if (alertDialog2 != null) {
                            alertDialog2.dismiss();
                        }
                        Context context2 = c3153k.getContext();
                        if (context2 instanceof WebLauncherActivity) {
                            WebLauncherActivity webLauncherActivity = (WebLauncherActivity) context2;
                            if (!AbstractC3169s.f9207c.equals(AbstractC3169s.m5084a())) {
                                C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-49, 10, -5, 90, -33, 112, -69, 116, -24, 22, -49, 75, -15, 65, -68, 117, -31, 27, -55, 77, -30, 115, -84, 111, -10, 26, -62, 88, -50, ByteCompanionObject.MAX_VALUE, -126, 126, -5}, new byte[]{-126, 115, -84, 63, -67, 32, -55, 27}), AbstractC1387m.m2421h(new byte[]{39, 82, 80, -67, -115, -51, -56, 44, 52, 82, 84, -125, -108, -64, -55, 29, 32, 95, 83, -82}, new byte[]{67, 55, 54, -36, -8, -95, -68, 115}));
                                webLauncherActivity.m1650H(null);
                            }
                            C3166q0 c3166q0 = webLauncherActivity.f1748i;
                            if (c3166q0 != null) {
                                c3166q0.m5068m();
                            }
                        }
                        break;
                    case 2:
                        AlertDialog alertDialog3 = alertDialogArr2[0];
                        if (alertDialog3 != null) {
                            alertDialog3.dismiss();
                        }
                        Context context3 = c3153k.getContext();
                        if (context3 instanceof WebLauncherActivity) {
                            WebLauncherActivity webLauncherActivity2 = (WebLauncherActivity) context3;
                            Intent intent = new Intent(webLauncherActivity2, (Class<?>) FilePickerActivity.class);
                            intent.putExtra(AbstractC1387m.m2421h(new byte[]{75, -67, 71, -77, -96, 33, 87, -95, 72, -70, 88, -65, -112, 42, 112, -72, 66, -80, 78, -119, -116, 33, 65, -79}, new byte[]{45, -44, 43, -42, -1, 68, 47, -43}), 1);
                            webLauncherActivity2.startActivityForResult(intent, 7412);
                        }
                        break;
                    default:
                        AlertDialog alertDialog4 = alertDialogArr2[0];
                        if (alertDialog4 != null) {
                            alertDialog4.dismiss();
                        }
                        c3153k.getContext().startActivity(new Intent(c3153k.getContext(), (Class<?>) ModernMainActivity.class));
                        break;
                }
            }
        });
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-1, m4997h(54));
        layoutParams6.bottomMargin = m4997h(12);
        linearLayout.addView(viewM5008t4, layoutParams6);
        LinearLayout linearLayoutM5009u3 = m5009u();
        linearLayoutM5009u3.addView(m5007s(AbstractC1387m.m2421h(new byte[]{-110, 49, 27, -30, -102, 21, -68, -11, -110, 0, 27, -30, -102, 33, 76, -121, -42, 112, 94, -103, -45, 100, -51, -121, -32, 112, 89, -103, -46, 100, -61}, new byte[]{66, -96, -53, 73, 74, -76, 108, 87})));
        TextView textViewM5011x7 = m5011x(13, -6575430, AbstractC1387m.m2421h(new byte[]{-98, 48, 0, 103, 44, 47, -85, -60, -97, 34, 1, 84, 45, 28, -85, -60, 110, 115, 85, Base64.padSymbol, ByteCompanionObject.MAX_VALUE, 78, -58, -95, -12, 115, 87, 60, 68, 78, -61, 81, -98, 22, 1, 87, 45, 17, 91, -96, -58, 114, 100, Base64.padSymbol, 125, 79, -7, -95, -10, -126, 1, 86, 44, 35, -85, -49, -98, 29, 1, 82, 44, 36, 91, -95, -13, 114, 97, -52, 44, 33, -85, -63, -98, 31, 1, 89, 44, 37, -85, -55, 96}, new byte[]{78, -94, -47, -20, -4, -98, 123, 113}));
        textViewM5011x7.setPadding(0, 0, 0, m4997h(8));
        linearLayoutM5009u3.addView(textViewM5011x7);
        ArrayList arrayListM2990e = new C1917c(getContext()).m2990e();
        final SwitchCompat switchCompat = switchCompatM5010w2;
        final Spinner[] spinnerArr = new Spinner[6];
        int i14 = 0;
        for (int i15 = 6; i14 < i15; i15 = 6) {
            LinearLayout linearLayout2 = new LinearLayout(getContext());
            linearLayout2.setGravity(16);
            SwitchCompat switchCompat2 = switchCompatM5010w5;
            RadioGroup radioGroup6 = radioGroup4;
            linearLayout2.setPadding(m4997h(12), m4997h(5), m4997h(8), m4997h(5));
            linearLayout2.setBackground(m5003o(-15722463, 12, -14076090));
            int i16 = i14 + 1;
            TextView textViewM5011x8 = m5011x(14, -11486750, String.valueOf(i16));
            textViewM5011x8.setGravity(17);
            linearLayout2.addView(textViewM5011x8, new LinearLayout.LayoutParams(m4997h(34), m4997h(44)));
            Spinner spinner = new Spinner(getContext(), 1);
            spinner.setAdapter((SpinnerAdapter) new C1916b(getContext(), (List) arrayListM2990e));
            spinner.setSelection(m4986i(AbstractC1920f.m3007e(getContext(), f9053s + i14), arrayListM2990e));
            linearLayout2.addView(spinner, new LinearLayout.LayoutParams(0, m4997h(50), 1.0f));
            LinearLayout.LayoutParams layoutParamsM4987v = m4987v();
            layoutParamsM4987v.bottomMargin = m4997h(7);
            linearLayoutM5009u3.addView(linearLayout2, layoutParamsM4987v);
            spinnerArr[i14] = spinner;
            radioGroup4 = radioGroup6;
            switchCompatM5010w5 = switchCompat2;
            radioGroup3 = radioGroup3;
            switchCompat = switchCompat;
            i14 = i16;
        }
        final SwitchCompat switchCompat3 = switchCompatM5010w5;
        final RadioGroup radioGroup7 = radioGroup4;
        final RadioGroup radioGroup8 = radioGroup3;
        LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams7.bottomMargin = m4997h(12);
        linearLayout.addView(linearLayoutM5009u3, layoutParams7);
        ScrollView scrollView = new ScrollView(getContext());
        scrollView.setFillViewport(true);
        scrollView.setBackgroundColor(-16051943);
        scrollView.addView(linearLayout);
        final AlertDialog alertDialogCreate = new AlertDialog.Builder(getContext()).setView(scrollView).setPositiveButton(AbstractC1387m.m2421h(new byte[]{-103, 28, 66, -3, 77, 34, 14, -109, -103, 13, 66, -2, 76, 31, 14, -111, -104, 49}, new byte[]{73, -67, -110, 67, -100, -89, -33, 19}), (DialogInterface.OnClickListener) null).setNegativeButton(AbstractC1387m.m2421h(new byte[]{Base64.padSymbol, 101, 97, -19, -62, 25, 93, -99, Base64.padSymbol, 70, 96, -33}, new byte[]{-19, -5, -80, 111, 18, -91, -115, 40}), (DialogInterface.OnClickListener) null).create();
        alertDialogArr[0] = alertDialogCreate;
        alertDialogCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: s1.j
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                final AlertDialog alertDialog = alertDialogCreate;
                Window window = alertDialog.getWindow();
                final C3153k c3153k = this;
                if (window != null) {
                    Window window2 = alertDialog.getWindow();
                    GradientDrawable gradientDrawable = new GradientDrawable();
                    gradientDrawable.setColor(-16051943);
                    gradientDrawable.setCornerRadius(c3153k.m4997h(20));
                    window2.setBackgroundDrawable(gradientDrawable);
                    alertDialog.getWindow().setLayout(Math.min(c3153k.getResources().getDisplayMetrics().widthPixels - c3153k.m4997h(32), c3153k.m4997h(720)), -2);
                }
                alertDialog.getButton(-1).setTextColor(-11486750);
                alertDialog.getButton(-2).setTextColor(-6575430);
                Button button = alertDialog.getButton(-1);
                final RadioGroup radioGroup9 = radioGroup7;
                final RadioGroup radioGroup10 = radioGroup8;
                final RadioGroup radioGroup11 = radioGroup5;
                final SwitchCompat switchCompat4 = switchCompatM5010w;
                final SwitchCompat switchCompat5 = switchCompat;
                final SwitchCompat switchCompat6 = switchCompatM5010w3;
                final SwitchCompat switchCompat7 = switchCompatM5010w4;
                final SwitchCompat switchCompat8 = switchCompat3;
                final Spinner[] spinnerArr2 = spinnerArr;
                button.setOnClickListener(new View.OnClickListener() { // from class: s1.h
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        C3153k c3153k2 = c3153k;
                        C3167r c3167r2 = c3153k2.f9054b;
                        c3167r2.f9201a.edit().putBoolean(C3167r.f9191b, switchCompat4.isChecked()).apply();
                        boolean zIsChecked = switchCompat5.isChecked();
                        SharedPreferences sharedPreferences2 = c3167r2.f9201a;
                        sharedPreferences2.edit().putBoolean(C3167r.f9197h, zIsChecked).apply();
                        sharedPreferences2.edit().putBoolean(C3167r.f9198i, switchCompat6.isChecked()).apply();
                        RadioGroup radioGroup12 = radioGroup9;
                        View viewFindViewById = radioGroup12.findViewById(radioGroup12.getCheckedRadioButtonId());
                        Object tag = viewFindViewById == null ? null : viewFindViewById.getTag();
                        sharedPreferences2.edit().putString(C3167r.f9199j, (tag instanceof EnumC3165q ? (EnumC3165q) tag : c3167r2.m5082e()).name()).apply();
                        RadioGroup radioGroup13 = radioGroup10;
                        View viewFindViewById2 = radioGroup13.findViewById(radioGroup13.getCheckedRadioButtonId());
                        Object tag2 = viewFindViewById2 == null ? null : viewFindViewById2.getTag();
                        sharedPreferences2.edit().putString(C3167r.f9200k, (tag2 instanceof EnumC3163p ? (EnumC3163p) tag2 : c3167r2.m5081d()).name()).apply();
                        sharedPreferences2.edit().putBoolean(C3167r.f9196g, switchCompat7.isChecked()).apply();
                        sharedPreferences2.edit().putBoolean(C3167r.f9195f, switchCompat8.isChecked()).apply();
                        RadioGroup radioGroup14 = radioGroup11;
                        View viewFindViewById3 = radioGroup14.findViewById(radioGroup14.getCheckedRadioButtonId());
                        Object tag3 = viewFindViewById3 != null ? viewFindViewById3.getTag() : null;
                        sharedPreferences2.edit().putString(C3167r.f9192c, (tag3 instanceof EnumC3161o ? (EnumC3161o) tag3 : c3167r2.m5079b()).name()).apply();
                        for (int i17 = 0; i17 < 6; i17++) {
                            Object selectedItem = spinnerArr2[i17].getSelectedItem();
                            if (selectedItem instanceof C1919e) {
                                AbstractC1920f.m3008f(C3153k.f9053s + i17, (C1919e) selectedItem);
                            }
                        }
                        c3153k2.m5002n();
                        if (c3167r2.m5083f()) {
                            c3153k2.m5006r();
                        } else {
                            c3153k2.m5012y();
                        }
                        RunnableC3176v0 runnableC3176v0 = c3153k2.f9069q;
                        if (runnableC3176v0 != null) {
                            runnableC3176v0.run();
                        }
                        alertDialog.dismiss();
                    }
                });
            }
        });
        alertDialogCreate.setOnDismissListener(new DialogInterfaceOnDismissListenerC2404c(this, 1));
        alertDialogCreate.show();
    }
}
