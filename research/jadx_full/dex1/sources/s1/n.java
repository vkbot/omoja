package s1;

import android.R$drawable;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.GradientDrawable$Orientation;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.view.WindowManager;
import android.view.WindowManager$LayoutParams;
import android.widget.FrameLayout;
import android.widget.FrameLayout$LayoutParams;
import android.widget.GridLayout;
import android.widget.GridLayout$LayoutParams;
import android.widget.HorizontalScrollView;
import android.widget.ImageButton;
import android.widget.ImageView$ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import android.widget.ScrollView;
import android.widget.TextView;
import java.util.ArrayList;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class n extends FrameLayout {
    public static final String t = e0.m.h(new byte[]{-51, -118, -25, 90, -127, 11, 106, -16, -2, -113, -3, 87, -119, 60, 110, -31, -43, -126, -3, 90, -67}, new byte[]{-95, -21, -110, 52, -30, 99, 15, -126});

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f5147u = e0.m.h(new byte[]{-111, -5, -77, -55, -94, 81, -89, -51, -78, -8, -117, -31, -124, 122, -96, -49, -93, -52, -110, -27, -104, 122, -71, -18, -93, -35, -102, -58, -103, 124, -125, -53, -89, -39, -66, -16, -122}, new byte[]{-62, -85, -1, ByteCompanionObject.MIN_VALUE, -10, 14, -26, -67});

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final r f5148b;
    public final LinearLayout c;
    public final FrameLayout d;
    public final ScrollView e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final HorizontalScrollView f5149f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final GridLayout f5150g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TextView f5151h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final e0.d f5152i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public WindowManager f5153j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public WindowManager$LayoutParams f5154k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public m f5155l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public l f5156m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f5157n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f5158o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f5159p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f5160q;
    public boolean r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f5161s;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        e0.m.h(new byte[]{110, 6, -111, 107, 44, -48, 5, 107, 91, 57, -104, 78, 51, -35, 1, 107, 92, 53, -79, 93, 48, -38, 1, 102, 74, 24, -87, 78, 36, -51}, new byte[]{47, 106, -3, 60, 69, -76, 98, 14});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public n(Context context) {
        super(context);
        this.f5152i = new e0.d(this, 1);
        this.f5155l = m.c;
        this.f5156m = l.c;
        r rVar = new r(context);
        this.f5148b = rVar;
        rVar.a(context);
        setClipChildren(false);
        setClipToPadding(false);
        setClickable(true);
        setFocusable(false);
        setElevation(e(18));
        LinearLayout linearLayout = new LinearLayout(context);
        this.c = linearLayout;
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        linearLayout.setPadding(e(7), e(7), e(7), e(7));
        addView(linearLayout, new FrameLayout$LayoutParams(-2, -2));
        TextView textView = new TextView(context);
        this.f5151h = textView;
        textView.setGravity(17);
        textView.setText(e0.m.h(new byte[]{-114, 71, 99}, new byte[]{-60, 4, 55, 56, -21, 113, -51, 0}));
        textView.setTextColor(-1);
        textView.setTextSize(12.0f);
        textView.setTypeface(textView.getTypeface(), 1);
        textView.setContentDescription(e0.m.h(new byte[]{-68, ByteCompanionObject.MAX_VALUE, 26, 20, 108, 52, -3, -48, -67, 106, 26, 20, 109, 2, 12, ByteCompanionObject.MIN_VALUE, -45, 49, 123, 70, 1, 94, -103, ByteCompanionObject.MIN_VALUE, -41, 48, 71, -74, 108, 53, -4, -32, -67, 98, 27, 43, 109, 9, -4, -27, -67, 97, 27, 38, -110, -82, -4, -13, -68, 85, 27, 35, 109, 14, -4, -26, -68, 89, 27, 36, 108, 62, -4, -23, -67, 99, 27, 35, -100, 94, -104, ByteCompanionObject.MIN_VALUE, -41, 48, 68, -74, 108, 49, -4, -27, -67, 97, 27, 35, 108, 50, -4, -27, -67, 104, 27, 35, 108, 51, -4, -24, -67, 110}, new byte[]{108, -31, -53, -106, -68, -114, 44, 80}));
        textView.setClickable(false);
        linearLayout.addView(textView, new LinearLayout$LayoutParams(e(62), e(62)));
        FrameLayout frameLayout = new FrameLayout(context);
        this.d = frameLayout;
        frameLayout.setVisibility(8);
        ScrollView scrollView = new ScrollView(context);
        this.e = scrollView;
        scrollView.setVerticalScrollBarEnabled(false);
        scrollView.setOverScrollMode(1);
        scrollView.setFillViewport(false);
        HorizontalScrollView horizontalScrollView = new HorizontalScrollView(context);
        this.f5149f = horizontalScrollView;
        horizontalScrollView.setHorizontalScrollBarEnabled(false);
        horizontalScrollView.setOverScrollMode(1);
        horizontalScrollView.setFillViewport(false);
        horizontalScrollView.setVisibility(8);
        frameLayout.setOverScrollMode(1);
        GridLayout gridLayout = new GridLayout(context);
        this.f5150g = gridLayout;
        gridLayout.setColumnCount(4);
        gridLayout.setAlignmentMode(0);
        gridLayout.setUseDefaultMargins(false);
        gridLayout.setPadding(e(4), e(4), e(4), e(4));
        scrollView.addView(gridLayout, new FrameLayout$LayoutParams(-2, -2));
        frameLayout.addView(scrollView, new FrameLayout$LayoutParams(-1, -1));
        frameLayout.addView(horizontalScrollView, new FrameLayout$LayoutParams(-1, -1));
        int[] iArrN = n(this.f5155l);
        linearLayout.addView(frameLayout, new LinearLayout$LayoutParams(iArrN[0], iArrN[1]));
        i();
        c();
        l();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ImageButton a(String str, Drawable drawable) {
        ImageButton imageButton = new ImageButton(getContext());
        imageButton.setImageDrawable(drawable);
        imageButton.setScaleType(ImageView$ScaleType.CENTER_INSIDE);
        imageButton.setPadding(e(7), e(7), e(7), e(7));
        imageButton.setBackground(k(-14273469, 16, -12889497));
        if (str == null) {
            str = e0.m.h(new byte[]{33, 102, 4, -60, 10, 3, -49, 40, 32, 112, 4, -61, 10, 2, -50, 28}, new byte[]{-15, -14, -44, 113, -38, -70, 30, -87});
        }
        imageButton.setContentDescription(str);
        imageButton.setOnTouchListener(new e4.i(2, this));
        return imageButton;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(j0.e eVar) {
        if (j0.f.d(eVar)) {
            ImageButton imageButtonA = a(eVar.f2877i, eVar.f2878j);
            imageButtonA.setOnClickListener(new androidx.navigation.ui.a(18, this, eVar));
            this.f5150g.addView(imageButtonA, h());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c() {
        boolean z8 = this.r;
        FrameLayout frameLayout = this.d;
        LinearLayout linearLayout = this.c;
        TextView textView = this.f5151h;
        if (z8) {
            linearLayout.setBackground(null);
            frameLayout.setBackground(k(-300869341, 22, -12229253));
            textView.setBackground(k(-16220769, 17, -10102543));
            textView.setText(e0.m.h(new byte[]{-83, 105, -79, 101, -72, -84, 10, -13, -19}, new byte[]{79, -23, 19, -121, 56, 14, -24, 115}));
            textView.setTextSize(18.0f);
            return;
        }
        frameLayout.setBackground(null);
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable$Orientation.TL_BR, new int[]{-232639421, -234391912});
        gradientDrawable.setCornerRadius(e(22));
        gradientDrawable.setStroke(e(1), -9641995);
        linearLayout.setBackground(gradientDrawable);
        textView.setBackground(null);
        textView.setText(e0.m.h(new byte[]{65, -43, 21}, new byte[]{11, -106, 65, -22, 49, -54, -32, -106}));
        textView.setTextSize(12.0f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(m mVar) {
        GridLayout gridLayout;
        int iMax;
        int i9;
        int i10;
        LinearLayout linearLayout = this.c;
        linearLayout.removeAllViews();
        int i11 = (mVar == m.d || mVar == m.e) ? 1 : 0;
        linearLayout.setOrientation(i11);
        r rVar = this.f5148b;
        boolean z8 = rVar.e() == q.c;
        boolean z9 = !z8 ? !(mVar == m.f5136b || mVar == m.c) : rVar.d() != p.f5165b;
        int i12 = 0;
        while (true) {
            gridLayout = this.f5150g;
            if (i12 >= gridLayout.getChildCount()) {
                break;
            }
            GridLayout$LayoutParams gridLayout$LayoutParams = (GridLayout$LayoutParams) gridLayout.getChildAt(i12).getLayoutParams();
            gridLayout$LayoutParams.columnSpec = GridLayout.spec(Integer.MIN_VALUE);
            gridLayout$LayoutParams.rowSpec = GridLayout.spec(Integer.MIN_VALUE);
            gridLayout.getChildAt(i12).setLayoutParams(gridLayout$LayoutParams);
            i12++;
        }
        if (z8) {
            iMax = z9 ? Math.max(1, gridLayout.getChildCount()) : 1;
        } else {
            iMax = 4;
        }
        gridLayout.setColumnCount(iMax);
        ViewGroup viewGroup = (ViewGroup) gridLayout.getParent();
        ScrollView scrollView = this.e;
        HorizontalScrollView horizontalScrollView = this.f5149f;
        ViewGroup viewGroup2 = (z8 && z9) ? horizontalScrollView : scrollView;
        if (viewGroup != viewGroup2) {
            if (viewGroup != null) {
                viewGroup.removeView(gridLayout);
            }
            viewGroup2.addView(gridLayout, new ViewGroup$LayoutParams(-2, -2));
        }
        horizontalScrollView.setVisibility(viewGroup2 == horizontalScrollView ? 0 : 8);
        scrollView.setVisibility(viewGroup2 == scrollView ? 0 : 8);
        l lVar = this.f5156m;
        if (i11 != 0) {
            if (lVar == l.f5122b) {
                i10 = 3;
            } else {
                i10 = lVar == l.d ? 5 : 1;
            }
            linearLayout.setGravity(i10);
        } else {
            if (lVar == l.f5122b) {
                i9 = 48;
            } else {
                i9 = lVar == l.d ? 80 : 16;
            }
            linearLayout.setGravity(i9);
        }
        int[] iArrN = n(this.f5155l);
        LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(iArrN[0], iArrN[1]);
        FrameLayout frameLayout = this.d;
        frameLayout.setLayoutParams(linearLayout$LayoutParams);
        m mVar2 = m.f5136b;
        TextView textView = this.f5151h;
        if (mVar == mVar2 || mVar == m.d) {
            linearLayout.addView(frameLayout);
            linearLayout.addView(textView, new LinearLayout$LayoutParams(e(62), e(62)));
        } else {
            linearLayout.addView(textView, new LinearLayout$LayoutParams(e(62), e(62)));
            linearLayout.addView(frameLayout);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int e(int i9) {
        return Math.round(i9 * getResources().getDisplayMetrics().density);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int[] f(m mVar) {
        int[] iArrN = n(mVar);
        int i9 = iArrN[0];
        int i10 = iArrN[1];
        int iE = e(14);
        int iE2 = e(62);
        return (mVar == m.d || mVar == m.e) ? new int[]{Math.max(iE2, i9) + iE, iE + iE2 + i10} : new int[]{iE + iE2 + i9, Math.max(iE2, i10) + iE};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g() {
        FrameLayout frameLayout = this.d;
        frameLayout.setVisibility(8);
        frameLayout.setAlpha(1.0f);
        frameLayout.setScaleX(1.0f);
        frameLayout.setScaleY(1.0f);
        frameLayout.setTranslationX(0.0f);
        frameLayout.setTranslationY(0.0f);
        this.f5156m = l.c;
        d(m.c);
        c();
        if (this.f5153j == null || this.f5154k == null) {
            return;
        }
        o(this.f5157n, this.f5158o, this.f5159p, this.f5160q, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final GridLayout$LayoutParams h() {
        GridLayout$LayoutParams gridLayout$LayoutParams = new GridLayout$LayoutParams();
        gridLayout$LayoutParams.width = e(78);
        gridLayout$LayoutParams.height = e(78);
        gridLayout$LayoutParams.setMargins(e(3), e(3), e(3), e(3));
        return gridLayout$LayoutParams;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void i() {
        ResolveInfo resolveInfoResolveActivity;
        GridLayout gridLayout = this.f5150g;
        gridLayout.removeAllViews();
        for (int i9 = 0; i9 < 6; i9++) {
            b(j0.f.e(getContext(), t + i9));
        }
        r rVar = this.f5148b;
        if (rVar.f5196a.getBoolean(r.f5191g, false)) {
            String strLoadString = h0.b.o().loadString(f5147u, "");
            if (!strLoadString.isEmpty()) {
                int i10 = 0;
                for (String str : strLoadString.split(e0.m.h(new byte[]{19}, new byte[]{40, -59, 14, -95, 98, 8, 83, -102}))) {
                    j0.e eVarC = j0.f.c(getContext(), str);
                    if (eVarC.f2872a == j0.d.d && j0.f.d(eVarC)) {
                        b(eVarC);
                        i10++;
                        if (i10 >= 6) {
                            break;
                        }
                    }
                }
            }
        }
        if (rVar.f5196a.getBoolean(r.f5190f, false)) {
            PackageManager packageManager = getContext().getPackageManager();
            ArrayList arrayListX = m0.o.x();
            int size = arrayListX.size();
            int i11 = 0;
            int i12 = 0;
            while (i12 < size) {
                Object obj = arrayListX.get(i12);
                i12++;
                Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage((String) obj);
                if (launchIntentForPackage != null && (resolveInfoResolveActivity = packageManager.resolveActivity(launchIntentForPackage, 0)) != null) {
                    b(j0.e.b(resolveInfoResolveActivity, packageManager));
                    i11++;
                    if (i11 >= 6) {
                        break;
                    }
                }
            }
        }
        ImageButton imageButtonA = a(e0.m.h(new byte[]{93, 72, 83, 125, 57, -117, -97, 9, 92, 85, 83, 115, 56, -77, -98, 49, 93, 109, -93, 29, 83, -38, -2, 90, 14, 5, 62, 28, 111, -38, -5, 90, 13, 5, 51}, new byte[]{-115, -43, -125, -51, -24, 10, 78, -117}), getContext().getDrawable(R$drawable.ic_menu_preferences));
        imageButtonA.setOnClickListener(new androidx.navigation.c(18, this));
        gridLayout.addView(imageButtonA, h());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void j() {
        removeCallbacks(this.f5152i);
        animate().cancel();
        animate().alpha(1.0f).setDuration(140L).start();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final GradientDrawable k(int i9, int i10, int i11) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i9);
        gradientDrawable.setCornerRadius(e(i10));
        gradientDrawable.setStroke(e(1), i11);
        return gradientDrawable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void l() {
        e0.d dVar = this.f5152i;
        removeCallbacks(dVar);
        postDelayed(dVar, 4500L);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:44:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:47:0x00c8  */
    public final void m(boolean z8) {
        m mVar;
        l lVar;
        float f8;
        if (this.r == z8) {
            return;
        }
        FrameLayout frameLayout = this.d;
        frameLayout.animate().cancel();
        int i9 = this.f5161s + 1;
        this.f5161s = i9;
        int i10 = 0;
        if (!z8) {
            this.r = false;
            float fE = e(18);
            m mVar2 = this.f5155l;
            float f9 = mVar2 == m.f5136b ? fE : 0.0f;
            if (mVar2 == m.c) {
                f9 = -fE;
            }
            float f10 = mVar2 == m.d ? fE : 0.0f;
            if (mVar2 == m.e) {
                f10 = -fE;
            }
            frameLayout.animate().alpha(0.0f).scaleX(0.92f).scaleY(0.92f).translationX(f9).translationY(f10).setDuration(170L).withEndAction(new a4.c(this, i9, 10)).start();
            return;
        }
        WindowManager$LayoutParams windowManager$LayoutParams = this.f5154k;
        this.f5157n = windowManager$LayoutParams == null ? 0 : windowManager$LayoutParams.x;
        this.f5158o = windowManager$LayoutParams == null ? 0 : windowManager$LayoutParams.y;
        this.f5159p = e(76);
        this.f5160q = e(76);
        int i11 = getResources().getDisplayMetrics().widthPixels;
        int i12 = getResources().getDisplayMetrics().heightPixels;
        WindowManager$LayoutParams windowManager$LayoutParams2 = this.f5154k;
        int i13 = windowManager$LayoutParams2 == null ? i11 / 2 : windowManager$LayoutParams2.x;
        int i14 = windowManager$LayoutParams2 == null ? i12 / 2 : windowManager$LayoutParams2.y;
        int i15 = (i11 - i13) - this.f5159p;
        int i16 = (i12 - i14) - this.f5160q;
        r rVar = this.f5148b;
        if (rVar.e() != q.c) {
            m mVar3 = m.c;
            int[] iArrF = f(mVar3);
            m mVar4 = m.e;
            int[] iArrF2 = f(mVar4);
            int i17 = iArrF[0] - this.f5159p;
            int i18 = iArrF2[1] - this.f5160q;
            if (i15 >= i17) {
                mVar = mVar3;
            } else if (i13 >= i17) {
                mVar = m.f5136b;
            } else if (i16 >= i18) {
                mVar = mVar4;
            } else if (i14 >= i18) {
                mVar = m.d;
            } else if (Math.max(i13, i15) >= Math.max(i14, i16)) {
                if (i15 >= i13) {
                    mVar = mVar3;
                } else {
                    mVar = m.f5136b;
                }
            } else if (i16 >= i14) {
                mVar = mVar4;
            } else {
                mVar = m.d;
            }
        } else if (rVar.d() == p.f5165b) {
            mVar = i15 >= i13 ? m.c : m.f5136b;
        } else {
            mVar = i16 >= i14 ? m.e : m.d;
        }
        this.f5155l = mVar;
        int[] iArrF3 = f(mVar);
        m mVar5 = this.f5155l;
        int i19 = iArrF3[0];
        int i20 = iArrF3[1];
        int i21 = getResources().getDisplayMetrics().widthPixels;
        int i22 = getResources().getDisplayMetrics().heightPixels;
        m mVar6 = m.f5136b;
        boolean z9 = mVar5 == mVar6 || mVar5 == m.c;
        int i23 = z9 ? this.f5158o : this.f5157n;
        if (z9) {
            i21 = i22;
        }
        int i24 = z9 ? this.f5160q : this.f5159p;
        if (z9) {
            i19 = i20;
        }
        int i25 = (i21 - i23) - i24;
        int iMax = Math.max(0, i19 - i24);
        int i26 = iMax / 2;
        if (i23 >= i26 && i25 >= iMax - i26) {
            lVar = l.c;
        } else if (i25 >= iMax) {
            lVar = l.f5122b;
        } else {
            lVar = (i23 < iMax && i25 >= i23) ? l.f5122b : l.d;
        }
        this.f5156m = lVar;
        d(this.f5155l);
        this.r = true;
        frameLayout.setVisibility(0);
        c();
        int i27 = iArrF3[0];
        int i28 = iArrF3[1];
        if (this.r && this.f5153j != null && this.f5154k != null) {
            int i29 = this.f5157n;
            int i30 = this.f5158o;
            m mVar7 = this.f5155l;
            if (mVar7 == mVar6) {
                i29 -= i27 - this.f5159p;
            } else if (mVar7 == m.d) {
                i30 -= i28 - this.f5160q;
            }
            if (mVar7 == mVar6 || mVar7 == m.c) {
                int i31 = i28 - this.f5160q;
                l lVar2 = this.f5156m;
                if (lVar2 == l.d) {
                    i10 = i31;
                } else if (lVar2 == l.c) {
                    i10 = i31 / 2;
                }
                i30 -= i10;
            } else {
                int i32 = i27 - this.f5159p;
                l lVar3 = this.f5156m;
                if (lVar3 == l.d) {
                    i10 = i32;
                } else if (lVar3 == l.c) {
                    i10 = i32 / 2;
                }
                i29 -= i10;
            }
            o(i29, i30, i27, i28, false);
        }
        float fE2 = e(18);
        frameLayout.setAlpha(0.0f);
        frameLayout.setScaleX(0.92f);
        frameLayout.setScaleY(0.92f);
        m mVar8 = this.f5155l;
        if (mVar8 == mVar6) {
            f8 = fE2;
        } else {
            f8 = mVar8 == m.c ? -fE2 : 0.0f;
        }
        frameLayout.setTranslationX(f8);
        m mVar9 = this.f5155l;
        if (mVar9 != m.d) {
            fE2 = mVar9 == m.e ? -fE2 : 0.0f;
        }
        frameLayout.setTranslationY(fE2);
        frameLayout.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).translationX(0.0f).translationY(0.0f).setDuration(220L).start();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int[] n(m mVar) {
        r rVar = this.f5148b;
        boolean z8 = rVar.e() == q.c;
        int iMax = Math.max(1, this.f5150g.getChildCount());
        if (!z8) {
            return new int[]{e(344), Math.min(e((Math.min(Math.max(1, (iMax + 3) / 4), 5) * 84) + 8), Math.round(getResources().getDisplayMetrics().heightPixels * 0.56f))};
        }
        boolean z9 = rVar.d() == p.f5165b;
        int iE = e((iMax * 84) + 8);
        int i9 = getResources().getDisplayMetrics().widthPixels;
        int i10 = getResources().getDisplayMetrics().heightPixels;
        WindowManager$LayoutParams windowManager$LayoutParams = this.f5154k;
        int i11 = windowManager$LayoutParams == null ? i9 / 2 : this.f5157n;
        int i12 = windowManager$LayoutParams == null ? i10 / 2 : this.f5158o;
        if (z9) {
            if (mVar != m.f5136b) {
                i11 = (i9 - i11) - this.f5159p;
            }
            return new int[]{Math.min(iE, Math.min(Math.round(i9 * 0.74f), Math.max(e(92), i11))), e(92)};
        }
        if (mVar != m.d) {
            i12 = (i10 - i12) - this.f5160q;
        }
        return new int[]{e(92), Math.min(iE, Math.min(Math.round(i10 * 0.74f), Math.max(e(92), i12)))};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void o(int i9, int i10, int i11, int i12, boolean z8) {
        int i13 = getResources().getDisplayMetrics().widthPixels;
        int i14 = getResources().getDisplayMetrics().heightPixels;
        this.f5154k.x = Math.max(0, Math.min(i9, Math.max(0, i13 - i11)));
        this.f5154k.y = Math.max(0, Math.min(i10, Math.max(0, i14 - i12)));
        WindowManager$LayoutParams windowManager$LayoutParams = this.f5154k;
        windowManager$LayoutParams.width = i11;
        windowManager$LayoutParams.height = i12;
        if (z8) {
            h0.b.o().saveInt(e0.m.h(new byte[]{-59, 91, 91, -25, ByteCompanionObject.MAX_VALUE, -34, -82, 125, -16, 100, 82, -62, 96, -45, -86, 125, -9, 104, 123, -47, 99, -44, -86, 112, -31, 69, 99, -62, 119, -61, -111}, new byte[]{-124, 55, 55, -80, 22, -70, -55, 24}), this.f5154k.x);
            h0.b.o().saveInt(e0.m.h(new byte[]{25, -76, -113, 56, 56, -125, -70, -2, 44, -117, -122, 29, 39, -114, -66, -2, 43, -121, -81, 14, 36, -119, -66, -13, Base64.padSymbol, -86, -73, 29, 48, -98, -124}, new byte[]{88, -40, -29, 111, 81, -25, -35, -101}), this.f5154k.y);
        }
        try {
            this.f5153j.updateViewLayout(this, this.f5154k);
        } catch (RuntimeException unused) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i9, int i10) {
        boolean z8 = this.f5148b.e() == q.c;
        super.onMeasure(View$MeasureSpec.makeMeasureSpec(Math.round(getResources().getDisplayMetrics().widthPixels * (z8 ? 0.86f : 0.62f)), Integer.MIN_VALUE), View$MeasureSpec.makeMeasureSpec(Math.round(getResources().getDisplayMetrics().heightPixels * (z8 ? 0.86f : 0.68f)), Integer.MIN_VALUE));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i9) {
        super.onVisibilityChanged(view, i9);
        if (view != this) {
            return;
        }
        if (i9 == 0) {
            i();
            j();
            l();
            return;
        }
        removeCallbacks(this.f5152i);
        animate().cancel();
        setAlpha(1.0f);
        boolean z8 = this.r;
        FrameLayout frameLayout = this.d;
        if (z8 || frameLayout.getVisibility() == 0) {
            frameLayout.animate().cancel();
            this.r = false;
            this.f5161s++;
            g();
        }
    }
}
