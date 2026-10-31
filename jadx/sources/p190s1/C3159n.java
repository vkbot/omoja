package p190s1;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.GridLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.navigation.ViewOnClickListenerC0675c;
import androidx.navigation.p013ui.ViewOnClickListenerC0701a;
import java.util.ArrayList;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p005a4.RunnableC0010c;
import p047e0.AbstractC1387m;
import p047e0.RunnableC1342d;
import p051e4.ViewOnTouchListenerC1476i;
import p078h0.C1652b;
import p098j0.AbstractC1920f;
import p098j0.C1919e;
import p098j0.EnumC1918d;
import p132m0.C2332o;

/* JADX INFO: renamed from: s1.n */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3159n extends FrameLayout {

    /* JADX INFO: renamed from: t */
    public static final String f9113t = AbstractC1387m.m2421h(new byte[]{-51, -118, -25, 90, -127, 11, 106, -16, -2, -113, -3, 87, -119, 60, 110, -31, -43, -126, -3, 90, -67}, new byte[]{-95, -21, -110, 52, -30, 99, 15, -126});

    /* JADX INFO: renamed from: u */
    public static final String f9114u = AbstractC1387m.m2421h(new byte[]{-111, -5, -77, -55, -94, 81, -89, -51, -78, -8, -117, -31, -124, 122, -96, -49, -93, -52, -110, -27, -104, 122, -71, -18, -93, -35, -102, -58, -103, 124, -125, -53, -89, -39, -66, -16, -122}, new byte[]{-62, -85, -1, ByteCompanionObject.MIN_VALUE, -10, 14, -26, -67});

    /* JADX INFO: renamed from: b */
    public final C3167r f9115b;

    /* JADX INFO: renamed from: c */
    public final LinearLayout f9116c;

    /* JADX INFO: renamed from: d */
    public final FrameLayout f9117d;

    /* JADX INFO: renamed from: e */
    public final ScrollView f9118e;

    /* JADX INFO: renamed from: f */
    public final HorizontalScrollView f9119f;

    /* JADX INFO: renamed from: g */
    public final GridLayout f9120g;

    /* JADX INFO: renamed from: h */
    public final TextView f9121h;

    /* JADX INFO: renamed from: i */
    public final RunnableC1342d f9122i;

    /* JADX INFO: renamed from: j */
    public WindowManager f9123j;

    /* JADX INFO: renamed from: k */
    public WindowManager.LayoutParams f9124k;

    /* JADX INFO: renamed from: l */
    public EnumC3157m f9125l;

    /* JADX INFO: renamed from: m */
    public EnumC3155l f9126m;

    /* JADX INFO: renamed from: n */
    public int f9127n;

    /* JADX INFO: renamed from: o */
    public int f9128o;

    /* JADX INFO: renamed from: p */
    public int f9129p;

    /* JADX INFO: renamed from: q */
    public int f9130q;

    /* JADX INFO: renamed from: r */
    public boolean f9131r;

    /* JADX INFO: renamed from: s */
    public int f9132s;

    static {
        AbstractC1387m.m2421h(new byte[]{110, 6, -111, 107, 44, -48, 5, 107, 91, 57, -104, 78, 51, -35, 1, 107, 92, 53, -79, 93, 48, -38, 1, 102, 74, 24, -87, 78, 36, -51}, new byte[]{47, 106, -3, 60, 69, -76, 98, 14});
    }

    public C3159n(Context context) {
        super(context);
        this.f9122i = new RunnableC1342d(this, 1);
        this.f9125l = EnumC3157m.f9097c;
        this.f9126m = EnumC3155l.f9077c;
        C3167r c3167r = new C3167r(context);
        this.f9115b = c3167r;
        c3167r.m5078a(context);
        setClipChildren(false);
        setClipToPadding(false);
        setClickable(true);
        setFocusable(false);
        setElevation(m5018e(18));
        LinearLayout linearLayout = new LinearLayout(context);
        this.f9116c = linearLayout;
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        linearLayout.setPadding(m5018e(7), m5018e(7), m5018e(7), m5018e(7));
        addView(linearLayout, new FrameLayout.LayoutParams(-2, -2));
        TextView textView = new TextView(context);
        this.f9121h = textView;
        textView.setGravity(17);
        textView.setText(AbstractC1387m.m2421h(new byte[]{-114, 71, 99}, new byte[]{-60, 4, 55, 56, -21, 113, -51, 0}));
        textView.setTextColor(-1);
        textView.setTextSize(12.0f);
        textView.setTypeface(textView.getTypeface(), 1);
        textView.setContentDescription(AbstractC1387m.m2421h(new byte[]{-68, ByteCompanionObject.MAX_VALUE, 26, 20, 108, 52, -3, -48, -67, 106, 26, 20, 109, 2, 12, ByteCompanionObject.MIN_VALUE, -45, 49, 123, 70, 1, 94, -103, ByteCompanionObject.MIN_VALUE, -41, 48, 71, -74, 108, 53, -4, -32, -67, 98, 27, 43, 109, 9, -4, -27, -67, 97, 27, 38, -110, -82, -4, -13, -68, 85, 27, 35, 109, 14, -4, -26, -68, 89, 27, 36, 108, 62, -4, -23, -67, 99, 27, 35, -100, 94, -104, ByteCompanionObject.MIN_VALUE, -41, 48, 68, -74, 108, 49, -4, -27, -67, 97, 27, 35, 108, 50, -4, -27, -67, 104, 27, 35, 108, 51, -4, -24, -67, 110}, new byte[]{108, -31, -53, -106, -68, -114, 44, 80}));
        textView.setClickable(false);
        linearLayout.addView(textView, new LinearLayout.LayoutParams(m5018e(62), m5018e(62)));
        FrameLayout frameLayout = new FrameLayout(context);
        this.f9117d = frameLayout;
        frameLayout.setVisibility(8);
        ScrollView scrollView = new ScrollView(context);
        this.f9118e = scrollView;
        scrollView.setVerticalScrollBarEnabled(false);
        scrollView.setOverScrollMode(1);
        scrollView.setFillViewport(false);
        HorizontalScrollView horizontalScrollView = new HorizontalScrollView(context);
        this.f9119f = horizontalScrollView;
        horizontalScrollView.setHorizontalScrollBarEnabled(false);
        horizontalScrollView.setOverScrollMode(1);
        horizontalScrollView.setFillViewport(false);
        horizontalScrollView.setVisibility(8);
        frameLayout.setOverScrollMode(1);
        GridLayout gridLayout = new GridLayout(context);
        this.f9120g = gridLayout;
        gridLayout.setColumnCount(4);
        gridLayout.setAlignmentMode(0);
        gridLayout.setUseDefaultMargins(false);
        gridLayout.setPadding(m5018e(4), m5018e(4), m5018e(4), m5018e(4));
        scrollView.addView(gridLayout, new FrameLayout.LayoutParams(-2, -2));
        frameLayout.addView(scrollView, new FrameLayout.LayoutParams(-1, -1));
        frameLayout.addView(horizontalScrollView, new FrameLayout.LayoutParams(-1, -1));
        int[] iArrM5027n = m5027n(this.f9125l);
        linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(iArrM5027n[0], iArrM5027n[1]));
        m5022i();
        m5016c();
        m5025l();
    }

    /* JADX INFO: renamed from: a */
    public final ImageButton m5014a(String str, Drawable drawable) {
        ImageButton imageButton = new ImageButton(getContext());
        imageButton.setImageDrawable(drawable);
        imageButton.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        imageButton.setPadding(m5018e(7), m5018e(7), m5018e(7), m5018e(7));
        imageButton.setBackground(m5024k(-14273469, 16, -12889497));
        if (str == null) {
            str = AbstractC1387m.m2421h(new byte[]{33, 102, 4, -60, 10, 3, -49, 40, 32, 112, 4, -61, 10, 2, -50, 28}, new byte[]{-15, -14, -44, 113, -38, -70, 30, -87});
        }
        imageButton.setContentDescription(str);
        imageButton.setOnTouchListener(new ViewOnTouchListenerC1476i(2, this));
        return imageButton;
    }

    /* JADX INFO: renamed from: b */
    public final void m5015b(C1919e c1919e) {
        if (AbstractC1920f.m3006d(c1919e)) {
            ImageButton imageButtonM5014a = m5014a(c1919e.f5066i, c1919e.f5067j);
            imageButtonM5014a.setOnClickListener(new ViewOnClickListenerC0701a(18, this, c1919e));
            this.f9120g.addView(imageButtonM5014a, m5021h());
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m5016c() {
        boolean z9 = this.f9131r;
        FrameLayout frameLayout = this.f9117d;
        LinearLayout linearLayout = this.f9116c;
        TextView textView = this.f9121h;
        if (z9) {
            linearLayout.setBackground(null);
            frameLayout.setBackground(m5024k(-300869341, 22, -12229253));
            textView.setBackground(m5024k(-16220769, 17, -10102543));
            textView.setText(AbstractC1387m.m2421h(new byte[]{-83, 105, -79, 101, -72, -84, 10, -13, -19}, new byte[]{79, -23, 19, -121, 56, 14, -24, 115}));
            textView.setTextSize(18.0f);
            return;
        }
        frameLayout.setBackground(null);
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TL_BR, new int[]{-232639421, -234391912});
        gradientDrawable.setCornerRadius(m5018e(22));
        gradientDrawable.setStroke(m5018e(1), -9641995);
        linearLayout.setBackground(gradientDrawable);
        textView.setBackground(null);
        textView.setText(AbstractC1387m.m2421h(new byte[]{65, -43, 21}, new byte[]{11, -106, 65, -22, 49, -54, -32, -106}));
        textView.setTextSize(12.0f);
    }

    /* JADX INFO: renamed from: d */
    public final void m5017d(EnumC3157m enumC3157m) {
        GridLayout gridLayout;
        int iMax;
        int i10;
        int i11;
        LinearLayout linearLayout = this.f9116c;
        linearLayout.removeAllViews();
        int i12 = (enumC3157m == EnumC3157m.f9098d || enumC3157m == EnumC3157m.f9099e) ? 1 : 0;
        linearLayout.setOrientation(i12);
        C3167r c3167r = this.f9115b;
        boolean z9 = c3167r.m5082e() == EnumC3165q.f9149c;
        boolean z10 = !z9 ? !(enumC3157m == EnumC3157m.f9096b || enumC3157m == EnumC3157m.f9097c) : c3167r.m5081d() != EnumC3163p.f9139b;
        int i13 = 0;
        while (true) {
            gridLayout = this.f9120g;
            if (i13 >= gridLayout.getChildCount()) {
                break;
            }
            GridLayout.LayoutParams layoutParams = (GridLayout.LayoutParams) gridLayout.getChildAt(i13).getLayoutParams();
            layoutParams.columnSpec = GridLayout.spec(Integer.MIN_VALUE);
            layoutParams.rowSpec = GridLayout.spec(Integer.MIN_VALUE);
            gridLayout.getChildAt(i13).setLayoutParams(layoutParams);
            i13++;
        }
        if (z9) {
            iMax = z10 ? Math.max(1, gridLayout.getChildCount()) : 1;
        } else {
            iMax = 4;
        }
        gridLayout.setColumnCount(iMax);
        ViewGroup viewGroup = (ViewGroup) gridLayout.getParent();
        ScrollView scrollView = this.f9118e;
        HorizontalScrollView horizontalScrollView = this.f9119f;
        ViewGroup viewGroup2 = (z9 && z10) ? horizontalScrollView : scrollView;
        if (viewGroup != viewGroup2) {
            if (viewGroup != null) {
                viewGroup.removeView(gridLayout);
            }
            viewGroup2.addView(gridLayout, new ViewGroup.LayoutParams(-2, -2));
        }
        horizontalScrollView.setVisibility(viewGroup2 == horizontalScrollView ? 0 : 8);
        scrollView.setVisibility(viewGroup2 == scrollView ? 0 : 8);
        EnumC3155l enumC3155l = this.f9126m;
        if (i12 != 0) {
            if (enumC3155l == EnumC3155l.f9076b) {
                i11 = 3;
            } else {
                i11 = enumC3155l == EnumC3155l.f9078d ? 5 : 1;
            }
            linearLayout.setGravity(i11);
        } else {
            if (enumC3155l == EnumC3155l.f9076b) {
                i10 = 48;
            } else {
                i10 = enumC3155l == EnumC3155l.f9078d ? 80 : 16;
            }
            linearLayout.setGravity(i10);
        }
        int[] iArrM5027n = m5027n(this.f9125l);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(iArrM5027n[0], iArrM5027n[1]);
        FrameLayout frameLayout = this.f9117d;
        frameLayout.setLayoutParams(layoutParams2);
        EnumC3157m enumC3157m2 = EnumC3157m.f9096b;
        TextView textView = this.f9121h;
        if (enumC3157m == enumC3157m2 || enumC3157m == EnumC3157m.f9098d) {
            linearLayout.addView(frameLayout);
            linearLayout.addView(textView, new LinearLayout.LayoutParams(m5018e(62), m5018e(62)));
        } else {
            linearLayout.addView(textView, new LinearLayout.LayoutParams(m5018e(62), m5018e(62)));
            linearLayout.addView(frameLayout);
        }
    }

    /* JADX INFO: renamed from: e */
    public final int m5018e(int i10) {
        return Math.round(i10 * getResources().getDisplayMetrics().density);
    }

    /* JADX INFO: renamed from: f */
    public final int[] m5019f(EnumC3157m enumC3157m) {
        int[] iArrM5027n = m5027n(enumC3157m);
        int i10 = iArrM5027n[0];
        int i11 = iArrM5027n[1];
        int iM5018e = m5018e(14);
        int iM5018e2 = m5018e(62);
        return (enumC3157m == EnumC3157m.f9098d || enumC3157m == EnumC3157m.f9099e) ? new int[]{Math.max(iM5018e2, i10) + iM5018e, iM5018e + iM5018e2 + i11} : new int[]{iM5018e + iM5018e2 + i10, Math.max(iM5018e2, i11) + iM5018e};
    }

    /* JADX INFO: renamed from: g */
    public final void m5020g() {
        FrameLayout frameLayout = this.f9117d;
        frameLayout.setVisibility(8);
        frameLayout.setAlpha(1.0f);
        frameLayout.setScaleX(1.0f);
        frameLayout.setScaleY(1.0f);
        frameLayout.setTranslationX(0.0f);
        frameLayout.setTranslationY(0.0f);
        this.f9126m = EnumC3155l.f9077c;
        m5017d(EnumC3157m.f9097c);
        m5016c();
        if (this.f9123j == null || this.f9124k == null) {
            return;
        }
        m5028o(this.f9127n, this.f9128o, this.f9129p, this.f9130q, true);
    }

    /* JADX INFO: renamed from: h */
    public final GridLayout.LayoutParams m5021h() {
        GridLayout.LayoutParams layoutParams = new GridLayout.LayoutParams();
        layoutParams.width = m5018e(78);
        layoutParams.height = m5018e(78);
        layoutParams.setMargins(m5018e(3), m5018e(3), m5018e(3), m5018e(3));
        return layoutParams;
    }

    /* JADX INFO: renamed from: i */
    public final void m5022i() {
        ResolveInfo resolveInfoResolveActivity;
        GridLayout gridLayout = this.f9120g;
        gridLayout.removeAllViews();
        for (int i10 = 0; i10 < 6; i10++) {
            m5015b(AbstractC1920f.m3007e(getContext(), f9113t + i10));
        }
        C3167r c3167r = this.f9115b;
        if (c3167r.f9201a.getBoolean(C3167r.f9196g, false)) {
            String strLoadString = C1652b.m2745o().loadString(f9114u, "");
            if (!strLoadString.isEmpty()) {
                int i11 = 0;
                for (String str : strLoadString.split(AbstractC1387m.m2421h(new byte[]{19}, new byte[]{40, -59, 14, -95, 98, 8, 83, -102}))) {
                    C1919e c1919eM3005c = AbstractC1920f.m3005c(getContext(), str);
                    if (c1919eM3005c.f5058a == EnumC1918d.f5055d && AbstractC1920f.m3006d(c1919eM3005c)) {
                        m5015b(c1919eM3005c);
                        i11++;
                        if (i11 >= 6) {
                            break;
                        }
                    }
                }
            }
        }
        if (c3167r.f9201a.getBoolean(C3167r.f9195f, false)) {
            PackageManager packageManager = getContext().getPackageManager();
            ArrayList arrayListM3717x = C2332o.m3717x();
            int size = arrayListM3717x.size();
            int i12 = 0;
            int i13 = 0;
            while (i13 < size) {
                Object obj = arrayListM3717x.get(i13);
                i13++;
                Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage((String) obj);
                if (launchIntentForPackage != null && (resolveInfoResolveActivity = packageManager.resolveActivity(launchIntentForPackage, 0)) != null) {
                    m5015b(C1919e.m2999b(resolveInfoResolveActivity, packageManager));
                    i12++;
                    if (i12 >= 6) {
                        break;
                    }
                }
            }
        }
        ImageButton imageButtonM5014a = m5014a(AbstractC1387m.m2421h(new byte[]{93, 72, 83, 125, 57, -117, -97, 9, 92, 85, 83, 115, 56, -77, -98, 49, 93, 109, -93, 29, 83, -38, -2, 90, 14, 5, 62, 28, 111, -38, -5, 90, 13, 5, 51}, new byte[]{-115, -43, -125, -51, -24, 10, 78, -117}), getContext().getDrawable(R.drawable.ic_menu_preferences));
        imageButtonM5014a.setOnClickListener(new ViewOnClickListenerC0675c(18, this));
        gridLayout.addView(imageButtonM5014a, m5021h());
    }

    /* JADX INFO: renamed from: j */
    public final void m5023j() {
        removeCallbacks(this.f9122i);
        animate().cancel();
        animate().alpha(1.0f).setDuration(140L).start();
    }

    /* JADX INFO: renamed from: k */
    public final GradientDrawable m5024k(int i10, int i11, int i12) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i10);
        gradientDrawable.setCornerRadius(m5018e(i11));
        gradientDrawable.setStroke(m5018e(1), i12);
        return gradientDrawable;
    }

    /* JADX INFO: renamed from: l */
    public final void m5025l() {
        RunnableC1342d runnableC1342d = this.f9122i;
        removeCallbacks(runnableC1342d);
        postDelayed(runnableC1342d, 4500L);
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:47:0x00c8  */
    /* JADX INFO: renamed from: m */
    public final void m5026m(boolean z9) {
        EnumC3157m enumC3157m;
        EnumC3155l enumC3155l;
        float f8;
        if (this.f9131r == z9) {
            return;
        }
        FrameLayout frameLayout = this.f9117d;
        frameLayout.animate().cancel();
        int i10 = this.f9132s + 1;
        this.f9132s = i10;
        int i11 = 0;
        if (!z9) {
            this.f9131r = false;
            float fM5018e = m5018e(18);
            EnumC3157m enumC3157m2 = this.f9125l;
            float f10 = enumC3157m2 == EnumC3157m.f9096b ? fM5018e : 0.0f;
            if (enumC3157m2 == EnumC3157m.f9097c) {
                f10 = -fM5018e;
            }
            float f11 = enumC3157m2 == EnumC3157m.f9098d ? fM5018e : 0.0f;
            if (enumC3157m2 == EnumC3157m.f9099e) {
                f11 = -fM5018e;
            }
            frameLayout.animate().alpha(0.0f).scaleX(0.92f).scaleY(0.92f).translationX(f10).translationY(f11).setDuration(170L).withEndAction(new RunnableC0010c(this, i10, 10)).start();
            return;
        }
        WindowManager.LayoutParams layoutParams = this.f9124k;
        this.f9127n = layoutParams == null ? 0 : layoutParams.x;
        this.f9128o = layoutParams == null ? 0 : layoutParams.y;
        this.f9129p = m5018e(76);
        this.f9130q = m5018e(76);
        int i12 = getResources().getDisplayMetrics().widthPixels;
        int i13 = getResources().getDisplayMetrics().heightPixels;
        WindowManager.LayoutParams layoutParams2 = this.f9124k;
        int i14 = layoutParams2 == null ? i12 / 2 : layoutParams2.x;
        int i15 = layoutParams2 == null ? i13 / 2 : layoutParams2.y;
        int i16 = (i12 - i14) - this.f9129p;
        int i17 = (i13 - i15) - this.f9130q;
        C3167r c3167r = this.f9115b;
        if (c3167r.m5082e() != EnumC3165q.f9149c) {
            EnumC3157m enumC3157m3 = EnumC3157m.f9097c;
            int[] iArrM5019f = m5019f(enumC3157m3);
            EnumC3157m enumC3157m4 = EnumC3157m.f9099e;
            int[] iArrM5019f2 = m5019f(enumC3157m4);
            int i18 = iArrM5019f[0] - this.f9129p;
            int i19 = iArrM5019f2[1] - this.f9130q;
            if (i16 >= i18) {
                enumC3157m = enumC3157m3;
            } else if (i14 >= i18) {
                enumC3157m = EnumC3157m.f9096b;
            } else if (i17 >= i19) {
                enumC3157m = enumC3157m4;
            } else if (i15 >= i19) {
                enumC3157m = EnumC3157m.f9098d;
            } else if (Math.max(i14, i16) >= Math.max(i15, i17)) {
                if (i16 >= i14) {
                    enumC3157m = enumC3157m3;
                } else {
                    enumC3157m = EnumC3157m.f9096b;
                }
            } else if (i17 >= i15) {
                enumC3157m = enumC3157m4;
            } else {
                enumC3157m = EnumC3157m.f9098d;
            }
        } else if (c3167r.m5081d() == EnumC3163p.f9139b) {
            enumC3157m = i16 >= i14 ? EnumC3157m.f9097c : EnumC3157m.f9096b;
        } else {
            enumC3157m = i17 >= i15 ? EnumC3157m.f9099e : EnumC3157m.f9098d;
        }
        this.f9125l = enumC3157m;
        int[] iArrM5019f3 = m5019f(enumC3157m);
        EnumC3157m enumC3157m5 = this.f9125l;
        int i20 = iArrM5019f3[0];
        int i21 = iArrM5019f3[1];
        int i22 = getResources().getDisplayMetrics().widthPixels;
        int i23 = getResources().getDisplayMetrics().heightPixels;
        EnumC3157m enumC3157m6 = EnumC3157m.f9096b;
        boolean z10 = enumC3157m5 == enumC3157m6 || enumC3157m5 == EnumC3157m.f9097c;
        int i24 = z10 ? this.f9128o : this.f9127n;
        if (z10) {
            i22 = i23;
        }
        int i25 = z10 ? this.f9130q : this.f9129p;
        if (z10) {
            i20 = i21;
        }
        int i26 = (i22 - i24) - i25;
        int iMax = Math.max(0, i20 - i25);
        int i27 = iMax / 2;
        if (i24 >= i27 && i26 >= iMax - i27) {
            enumC3155l = EnumC3155l.f9077c;
        } else if (i26 >= iMax) {
            enumC3155l = EnumC3155l.f9076b;
        } else {
            enumC3155l = (i24 < iMax && i26 >= i24) ? EnumC3155l.f9076b : EnumC3155l.f9078d;
        }
        this.f9126m = enumC3155l;
        m5017d(this.f9125l);
        this.f9131r = true;
        frameLayout.setVisibility(0);
        m5016c();
        int i28 = iArrM5019f3[0];
        int i29 = iArrM5019f3[1];
        if (this.f9131r && this.f9123j != null && this.f9124k != null) {
            int i30 = this.f9127n;
            int i31 = this.f9128o;
            EnumC3157m enumC3157m7 = this.f9125l;
            if (enumC3157m7 == enumC3157m6) {
                i30 -= i28 - this.f9129p;
            } else if (enumC3157m7 == EnumC3157m.f9098d) {
                i31 -= i29 - this.f9130q;
            }
            if (enumC3157m7 == enumC3157m6 || enumC3157m7 == EnumC3157m.f9097c) {
                int i32 = i29 - this.f9130q;
                EnumC3155l enumC3155l2 = this.f9126m;
                if (enumC3155l2 == EnumC3155l.f9078d) {
                    i11 = i32;
                } else if (enumC3155l2 == EnumC3155l.f9077c) {
                    i11 = i32 / 2;
                }
                i31 -= i11;
            } else {
                int i33 = i28 - this.f9129p;
                EnumC3155l enumC3155l3 = this.f9126m;
                if (enumC3155l3 == EnumC3155l.f9078d) {
                    i11 = i33;
                } else if (enumC3155l3 == EnumC3155l.f9077c) {
                    i11 = i33 / 2;
                }
                i30 -= i11;
            }
            m5028o(i30, i31, i28, i29, false);
        }
        float fM5018e2 = m5018e(18);
        frameLayout.setAlpha(0.0f);
        frameLayout.setScaleX(0.92f);
        frameLayout.setScaleY(0.92f);
        EnumC3157m enumC3157m8 = this.f9125l;
        if (enumC3157m8 == enumC3157m6) {
            f8 = fM5018e2;
        } else {
            f8 = enumC3157m8 == EnumC3157m.f9097c ? -fM5018e2 : 0.0f;
        }
        frameLayout.setTranslationX(f8);
        EnumC3157m enumC3157m9 = this.f9125l;
        if (enumC3157m9 != EnumC3157m.f9098d) {
            fM5018e2 = enumC3157m9 == EnumC3157m.f9099e ? -fM5018e2 : 0.0f;
        }
        frameLayout.setTranslationY(fM5018e2);
        frameLayout.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).translationX(0.0f).translationY(0.0f).setDuration(220L).start();
    }

    /* JADX INFO: renamed from: n */
    public final int[] m5027n(EnumC3157m enumC3157m) {
        C3167r c3167r = this.f9115b;
        boolean z9 = c3167r.m5082e() == EnumC3165q.f9149c;
        int iMax = Math.max(1, this.f9120g.getChildCount());
        if (!z9) {
            return new int[]{m5018e(344), Math.min(m5018e((Math.min(Math.max(1, (iMax + 3) / 4), 5) * 84) + 8), Math.round(getResources().getDisplayMetrics().heightPixels * 0.56f))};
        }
        boolean z10 = c3167r.m5081d() == EnumC3163p.f9139b;
        int iM5018e = m5018e((iMax * 84) + 8);
        int i10 = getResources().getDisplayMetrics().widthPixels;
        int i11 = getResources().getDisplayMetrics().heightPixels;
        WindowManager.LayoutParams layoutParams = this.f9124k;
        int i12 = layoutParams == null ? i10 / 2 : this.f9127n;
        int i13 = layoutParams == null ? i11 / 2 : this.f9128o;
        if (z10) {
            if (enumC3157m != EnumC3157m.f9096b) {
                i12 = (i10 - i12) - this.f9129p;
            }
            return new int[]{Math.min(iM5018e, Math.min(Math.round(i10 * 0.74f), Math.max(m5018e(92), i12))), m5018e(92)};
        }
        if (enumC3157m != EnumC3157m.f9098d) {
            i13 = (i11 - i13) - this.f9130q;
        }
        return new int[]{m5018e(92), Math.min(iM5018e, Math.min(Math.round(i11 * 0.74f), Math.max(m5018e(92), i13)))};
    }

    /* JADX INFO: renamed from: o */
    public final void m5028o(int i10, int i11, int i12, int i13, boolean z9) {
        int i14 = getResources().getDisplayMetrics().widthPixels;
        int i15 = getResources().getDisplayMetrics().heightPixels;
        this.f9124k.x = Math.max(0, Math.min(i10, Math.max(0, i14 - i12)));
        this.f9124k.y = Math.max(0, Math.min(i11, Math.max(0, i15 - i13)));
        WindowManager.LayoutParams layoutParams = this.f9124k;
        layoutParams.width = i12;
        layoutParams.height = i13;
        if (z9) {
            C1652b.m2745o().saveInt(AbstractC1387m.m2421h(new byte[]{-59, 91, 91, -25, ByteCompanionObject.MAX_VALUE, -34, -82, 125, -16, 100, 82, -62, 96, -45, -86, 125, -9, 104, 123, -47, 99, -44, -86, 112, -31, 69, 99, -62, 119, -61, -111}, new byte[]{-124, 55, 55, -80, 22, -70, -55, 24}), this.f9124k.x);
            C1652b.m2745o().saveInt(AbstractC1387m.m2421h(new byte[]{25, -76, -113, 56, 56, -125, -70, -2, 44, -117, -122, 29, 39, -114, -66, -2, 43, -121, -81, 14, 36, -119, -66, -13, Base64.padSymbol, -86, -73, 29, 48, -98, -124}, new byte[]{88, -40, -29, 111, 81, -25, -35, -101}), this.f9124k.y);
        }
        try {
            this.f9123j.updateViewLayout(this, this.f9124k);
        } catch (RuntimeException unused) {
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i10, int i11) {
        boolean z9 = this.f9115b.m5082e() == EnumC3165q.f9149c;
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.round(getResources().getDisplayMetrics().widthPixels * (z9 ? 0.86f : 0.62f)), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(Math.round(getResources().getDisplayMetrics().heightPixels * (z9 ? 0.86f : 0.68f)), Integer.MIN_VALUE));
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i10) {
        super.onVisibilityChanged(view, i10);
        if (view != this) {
            return;
        }
        if (i10 == 0) {
            m5022i();
            m5023j();
            m5025l();
            return;
        }
        removeCallbacks(this.f9122i);
        animate().cancel();
        setAlpha(1.0f);
        boolean z9 = this.f9131r;
        FrameLayout frameLayout = this.f9117d;
        if (z9 || frameLayout.getVisibility() == 0) {
            frameLayout.animate().cancel();
            this.f9131r = false;
            this.f9132s++;
            m5020g();
        }
    }
}
