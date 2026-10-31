package s1;

import android.R$drawable;
import android.app.AlertDialog;
import android.app.AlertDialog$Builder;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
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
import android.view.ViewGroup$LayoutParams;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.FrameLayout$LayoutParams;
import android.widget.HorizontalScrollView;
import android.widget.ImageButton;
import android.widget.ImageView$ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RadioGroup$LayoutParams;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.core.graphics.Insets;
import com.example.navistart.home.WebLauncherActivity;
import e0.r1;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import m0.k2;
import m0.s2;
import m0.w1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class k extends FrameLayout {
    public static final String r = e0.m.h(new byte[]{-90, 113, 3, -75, 69, 73, ByteCompanionObject.MIN_VALUE, -58, -123, 114, 59, -99, 99, 98, -121, -60, -108, 70, 34, -103, ByteCompanionObject.MAX_VALUE, 98, -98, -27, -108, 87, 42, -70, 126, 100, -92, -64, -112, 83, 14, -116, 97}, new byte[]{-11, 33, 79, -4, 17, 22, -63, -74});

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final String f5105s = e0.m.h(new byte[]{-108, 43, 49, 18, 39, 79, -60, -40, -89, 46, 43, 31, 47, 120, -64, -55, -116, 35, 43, 18, 27}, new byte[]{-8, 74, 68, 124, 68, 39, -95, -86});

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final r f5106b;
    public final LinearLayout c;
    public final HorizontalScrollView d;
    public final ScrollView e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Button f5107f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final f f5108g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Insets f5109h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f5110i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f5111j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f5112k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public o f5113l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public LinearLayout f5114m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public TextView f5115n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public r1 f5116o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public v0 f5117p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public v0 f5118q;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public k(WebLauncherActivity webLauncherActivity) {
        super(webLauncherActivity);
        this.f5108g = new f(this, 1);
        this.f5109h = Insets.NONE;
        r rVar = new r(webLauncherActivity);
        this.f5106b = rVar;
        rVar.a(webLauncherActivity);
        setClipChildren(false);
        LinearLayout linearLayout = new LinearLayout(webLauncherActivity);
        this.c = linearLayout;
        linearLayout.setGravity(17);
        linearLayout.setPadding(h(9), h(9), h(9), h(9));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-401203929);
        gradientDrawable.setCornerRadius(h(27));
        linearLayout.setBackground(gradientDrawable);
        linearLayout.setElevation(h(21));
        linearLayout.setOnClickListener(new c(this, 0));
        HorizontalScrollView horizontalScrollView = new HorizontalScrollView(webLauncherActivity);
        this.d = horizontalScrollView;
        horizontalScrollView.setFillViewport(false);
        horizontalScrollView.setHorizontalScrollBarEnabled(true);
        horizontalScrollView.setVerticalScrollBarEnabled(false);
        horizontalScrollView.setOverScrollMode(1);
        horizontalScrollView.setOnTouchListener(new d(this, 0));
        horizontalScrollView.addOnLayoutChangeListener(new e(this, 0));
        addView(horizontalScrollView);
        ScrollView scrollView = new ScrollView(webLauncherActivity);
        this.e = scrollView;
        scrollView.setFillViewport(false);
        scrollView.setHorizontalScrollBarEnabled(false);
        scrollView.setVerticalScrollBarEnabled(true);
        scrollView.setOverScrollMode(1);
        scrollView.setOnTouchListener(new d(this, 1));
        scrollView.addOnLayoutChangeListener(new e(this, 1));
        addView(scrollView);
        o oVarK = k();
        e(oVarK == o.d || oVarK == o.e);
        Button button = new Button(webLauncherActivity);
        this.f5107f = button;
        button.setAllCaps(false);
        button.setTextColor(-1);
        button.setTextSize(30.0f);
        button.setMinWidth(0);
        button.setMinHeight(0);
        button.setPadding(0, 0, 0, 0);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setColor(-651807676);
        gradientDrawable2.setCornerRadius(h(18));
        button.setBackground(gradientDrawable2);
        button.setContentDescription(e0.m.h(new byte[]{110, -99, 78, -79, 19, -3, 32, 60, 110, -75, 78, -65, 18, -59, 33, 0, -98, -46, 33, -33, 115, -105, 77, 92, 11, -46, 37, -34, 79, 103, 32, 55, 110, -78, 79, -116, 19, -6, 33, 11, 110, -73, 79, -113, 19, -9}, new byte[]{-66, 2, -98, 15, -61, 71, -16, -116}));
        button.setOnClickListener(new c(this, 1));
        addView(button);
        n();
        post(new f(this, 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int i(j0.e eVar, ArrayList arrayList) {
        String strG = j0.f.g(eVar);
        for (int i9 = 0; i9 < arrayList.size(); i9++) {
            if (Objects.equals(strG, j0.f.g((j0.e) arrayList.get(i9)))) {
                return i9;
            }
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static LinearLayout$LayoutParams v() {
        return new LinearLayout$LayoutParams(-1, -2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void A(MotionEvent motionEvent) {
        int iH;
        int iMax;
        float rawY;
        int i9;
        int[] iArr = new int[2];
        getLocationOnScreen(iArr);
        o oVar = this.f5113l;
        boolean z8 = oVar == o.d || oVar == o.e;
        if (z8) {
            iH = h(144);
            int width = getWidth();
            Insets insets = this.f5109h;
            iMax = Math.max(1, ((width - insets.left) - insets.right) - iH);
            rawY = motionEvent.getRawX() - iArr[0];
            i9 = this.f5109h.left;
        } else {
            iH = h(144);
            int height = getHeight();
            Insets insets2 = this.f5109h;
            iMax = Math.max(1, ((height - insets2.top) - insets2.bottom) - iH);
            rawY = motionEvent.getRawY() - iArr[1];
            i9 = this.f5109h.top;
        }
        this.f5112k = Math.max(0, Math.min(100, Math.round((((rawY - i9) - (iH / 2.0f)) * 100.0f) / iMax)));
        TextView textView = this.f5115n;
        if (textView != null) {
            textView.setText(e0.m.h(new byte[]{-59, 14, -115, 29, -30, 108, -61, 33, -60, 23, -115, 27, -29, 84, 41, -71}, new byte[]{21, -111, 93, -93, 50, -37, 19, -103}) + this.f5112k + e0.m.h(new byte[]{95}, new byte[]{122, 44, 56, 65, -107, -72, 88, 65}));
        }
        Button button = this.f5107f;
        FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams) button.getLayoutParams();
        Insets insets3 = this.f5109h;
        if (z8) {
            button.setTranslationX((Math.round((iMax * this.f5112k) / 100.0f) + insets3.left) - frameLayout$LayoutParams.leftMargin);
        } else {
            button.setTranslationY((Math.round((iMax * this.f5112k) / 100.0f) + insets3.top) - frameLayout$LayoutParams.topMargin);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void B() {
        o oVarK = k();
        boolean z8 = oVarK == o.d || oVarK == o.e;
        this.d.setVisibility((this.f5110i && z8) ? 0 : 8);
        this.e.setVisibility((!this.f5110i || z8) ? 8 : 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(RadioGroup radioGroup, String str, o oVar) {
        RadioButton radioButton = new RadioButton(getContext());
        radioButton.setId(View.generateViewId());
        radioButton.setText(str);
        radioButton.setTextColor(-2563349);
        radioButton.setTextSize(13.0f);
        radioButton.setTag(oVar);
        radioButton.setChecked(this.f5106b.b() == oVar);
        radioGroup.addView(radioButton, new RadioGroup$LayoutParams(0, -2, 1.0f));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(RadioGroup radioGroup, String str, p pVar) {
        RadioButton radioButton = new RadioButton(getContext());
        radioButton.setId(View.generateViewId());
        radioButton.setText(str);
        radioButton.setTextColor(-2563349);
        radioButton.setTextSize(14.0f);
        radioButton.setTag(pVar);
        radioButton.setChecked(this.f5106b.d() == pVar);
        radioGroup.addView(radioButton, new RadioGroup$LayoutParams(0, -2, 1.0f));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c(RadioGroup radioGroup, String str, q qVar) {
        RadioButton radioButton = new RadioButton(getContext());
        radioButton.setId(View.generateViewId());
        radioButton.setText(str);
        radioButton.setTextColor(-2563349);
        radioButton.setTextSize(14.0f);
        radioButton.setTag(qVar);
        radioButton.setChecked(this.f5106b.e() == qVar);
        radioGroup.addView(radioButton, new RadioGroup$LayoutParams(0, -2, 1.0f));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r5v0, resolved type: boolean */
    /* JADX DEBUG: Multi-variable search result rejected for r5v1, resolved type: boolean */
    /* JADX DEBUG: Multi-variable search result rejected for r5v3, resolved type: boolean */
    /* JADX WARN: Multi-variable type inference failed */
    public final void d() {
        FrameLayout$LayoutParams frameLayout$LayoutParams;
        o oVarK = k();
        o oVar = o.d;
        boolean z8 = (oVarK == oVar || oVarK == o.e) ? 1 : 0;
        e(z8);
        this.c.setOrientation(!z8);
        FrameLayout$LayoutParams frameLayout$LayoutParams2 = new FrameLayout$LayoutParams(-2, -2);
        int iC = this.f5111j ? this.f5112k : this.f5106b.c();
        int iMax = Math.max(getWidth(), getResources().getDisplayMetrics().widthPixels);
        int iMax2 = Math.max(getHeight(), getResources().getDisplayMetrics().heightPixels);
        Button button = this.f5107f;
        if (z8 != 0) {
            frameLayout$LayoutParams2.gravity = (oVarK == oVar ? 48 : 80) | 1;
            int iH = h(144);
            frameLayout$LayoutParams = new FrameLayout$LayoutParams(iH, h(36));
            frameLayout$LayoutParams.gravity = (oVarK != oVar ? 80 : 48) | 3;
            Insets insets = this.f5109h;
            frameLayout$LayoutParams.leftMargin = Math.round((Math.max(0, ((iMax - insets.left) - insets.right) - iH) * iC) / 100.0f) + this.f5109h.left;
            Insets insets2 = this.f5109h;
            if (oVarK == oVar) {
                frameLayout$LayoutParams.topMargin = insets2.top;
            } else {
                frameLayout$LayoutParams.bottomMargin = insets2.bottom;
            }
            button.setText(oVarK == oVar ? e0.m.h(new byte[]{13, 21, -85}, new byte[]{-17, -103, 47, 111, 58, 114, 116, 103}) : e0.m.h(new byte[]{62, 98, -67}, new byte[]{-36, -18, 62, -58, -92, 42, -53, 46}));
        } else {
            o oVar2 = o.f5163b;
            frameLayout$LayoutParams2.gravity = (oVarK == oVar2 ? 3 : 5) | 16;
            int iH2 = h(144);
            frameLayout$LayoutParams = new FrameLayout$LayoutParams(h(36), iH2);
            frameLayout$LayoutParams.gravity = (oVarK == oVar2 ? 3 : 5) | 48;
            Insets insets3 = this.f5109h;
            frameLayout$LayoutParams.topMargin = Math.round((Math.max(0, ((iMax2 - insets3.top) - insets3.bottom) - iH2) * iC) / 100.0f) + this.f5109h.top;
            Insets insets4 = this.f5109h;
            if (oVarK == oVar2) {
                frameLayout$LayoutParams.leftMargin = insets4.left;
            } else {
                frameLayout$LayoutParams.rightMargin = insets4.right;
            }
            button.setText(oVarK == oVar2 ? e0.m.h(new byte[]{40, -110, -13}, new byte[]{-54, 18, 73, 45, -102, -80, -74, 59}) : e0.m.h(new byte[]{0, -99, 75}, new byte[]{-30, 29, -14, 114, 107, -98, 118, -42}));
        }
        Insets insets5 = this.f5109h;
        frameLayout$LayoutParams2.leftMargin = insets5.left;
        frameLayout$LayoutParams2.topMargin = insets5.top;
        frameLayout$LayoutParams2.rightMargin = insets5.right;
        frameLayout$LayoutParams2.bottomMargin = insets5.bottom;
        if (z8 != 0) {
            frameLayout$LayoutParams2.width = -1;
        } else {
            frameLayout$LayoutParams2.height = -1;
        }
        (z8 != 0 ? this.d : this.e).setLayoutParams(frameLayout$LayoutParams2);
        button.setLayoutParams(frameLayout$LayoutParams);
        Runnable runnable = this.f5117p;
        if (runnable != null) {
            removeCallbacks(runnable);
            post(runnable);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e(boolean z8) {
        ViewGroup viewGroup = z8 ? this.d : this.e;
        LinearLayout linearLayout = this.c;
        if (linearLayout.getParent() != viewGroup) {
            ViewGroup viewGroup2 = (ViewGroup) linearLayout.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeView(linearLayout);
            }
            viewGroup.addView(linearLayout, new ViewGroup$LayoutParams(-2, -2));
        }
        B();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final LinearLayout f() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setGravity(17);
        r rVar = this.f5106b;
        linearLayout.setOrientation(((rVar.b() == o.d || rVar.b() == o.e) ? 1 : 0) ^ 1);
        linearLayout.setLayoutParams(new LinearLayout$LayoutParams(-2, -2));
        return linearLayout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final LinearLayout$LayoutParams g() {
        LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(h(78), h(78));
        linearLayout$LayoutParams.setMargins(h(3), h(3), h(3), h(3));
        return linearLayout$LayoutParams;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int h(int i9) {
        return Math.round(i9 * getResources().getDisplayMetrics().density);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void j(boolean z8) {
        if (this.f5111j) {
            r rVar = this.f5106b;
            if (z8) {
                rVar.f5196a.edit().putString(r.c, this.f5113l.name()).apply();
                rVar.f5196a.edit().putInt(r.d, Math.max(0, Math.min(100, this.f5112k))).apply();
            }
            this.f5111j = false;
            this.f5113l = null;
            Button button = this.f5107f;
            button.setOnTouchListener(null);
            button.setTranslationX(0.0f);
            button.setTranslationY(0.0f);
            button.setContentDescription(e0.m.h(new byte[]{-45, -82, 43, -33, 21, -7, -77, -84, -45, -122, 43, -47, 20, -63, -78, -112, 35, -31, 68, -79, 117, -109, -34, -52, -74, -31, 64, -80, 73, 99, -77, -89, -45, -127, 42, -30, 21, -2, -78, -101, -45, -124, 42, -31, 21, -13}, new byte[]{3, 49, -5, 97, -59, 67, 99, 28}));
            LinearLayout linearLayout = this.f5114m;
            if (linearLayout != null) {
                removeView(linearLayout);
            }
            this.f5114m = null;
            this.f5115n = null;
            d();
            if (rVar.f()) {
                l();
            } else {
                y();
            }
            r1 r1Var = this.f5116o;
            this.f5116o = null;
            if (r1Var != null) {
                k kVar = (k) r1Var.f1941b;
                RadioGroup radioGroup = (RadioGroup) r1Var.c;
                TextView textView = (TextView) r1Var.d;
                AlertDialog alertDialog = (AlertDialog) r1Var.e;
                r rVar2 = kVar.f5106b;
                if (!z8) {
                    o oVarB = rVar2.b();
                    for (int i9 = 0; i9 < radioGroup.getChildCount(); i9++) {
                        View childAt = radioGroup.getChildAt(i9);
                        if ((childAt instanceof RadioButton) && oVarB == childAt.getTag()) {
                            ((RadioButton) childAt).setChecked(true);
                            break;
                        }
                    }
                }
                textView.setText(e0.m.h(new byte[]{29, -77, 74, -31, -15, 6, -94, -66, 29, -102, 74, -22, -15, 0, -94, -72, 29, -103, -70, -113, -101, 109, -49, -48, 115, -4, 37, -113, -101, 109, -54, 32, 29, -98, 74, -21, -15, 3, -94, -69, 28, -96, -70, -113, -101, 108, -14, -48, 125, -3, 21, 101, 1}, new byte[]{-51, 44, -102, 95, 33, -67, 114, 0}) + rVar2.c() + e0.m.h(new byte[]{87}, new byte[]{114, -10, -56, -77, -118, 0, 114, -62}));
                if (alertDialog.isShowing()) {
                    return;
                }
                alertDialog.show();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final o k() {
        o oVar;
        return (!this.f5111j || (oVar = this.f5113l) == null) ? this.f5106b.b() : oVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void l() {
        removeCallbacks(this.f5108g);
        boolean zF = this.f5106b.f();
        Button button = this.f5107f;
        if (zF) {
            this.f5110i = false;
            B();
            button.setVisibility(0);
        } else {
            this.f5110i = true;
            B();
            button.setVisibility(8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ImageButton m(String str, Drawable drawable) {
        ImageButton imageButton = new ImageButton(getContext());
        imageButton.setImageDrawable(drawable);
        imageButton.setScaleType(ImageView$ScaleType.CENTER_INSIDE);
        imageButton.setPadding(h(14), h(14), h(14), h(14));
        imageButton.setBackgroundColor(0);
        if (str == null) {
            str = e0.m.h(new byte[]{-40, 62, 120, -85, 92, 18, 46, 92, -39, 40, 120, -84, 92, 19, 47, 104}, new byte[]{8, -86, -88, 30, -116, -85, -1, -35});
        }
        imageButton.setContentDescription(str);
        return imageButton;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void n() {
        ResolveInfo resolveInfoResolveActivity;
        int i9;
        LinearLayout linearLayout = this.c;
        linearLayout.removeAllViews();
        for (int i10 = 0; i10 < 6; i10++) {
            j0.e eVarE = j0.f.e(getContext(), f5105s + i10);
            if (j0.f.d(eVarE)) {
                ImageButton imageButtonM = m(eVarE.f2877i, eVarE.f2878j);
                imageButtonM.setOnClickListener(new g(this, eVarE, 0));
                linearLayout.addView(imageButtonM, g());
            }
        }
        r rVar = this.f5106b;
        if (rVar.f5196a.getBoolean(r.f5191g, false)) {
            LinearLayout linearLayoutF = f();
            String strLoadString = h0.b.o().loadString(r, "");
            if (strLoadString.isEmpty()) {
                i9 = 0;
            } else {
                i9 = 0;
                for (String str : strLoadString.split(e0.m.h(new byte[]{10}, new byte[]{49, -5, -21, -115, 50, -20, 87, -25}))) {
                    j0.e eVarC = j0.f.c(getContext(), str);
                    if (eVarC.f2872a == j0.d.d && j0.f.d(eVarC)) {
                        ImageButton imageButtonM2 = m(eVarC.f2877i, eVarC.f2878j);
                        imageButtonM2.setOnClickListener(new g(this, eVarC, 2));
                        linearLayoutF.addView(imageButtonM2, g());
                        i9++;
                        if (i9 >= 6) {
                            break;
                        }
                    }
                }
            }
            if (i9 == 0) {
                ImageButton imageButtonM3 = m(e0.m.h(new byte[]{-114, -11, 44, 96, 84, -8, -120, -23, -29, -72, 73, 5, 49, -86, 24, -23, -20, -72, 65, 5, Base64.padSymbol, -85, 45, 25, -113, -24, 44, 101, 85, -51, 120, -115, -114, -35, 44, 110, 85, -49, 120, -124, -114, -48, 44, 108}, new byte[]{94, 104, -4, -43, -123, 122, -88, 57}), getContext().getDrawable(2131165745));
                imageButtonM3.setEnabled(false);
                imageButtonM3.setAlpha(0.35f);
                linearLayoutF.addView(imageButtonM3, g());
            }
            linearLayout.addView(linearLayoutF);
        }
        if (rVar.f5196a.getBoolean(r.f5190f, false)) {
            LinearLayout linearLayoutF2 = f();
            ArrayList arrayListX = m0.o.x();
            PackageManager packageManager = getContext().getPackageManager();
            int i11 = 0;
            for (int i12 = 0; i12 < arrayListX.size() && i11 < 6; i12++) {
                Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage((String) arrayListX.get(i12));
                if (launchIntentForPackage != null && (resolveInfoResolveActivity = packageManager.resolveActivity(launchIntentForPackage, 0)) != null) {
                    j0.e eVarB = j0.e.b(resolveInfoResolveActivity, packageManager);
                    ImageButton imageButtonM4 = m(eVarB.f2877i, eVarB.f2878j);
                    imageButtonM4.setOnClickListener(new g(this, eVarB, 1));
                    linearLayoutF2.addView(imageButtonM4, g());
                    i11++;
                }
            }
            if (i11 == 0) {
                ImageButton imageButtonM5 = m(e0.m.h(new byte[]{112, 22, -114, -114, 55, -104, 49, -97, 113, 0, -113, -68, 55, -97, 49, -98, 112, 52, 126, -18, 88, -10, 96, -52, 24, 81, -27, -18, 89, -9, 86, -52, 21, 81, -29, -18, 95, -10, 111, 60, 112, 57, -114, -119, -57, -9, 92, -52, 21, 81, -29, -17, 105, 7, 48, -85, 112, 49, -114, -127, 54, -92, 49, -99, 112, 59, -114, -114}, new byte[]{-96, -127, 94, 62, -25, 39, -32, 28}), getContext().getDrawable(2131165488));
                imageButtonM5.setEnabled(false);
                imageButtonM5.setAlpha(0.35f);
                linearLayoutF2.addView(imageButtonM5, g());
            }
            linearLayout.addView(linearLayoutF2);
        }
        ImageButton imageButtonM6 = m(e0.m.h(new byte[]{-51, ByteCompanionObject.MIN_VALUE, 18, -116, -37, 90, 125, 113, -52, -99, 18, -126, -38, 98, 124, 73, -51, -91, -30, -20, -79, 11, 28, 34, -98, -51, ByteCompanionObject.MAX_VALUE, -19, -115, 11, 25, 34, -99, -51, 114}, new byte[]{29, 29, -62, 60, 10, -37, -84, -13}), getContext().getDrawable(R$drawable.ic_menu_preferences));
        imageButtonM6.setOnClickListener(new c(this, 2));
        linearLayout.addView(imageButtonM6, g());
        d();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final GradientDrawable o(int i9, int i10, int i11) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i9);
        gradientDrawable.setCornerRadius(h(i10));
        gradientDrawable.setStroke(h(1), i11);
        return gradientDrawable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void p(j0.e eVar) {
        try {
            if (!q(eVar)) {
                h0.b.a();
                h0.b.f().j(eVar, null);
            }
            if (this.f5106b.f()) {
                l();
            }
        } catch (RuntimeException unused) {
            y5.k.x(getContext(), e0.m.h(new byte[]{15, 14, 3, -26, -84, -66, -107, -69, 14, 24, 3, -31, -84, -65, -108, -113, -1, 75, 82, -125, -55, -41, -3, -21, 88, 74, 99, -126, -3, 39, -108, -121, 15, 47, 3, -25, -84, -71, -107, -69, 14, 24, 2, -48, -84, -72, -108, -121, 15, 36}, new byte[]{-33, -102, -45, 83, 124, 7, 68, 58}));
            r();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean q(j0.e eVar) {
        if (eVar.f2872a != j0.d.f2870b || eVar.f2873b == null) {
            return false;
        }
        Context context = getContext();
        if (!(context instanceof WebLauncherActivity)) {
            return false;
        }
        WebLauncherActivity webLauncherActivity = (WebLauncherActivity) context;
        h0.b.a();
        int guDisplayID = h0.b.n().getGuDisplayID();
        Bundle bundle = new Bundle();
        bundle.putInt(e0.m.h(new byte[]{-87, -104, -81}, new byte[]{-51, -15, -36, -18, -118, -40, 18, 26}), guDisplayID);
        n0.d dVar = eVar.f2873b;
        if (dVar == n0.d.f3816l) {
            webLauncherActivity.G(m0.o.class, bundle);
            return true;
        }
        if (dVar == n0.d.f3809h0) {
            webLauncherActivity.G(k2.class, bundle);
            return true;
        }
        if (dVar != n0.d.A0) {
            return false;
        }
        bundle.putBoolean(e0.m.h(new byte[]{90, -112, ByteCompanionObject.MIN_VALUE, 42, -48, 104, 108, -51, 103, -110, -120, 52, -34, 111, 93, -63, 81, -107, -126, 54}, new byte[]{56, -15, -25, 88, -79, 29, 2, -87}), true);
        webLauncherActivity.G(w1.class, bundle);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void r() {
        f fVar = this.f5108g;
        removeCallbacks(fVar);
        if (this.f5106b.f() && this.f5110i) {
            postDelayed(fVar, 5000L);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final TextView s(String str) {
        TextView textViewX = x(12, -11486750, str);
        textViewX.setLetterSpacing(0.08f);
        textViewX.setPadding(0, 0, 0, h(8));
        return textViewX;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Button t(String str, boolean z8) {
        Button button = new Button(getContext());
        button.setText(str);
        button.setTextSize(16.0f);
        button.setTextColor(-1);
        button.setAllCaps(false);
        button.setMinHeight(0);
        button.setMinimumHeight(0);
        button.setBackground(o(z8 ? -14381640 : -14668744, 15, z8 ? -11158301 : -13351337));
        return button;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final LinearLayout u() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.setPadding(h(16), h(14), h(16), h(14));
        linearLayout.setBackground(o(-15195860, 17, -14010040));
        return linearLayout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final SwitchCompat w(String str) {
        SwitchCompat switchCompat = new SwitchCompat(getContext());
        switchCompat.setText(str);
        switchCompat.setTextColor(-1511692);
        switchCompat.setTextSize(15.0f);
        switchCompat.setGravity(16);
        switchCompat.setPadding(0, h(2), 0, h(2));
        return switchCompat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final TextView x(int i9, int i10, String str) {
        TextView textView = new TextView(getContext());
        textView.setText(str);
        textView.setTextSize(i9);
        textView.setTextColor(i10);
        return textView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void y() {
        this.f5110i = true;
        B();
        this.f5107f.setVisibility(8);
        r();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void z() {
        removeCallbacks(this.f5108g);
        AlertDialog[] alertDialogArr = new AlertDialog[1];
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.setPadding(h(24), h(22), h(24), h(24));
        linearLayout.setBackgroundColor(-16051943);
        TextView textViewX = x(12, -11486750, e0.m.h(new byte[]{-57, 44, 0, 12, 87, 120, -13, 80, -57, 17, 0, 2, 87, 64, -13, 104, -57, 33, -16, -42, -60, -115, 3, -70, 88, -4, -107}, new byte[]{23, -79, -48, -100, -121, -39, 35, -14}));
        textViewX.setLetterSpacing(0.09f);
        linearLayout.addView(textViewX);
        TextView textViewX2 = x(27, -1, e0.m.h(new byte[]{117, -63, 98, 116, -77, 40, 89, -71, 117, -27, 99, 72, 67, 69, 50, -36, 21, -113, 49, 20, -34, 68, 14, -36, 16, -113, 50, 20, -45}, new byte[]{-91, 94, -78, -60, 99, -107, -119, 12}));
        textViewX2.setPadding(0, h(5), 0, h(3));
        linearLayout.addView(textViewX2);
        TextView textViewX3 = x(14, -6575430, e0.m.h(new byte[]{118, -96, -81, 63, 96, 60, -84, 123, 119, -67, -81, 49, 97, 4, -84, 123, 118, -120, 95, 95, 14, 109, -61, 41, 20, -19, -54, 95, 5, 109, -56, 41, 27, -19, -57, 95, 4, -111, 93, 40, 38, -19, -49, 94, 48, 109, -62, 41, 24, -19, -60, 95, 15, 109, -53, 41, 19, -19, -62, 95, 9, 109, -56, -39, 118, -123, 95, 95, 0, 108, -10, 40, 39, -20, -3, 94, 49, 108, -10, 41, 19, 29, -81, 59, 97, 8, -83, 64, 119, -68, -82, 13, 97, 15, -83, 65, 119, -78, 95, 95, 14, 109, -51, 41, 27, -19, -54, 95, 10, 109, -59, -41}, new byte[]{-90, Base64.padSymbol, ByteCompanionObject.MAX_VALUE, -113, -79, -67, 125, -7}));
        textViewX3.setPadding(0, 0, 0, h(18));
        linearLayout.addView(textViewX3);
        LinearLayout linearLayoutU = u();
        linearLayoutU.addView(s(e0.m.h(new byte[]{-92, -59, 111, -8, -3, 75, -58, 70, -92, -50, 111, -13, -3, 68, -58, 75, -92, -49}, new byte[]{116, 90, -65, 102, 45, -39, 22, -45})));
        SwitchCompat switchCompatW = w(e0.m.h(new byte[]{-98, -53, -65, 102, -8, 21, 120, 62, -98, -25, -65, 100, -8, 21, 120, 56, -97, -36, -65, 97, -8, 22, 120, 58, -98, -29, 79, 5, -88, 71, 18, 81, -50, -118, -28, 4, -101, 71, 24, 81, -52, -118, -29, -12, -7, 40, 120, 48, -98, -26, -65, 97, -7, 44, 121, 12}, new byte[]{78, 91, 111, -44, 41, -105, -88, ByteCompanionObject.MIN_VALUE}));
        r rVar = this.f5106b;
        switchCompatW.setChecked(rVar.f());
        linearLayoutU.addView(switchCompatW, v());
        SwitchCompat switchCompatW2 = w(e0.m.h(new byte[]{-127, -45, -7, -104, -103, -51, -97, 86, ByteCompanionObject.MIN_VALUE, -62, -7, -104, -104, -15, -98, 104, -127, -13, -8, -83, -104, -9, -97, 90, -127, -13, -7, -105, -104, -9, -97, 93, 113, -109, -106, -6, -13, -97, -1, 56, -29, -109, -103, -5, -58, -98, -58, 56, -28, -109, -102, -6, -10, 111, -97, 83, -127, -3, -8, -88, -104, -11, -97, 88}, new byte[]{81, 67, 41, 42, 72, 79, 79, -24}));
        SharedPreferences sharedPreferences = rVar.f5196a;
        switchCompatW2.setChecked(sharedPreferences.getBoolean(r.f5192h, true));
        linearLayoutU.addView(switchCompatW2, v());
        SwitchCompat switchCompatW3 = w(e0.m.h(new byte[]{-103, 81, -86, 47, 100, -110, -112, 15, -103, 121, -85, 26, 100, -102, -112, 15, -104, 76, -85, 29, -108, -8, -1, 111, -14, 30, -54, 65, 6, -8, -16, 110, -57, 31, -13, 64, 55, -7, -50, -97, -103, 113, -86, 33, 100, -107, -112, 10, -103, 117, -85, 29, -108, -8, -1, 111, -9, 30, -56, 65, 1, -7, -64, 110, -52, -18, -86, 42, 100, -104, -111, 60, -103, 115, -85, 22, 100, -99, -111, 63, -103, 126}, new byte[]{73, -50, 122, -111, -76, 40, 64, -65}));
        switchCompatW3.setChecked(sharedPreferences.getBoolean(r.f5193i, true));
        linearLayoutU.addView(switchCompatW3, v());
        TextView textViewX4 = x(14, -6575430, e0.m.h(new byte[]{-98, -52, 124, -3, -36, 49, 35, 80, -98, -40, -116, -109, -78, 97, 72, 60, -2, -72, 30, -109, -67, 96, 125, Base64.padSymbol, -57, -72, 25, -109, -66, 97, 77, -52, -98, -45, 124, -3, -36, 51, 35, 86, -98, -40}, new byte[]{78, 104, -84, 67, 13, -79, -13, -20}));
        textViewX4.setPadding(0, h(10), 0, h(4));
        linearLayoutU.addView(textViewX4);
        RadioGroup radioGroup = new RadioGroup(getContext());
        radioGroup.setOrientation(0);
        c(radioGroup, e0.m.h(new byte[]{-85, 50, -59, -44, 88, 82, -36, 30, -86, 40, -59, -42, 89, 96, -36, 23, -86, 35, -59, -33}, new byte[]{123, -88, 21, 102, -120, -30, 12, -86}), q.f5169b);
        c(radioGroup, e0.m.h(new byte[]{-36, 67, -115, 112, Base64.padSymbol, -33, -51, -48, -36, 97, -115, 117, 60, -23, -51, -36}, new byte[]{12, -40, 93, -56, -19, 98, 29, 101}), q.c);
        linearLayoutU.addView(radioGroup, v());
        TextView textViewX5 = x(14, -6575430, e0.m.h(new byte[]{-47, -84, -75, -103, 3, 107, -122, -111, -47, -127, -75, -101, 3, 111, -121, -92, -47, -116, -75, -111, 3, 97, 119, -63, -70, -31, -35, -7, 110, 4, -30, -63, -72, -31, -40, -7, 109, 4, -28, -63, -65, 17, -75, -110, 3, 106, -122, -109, -47, -117, -75, -103}, new byte[]{1, 49, 101, 41, -45, -44, 87, 17}));
        textViewX5.setPadding(0, h(8), 0, h(4));
        linearLayoutU.addView(textViewX5);
        RadioGroup radioGroup2 = new RadioGroup(getContext());
        radioGroup2.setOrientation(0);
        b(radioGroup2, e0.m.h(new byte[]{-78, 99, 71, 67, 89, -127, -22, 74, -78, 71, 71, 67, 88, -68, -21, 112, -78, 64, 71, 70, 89, -115, -22, 79, -78, 78}, new byte[]{98, -16, -105, -3, -120, 1, 58, -14}), p.f5165b);
        b(radioGroup2, e0.m.h(new byte[]{33, 78, -54, -115, -86, 13, 20, 57, 33, 100, -54, -126, -85, Base64.padSymbol, 21, 0, 32, 80, -54, -123, -85, 51}, new byte[]{-15, -36, 26, 56, 123, -115, -59, -69}), p.c);
        linearLayoutU.addView(radioGroup2, v());
        RadioGroup radioGroup3 = radioGroup2;
        RadioGroup radioGroup4 = radioGroup;
        s2 s2Var = new s2(1, this, radioGroup4, textViewX5, radioGroup3);
        radioGroup4.setOnCheckedChangeListener(new q0.i(1, s2Var));
        s2Var.run();
        SwitchCompat switchCompatW4 = w(e0.m.h(new byte[]{-112, -37, -75, -85, -55, -26, -110, 120, -112, -6, 69, -59, -91, -76, -9, 22, -12, -112, -43, -59, -86, -76, -1, 22, -8, -111, -32, 53, -55, -28, -110, 118, -112, -9, -75, -95, -56, -47, -110, 125, -112, -11, -75, -88, -56, -36, -110, ByteCompanionObject.MAX_VALUE}, new byte[]{64, 64, 101, 21, 24, 100, 66, -58}));
        switchCompatW4.setChecked(sharedPreferences.getBoolean(r.f5191g, false));
        linearLayoutU.addView(switchCompatW4, v());
        SwitchCompat switchCompatW5 = w(e0.m.h(new byte[]{29, 124, -35, 124, 28, 45, 101, 32, 29, 93, 45, 18, 112, ByteCompanionObject.MAX_VALUE, 0, 78, 121, 55, -67, 18, ByteCompanionObject.MAX_VALUE, ByteCompanionObject.MAX_VALUE, 8, 78, 117, 54, -120, -30, 29, 16, 100, 30, 29, 95, -35, 121, 29, 17, 101, 40, 29, 82, -35, ByteCompanionObject.MAX_VALUE, 29, 23, 101, 39}, new byte[]{-51, -25, 13, -62, -51, -81, -75, -98}));
        switchCompatW5.setChecked(sharedPreferences.getBoolean(r.f5190f, false));
        linearLayoutU.addView(switchCompatW5, v());
        LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(-1, -2);
        linearLayout$LayoutParams.bottomMargin = h(12);
        linearLayout.addView(linearLayoutU, linearLayout$LayoutParams);
        LinearLayout linearLayoutU2 = u();
        linearLayoutU2.addView(s(e0.m.h(new byte[]{119, 18, 91, -118, 27, -90, -125, -119, 119, 44, 91, -127, 27, -103, -125, ByteCompanionObject.MIN_VALUE, 119, 39, 91, -121, 27, -97, -125, -125}, new byte[]{-89, -78, -117, 26, -53, 7, 83, 22})));
        RadioGroup radioGroup5 = new RadioGroup(getContext());
        radioGroup5.setOrientation(0);
        a(radioGroup5, e0.m.h(new byte[]{-95, -67, -111, -96, -103, 103, 87, -103, -95, -84}, new byte[]{113, 28, 65, 27, 73, -46, -121, 43}), o.f5163b);
        a(radioGroup5, e0.m.h(new byte[]{53, -92, 80, -45, -111, 57, -60, -58, 53, -73, 80, -36}, new byte[]{-27, 5, ByteCompanionObject.MIN_VALUE, 108, 64, -71, 20, 118}), o.c);
        a(radioGroup5, e0.m.h(new byte[]{96, -22, -55, -23, 92, ByteCompanionObject.MIN_VALUE, 74, 116, 97, -50, -56, -40}, new byte[]{-80, 75, 25, 91, -116, 53, -101, -12}), o.d);
        a(radioGroup5, e0.m.h(new byte[]{-77, 25, -10, 72, -118, -127, -94, -30, -78, 59}, new byte[]{99, -72, 38, -11, 90, 57, 114, 85}), o.e);
        linearLayoutU2.addView(radioGroup5, v());
        TextView textViewX6 = x(15, -2563349, "");
        textViewX6.setText(e0.m.h(new byte[]{65, -97, -36, 9, 73, -126, 0, 89, 65, -74, -36, 2, 73, -124, 0, 95, 65, -75, 44, 103, 35, -23, 109, 55, 47, -48, -77, 103, 35, -23, 104, -57, 65, -78, -36, 3, 73, -121, 0, 92, 64, -116, 44, 103, 35, -24, 80, 55, 33, -47, -125, -115, -71}, new byte[]{-111, 0, 12, -73, -103, 57, -48, -25}) + rVar.c() + e0.m.h(new byte[]{100}, new byte[]{65, -54, -70, Base64.padSymbol, -45, 102, 40, -6}));
        textViewX6.setPadding(0, h(12), 0, h(9));
        linearLayoutU2.addView(textViewX6);
        Button buttonT = t(e0.m.h(new byte[]{-46, -13, 42, -3, 3, -123, -23, 0, -46, -48, 42, -3, 3, -124, -24, 55, -46, -44, 43, -54, 3, -119, 25, 101, -72, -68, 71, -104, 108, -43, -122, 101, -72, -67, 121, 104, 2, -72, -23, 5, 34, -67, 119, -104, 104, -44, -71, 101, -78, -68, 71, -104, 103}, new byte[]{2, 108, -6, 72, -46, 5, 57, -75}), false);
        buttonT.setOnClickListener(new r0.c(this, alertDialogArr, radioGroup5, textViewX6));
        linearLayoutU2.addView(buttonT, new LinearLayout$LayoutParams(-1, h(50)));
        LinearLayout$LayoutParams linearLayout$LayoutParams2 = new LinearLayout$LayoutParams(-1, -2);
        linearLayout$LayoutParams2.bottomMargin = h(12);
        linearLayout.addView(linearLayoutU2, linearLayout$LayoutParams2);
        View viewT = t(e0.m.h(new byte[]{87, -107, -125, -38, 54, -2, -22, 6, -89, -26, -45, -65, 86, -110, -118, 93, 57, -26, -44, -65, 83, -110, -120, 93, 57, 23, -126, -18, 55, -64, -21, 51, 87, -116, -125, -33}, new byte[]{-121, 55, 83, 111, -26, 66, 59, -115}), true);
        viewT.setOnClickListener(new i(this, alertDialogArr, 0));
        LinearLayout$LayoutParams linearLayout$LayoutParams3 = new LinearLayout$LayoutParams(-1, h(56));
        linearLayout$LayoutParams3.bottomMargin = h(12);
        linearLayout.addView(viewT, linearLayout$LayoutParams3);
        View viewT2 = t(e0.m.h(new byte[]{-25, 69, -21, 109, -4, -84, 78, 1, -26, 88, -21, 99, -3, -107, 78, 1, -26, 84, 27, 13, -112, -3, 47, 82, -75, 8, -125, 13, -97, -3, 34, 82, -68, 8, -126, -3, -4, -96, 79, 57, -26, 88, -21, 109, -3, -112}, new byte[]{55, -40, 59, -35, 45, 45, -97, -125}), false);
        viewT2.setOnClickListener(new i(this, alertDialogArr, 1));
        LinearLayout$LayoutParams linearLayout$LayoutParams4 = new LinearLayout$LayoutParams(-1, h(54));
        linearLayout$LayoutParams4.bottomMargin = h(12);
        linearLayout.addView(viewT2, linearLayout$LayoutParams4);
        View viewT3 = t(e0.m.h(new byte[]{37, -51, -76, -67, 63, 125, 52, 63, 37, -17, -76, -76, 62, 64, -59, 110, 113, -113, -37, -26, 82, -20, 53, 2, 37, -17, -76, -76, 63, 116, 53, 13, 37, -30, -75, -120, 63, ByteCompanionObject.MAX_VALUE, 53, 1, -43, -114, -24, -26, 85, 29, 101, 111, 69, -113, -40, -26, 95}, new byte[]{-11, 95, 101, 54, -17, -52, -27, -65}), false);
        viewT3.setOnClickListener(new i(this, alertDialogArr, 2));
        LinearLayout$LayoutParams linearLayout$LayoutParams5 = new LinearLayout$LayoutParams(-1, h(54));
        linearLayout$LayoutParams5.bottomMargin = h(12);
        linearLayout.addView(viewT3, linearLayout$LayoutParams5);
        View viewT4 = t(e0.m.h(new byte[]{26, -75, 64, 116, -30, 38, -81, 120, 27, -93, 65, 70, -30, 33, -81, 121, 27, -82, -80, -114, 113, -8, 12, -81, -91, 77, -4, -73}, new byte[]{-54, 34, -112, -60, 50, -103, 126, -5}), false);
        viewT4.setOnClickListener(new i(this, alertDialogArr, 3));
        LinearLayout$LayoutParams linearLayout$LayoutParams6 = new LinearLayout$LayoutParams(-1, h(54));
        linearLayout$LayoutParams6.bottomMargin = h(12);
        linearLayout.addView(viewT4, linearLayout$LayoutParams6);
        LinearLayout linearLayoutU3 = u();
        linearLayoutU3.addView(s(e0.m.h(new byte[]{-110, 49, 27, -30, -102, 21, -68, -11, -110, 0, 27, -30, -102, 33, 76, -121, -42, 112, 94, -103, -45, 100, -51, -121, -32, 112, 89, -103, -46, 100, -61}, new byte[]{66, -96, -53, 73, 74, -76, 108, 87})));
        TextView textViewX7 = x(13, -6575430, e0.m.h(new byte[]{-98, 48, 0, 103, 44, 47, -85, -60, -97, 34, 1, 84, 45, 28, -85, -60, 110, 115, 85, Base64.padSymbol, ByteCompanionObject.MAX_VALUE, 78, -58, -95, -12, 115, 87, 60, 68, 78, -61, 81, -98, 22, 1, 87, 45, 17, 91, -96, -58, 114, 100, Base64.padSymbol, 125, 79, -7, -95, -10, -126, 1, 86, 44, 35, -85, -49, -98, 29, 1, 82, 44, 36, 91, -95, -13, 114, 97, -52, 44, 33, -85, -63, -98, 31, 1, 89, 44, 37, -85, -55, 96}, new byte[]{78, -94, -47, -20, -4, -98, 123, 113}));
        textViewX7.setPadding(0, 0, 0, h(8));
        linearLayoutU3.addView(textViewX7);
        ArrayList arrayListE = new j0.c(getContext()).e();
        SwitchCompat switchCompat = switchCompatW2;
        Spinner[] spinnerArr = new Spinner[6];
        int i9 = 0;
        for (int i10 = 6; i9 < i10; i10 = 6) {
            LinearLayout linearLayout2 = new LinearLayout(getContext());
            linearLayout2.setGravity(16);
            SwitchCompat switchCompat2 = switchCompatW5;
            RadioGroup radioGroup6 = radioGroup4;
            linearLayout2.setPadding(h(12), h(5), h(8), h(5));
            linearLayout2.setBackground(o(-15722463, 12, -14076090));
            int i11 = i9 + 1;
            TextView textViewX8 = x(14, -11486750, String.valueOf(i11));
            textViewX8.setGravity(17);
            linearLayout2.addView(textViewX8, new LinearLayout$LayoutParams(h(34), h(44)));
            Spinner spinner = new Spinner(getContext(), 1);
            spinner.setAdapter((SpinnerAdapter) new j0.b(getContext(), (List) arrayListE));
            spinner.setSelection(i(j0.f.e(getContext(), f5105s + i9), arrayListE));
            linearLayout2.addView(spinner, new LinearLayout$LayoutParams(0, h(50), 1.0f));
            LinearLayout$LayoutParams linearLayout$LayoutParamsV = v();
            linearLayout$LayoutParamsV.bottomMargin = h(7);
            linearLayoutU3.addView(linearLayout2, linearLayout$LayoutParamsV);
            spinnerArr[i9] = spinner;
            radioGroup4 = radioGroup6;
            switchCompatW5 = switchCompat2;
            radioGroup3 = radioGroup3;
            switchCompat = switchCompat;
            i9 = i11;
        }
        SwitchCompat switchCompat3 = switchCompatW5;
        LinearLayout$LayoutParams linearLayout$LayoutParams7 = new LinearLayout$LayoutParams(-1, -2);
        linearLayout$LayoutParams7.bottomMargin = h(12);
        linearLayout.addView(linearLayoutU3, linearLayout$LayoutParams7);
        ScrollView scrollView = new ScrollView(getContext());
        scrollView.setFillViewport(true);
        scrollView.setBackgroundColor(-16051943);
        scrollView.addView(linearLayout);
        AlertDialog alertDialogCreate = new AlertDialog$Builder(getContext()).setView(scrollView).setPositiveButton(e0.m.h(new byte[]{-103, 28, 66, -3, 77, 34, 14, -109, -103, 13, 66, -2, 76, 31, 14, -111, -104, 49}, new byte[]{73, -67, -110, 67, -100, -89, -33, 19}), (DialogInterface$OnClickListener) null).setNegativeButton(e0.m.h(new byte[]{Base64.padSymbol, 101, 97, -19, -62, 25, 93, -99, Base64.padSymbol, 70, 96, -33}, new byte[]{-19, -5, -80, 111, 18, -91, -115, 40}), (DialogInterface$OnClickListener) null).create();
        alertDialogArr[0] = alertDialogCreate;
        alertDialogCreate.setOnShowListener(new j(alertDialogCreate, radioGroup4, radioGroup3, radioGroup5, switchCompatW, switchCompat, switchCompatW3, switchCompatW4, switchCompat3, this, spinnerArr));
        alertDialogCreate.setOnDismissListener(new m7.c(this, 1));
        alertDialogCreate.show();
    }
}
