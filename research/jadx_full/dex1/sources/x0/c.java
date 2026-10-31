package x0;

import android.R$drawable;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.GradientDrawable$Orientation;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.FrameLayout$LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView$ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.content.ContextCompat;
import com.google.android.material.materialswitch.MaterialSwitch;
import com.google.protobuf.q;
import e0.c3;
import e0.t1;
import e0.u1;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.function.Consumer;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c extends FrameLayout {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final ExecutorService f5963s = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f5964b;
    public final o c;
    public final boolean d;
    public boolean e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f5965f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f5966g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f5967h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final HashMap f5968i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final HashMap f5969j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final HashMap f5970k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final e0.f f5971l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f5972m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Consumer f5973n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public u1 f5974o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Object f5975p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public ViewTreeObserver f5976q;
    public final t1.l r;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(Context context, o oVar, boolean z8, boolean z9) {
        super(new ContextThemeWrapper(context, 2132017805));
        this.f5964b = new Handler(Looper.getMainLooper());
        this.f5968i = new HashMap();
        this.f5969j = new HashMap();
        this.f5970k = new HashMap();
        this.f5971l = new e0.f(this, 2);
        this.r = new t1.l(2, this);
        this.c = oVar;
        this.d = z8;
        this.e = oVar.d && z9;
        k();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean h(m mVar) {
        n nVar = mVar.c;
        return nVar == n.d || nVar == n.f6001f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean i(m mVar) {
        n nVar = mVar.c;
        return (nVar == n.f6000b || nVar == n.c) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int n(m mVar) {
        n nVar = mVar.c;
        return (nVar == n.d || nVar == n.e) ? 1 : 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(View view, int i9, int i10, int i11, int i12) {
        if (!this.e && !this.d) {
            int[] iArrE = e();
            i9 -= iArrE[0];
            i10 -= iArrE[1];
        }
        FrameLayout$LayoutParams frameLayout$LayoutParams = new FrameLayout$LayoutParams(f(i11), f(i12));
        frameLayout$LayoutParams.leftMargin = p(i9);
        frameLayout$LayoutParams.topMargin = p(i10);
        view.setPivotX(0.0f);
        view.setPivotY(0.0f);
        view.setScaleX(o());
        view.setScaleY(o());
        addView(view, frameLayout$LayoutParams);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int b() {
        boolean z8 = this.e;
        return (z8 || this.d) ? this.c.c(z8) : e()[3] - e()[1];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int c() {
        boolean z8 = this.e;
        return (z8 || this.d) ? this.c.f(z8) : e()[2] - e()[0];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int d(int i9) {
        return ContextCompat.getColor(getContext(), i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0) {
            this.f5964b.removeCallbacks(this.f5971l);
        }
        boolean zDispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
        if (motionEvent.getActionMasked() != 1 && motionEvent.getActionMasked() != 3) {
            return zDispatchTouchEvent;
        }
        l();
        return zDispatchTouchEvent;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int[] e() {
        o oVar = this.c;
        boolean z8 = oVar.d;
        int iMin = z8 ? oVar.f6013n : Integer.MAX_VALUE;
        int iMin2 = z8 ? oVar.f6014o : Integer.MAX_VALUE;
        int iMax = z8 ? iMin + 64 : Integer.MIN_VALUE;
        int iMax2 = z8 ? iMin2 + 64 : Integer.MIN_VALUE;
        ArrayList arrayList = oVar.f6018u;
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList.get(i9);
            i9++;
            m mVar = (m) obj;
            if (mVar.f5995f) {
                iMin = Math.min(iMin, mVar.f5998i);
                iMin2 = Math.min(iMin2, mVar.f5999j);
                iMax = Math.max(iMax, mVar.b() + mVar.f5998i);
                iMax2 = Math.max(iMax2, mVar.a() + mVar.f5999j);
            }
        }
        if (iMin == Integer.MAX_VALUE) {
            return new int[]{0, 0, 1, 1};
        }
        if (oVar.d && oVar.t) {
            int i10 = oVar.f6013n + 32;
            int i11 = oVar.f6014o + 32;
            int iMax3 = Math.max(i10 - iMin, iMax - i10);
            int iMax4 = Math.max(i11 - iMin2, iMax2 - i11);
            int i12 = i10 - iMax3;
            iMax = i10 + iMax3;
            int i13 = i11 - iMax4;
            int i14 = i11 + iMax4;
            iMin2 = i13;
            iMin = i12;
            iMax2 = i14;
        }
        if (oVar.f6006g) {
            int i15 = iMax - iMin;
            int i16 = iMax2 - iMin2;
            int iMax5 = Math.max(i15, i16);
            iMin -= (iMax5 - i15) / 2;
            iMax = iMin + iMax5;
            iMin2 -= (iMax5 - i16) / 2;
            iMax2 = iMin2 + iMax5;
        }
        return new int[]{iMin, iMin2, iMax, iMax2};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int f(int i9) {
        return Math.round(i9 * getResources().getDisplayMetrics().density);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g(m mVar, View view) {
        view.setOnTouchListener(new b(this, mVar));
        if (!(view instanceof LinearLayout)) {
            return;
        }
        int i9 = 0;
        while (true) {
            LinearLayout linearLayout = (LinearLayout) view;
            if (i9 >= linearLayout.getChildCount()) {
                return;
            }
            linearLayout.getChildAt(i9).setClickable(false);
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void j() {
        String strJ;
        ArrayList arrayList = this.c.f6018u;
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList.get(i9);
            i9++;
            m mVar = (m) obj;
            View[] viewArr = (View[]) this.f5969j.get(mVar.f5993a);
            if (viewArr != null) {
                int iIntValue = ((Integer) this.f5968i.getOrDefault(mVar.f5993a, 0)).intValue();
                int iRgb = h(mVar) ? Color.rgb(255, 170, 100) : d(2131035003);
                int i10 = 0;
                while (i10 < viewArr.length) {
                    GradientDrawable gradientDrawable = new GradientDrawable();
                    gradientDrawable.setCornerRadius(f(3));
                    gradientDrawable.setColor(i10 < iIntValue ? iRgb : d(2131035001));
                    viewArr[i10].setBackground(gradientDrawable);
                    i10++;
                }
                LinearLayout linearLayout = (LinearLayout) ((View) viewArr[0].getParent()).getParent();
                ImageView imageView = (ImageView) linearLayout.getChildAt(0);
                if (iIntValue <= 0) {
                    iRgb = d(2131035010);
                }
                imageView.setImageTintList(ColorStateList.valueOf(iRgb));
                StringBuilder sb = new StringBuilder();
                sb.append(mVar.f5994b);
                if (iIntValue == 0) {
                    strJ = e0.m.h(new byte[]{-28, -8, 73, 68, -8, -55, 9, 67, 24, 99, 72, 120, -8, -59, 9, 76, 24, 101, 73, 72}, new byte[]{-56, -40, -103, -10, 41, 66, -39, -7});
                } else {
                    strJ = q.j(new byte[]{95, -125, -113, 97, -50, -23, 39, 92, -93, 17, -114, 87, -49, -44, 38, 110, 83}, new byte[]{115, -93, 94, -30, 31, 105, -9, -30}, new StringBuilder(), iIntValue);
                }
                sb.append(strJ);
                linearLayout.setContentDescription(sb.toString());
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void k() {
        boolean z8;
        int i9;
        boolean z9;
        String strH;
        CharSequence charSequenceH;
        removeAllViews();
        HashMap map = this.f5969j;
        map.clear();
        o oVar = this.c;
        setAlpha(1.0f - (oVar.f6009j / 100.0f));
        setMinimumWidth(p(c()));
        setMinimumHeight(p(b()));
        s();
        int i10 = 16;
        if (this.e) {
            TextView textViewR = r(15, oVar.f6004b);
            textViewR.setGravity(16);
            a(textViewR, 16, 0, c() - (oVar.d ? 76 : 32), 40);
            u1 u1Var = this.f5974o;
            if (u1Var != null) {
                textViewR.setOnTouchListener(new t1(u1Var, u1Var.d));
            }
        }
        ArrayList arrayList = oVar.f6018u;
        int size = arrayList.size();
        int i11 = 0;
        while (true) {
            z8 = this.d;
            if (i11 >= size) {
                break;
            }
            i11++;
            m mVar = (m) arrayList.get(i11);
            if (this.e || mVar.f5995f) {
                LinearLayout linearLayout = new LinearLayout(getContext());
                linearLayout.setOrientation(1);
                linearLayout.setGravity(17);
                linearLayout.setPadding(f(6), f(6), f(6), f(6));
                linearLayout.setBackground(q(d(2131035008), i10));
                linearLayout.setElevation(f(2));
                TextView textViewR2 = r(11, mVar.f5994b);
                textViewR2.setMaxLines(2);
                CharSequence charSequence = mVar.f5994b;
                n nVar = mVar.c;
                if (nVar == n.f6000b) {
                    j0.e eVarB = j0.f.b(getContext(), mVar.d);
                    linearLayout.setPadding(f(4), f(4), f(4), f(4));
                    ImageView imageView = new ImageView(getContext());
                    imageView.setScaleType(ImageView$ScaleType.FIT_CENTER);
                    imageView.setPadding(f(4), f(4), f(4), f(4));
                    imageView.setBackground(q(Color.rgb(105, 132, 146), 12));
                    Drawable drawable = eVarB.f2878j;
                    if (drawable != null) {
                        imageView.setImageDrawable(drawable);
                    } else {
                        imageView.setImageResource(R$drawable.ic_menu_help);
                        imageView.setImageTintList(ColorStateList.valueOf(d(2131035009)));
                    }
                    linearLayout.addView(imageView, new LinearLayout$LayoutParams(-1, -1));
                    String str = eVarB.f2877i;
                    charSequence = (str == null || str.trim().isEmpty()) ? mVar.f5994b : eVarB.f2877i;
                    if (!z8) {
                        linearLayout.setOnClickListener(new androidx.navigation.ui.a(24, this, eVarB));
                    }
                } else if (nVar == n.c) {
                    linearLayout.addView(textViewR2);
                    MaterialSwitch materialSwitch = new MaterialSwitch(getContext(), null);
                    materialSwitch.setContentDescription(mVar.f5994b);
                    materialSwitch.setChecked(((Boolean) this.f5970k.getOrDefault(mVar.f5993a, Boolean.valueOf(h0.b.o().loadBoolean(e0.m.h(new byte[]{-104, 47, -82, 11, 5, 117, -44, -123, -126, 46, -67, 6, 40}, new byte[]{-21, 90, -34, 110, 119, 42, -89, -14}) + oVar.f6003a + mVar.f5993a, false)))).booleanValue());
                    materialSwitch.setClickable(z8 ^ true);
                    linearLayout.addView(materialSwitch);
                    if (!z8) {
                        materialSwitch.setOnCheckedChangeListener(new c3(4, this, mVar));
                    }
                } else {
                    ImageView imageView2 = new ImageView(getContext());
                    imageView2.setImageResource(h(mVar) ? n(mVar) == 1 ? 2131165362 : 2131165367 : n(mVar) == 1 ? 2131165373 : 2131165374);
                    imageView2.setScaleType(ImageView$ScaleType.FIT_CENTER);
                    linearLayout.addView(imageView2, new LinearLayout$LayoutParams(f(32), f(32)));
                    textViewR2.setTextSize(9.0f);
                    linearLayout.addView(textViewR2, new LinearLayout$LayoutParams(-1, f(28)));
                    LinearLayout linearLayout2 = new LinearLayout(getContext());
                    linearLayout2.setGravity(17);
                    View[] viewArr = new View[3];
                    int i12 = 0;
                    for (int i13 = 3; i12 < i13; i13 = 3) {
                        View view = new View(getContext());
                        viewArr[i12] = view;
                        view.setImportantForAccessibility(2);
                        LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(f(14), f(5));
                        linearLayout$LayoutParams.setMargins(f(3), 0, f(3), 0);
                        linearLayout2.addView(view, linearLayout$LayoutParams);
                        i12++;
                    }
                    linearLayout.addView(linearLayout2, new LinearLayout$LayoutParams(-1, f(12)));
                    map.put(mVar.f5993a, viewArr);
                    if (!z8) {
                        linearLayout.setOnClickListener(new androidx.navigation.ui.a(25, this, mVar));
                    }
                }
                linearLayout.setContentDescription(charSequence);
                boolean z10 = this.e;
                a(linearLayout, z10 ? mVar.f5996g : mVar.f5998i, z10 ? mVar.f5997h : mVar.f5999j, mVar.b(), mVar.a());
                if (z8) {
                    g(mVar, linearLayout);
                } else if (this.f5974o != null) {
                    Runnable jVar = new f5.j(23, linearLayout);
                    if (mVar.c == n.c) {
                        View childAt = linearLayout.getChildAt(1);
                        Objects.requireNonNull(childAt);
                        s3.o oVar2 = new s3.o(2, childAt);
                        u1 u1Var2 = this.f5974o;
                        u1Var2.getClass();
                        childAt.setOnTouchListener(new t1(u1Var2, oVar2));
                        jVar = oVar2;
                    }
                    u1 u1Var3 = this.f5974o;
                    u1Var3.getClass();
                    linearLayout.setOnTouchListener(new t1(u1Var3, jVar));
                }
                i10 = 16;
            }
        }
        if (oVar.d) {
            if (this.e) {
                i9 = 8;
                strH = e0.m.h(new byte[]{-3, 95, -50}, new byte[]{31, -41, 92, -41, 12, -73, 70, 95});
                z9 = false;
            } else {
                i9 = 8;
                z9 = false;
                strH = e0.m.h(new byte[]{-80}, new byte[]{-101, 54, 6, -103, -105, 11, 15, -93});
            }
            TextView textViewR3 = r(24, strH);
            textViewR3.setIncludeFontPadding(z9);
            if (this.e) {
                byte[] bArr = new byte[i9];
                // fill-array-data instruction
                bArr[0] = 56;
                bArr[1] = 90;
                bArr[2] = 109;
                bArr[3] = -35;
                bArr[4] = -80;
                bArr[5] = -57;
                bArr[6] = -96;
                bArr[7] = 7;
                charSequenceH = e0.m.h(new byte[]{-24, -5, -67, 111, 96, 114, 113, -121, -24, -25, -68, 94, 97, 69, 113, -117, 24, -118, -33, 13, 8, 23, 20, -41, -114, -118, -40, 12, 50}, bArr);
            } else {
                byte[] bArr2 = new byte[i9];
                // fill-array-data instruction
                bArr2[0] = 76;
                bArr2[1] = 126;
                bArr2[2] = 113;
                bArr2[3] = 115;
                bArr2[4] = 82;
                bArr2[5] = 115;
                bArr2[6] = -64;
                bArr2[7] = 81;
                charSequenceH = e0.m.h(new byte[]{-100, -34, -95, -61, -125, -14, 16, -21, -99, -2, -96, -8, -125, -15, 17, -35, 108, -82, -61, -93, -22, -93, 116, -127, -6, -82, -60, -94, -48}, bArr2);
            }
            textViewR3.setContentDescription(charSequenceH);
            textViewR3.setBackground(q(d(2131035004), 20));
            int iC = this.e ? c() - 56 : oVar.f6013n;
            boolean z11 = this.e;
            a(textViewR3, iC, z11 ? 4 : oVar.f6014o, z11 ? 48 : 64, z11 ? 32 : 64);
            if (z8 && !this.e) {
                g(null, textViewR3);
            } else if (!z8) {
                textViewR3.setOnClickListener(new androidx.navigation.c(22, this));
                u1 u1Var4 = this.f5974o;
                if (u1Var4 != null) {
                    textViewR3.setOnTouchListener(new t1(u1Var4, u1Var4.d));
                }
            }
        }
        j();
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void l() {
        Handler handler = this.f5964b;
        e0.f fVar = this.f5971l;
        handler.removeCallbacks(fVar);
        if (!this.d && this.f5965f && this.e) {
            o oVar = this.c;
            if (oVar.d && oVar.f6005f) {
                handler.postDelayed(fVar, ((long) oVar.f6008i) * 1000);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void m(j0.e eVar) {
        Display[] displays = ((DisplayManager) getContext().getSystemService(e0.m.h(new byte[]{-62, 38, -100, 108, -80, 7, -21}, new byte[]{-90, 79, -17, 28, -36, 102, -110, 33}))).getDisplays();
        for (int i9 = 0; i9 < displays.length; i9++) {
            if (displays[i9].getDisplayId() == this.c.f6007h) {
                j0.c cVar = new j0.c(getContext());
                DisplayManager displayManager = (DisplayManager) cVar.f2868a.getSystemService(e0.m.h(new byte[]{56, -58, 92, -29, 76, 88, -42}, new byte[]{92, -81, 47, -109, 32, 57, -81, 46}));
                if (displayManager == null || i9 < 0 || i9 >= displayManager.getDisplays().length) {
                    return;
                }
                cVar.j(eVar, Integer.valueOf(i9));
                return;
            }
        }
        Toast.makeText(getContext(), e0.m.h(new byte[]{-73, 92, 114, 16, 123, 95, -49, 13, -73, 76, -126, 122, 24, 15, -89, 109, -45, 33, 20, 122, 31, 14, -99, 109, -41, -47, 115, 43, 122, 106, -49, 4, -74, 118, 114, 26, 123, 94, 63, 109, -38, 33, 23, 122, 30, 15, -95, 108, -26, 32, 32, 123, 41, 15, -96, 109, -46, 33, 31}, new byte[]{103, -15, -94, -86, -86, -33, 31, -67}), 0).show();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float o() {
        boolean z8 = this.e;
        o oVar = this.c;
        return (z8 ? oVar.f6011l : oVar.f6012m) / 100.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f5965f = true;
        boolean z8 = this.d;
        if (!z8) {
            try {
                Class<?> cls = Class.forName(e0.m.h(new byte[]{44, -127, 113, 18, -49, 43, 118, 67, 59, -122, 112, 23, -114, 20, 123, 8, 58, -69, 103, 5, -59, 13, 112, 30, 40, -99, 99, 5, -46, 102, 93, 3, 14, ByteCompanionObject.MIN_VALUE, 120, 16, -43, 54, 119, 36, 35, -101, 112, 18, -50, 35, 126, 36, 35, -100, 112, 20, -45, 14, 123, 30, 57, -118, 123, 5, -46}, new byte[]{77, -17, 21, 96, -96, 66, 18, 109}));
                Class<?> cls2 = Class.forName(e0.m.h(new byte[]{100, -75, 68, -92, 51, 115, 120, 96, 115, -78, 69, -95, 114, 76, 117, 43, 114, -113, 82, -77, 57, 85, 126, Base64.padSymbol, 96, -87, 86, -77, 46, 62, 85, 32, 113, -66, 82, -72, Base64.padSymbol, 118, 85, 32, 118, -66, 84, -91, 21, 116, 122, 33}, new byte[]{5, -37, 32, -42, 92, 26, 28, 78}));
                this.f5975p = Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new a(this, cls2.getMethod(e0.m.h(new byte[]{-53, -63, -36, -2, -5, -11, 10, 94, -39, -58, -60, -49, -35, -18, 26, 83, -52, -41}, new byte[]{-72, -92, -88, -86, -108, ByteCompanionObject.MIN_VALUE, 105, 54}), Integer.TYPE), cls2.getField(e0.m.h(new byte[]{124, 69, -108, 89, -108, -95, -62, -31, 109, 120, -124, 93, -107, -81, -50}, new byte[]{8, 42, -31, 58, -4, -64, -96, -115}))));
                this.f5976q = getViewTreeObserver();
                ViewTreeObserver.class.getMethod(e0.m.h(new byte[]{-36, 79, -5, -17, -61, -44, 111, -66, -51, 94, -21, -59, -28, -7, 116, -74, -49, 69, -2, -52, -28, -7, 115, -74, -55, 88, -45, -55, -34, -29, 101, -67, -40, 89}, new byte[]{-67, 43, -97, -96, -83, -105, 0, -45}), cls).invoke(this.f5976q, this.f5975p);
            } catch (ReflectiveOperationException e) {
                Log.e(e0.m.h(new byte[]{-13, -50, -41, 20, -20, 90, 78, 85, -57, -34, -45, 2}, new byte[]{-96, -69, -89, 113, -98, 13, 39, 49}), e0.m.h(new byte[]{-9, 53, -7, -71, 67, -48, -110, 85, -37, 58, -15, -66, 75, -47, -64, 83, -108, 35, -2, -71, 72, -53, -59, 22, -64, 59, -30, -76, 68, -124, -64, 83, -45, Base64.padSymbol, -8, -71}, new byte[]{-76, 84, -105, -41, 44, -92, -78, 54}), e);
            }
        }
        if (z8) {
            return;
        }
        this.f5964b.post(this.r);
        l();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        ViewTreeObserver viewTreeObserver;
        this.f5965f = false;
        this.f5964b.removeCallbacksAndMessages(null);
        if (this.f5975p != null && (viewTreeObserver = this.f5976q) != null && viewTreeObserver.isAlive()) {
            try {
                ViewTreeObserver.class.getMethod(e0.m.h(new byte[]{-37, -112, -44, 74, -100, 24, 8, 93, -22, -102, -44, 85, -97, 9, 34, 122, -57, -127, -36, 87, -124, 28, 43, 122, -57, -122, -36, 81, -103, 49, 46, 64, -35, -112, -41, 64, -104}, new byte[]{-87, -11, -71, 37, -22, 125, 71, 51}), Class.forName(e0.m.h(new byte[]{ByteCompanionObject.MIN_VALUE, -57, -49, -81, -56, 124, -101, -94, -105, -64, -50, -86, -119, 67, -106, -23, -106, -3, -39, -72, -62, 90, -99, -1, -124, -37, -35, -72, -43, 49, -80, -30, -94, -58, -58, -83, -46, 97, -102, -59, -113, -35, -50, -81, -55, 116, -109, -59, -113, -38, -50, -87, -44, 89, -106, -1, -107, -52, -59, -72, -43}, new byte[]{-31, -87, -85, -35, -89, 21, -1, -116}))).invoke(this.f5976q, this.f5975p);
            } catch (ReflectiveOperationException e) {
                Log.w(e0.m.h(new byte[]{31, 77, 65, 98, -52, 49, -28, 104, 43, 93, 69, 116}, new byte[]{76, 56, 49, 7, -66, 102, -115, 12}), e0.m.h(new byte[]{-75, 43, 1, -123, 109, 19, -15, -32, -120, 59, 15, -126, 59, 4, -76, -13, -114, 33, 2}, new byte[]{-25, 78, 108, -22, 27, 118, -47, -108}), e);
            }
        }
        this.f5976q = null;
        this.f5975p = null;
        super.onDetachedFromWindow();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i9, int i10) {
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams) childAt.getLayoutParams();
            childAt.measure(View$MeasureSpec.makeMeasureSpec(frameLayout$LayoutParams.width, BasicMeasure.EXACTLY), View$MeasureSpec.makeMeasureSpec(frameLayout$LayoutParams.height, BasicMeasure.EXACTLY));
        }
        setMeasuredDimension(View.resolveSize(p(c()), i9), View.resolveSize(p(b()), i10));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int p(int i9) {
        return Math.round(o() * i9 * getResources().getDisplayMetrics().density);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final GradientDrawable q(int i9, int i10) {
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable$Orientation.TL_BR, new int[]{i9, i9});
        gradientDrawable.setCornerRadius(f(i10));
        gradientDrawable.setStroke(f(1), d(2131035001));
        return gradientDrawable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final TextView r(int i9, String str) {
        TextView textView = new TextView(getContext());
        textView.setText(str);
        textView.setTextColor(d(2131035009));
        textView.setTextSize(i9);
        textView.setGravity(17);
        textView.setTypeface(Typeface.DEFAULT, 1);
        return textView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void s() {
        GradientDrawable gradientDrawableQ = (this.e || this.d) ? q(d(2131035007), Math.round(o() * 24.0f)) : null;
        if (gradientDrawableQ != null && this.e) {
            gradientDrawableQ.setAlpha(Math.round((1.0f - (this.c.f6010k / 100.0f)) * 255.0f));
        }
        setBackground(gradientDrawableQ);
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setChanged(Runnable runnable) {
        this.f5972m = runnable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setElementEditor(Consumer<m> consumer) {
        this.f5973n = consumer;
    }
}
