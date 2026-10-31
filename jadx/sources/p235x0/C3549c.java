package p235x0;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.content.ContextCompat;
import androidx.navigation.ViewOnClickListenerC0675c;
import androidx.navigation.p013ui.ViewOnClickListenerC0701a;
import com.example.navistart.R;
import com.google.android.material.materialswitch.MaterialSwitch;
import com.google.protobuf.AbstractC1178q;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.function.Consumer;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;
import p047e0.C1341c3;
import p047e0.C1428u1;
import p047e0.RunnableC1352f;
import p047e0.ViewOnTouchListenerC1424t1;
import p062f5.RunnableC1556j;
import p078h0.C1652b;
import p098j0.AbstractC1920f;
import p098j0.C1917c;
import p098j0.C1919e;
import p192s3.RunnableC3201o;
import p198t1.RunnableC3234l;

/* JADX INFO: renamed from: x0.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3549c extends FrameLayout {

    /* JADX INFO: renamed from: s */
    public static final ExecutorService f10533s = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: b */
    public final Handler f10534b;

    /* JADX INFO: renamed from: c */
    public final C3561o f10535c;

    /* JADX INFO: renamed from: d */
    public final boolean f10536d;

    /* JADX INFO: renamed from: e */
    public boolean f10537e;

    /* JADX INFO: renamed from: f */
    public boolean f10538f;

    /* JADX INFO: renamed from: g */
    public int f10539g;

    /* JADX INFO: renamed from: h */
    public long f10540h;

    /* JADX INFO: renamed from: i */
    public final HashMap f10541i;

    /* JADX INFO: renamed from: j */
    public final HashMap f10542j;

    /* JADX INFO: renamed from: k */
    public final HashMap f10543k;

    /* JADX INFO: renamed from: l */
    public final RunnableC1352f f10544l;

    /* JADX INFO: renamed from: m */
    public Runnable f10545m;

    /* JADX INFO: renamed from: n */
    public Consumer f10546n;

    /* JADX INFO: renamed from: o */
    public C1428u1 f10547o;

    /* JADX INFO: renamed from: p */
    public Object f10548p;

    /* JADX INFO: renamed from: q */
    public ViewTreeObserver f10549q;

    /* JADX INFO: renamed from: r */
    public final RunnableC3234l f10550r;

    public C3549c(Context context, C3561o c3561o, boolean z9, boolean z10) {
        super(new ContextThemeWrapper(context, R.style.Theme_JCarTools_Modern));
        this.f10534b = new Handler(Looper.getMainLooper());
        this.f10541i = new HashMap();
        this.f10542j = new HashMap();
        this.f10543k = new HashMap();
        this.f10544l = new RunnableC1352f(this, 2);
        this.f10550r = new RunnableC3234l(2, this);
        this.f10535c = c3561o;
        this.f10536d = z9;
        this.f10537e = c3561o.f10597d && z10;
        m5665k();
    }

    /* JADX INFO: renamed from: h */
    public static boolean m5654h(C3559m c3559m) {
        EnumC3560n enumC3560n = c3559m.f10580c;
        return enumC3560n == EnumC3560n.f10590d || enumC3560n == EnumC3560n.f10592f;
    }

    /* JADX INFO: renamed from: i */
    public static boolean m5655i(C3559m c3559m) {
        EnumC3560n enumC3560n = c3559m.f10580c;
        return (enumC3560n == EnumC3560n.f10588b || enumC3560n == EnumC3560n.f10589c) ? false : true;
    }

    /* JADX INFO: renamed from: n */
    public static int m5656n(C3559m c3559m) {
        EnumC3560n enumC3560n = c3559m.f10580c;
        return (enumC3560n == EnumC3560n.f10590d || enumC3560n == EnumC3560n.f10591e) ? 1 : 2;
    }

    /* JADX INFO: renamed from: a */
    public final void m5657a(View view, int i10, int i11, int i12, int i13) {
        if (!this.f10537e && !this.f10536d) {
            int[] iArrM5661e = m5661e();
            i10 -= iArrM5661e[0];
            i11 -= iArrM5661e[1];
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(m5662f(i12), m5662f(i13));
        layoutParams.leftMargin = m5669p(i10);
        layoutParams.topMargin = m5669p(i11);
        view.setPivotX(0.0f);
        view.setPivotY(0.0f);
        view.setScaleX(m5668o());
        view.setScaleY(m5668o());
        addView(view, layoutParams);
    }

    /* JADX INFO: renamed from: b */
    public final int m5658b() {
        boolean z9 = this.f10537e;
        return (z9 || this.f10536d) ? this.f10535c.m5678c(z9) : m5661e()[3] - m5661e()[1];
    }

    /* JADX INFO: renamed from: c */
    public final int m5659c() {
        boolean z9 = this.f10537e;
        return (z9 || this.f10536d) ? this.f10535c.m5680f(z9) : m5661e()[2] - m5661e()[0];
    }

    /* JADX INFO: renamed from: d */
    public final int m5660d(int i10) {
        return ContextCompat.getColor(getContext(), i10);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0) {
            this.f10534b.removeCallbacks(this.f10544l);
        }
        boolean zDispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
        if (motionEvent.getActionMasked() != 1 && motionEvent.getActionMasked() != 3) {
            return zDispatchTouchEvent;
        }
        m5666l();
        return zDispatchTouchEvent;
    }

    /* JADX INFO: renamed from: e */
    public final int[] m5661e() {
        C3561o c3561o = this.f10535c;
        boolean z9 = c3561o.f10597d;
        int iMin = z9 ? c3561o.f10607n : Integer.MAX_VALUE;
        int iMin2 = z9 ? c3561o.f10608o : Integer.MAX_VALUE;
        int iMax = z9 ? iMin + 64 : Integer.MIN_VALUE;
        int iMax2 = z9 ? iMin2 + 64 : Integer.MIN_VALUE;
        ArrayList arrayList = c3561o.f10614u;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C3559m c3559m = (C3559m) obj;
            if (c3559m.f10583f) {
                iMin = Math.min(iMin, c3559m.f10586i);
                iMin2 = Math.min(iMin2, c3559m.f10587j);
                iMax = Math.max(iMax, c3559m.m5674b() + c3559m.f10586i);
                iMax2 = Math.max(iMax2, c3559m.m5673a() + c3559m.f10587j);
            }
        }
        if (iMin == Integer.MAX_VALUE) {
            return new int[]{0, 0, 1, 1};
        }
        if (c3561o.f10597d && c3561o.f10613t) {
            int i11 = c3561o.f10607n + 32;
            int i12 = c3561o.f10608o + 32;
            int iMax3 = Math.max(i11 - iMin, iMax - i11);
            int iMax4 = Math.max(i12 - iMin2, iMax2 - i12);
            int i13 = i11 - iMax3;
            iMax = i11 + iMax3;
            int i14 = i12 - iMax4;
            int i15 = i12 + iMax4;
            iMin2 = i14;
            iMin = i13;
            iMax2 = i15;
        }
        if (c3561o.f10600g) {
            int i16 = iMax - iMin;
            int i17 = iMax2 - iMin2;
            int iMax5 = Math.max(i16, i17);
            iMin -= (iMax5 - i16) / 2;
            iMax = iMin + iMax5;
            iMin2 -= (iMax5 - i17) / 2;
            iMax2 = iMin2 + iMax5;
        }
        return new int[]{iMin, iMin2, iMax, iMax2};
    }

    /* JADX INFO: renamed from: f */
    public final int m5662f(int i10) {
        return Math.round(i10 * getResources().getDisplayMetrics().density);
    }

    /* JADX INFO: renamed from: g */
    public final void m5663g(C3559m c3559m, View view) {
        view.setOnTouchListener(new ViewOnTouchListenerC3548b(this, c3559m));
        if (!(view instanceof LinearLayout)) {
            return;
        }
        int i10 = 0;
        while (true) {
            LinearLayout linearLayout = (LinearLayout) view;
            if (i10 >= linearLayout.getChildCount()) {
                return;
            }
            linearLayout.getChildAt(i10).setClickable(false);
            i10++;
        }
    }

    /* JADX INFO: renamed from: j */
    public final void m5664j() {
        String strM2076j;
        ArrayList arrayList = this.f10535c.f10614u;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C3559m c3559m = (C3559m) obj;
            View[] viewArr = (View[]) this.f10542j.get(c3559m.f10578a);
            if (viewArr != null) {
                int iIntValue = ((Integer) this.f10541i.getOrDefault(c3559m.f10578a, 0)).intValue();
                int iRgb = m5654h(c3559m) ? Color.rgb(255, 170, 100) : m5660d(R.color.modern_primary);
                int i11 = 0;
                while (i11 < viewArr.length) {
                    GradientDrawable gradientDrawable = new GradientDrawable();
                    gradientDrawable.setCornerRadius(m5662f(3));
                    gradientDrawable.setColor(i11 < iIntValue ? iRgb : m5660d(R.color.modern_divider));
                    viewArr[i11].setBackground(gradientDrawable);
                    i11++;
                }
                LinearLayout linearLayout = (LinearLayout) ((View) viewArr[0].getParent()).getParent();
                ImageView imageView = (ImageView) linearLayout.getChildAt(0);
                if (iIntValue <= 0) {
                    iRgb = m5660d(R.color.modern_text_secondary);
                }
                imageView.setImageTintList(ColorStateList.valueOf(iRgb));
                StringBuilder sb = new StringBuilder();
                sb.append(c3559m.f10579b);
                if (iIntValue == 0) {
                    strM2076j = AbstractC1387m.m2421h(new byte[]{-28, -8, 73, 68, -8, -55, 9, 67, 24, 99, 72, 120, -8, -59, 9, 76, 24, 101, 73, 72}, new byte[]{-56, -40, -103, -10, 41, 66, -39, -7});
                } else {
                    strM2076j = AbstractC1178q.m2076j(new byte[]{95, -125, -113, 97, -50, -23, 39, 92, -93, 17, -114, 87, -49, -44, 38, 110, 83}, new byte[]{115, -93, 94, -30, 31, 105, -9, -30}, new StringBuilder(), iIntValue);
                }
                sb.append(strM2076j);
                linearLayout.setContentDescription(sb.toString());
            }
        }
    }

    /* JADX INFO: renamed from: k */
    public final void m5665k() {
        boolean z9;
        int i10;
        boolean z10;
        String strM2421h;
        CharSequence charSequenceM2421h;
        removeAllViews();
        HashMap map = this.f10542j;
        map.clear();
        C3561o c3561o = this.f10535c;
        setAlpha(1.0f - (c3561o.f10603j / 100.0f));
        setMinimumWidth(m5669p(m5659c()));
        setMinimumHeight(m5669p(m5658b()));
        m5672s();
        int i11 = 16;
        if (this.f10537e) {
            TextView textViewM5671r = m5671r(15, c3561o.f10595b);
            textViewM5671r.setGravity(16);
            m5657a(textViewM5671r, 16, 0, m5659c() - (c3561o.f10597d ? 76 : 32), 40);
            C1428u1 c1428u1 = this.f10547o;
            if (c1428u1 != null) {
                textViewM5671r.setOnTouchListener(new ViewOnTouchListenerC1424t1(c1428u1, c1428u1.f3432d));
            }
        }
        ArrayList arrayList = c3561o.f10614u;
        int size = arrayList.size();
        int i12 = 0;
        while (true) {
            int i13 = 4;
            z9 = this.f10536d;
            if (i12 >= size) {
                break;
            }
            i12++;
            C3559m c3559m = (C3559m) arrayList.get(i12);
            if (this.f10537e || c3559m.f10583f) {
                LinearLayout linearLayout = new LinearLayout(getContext());
                linearLayout.setOrientation(1);
                linearLayout.setGravity(17);
                linearLayout.setPadding(m5662f(6), m5662f(6), m5662f(6), m5662f(6));
                linearLayout.setBackground(m5670q(m5660d(R.color.modern_surface_high), i11));
                linearLayout.setElevation(m5662f(2));
                TextView textViewM5671r2 = m5671r(11, c3559m.f10579b);
                textViewM5671r2.setMaxLines(2);
                CharSequence charSequence = c3559m.f10579b;
                EnumC3560n enumC3560n = c3559m.f10580c;
                if (enumC3560n == EnumC3560n.f10588b) {
                    C1919e c1919eM3004b = AbstractC1920f.m3004b(getContext(), c3559m.f10581d);
                    linearLayout.setPadding(m5662f(4), m5662f(4), m5662f(4), m5662f(4));
                    ImageView imageView = new ImageView(getContext());
                    imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                    imageView.setPadding(m5662f(4), m5662f(4), m5662f(4), m5662f(4));
                    imageView.setBackground(m5670q(Color.rgb(105, 132, 146), 12));
                    Drawable drawable = c1919eM3004b.f5067j;
                    if (drawable != null) {
                        imageView.setImageDrawable(drawable);
                    } else {
                        imageView.setImageResource(android.R.drawable.ic_menu_help);
                        imageView.setImageTintList(ColorStateList.valueOf(m5660d(R.color.modern_text)));
                    }
                    linearLayout.addView(imageView, new LinearLayout.LayoutParams(-1, -1));
                    String str = c1919eM3004b.f5066i;
                    charSequence = (str == null || str.trim().isEmpty()) ? c3559m.f10579b : c1919eM3004b.f5066i;
                    if (!z9) {
                        linearLayout.setOnClickListener(new ViewOnClickListenerC0701a(24, this, c1919eM3004b));
                    }
                } else if (enumC3560n == EnumC3560n.f10589c) {
                    linearLayout.addView(textViewM5671r2);
                    MaterialSwitch materialSwitch = new MaterialSwitch(getContext(), null);
                    materialSwitch.setContentDescription(c3559m.f10579b);
                    materialSwitch.setChecked(((Boolean) this.f10543k.getOrDefault(c3559m.f10578a, Boolean.valueOf(C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-104, 47, -82, 11, 5, 117, -44, -123, -126, 46, -67, 6, 40}, new byte[]{-21, 90, -34, 110, 119, 42, -89, -14}) + c3561o.f10594a + c3559m.f10578a, false)))).booleanValue());
                    materialSwitch.setClickable(z9 ^ true);
                    linearLayout.addView(materialSwitch);
                    if (!z9) {
                        materialSwitch.setOnCheckedChangeListener(new C1341c3(i13, this, c3559m));
                    }
                } else {
                    ImageView imageView2 = new ImageView(getContext());
                    imageView2.setImageResource(m5654h(c3559m) ? m5656n(c3559m) == 1 ? R.drawable.car_seat_heat_l : R.drawable.car_seat_heat_r : m5656n(c3559m) == 1 ? R.drawable.car_seat_vent_l2 : R.drawable.car_seat_vent_r2);
                    imageView2.setScaleType(ImageView.ScaleType.FIT_CENTER);
                    linearLayout.addView(imageView2, new LinearLayout.LayoutParams(m5662f(32), m5662f(32)));
                    textViewM5671r2.setTextSize(9.0f);
                    linearLayout.addView(textViewM5671r2, new LinearLayout.LayoutParams(-1, m5662f(28)));
                    LinearLayout linearLayout2 = new LinearLayout(getContext());
                    linearLayout2.setGravity(17);
                    View[] viewArr = new View[3];
                    int i14 = 0;
                    for (int i15 = 3; i14 < i15; i15 = 3) {
                        View view = new View(getContext());
                        viewArr[i14] = view;
                        view.setImportantForAccessibility(2);
                        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(m5662f(14), m5662f(5));
                        layoutParams.setMargins(m5662f(3), 0, m5662f(3), 0);
                        linearLayout2.addView(view, layoutParams);
                        i14++;
                    }
                    linearLayout.addView(linearLayout2, new LinearLayout.LayoutParams(-1, m5662f(12)));
                    map.put(c3559m.f10578a, viewArr);
                    if (!z9) {
                        linearLayout.setOnClickListener(new ViewOnClickListenerC0701a(25, this, c3559m));
                    }
                }
                linearLayout.setContentDescription(charSequence);
                boolean z11 = this.f10537e;
                m5657a(linearLayout, z11 ? c3559m.f10584g : c3559m.f10586i, z11 ? c3559m.f10585h : c3559m.f10587j, c3559m.m5674b(), c3559m.m5673a());
                if (z9) {
                    m5663g(c3559m, linearLayout);
                } else if (this.f10547o != null) {
                    Runnable runnableC1556j = new RunnableC1556j(23, linearLayout);
                    if (c3559m.f10580c == EnumC3560n.f10589c) {
                        View childAt = linearLayout.getChildAt(1);
                        Objects.requireNonNull(childAt);
                        RunnableC3201o runnableC3201o = new RunnableC3201o(2, childAt);
                        C1428u1 c1428u2 = this.f10547o;
                        c1428u2.getClass();
                        childAt.setOnTouchListener(new ViewOnTouchListenerC1424t1(c1428u2, runnableC3201o));
                        runnableC1556j = runnableC3201o;
                    }
                    C1428u1 c1428u3 = this.f10547o;
                    c1428u3.getClass();
                    linearLayout.setOnTouchListener(new ViewOnTouchListenerC1424t1(c1428u3, runnableC1556j));
                }
                i11 = 16;
            }
        }
        if (c3561o.f10597d) {
            if (this.f10537e) {
                i10 = 8;
                strM2421h = AbstractC1387m.m2421h(new byte[]{-3, 95, -50}, new byte[]{31, -41, 92, -41, 12, -73, 70, 95});
                z10 = false;
            } else {
                i10 = 8;
                z10 = false;
                strM2421h = AbstractC1387m.m2421h(new byte[]{-80}, new byte[]{-101, 54, 6, -103, -105, 11, 15, -93});
            }
            TextView textViewM5671r3 = m5671r(24, strM2421h);
            textViewM5671r3.setIncludeFontPadding(z10);
            if (this.f10537e) {
                byte[] bArr = new byte[i10];
                // fill-array-data instruction
                bArr[0] = 56;
                bArr[1] = 90;
                bArr[2] = 109;
                bArr[3] = -35;
                bArr[4] = -80;
                bArr[5] = -57;
                bArr[6] = -96;
                bArr[7] = 7;
                charSequenceM2421h = AbstractC1387m.m2421h(new byte[]{-24, -5, -67, 111, 96, 114, 113, -121, -24, -25, -68, 94, 97, 69, 113, -117, 24, -118, -33, 13, 8, 23, 20, -41, -114, -118, -40, 12, 50}, bArr);
            } else {
                byte[] bArr2 = new byte[i10];
                // fill-array-data instruction
                bArr2[0] = 76;
                bArr2[1] = 126;
                bArr2[2] = 113;
                bArr2[3] = 115;
                bArr2[4] = 82;
                bArr2[5] = 115;
                bArr2[6] = -64;
                bArr2[7] = 81;
                charSequenceM2421h = AbstractC1387m.m2421h(new byte[]{-100, -34, -95, -61, -125, -14, 16, -21, -99, -2, -96, -8, -125, -15, 17, -35, 108, -82, -61, -93, -22, -93, 116, -127, -6, -82, -60, -94, -48}, bArr2);
            }
            textViewM5671r3.setContentDescription(charSequenceM2421h);
            textViewM5671r3.setBackground(m5670q(m5660d(R.color.modern_primary_dark), 20));
            int iM5659c = this.f10537e ? m5659c() - 56 : c3561o.f10607n;
            boolean z12 = this.f10537e;
            m5657a(textViewM5671r3, iM5659c, z12 ? 4 : c3561o.f10608o, z12 ? 48 : 64, z12 ? 32 : 64);
            if (z9 && !this.f10537e) {
                m5663g(null, textViewM5671r3);
            } else if (!z9) {
                textViewM5671r3.setOnClickListener(new ViewOnClickListenerC0675c(22, this));
                C1428u1 c1428u4 = this.f10547o;
                if (c1428u4 != null) {
                    textViewM5671r3.setOnTouchListener(new ViewOnTouchListenerC1424t1(c1428u4, c1428u4.f3432d));
                }
            }
        }
        m5664j();
        requestLayout();
    }

    /* JADX INFO: renamed from: l */
    public final void m5666l() {
        Handler handler = this.f10534b;
        RunnableC1352f runnableC1352f = this.f10544l;
        handler.removeCallbacks(runnableC1352f);
        if (!this.f10536d && this.f10538f && this.f10537e) {
            C3561o c3561o = this.f10535c;
            if (c3561o.f10597d && c3561o.f10599f) {
                handler.postDelayed(runnableC1352f, ((long) c3561o.f10602i) * 1000);
            }
        }
    }

    /* JADX INFO: renamed from: m */
    public final void m5667m(C1919e c1919e) {
        Display[] displays = ((DisplayManager) getContext().getSystemService(AbstractC1387m.m2421h(new byte[]{-62, 38, -100, 108, -80, 7, -21}, new byte[]{-90, 79, -17, 28, -36, 102, -110, 33}))).getDisplays();
        for (int i10 = 0; i10 < displays.length; i10++) {
            if (displays[i10].getDisplayId() == this.f10535c.f10601h) {
                C1917c c1917c = new C1917c(getContext());
                DisplayManager displayManager = (DisplayManager) c1917c.f5051a.getSystemService(AbstractC1387m.m2421h(new byte[]{56, -58, 92, -29, 76, 88, -42}, new byte[]{92, -81, 47, -109, 32, 57, -81, 46}));
                if (displayManager == null || i10 < 0 || i10 >= displayManager.getDisplays().length) {
                    return;
                }
                c1917c.m2994j(c1919e, Integer.valueOf(i10));
                return;
            }
        }
        Toast.makeText(getContext(), AbstractC1387m.m2421h(new byte[]{-73, 92, 114, 16, 123, 95, -49, 13, -73, 76, -126, 122, 24, 15, -89, 109, -45, 33, 20, 122, 31, 14, -99, 109, -41, -47, 115, 43, 122, 106, -49, 4, -74, 118, 114, 26, 123, 94, 63, 109, -38, 33, 23, 122, 30, 15, -95, 108, -26, 32, 32, 123, 41, 15, -96, 109, -46, 33, 31}, new byte[]{103, -15, -94, -86, -86, -33, 31, -67}), 0).show();
    }

    /* JADX INFO: renamed from: o */
    public final float m5668o() {
        boolean z9 = this.f10537e;
        C3561o c3561o = this.f10535c;
        return (z9 ? c3561o.f10605l : c3561o.f10606m) / 100.0f;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f10538f = true;
        boolean z9 = this.f10536d;
        if (!z9) {
            try {
                Class<?> cls = Class.forName(AbstractC1387m.m2421h(new byte[]{44, -127, 113, 18, -49, 43, 118, 67, 59, -122, 112, 23, -114, 20, 123, 8, 58, -69, 103, 5, -59, 13, 112, 30, 40, -99, 99, 5, -46, 102, 93, 3, 14, ByteCompanionObject.MIN_VALUE, 120, 16, -43, 54, 119, 36, 35, -101, 112, 18, -50, 35, 126, 36, 35, -100, 112, 20, -45, 14, 123, 30, 57, -118, 123, 5, -46}, new byte[]{77, -17, 21, 96, -96, 66, 18, 109}));
                Class<?> cls2 = Class.forName(AbstractC1387m.m2421h(new byte[]{100, -75, 68, -92, 51, 115, 120, 96, 115, -78, 69, -95, 114, 76, 117, 43, 114, -113, 82, -77, 57, 85, 126, Base64.padSymbol, 96, -87, 86, -77, 46, 62, 85, 32, 113, -66, 82, -72, Base64.padSymbol, 118, 85, 32, 118, -66, 84, -91, 21, 116, 122, 33}, new byte[]{5, -37, 32, -42, 92, 26, 28, 78}));
                final Method method = cls2.getMethod(AbstractC1387m.m2421h(new byte[]{-53, -63, -36, -2, -5, -11, 10, 94, -39, -58, -60, -49, -35, -18, 26, 83, -52, -41}, new byte[]{-72, -92, -88, -86, -108, ByteCompanionObject.MIN_VALUE, 105, 54}), Integer.TYPE);
                final Field field = cls2.getField(AbstractC1387m.m2421h(new byte[]{124, 69, -108, 89, -108, -95, -62, -31, 109, 120, -124, 93, -107, -81, -50}, new byte[]{8, 42, -31, 58, -4, -64, -96, -115}));
                this.f10548p = Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: x0.a
                    @Override // java.lang.reflect.InvocationHandler
                    public final Object invoke(Object obj, Method method2, Object[] objArr) throws IllegalAccessException, InvocationTargetException {
                        if (!method2.getName().equals(AbstractC1387m.m2421h(new byte[]{-56, 91, -83, 20, 74, 78, 13, -115, -62, 124, ByteCompanionObject.MIN_VALUE, 15, 66, 76, 22, -104, -53, 124, ByteCompanionObject.MIN_VALUE, 8, 66, 74, 11}, new byte[]{-89, 53, -18, 123, 39, 62, 120, -7}))) {
                            if (method2.getName().equals(AbstractC1387m.m2421h(new byte[]{-127, 64, 18, 66, 54, 91}, new byte[]{-28, 49, 103, 35, 90, 40, 7, -67}))) {
                                return Boolean.valueOf(obj == objArr[0]);
                            }
                            if (method2.getName().equals(AbstractC1387m.m2421h(new byte[]{-47, 48, -100, -63, -15, 70, -83, -93}, new byte[]{-71, 81, -17, -87, -78, 41, -55, -58}))) {
                                return Integer.valueOf(System.identityHashCode(obj));
                            }
                            if (method2.getName().equals(AbstractC1387m.m2421h(new byte[]{19, -127, -74, 95, -12, 0, 124, -76}, new byte[]{103, -18, -27, 43, -122, 105, 18, -45}))) {
                                return AbstractC1387m.m2421h(new byte[]{-42, -119, -103, 0, 88, 20, -39, -14, -12, -125, -107, 53, 88, 7, -28, -14, -17}, new byte[]{-127, -32, -3, 103, Base64.padSymbol, 96, -115, -99});
                            }
                            return null;
                        }
                        method.invoke(objArr[0], 3);
                        Region region = (Region) field.get(objArr[0]);
                        Region region2 = new Region();
                        C3549c c3549c = this.f10523a;
                        C3561o c3561o = c3549c.f10535c;
                        if (c3561o.f10603j != 100) {
                            int[] iArr = new int[2];
                            if (!c3549c.f10537e || c3561o.f10604k >= 100) {
                                for (int i10 = 0; i10 < c3549c.getChildCount(); i10++) {
                                    View childAt = c3549c.getChildAt(i10);
                                    if (childAt.getVisibility() == 0) {
                                        childAt.getLocationInWindow(iArr);
                                        int i11 = iArr[0];
                                        region2.op(i11, iArr[1], Math.round(childAt.getScaleX() * childAt.getWidth()) + i11, iArr[1] + Math.round(childAt.getScaleY() * childAt.getHeight()), Region.Op.UNION);
                                    }
                                }
                            } else {
                                c3549c.getLocationInWindow(iArr);
                                int i12 = iArr[0];
                                region2.set(i12, iArr[1], c3549c.getWidth() + i12, c3549c.getHeight() + iArr[1]);
                            }
                        }
                        region.set(region2);
                        return null;
                    }
                });
                this.f10549q = getViewTreeObserver();
                ViewTreeObserver.class.getMethod(AbstractC1387m.m2421h(new byte[]{-36, 79, -5, -17, -61, -44, 111, -66, -51, 94, -21, -59, -28, -7, 116, -74, -49, 69, -2, -52, -28, -7, 115, -74, -55, 88, -45, -55, -34, -29, 101, -67, -40, 89}, new byte[]{-67, 43, -97, -96, -83, -105, 0, -45}), cls).invoke(this.f10549q, this.f10548p);
            } catch (ReflectiveOperationException e) {
                Log.e(AbstractC1387m.m2421h(new byte[]{-13, -50, -41, 20, -20, 90, 78, 85, -57, -34, -45, 2}, new byte[]{-96, -69, -89, 113, -98, 13, 39, 49}), AbstractC1387m.m2421h(new byte[]{-9, 53, -7, -71, 67, -48, -110, 85, -37, 58, -15, -66, 75, -47, -64, 83, -108, 35, -2, -71, 72, -53, -59, 22, -64, 59, -30, -76, 68, -124, -64, 83, -45, Base64.padSymbol, -8, -71}, new byte[]{-76, 84, -105, -41, 44, -92, -78, 54}), e);
            }
        }
        if (z9) {
            return;
        }
        this.f10534b.post(this.f10550r);
        m5666l();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        ViewTreeObserver viewTreeObserver;
        this.f10538f = false;
        this.f10534b.removeCallbacksAndMessages(null);
        if (this.f10548p != null && (viewTreeObserver = this.f10549q) != null && viewTreeObserver.isAlive()) {
            try {
                ViewTreeObserver.class.getMethod(AbstractC1387m.m2421h(new byte[]{-37, -112, -44, 74, -100, 24, 8, 93, -22, -102, -44, 85, -97, 9, 34, 122, -57, -127, -36, 87, -124, 28, 43, 122, -57, -122, -36, 81, -103, 49, 46, 64, -35, -112, -41, 64, -104}, new byte[]{-87, -11, -71, 37, -22, 125, 71, 51}), Class.forName(AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MIN_VALUE, -57, -49, -81, -56, 124, -101, -94, -105, -64, -50, -86, -119, 67, -106, -23, -106, -3, -39, -72, -62, 90, -99, -1, -124, -37, -35, -72, -43, 49, -80, -30, -94, -58, -58, -83, -46, 97, -102, -59, -113, -35, -50, -81, -55, 116, -109, -59, -113, -38, -50, -87, -44, 89, -106, -1, -107, -52, -59, -72, -43}, new byte[]{-31, -87, -85, -35, -89, 21, -1, -116}))).invoke(this.f10549q, this.f10548p);
            } catch (ReflectiveOperationException e) {
                Log.w(AbstractC1387m.m2421h(new byte[]{31, 77, 65, 98, -52, 49, -28, 104, 43, 93, 69, 116}, new byte[]{76, 56, 49, 7, -66, 102, -115, 12}), AbstractC1387m.m2421h(new byte[]{-75, 43, 1, -123, 109, 19, -15, -32, -120, 59, 15, -126, 59, 4, -76, -13, -114, 33, 2}, new byte[]{-25, 78, 108, -22, 27, 118, -47, -108}), e);
            }
        }
        this.f10549q = null;
        this.f10548p = null;
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i10, int i11) {
        for (int i12 = 0; i12 < getChildCount(); i12++) {
            View childAt = getChildAt(i12);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            childAt.measure(View.MeasureSpec.makeMeasureSpec(layoutParams.width, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(layoutParams.height, BasicMeasure.EXACTLY));
        }
        setMeasuredDimension(View.resolveSize(m5669p(m5659c()), i10), View.resolveSize(m5669p(m5658b()), i11));
    }

    /* JADX INFO: renamed from: p */
    public final int m5669p(int i10) {
        return Math.round(m5668o() * i10 * getResources().getDisplayMetrics().density);
    }

    /* JADX INFO: renamed from: q */
    public final GradientDrawable m5670q(int i10, int i11) {
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TL_BR, new int[]{i10, i10});
        gradientDrawable.setCornerRadius(m5662f(i11));
        gradientDrawable.setStroke(m5662f(1), m5660d(R.color.modern_divider));
        return gradientDrawable;
    }

    /* JADX INFO: renamed from: r */
    public final TextView m5671r(int i10, String str) {
        TextView textView = new TextView(getContext());
        textView.setText(str);
        textView.setTextColor(m5660d(R.color.modern_text));
        textView.setTextSize(i10);
        textView.setGravity(17);
        textView.setTypeface(Typeface.DEFAULT, 1);
        return textView;
    }

    /* JADX INFO: renamed from: s */
    public final void m5672s() {
        GradientDrawable gradientDrawableM5670q = (this.f10537e || this.f10536d) ? m5670q(m5660d(R.color.modern_surface), Math.round(m5668o() * 24.0f)) : null;
        if (gradientDrawableM5670q != null && this.f10537e) {
            gradientDrawableM5670q.setAlpha(Math.round((1.0f - (this.f10535c.f10604k / 100.0f)) * 255.0f));
        }
        setBackground(gradientDrawableM5670q);
        requestLayout();
    }

    public void setChanged(Runnable runnable) {
        this.f10545m = runnable;
    }

    public void setElementEditor(Consumer<C3559m> consumer) {
        this.f10546n = consumer;
    }
}
