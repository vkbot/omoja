package com.example.navistart;

import a1.a;
import android.R$attr;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.GridLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.SeekBar;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.cardview.widget.CardView;
import androidx.core.content.ContextCompat;
import androidx.core.view.GravityCompat;
import androidx.core.widget.TextViewCompat;
import androidx.recyclerview.widget.ItemTouchHelper$Callback;
import c7.e;
import com.example.navistart.mainview.HeatManSetView;
import com.example.navistart.mainview.YMovLay;
import com.google.android.flexbox.FlexboxLayout;
import com.google.android.material.materialswitch.MaterialSwitch;
import com.google.android.material.tabs.TabLayout;
import e0.g0;
import e0.l1;
import e0.m;
import e0.m1;
import e0.n1;
import e0.o1;
import e0.p1;
import e0.q1;
import e0.r1;
import e0.s0;
import h0.b;
import java.util.HashSet;
import java.util.Locale;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import n0.c;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ModernMainActivity extends MainActivity {
    public static final String B1 = m.h(new byte[]{-75, -42, 52, 120, -15, 94, 92, 51, -67, -38, 36, 116, -20, 94}, new byte[]{-40, -71, 80, 29, -125, 48, 3, 64});
    public static final String C1 = m.h(new byte[]{108, -46, -37, -6, 3, 92, 15, 6, 110, -46, -45}, new byte[]{1, -67, -65, -97, 113, 50, 80, 114});
    public String A1;
    public final HashSet m1 = new HashSet();
    public final int[] n1 = {2131297053, 2131297054, 2131297052, 2131297055};
    public final int[] o1 = {2131297059, 2131297062, 2131297058, 2131297064};
    public final int[] p1 = {2131297029, 2131297032, 2131297034, 2131297033, 2131297031, 2131297028, 2131297027};
    public final int[] q1 = {2131296459, 2131296995, 2131296998, 2131296997, 2131296991, 2131296460, 2131296990};
    public final int[] r1 = {2131952311, 2131952335, 2131952300, 2131952343};

    /* JADX INFO: renamed from: s1, reason: collision with root package name */
    public final int[] f763s1 = {2131297082, 2131297080, 2131297078, 2131297081, 2131297079};

    /* JADX INFO: renamed from: t1, reason: collision with root package name */
    public final int[] f764t1 = {2131297077, 2131297075, 2131297073, 2131297076, 2131297074};

    /* JADX INFO: renamed from: u1, reason: collision with root package name */
    public final int[] f765u1 = {2131952054, 2131952082, 2131952046, 2131952345, 2131952301};

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    public int f766v1;

    /* JADX INFO: renamed from: w1, reason: collision with root package name */
    public int f767w1;

    /* JADX INFO: renamed from: x1, reason: collision with root package name */
    public Boolean f768x1;

    /* JADX INFO: renamed from: y1, reason: collision with root package name */
    public boolean f769y1;

    /* JADX INFO: renamed from: z1, reason: collision with root package name */
    public boolean f770z1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.MainActivity
    public final void H(c cVar) {
        this.f770z1 = cVar == c.f3780k;
        a0(2131297051, 2131296324);
        a0(2131297049, 2131296953);
        a0(2131296949, 2131296953);
        if (this.f769y1) {
            c0();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.MainActivity
    public final void J(boolean z8) {
        super.J(z8);
        runOnUiThread(new e(this, z8, 4));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void R(int i9, int i10) {
        if (i9 <= 0 || i10 <= 0) {
            return;
        }
        boolean z8 = false;
        boolean z9 = ((float) i9) / getResources().getDisplayMetrics().density < 850.0f;
        Boolean bool = this.f768x1;
        if (bool == null || bool.booleanValue() != z9) {
            this.f768x1 = Boolean.valueOf(z9);
            LinearLayout linearLayout = (LinearLayout) findViewById(2131297056);
            ViewGroup$LayoutParams layoutParams = linearLayout.getLayoutParams();
            layoutParams.width = X(z9 ? 164 : 220);
            linearLayout.setLayoutParams(layoutParams);
            int i11 = 8;
            findViewById(2131297038).setVisibility(z9 ? 8 : 0);
            LinearLayout linearLayout2 = (LinearLayout) findViewById(2131297035);
            int i12 = 16;
            linearLayout2.setGravity((z9 ? 1 : GravityCompat.START) | 16);
            linearLayout2.setPadding(z9 ? 0 : X(18), 0, z9 ? 0 : X(14), 0);
            int i13 = 0;
            while (true) {
                int[] iArr = this.n1;
                if (i13 >= iArr.length) {
                    break;
                }
                TextView textView = (TextView) findViewById(iArr[i13]);
                int[] iArr2 = this.r1;
                textView.setText(getString(iArr2[i13]));
                textView.setGravity(16);
                textView.setSingleLine(false);
                textView.setMaxLines(3);
                textView.setTextSize(2, z9 ? 13.0f : 15.0f);
                textView.setPadding(X(z9 ? 10 : 16), X(6), X(8), X(6));
                textView.setCompoundDrawablePadding(X(z9 ? 8 : 12));
                textView.getLayoutParams().height = -2;
                textView.setMinimumHeight(X(54));
                textView.setContentDescription(getString(iArr2[i13]));
                i13++;
            }
            int i14 = 0;
            while (true) {
                int[] iArr3 = this.f763s1;
                if (i14 >= iArr3.length) {
                    break;
                }
                TextView textView2 = (TextView) findViewById(iArr3[i14]);
                int[] iArr4 = this.f765u1;
                textView2.setText(getString(iArr4[i14]));
                textView2.setGravity(i12);
                textView2.setSingleLine(z8);
                textView2.setMaxLines(3);
                textView2.setTextSize(2, z9 ? 13.0f : 15.0f);
                textView2.setPadding(X(z9 ? 10 : i12), X(6), X(i11), X(6));
                textView2.setCompoundDrawablePadding(X(z9 ? 8 : 12));
                textView2.getLayoutParams().height = -2;
                textView2.setMinimumHeight(X(54));
                textView2.setContentDescription(getString(iArr4[i14]));
                i14++;
                z8 = false;
                i11 = 8;
                i12 = 16;
            }
            ((TextView) findViewById(2131297063)).setTextSize(2, z9 ? 21.0f : 24.0f);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void S(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        if (viewGroup$LayoutParams instanceof ViewGroup$MarginLayoutParams) {
            ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams = (ViewGroup$MarginLayoutParams) viewGroup$LayoutParams;
            viewGroup$MarginLayoutParams.leftMargin = X(6);
            viewGroup$MarginLayoutParams.rightMargin = X(6);
            viewGroup$MarginLayoutParams.topMargin = X(4);
            viewGroup$MarginLayoutParams.bottomMargin = X(4);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:218:0x0525  */
    /* JADX WARN: Code duplicated, block: B:219:0x0536  */
    /* JADX WARN: Code duplicated, block: B:221:0x053a  */
    /* JADX WARN: Code duplicated, block: B:225:0x0547  */
    /* JADX WARN: Code duplicated, block: B:229:0x0559 A[EDGE_INSN: B:229:0x0559->B:240:0x05bc BREAK  A[LOOP:8: B:223:0x0541->B:239:0x05b5]] */
    /* JADX WARN: Code duplicated, block: B:230:0x0564  */
    /* JADX WARN: Code duplicated, block: B:232:0x056e A[EDGE_INSN: B:232:0x056e->B:240:0x05bc BREAK  A[LOOP:8: B:223:0x0541->B:239:0x05b5]] */
    /* JADX WARN: Code duplicated, block: B:233:0x0578  */
    /* JADX WARN: Code duplicated, block: B:235:0x0581 A[EDGE_INSN: B:235:0x0581->B:240:0x05bc BREAK  A[LOOP:8: B:223:0x0541->B:239:0x05b5]] */
    /* JADX WARN: Code duplicated, block: B:236:0x05a9  */
    /* JADX WARN: Code duplicated, block: B:239:0x05b5 A[LOOP:8: B:223:0x0541->B:239:0x05b5, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:244:0x05c6  */
    /* JADX WARN: Code duplicated, block: B:246:0x05f1  */
    /* JADX WARN: Code duplicated, block: B:247:0x05fb  */
    /* JADX WARN: Code duplicated, block: B:250:0x060a  */
    /* JADX WARN: Code duplicated, block: B:252:0x060d  */
    /* JADX WARN: Code duplicated, block: B:256:0x065d  */
    /* JADX WARN: Code duplicated, block: B:258:0x0679  */
    /* JADX WARN: Code duplicated, block: B:261:0x0685 A[LOOP:9: B:251:0x060b->B:261:0x0685, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:262:0x068d  */
    /* JADX WARN: Code duplicated, block: B:264:0x0691  */
    /* JADX WARN: Code duplicated, block: B:265:0x06cc  */
    /* JADX WARN: Code duplicated, block: B:267:0x06d0  */
    /* JADX WARN: Code duplicated, block: B:270:0x06dd  */
    /* JADX WARN: Code duplicated, block: B:274:0x0734  */
    /* JADX WARN: Code duplicated, block: B:278:0x0746  */
    /* JADX WARN: Code duplicated, block: B:279:0x077c  */
    /* JADX WARN: Code duplicated, block: B:282:0x0792 A[LOOP:11: B:268:0x06d8->B:282:0x0792, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:284:0x07c5  */
    /* JADX WARN: Code duplicated, block: B:286:0x07ca  */
    /* JADX WARN: Code duplicated, block: B:289:0x07d5  */
    /* JADX WARN: Code duplicated, block: B:292:0x07de A[LOOP:10: B:290:0x07d8->B:292:0x07de, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:293:0x07e8 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:320:0x0550 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:321:0x05bc A[EDGE_INSN: B:321:0x05bc->B:240:0x05bc BREAK  A[LOOP:8: B:223:0x0541->B:239:0x05b5], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:322:0x068d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:323:0x068d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:324:0x0613 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:326:0x0790 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:327:0x0790 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:328:0x06e6 A[SYNTHETIC] */
    public final void T(View view) {
        int i9;
        int i10;
        View view2;
        TextView textView;
        int i11;
        Button button;
        View view3;
        ViewGroup viewGroup;
        int i12;
        View view4;
        RadioButton radioButton;
        ViewGroup$LayoutParams layoutParams;
        TextView textView2;
        int i13;
        int i14;
        int i15;
        LinearLayout linearLayout;
        char c;
        if (view == null) {
            return;
        }
        int color = ContextCompat.getColor(this, 2131035009);
        int color2 = ContextCompat.getColor(this, 2131035010);
        int color3 = ContextCompat.getColor(this, 2131035007);
        int color4 = ContextCompat.getColor(this, 2131035008);
        int color5 = ContextCompat.getColor(this, 2131035003);
        int color6 = ContextCompat.getColor(this, 2131035004);
        if (view.getId() == 2131297660) {
            view.setVisibility(8);
        }
        int id = view.getId();
        if (id == 2131296320 || id == 2131296323 || id == 2131296321 || id == 2131296319) {
            TextView textView3 = (TextView) view;
            textView3.setVisibility(0);
            textView3.setBackgroundResource(2131165602);
            textView3.setGravity(8388627);
            textView3.setPadding(X(20), 0, X(20), 0);
            TextViewCompat.setAutoSizeTextTypeWithDefaults(textView3, 0);
            textView3.setTextSize(2, 18.0f);
            textView3.setTextColor(color);
            textView3.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
            textView3.setTypeface(textView3.getTypeface(), 1);
            ViewGroup$LayoutParams layoutParams2 = textView3.getLayoutParams();
            layoutParams2.height = X(52);
            textView3.setLayoutParams(layoutParams2);
        }
        if (view instanceof CardView) {
            CardView cardView = (CardView) view;
            cardView.setBackgroundTintList(null);
            if (view.getId() == 2131296946 || view.getId() == 2131296945) {
                cardView.setCardBackgroundColor(0);
                cardView.setRadius(0.0f);
                cardView.setCardElevation(0.0f);
            } else {
                cardView.setCardBackgroundColor(color3);
                cardView.setRadius(X(20));
                cardView.setCardElevation(0.0f);
            }
        }
        int i16 = 6;
        int i17 = -1;
        if (view instanceof FlexboxLayout) {
            view.setBackgroundTintList(null);
            view.setBackgroundColor(color3);
            boolean z8 = view.getId() == 2131296493;
            view.setPadding(z8 ? 0 : X(14), z8 ? 0 : X(14), z8 ? 0 : X(14), z8 ? 0 : X(14));
            ViewGroup$LayoutParams layoutParams3 = view.getLayoutParams();
            if (layoutParams3 instanceof ViewGroup$MarginLayoutParams) {
                ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams = (ViewGroup$MarginLayoutParams) layoutParams3;
                if (viewGroup$MarginLayoutParams.topMargin >= X(32)) {
                    viewGroup$MarginLayoutParams.topMargin = X(54);
                }
                view.setLayoutParams(viewGroup$MarginLayoutParams);
            }
            if (z8) {
                FlexboxLayout flexboxLayout = (FlexboxLayout) view;
                int i18 = 0;
                while (i18 < flexboxLayout.getChildCount()) {
                    View childAt = flexboxLayout.getChildAt(i18);
                    ViewGroup$LayoutParams layoutParams4 = childAt.getLayoutParams();
                    layoutParams4.width = -1;
                    if (layoutParams4 instanceof ViewGroup$MarginLayoutParams) {
                        ((ViewGroup$MarginLayoutParams) layoutParams4).setMargins(0, 0, 0, X(i16));
                    }
                    childAt.setMinimumHeight(X(58));
                    childAt.setBackgroundResource(2131165572);
                    childAt.setPadding(X(18), 0, X(14), 0);
                    childAt.setLayoutParams(layoutParams4);
                    i18++;
                    i16 = 6;
                }
                i9 = color5;
            } else {
                FlexboxLayout flexboxLayout2 = (FlexboxLayout) view;
                flexboxLayout2.setAlignItems(2);
                flexboxLayout2.setJustifyContent(0);
                int i19 = 0;
                while (i19 < flexboxLayout2.getChildCount()) {
                    View childAt2 = flexboxLayout2.getChildAt(i19);
                    ViewGroup$LayoutParams layoutParams5 = childAt2.getLayoutParams();
                    if (childAt2 instanceof HeatManSetView) {
                        i13 = color5;
                        i19 = i19;
                    } else if (!(childAt2 instanceof LinearLayout)) {
                        i13 = color5;
                        i19 = i19;
                        if (!(childAt2 instanceof MaterialSwitch)) {
                            if (!(childAt2 instanceof FrameLayout)) {
                                S(layoutParams5);
                                childAt2.setLayoutParams(layoutParams5);
                                break;
                                break;
                            }
                            ViewGroup viewGroup2 = (ViewGroup) childAt2;
                            int i20 = 0;
                            while (true) {
                                if (i20 >= viewGroup2.getChildCount()) {
                                    S(layoutParams5);
                                    childAt2.setLayoutParams(layoutParams5);
                                    break;
                                } else {
                                    if (viewGroup2.getChildAt(i20) instanceof Spinner) {
                                        layoutParams5.width = 0;
                                        if (layoutParams5 instanceof o2.e) {
                                            o2.e eVar = (o2.e) layoutParams5;
                                            eVar.c = 1.0f;
                                            eVar.f4055g = X(220);
                                        }
                                        S(layoutParams5);
                                        childAt2.setLayoutParams(layoutParams5);
                                        break;
                                    }
                                    i20++;
                                }
                            }
                        } else {
                            layoutParams5.width = -2;
                            if (layoutParams5 instanceof o2.e) {
                                ((o2.e) layoutParams5).c = 1.0f;
                            }
                            S(layoutParams5);
                            childAt2.setLayoutParams(layoutParams5);
                        }
                    } else {
                        if (layoutParams5.width == -2) {
                            layoutParams5.width = i17;
                        }
                        LinearLayout linearLayout2 = (LinearLayout) childAt2;
                        if (linearLayout2.getOrientation() == 0) {
                            linearLayout2.setGravity(8388627);
                            linearLayout2.setMinimumHeight(X(60));
                            linearLayout2.setPadding(X(6), X(4), X(6), X(4));
                        } else {
                            int i21 = 0;
                            while (i21 < linearLayout2.getChildCount()) {
                                View childAt3 = linearLayout2.getChildAt(i21);
                                ViewGroup$LayoutParams layoutParams6 = childAt3.getLayoutParams();
                                if (childAt3 instanceof MaterialSwitch) {
                                    layoutParams6.width = -1;
                                    if (layoutParams6 instanceof LinearLayout$LayoutParams) {
                                        ((LinearLayout$LayoutParams) layoutParams6).gravity = GravityCompat.START;
                                    }
                                    i15 = i21;
                                    linearLayout = linearLayout2;
                                    i14 = color5;
                                    childAt3.setPadding(X(12), X(4), X(12), X(4));
                                    childAt3.setMinimumHeight(X(60));
                                    childAt3.setLayoutParams(layoutParams6);
                                } else {
                                    i14 = color5;
                                    i15 = i21;
                                    linearLayout = linearLayout2;
                                    if (childAt3 instanceof LinearLayout) {
                                        LinearLayout linearLayout3 = (LinearLayout) childAt3;
                                        if (linearLayout3.getOrientation() == 0) {
                                            layoutParams6.width = -1;
                                            childAt3.setLayoutParams(layoutParams6);
                                            linearLayout3.setGravity(8388627);
                                            c = '<';
                                            linearLayout3.setMinimumHeight(X(60));
                                            linearLayout3.setPadding(X(6), X(4), X(6), X(4));
                                        }
                                    }
                                    linearLayout2 = linearLayout;
                                    i21 = i15 + 1;
                                    color5 = i14;
                                }
                                c = '<';
                                linearLayout2 = linearLayout;
                                i21 = i15 + 1;
                                color5 = i14;
                            }
                        }
                        i13 = color5;
                        S(layoutParams5);
                        childAt2.setLayoutParams(layoutParams5);
                    }
                    i19++;
                    color5 = i13;
                    i17 = -1;
                }
                i9 = color5;
                for (int i22 = 0; i22 < flexboxLayout2.getChildCount(); i22++) {
                    if (flexboxLayout2.getChildAt(i22) instanceof HeatManSetView) {
                        if (this.m1.add(flexboxLayout2)) {
                            flexboxLayout2.addOnLayoutChangeListener(new p1(this, flexboxLayout2));
                        }
                        flexboxLayout2.post(new a(18, this, flexboxLayout2));
                        break;
                    }
                }
            }
        } else {
            i9 = color5;
        }
        for (View view5 = view; view5 != null; view5 = (View) view5.getParent()) {
            if (view5.getId() == 2131296950) {
                int id2 = view.getId();
                if (id2 != 2131296914 && id2 != 2131296913) {
                    if (!(view instanceof RadioGroup)) {
                        break;
                    }
                    view.setPadding(X(4), X(6), X(4), X(6));
                    break;
                }
                view.setBackgroundResource(2131165572);
                view.setMinimumHeight(X(66));
                view.setPadding(X(10), X(4), X(12), X(4));
                ViewGroup$LayoutParams layoutParams7 = view.getLayoutParams();
                layoutParams7.width = -1;
                if (layoutParams7 instanceof ViewGroup$MarginLayoutParams) {
                    ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams2 = (ViewGroup$MarginLayoutParams) layoutParams7;
                    viewGroup$MarginLayoutParams2.topMargin = 0;
                    viewGroup$MarginLayoutParams2.bottomMargin = X(6);
                }
                view.setLayoutParams(layoutParams7);
                break;
            }
            if (!(view5.getParent() instanceof View)) {
                break;
            }
        }
        if (view instanceof FrameLayout) {
            ViewGroup viewGroup3 = (ViewGroup) view;
            for (int i23 = 0; i23 < viewGroup3.getChildCount(); i23++) {
                if (viewGroup3.getChildAt(i23) instanceof Spinner) {
                    view.setBackgroundResource(2131165578);
                    break;
                }
            }
        }
        Drawable background = view.getBackground();
        if (background instanceof ColorDrawable) {
            int color7 = ((ColorDrawable) background).getColor();
            if (color7 == -1) {
                view.setBackgroundColor(color4);
            } else if (color7 == ContextCompat.getColor(this, 2131034217)) {
                view.setBackgroundColor(color6);
            }
        }
        View view6 = view;
        while (true) {
            if (view6 != null) {
                int id3 = view6.getId();
                if (id3 == 2131296948 || id3 == 2131296947) {
                    if (view instanceof TabLayout) {
                        TabLayout tabLayout = (TabLayout) view;
                        tabLayout.setBackgroundColor(color4);
                        tabLayout.setTabTextColors(TabLayout.g(color2, color));
                        i10 = i9;
                        tabLayout.setSelectedTabIndicatorColor(i10);
                        tabLayout.setTabRippleColor(ColorStateList.valueOf(0));
                        ViewGroup viewGroup4 = (ViewGroup) tabLayout.getChildAt(0);
                        ColorStateList colorStateList = new ColorStateList(new int[][]{new int[]{R$attr.state_selected}, new int[0]}, new int[]{color6, color4});
                        for (int i24 = 0; i24 < viewGroup4.getChildCount(); i24++) {
                            viewGroup4.getChildAt(i24).setBackgroundTintList(colorStateList);
                        }
                    } else {
                        i10 = i9;
                        if (view instanceof GridLayout) {
                            GridLayout gridLayout = (GridLayout) view;
                            boolean z9 = gridLayout.findViewById(2131296620) != null;
                            if (z9) {
                                color4 = color6;
                            }
                            gridLayout.setBackgroundColor(color4);
                            if (z9) {
                                ViewGroup$LayoutParams layoutParams8 = gridLayout.getLayoutParams();
                                layoutParams8.height = X(40);
                                gridLayout.setLayoutParams(layoutParams8);
                                gridLayout.setElevation(X(2));
                            }
                        }
                    }
                    int id4 = view.getId();
                    if (view instanceof ImageView) {
                        ImageView imageView = (ImageView) view;
                        if (id4 == 2131297346 || id4 == 2131297549) {
                            imageView.setImageTintList(ColorStateList.valueOf(color2));
                        } else if (id4 == 2131297042) {
                            imageView.setImageTintList(ColorStateList.valueOf(i10));
                        } else if (id4 == 2131296808) {
                            imageView.setBackground(null);
                            imageView.setImageResource(2131165316);
                            imageView.setImageTintList(ColorStateList.valueOf(color));
                            if ((imageView.getParent() instanceof View) && (textView2 = (TextView) ((View) imageView.getParent()).findViewById(2131296620)) != null) {
                                imageView.setContentDescription(textView2.getText());
                            }
                            imageView.setOnClickListener(new o1(0));
                        }
                    }
                    if ((view instanceof ProgressBar) && (id4 == 2131297653 || id4 == 2131297548)) {
                        ProgressBar progressBar = (ProgressBar) view;
                        progressBar.setProgressTintList(ColorStateList.valueOf(i10));
                        progressBar.setProgressBackgroundTintList(ColorStateList.valueOf(ContextCompat.getColor(this, 2131035001)));
                        if (view instanceof SeekBar) {
                            ((SeekBar) view).setThumbTintList(ColorStateList.valueOf(color));
                        }
                    }
                    if (view instanceof EditText) {
                        EditText editText = (EditText) view;
                        editText.setTextColor(color);
                        editText.setHintTextColor(color2);
                        editText.setBackgroundTintList(ColorStateList.valueOf(i10));
                    } else if (view instanceof TextView) {
                        ((TextView) view).setTextColor(color);
                    }
                    for (view2 = view; view2 != null; view2 = (View) view2.getParent()) {
                        if (view2.getId() == 2131297041) {
                            if (view.getId() == 2131297580) {
                                if (view.getId() == 2131296333) {
                                    if (view.getId() == 2131296334) {
                                        break;
                                    }
                                    View view7 = (View) view.getParent();
                                    ViewGroup$LayoutParams layoutParams9 = view7.getLayoutParams();
                                    layoutParams9.width = X(170);
                                    layoutParams9.height = X(170);
                                    view7.setLayoutParams(layoutParams9);
                                    view.setLayoutParams(new LinearLayout$LayoutParams(-1, 0, 1.0f));
                                    break;
                                }
                                TextView textView4 = (TextView) view;
                                textView4.setTextSize(2, 15.0f);
                                textView4.setTextColor(i10);
                                break;
                            }
                            TextView textView5 = (TextView) view;
                            textView5.setTextSize(2, 16.0f);
                            textView5.setTextColor(color2);
                            break;
                        }
                        if (!(view2.getParent() instanceof View)) {
                            break;
                        }
                    }
                    if ((view instanceof SwitchCompat) || (view instanceof Switch)) {
                        view.setLayoutDirection(0);
                        textView = (TextView) view;
                        textView.setGravity(8388627);
                        textView.setTextDirection(5);
                        textView.setPadding(X(12), X(4), X(12), X(4));
                        if (textView instanceof SwitchCompat) {
                            ((SwitchCompat) textView).setSwitchPadding(X(16));
                        } else {
                            ((Switch) textView).setSwitchPadding(X(16));
                        }
                    }
                    if (view instanceof RadioButton) {
                        view4 = view;
                        while (true) {
                            if (view4 == null) {
                                if (view4.getId() == 2131296950) {
                                    radioButton = (RadioButton) view;
                                    radioButton.setButtonDrawable((Drawable) null);
                                    radioButton.setBackgroundResource(2131165595);
                                    radioButton.setTextColor(ContextCompat.getColorStateList(this, 2131035005));
                                    radioButton.setGravity(17);
                                    radioButton.setMinHeight(X(54));
                                    radioButton.setPadding(X(10), X(6), X(10), X(6));
                                    radioButton.setTextSize(2, 14.0f);
                                    radioButton.setMaxLines(2);
                                    layoutParams = radioButton.getLayoutParams();
                                    if (layoutParams instanceof ViewGroup$MarginLayoutParams) {
                                        ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams3 = (ViewGroup$MarginLayoutParams) layoutParams;
                                        viewGroup$MarginLayoutParams3.setMargins(X(3), X(3), X(3), X(3));
                                        radioButton.setLayoutParams(viewGroup$MarginLayoutParams3);
                                    }
                                } else if (!(view4.getParent() instanceof View)) {
                                    view4 = (View) view4.getParent();
                                }
                                i11 = 0;
                            }
                            if (view instanceof MaterialSwitch) {
                                MaterialSwitch materialSwitch = (MaterialSwitch) view;
                                materialSwitch.setTextSize(2, 16.0f);
                                materialSwitch.setMinHeight(X(54));
                                int[][] iArr = {new int[]{R$attr.state_checked}, new int[0]};
                                materialSwitch.setThumbTintList(new ColorStateList(iArr, new int[]{i10, color2}));
                                materialSwitch.setTrackTintList(new ColorStateList(iArr, new int[]{color6, ContextCompat.getColor(this, 2131035001)}));
                            } else if (view instanceof Button) {
                                button = (Button) view;
                                button.setAllCaps(false);
                                view3 = view;
                                while (true) {
                                    if (view3 == null) {
                                        if (view3.getId() == 2131296954) {
                                            button.setTextSize(2, 15.0f);
                                            button.setTypeface(button.getTypeface(), 1);
                                            button.setTextColor(color);
                                            button.setMinHeight(X(52));
                                            button.setGravity(8388627);
                                            button.setPadding(X(18), 0, X(18), 0);
                                            button.setCompoundDrawablePadding(X(14));
                                            button.setBackgroundResource(2131165574);
                                            button.setBackgroundTintList(null);
                                            U(button, X(26));
                                            if (button.getId() != 2131296307 || button.getId() == 2131296306 || button.getId() == 2131296309) {
                                                button.setTextSize(2, 20.0f);
                                                button.setMinimumHeight(X(80));
                                                button.getLayoutParams().height = -2;
                                                button.setPadding(X(22), X(16), X(22), X(16));
                                                U(button, X(40));
                                            }
                                        } else if (!(view3.getParent() instanceof View)) {
                                            view3 = (View) view3.getParent();
                                        }
                                    }
                                    button.setTextSize(2, 15.0f);
                                    button.setMinHeight(X(50));
                                    button.setTextColor(color);
                                    i11 = 0;
                                    button.setAllCaps(false);
                                    button.setGravity(17);
                                    button.setPadding(X(20), 0, X(20), 0);
                                    button.setBackgroundResource(2131165574);
                                    button.setBackgroundTintList(null);
                                }
                            } else {
                                i11 = 0;
                                if (view instanceof Spinner) {
                                    view.setBackgroundTintList(ColorStateList.valueOf(i10));
                                }
                            }
                            i11 = 0;
                        }
                    } else {
                        if (view instanceof MaterialSwitch) {
                            MaterialSwitch materialSwitch2 = (MaterialSwitch) view;
                            materialSwitch2.setTextSize(2, 16.0f);
                            materialSwitch2.setMinHeight(X(54));
                            int[][] iArr2 = {new int[]{R$attr.state_checked}, new int[0]};
                            materialSwitch2.setThumbTintList(new ColorStateList(iArr2, new int[]{i10, color2}));
                            materialSwitch2.setTrackTintList(new ColorStateList(iArr2, new int[]{color6, ContextCompat.getColor(this, 2131035001)}));
                        } else if (view instanceof Button) {
                            button = (Button) view;
                            button.setAllCaps(false);
                            view3 = view;
                            while (true) {
                                if (view3 == null) {
                                    if (view3.getId() == 2131296954) {
                                        button.setTextSize(2, 15.0f);
                                        button.setTypeface(button.getTypeface(), 1);
                                        button.setTextColor(color);
                                        button.setMinHeight(X(52));
                                        button.setGravity(8388627);
                                        button.setPadding(X(18), 0, X(18), 0);
                                        button.setCompoundDrawablePadding(X(14));
                                        button.setBackgroundResource(2131165574);
                                        button.setBackgroundTintList(null);
                                        U(button, X(26));
                                        if (button.getId() != 2131296307) {
                                            button.setTextSize(2, 20.0f);
                                            button.setMinimumHeight(X(80));
                                            button.getLayoutParams().height = -2;
                                            button.setPadding(X(22), X(16), X(22), X(16));
                                            U(button, X(40));
                                        } else {
                                            button.setTextSize(2, 20.0f);
                                            button.setMinimumHeight(X(80));
                                            button.getLayoutParams().height = -2;
                                            button.setPadding(X(22), X(16), X(22), X(16));
                                            U(button, X(40));
                                        }
                                    } else if (!(view3.getParent() instanceof View)) {
                                        view3 = (View) view3.getParent();
                                    }
                                }
                                button.setTextSize(2, 15.0f);
                                button.setMinHeight(X(50));
                                button.setTextColor(color);
                                i11 = 0;
                                button.setAllCaps(false);
                                button.setGravity(17);
                                button.setPadding(X(20), 0, X(20), 0);
                                button.setBackgroundResource(2131165574);
                                button.setBackgroundTintList(null);
                            }
                        } else {
                            i11 = 0;
                            if (view instanceof Spinner) {
                                view.setBackgroundTintList(ColorStateList.valueOf(i10));
                            }
                        }
                        i11 = 0;
                    }
                    if (view instanceof ViewGroup) {
                        viewGroup = (ViewGroup) view;
                        for (i12 = i11; i12 < viewGroup.getChildCount(); i12++) {
                            T(viewGroup.getChildAt(i12));
                        }
                        return;
                    }
                    return;
                }
                if (view6.getParent() instanceof View) {
                    view6 = (View) view6.getParent();
                }
            }
            i10 = i9;
            if (view instanceof EditText) {
                EditText editText2 = (EditText) view;
                editText2.setTextColor(color);
                editText2.setHintTextColor(color2);
                editText2.setBackgroundTintList(ColorStateList.valueOf(i10));
            } else if (view instanceof TextView) {
                ((TextView) view).setTextColor(color);
            }
            while (view2 != null) {
                if (view2.getId() == 2131297041) {
                    if (view.getId() == 2131297580) {
                        if (view.getId() == 2131296333) {
                            if (view.getId() == 2131296334) {
                                break;
                            }
                            View view8 = (View) view.getParent();
                            ViewGroup$LayoutParams layoutParams10 = view8.getLayoutParams();
                            layoutParams10.width = X(170);
                            layoutParams10.height = X(170);
                            view8.setLayoutParams(layoutParams10);
                            view.setLayoutParams(new LinearLayout$LayoutParams(-1, 0, 1.0f));
                            break;
                        }
                        TextView textView6 = (TextView) view;
                        textView6.setTextSize(2, 15.0f);
                        textView6.setTextColor(i10);
                        break;
                    }
                    TextView textView7 = (TextView) view;
                    textView7.setTextSize(2, 16.0f);
                    textView7.setTextColor(color2);
                    break;
                }
                if (!(view2.getParent() instanceof View)) {
                    break;
                    break;
                }
            }
            if (view instanceof SwitchCompat) {
                view.setLayoutDirection(0);
                textView = (TextView) view;
                textView.setGravity(8388627);
                textView.setTextDirection(5);
                textView.setPadding(X(12), X(4), X(12), X(4));
                if (textView instanceof SwitchCompat) {
                    ((SwitchCompat) textView).setSwitchPadding(X(16));
                } else {
                    ((Switch) textView).setSwitchPadding(X(16));
                }
            } else {
                view.setLayoutDirection(0);
                textView = (TextView) view;
                textView.setGravity(8388627);
                textView.setTextDirection(5);
                textView.setPadding(X(12), X(4), X(12), X(4));
                if (textView instanceof SwitchCompat) {
                    ((SwitchCompat) textView).setSwitchPadding(X(16));
                } else {
                    ((Switch) textView).setSwitchPadding(X(16));
                }
            }
            if (view instanceof RadioButton) {
                view4 = view;
                while (true) {
                    if (view4 == null) {
                        if (view4.getId() == 2131296950) {
                            radioButton = (RadioButton) view;
                            radioButton.setButtonDrawable((Drawable) null);
                            radioButton.setBackgroundResource(2131165595);
                            radioButton.setTextColor(ContextCompat.getColorStateList(this, 2131035005));
                            radioButton.setGravity(17);
                            radioButton.setMinHeight(X(54));
                            radioButton.setPadding(X(10), X(6), X(10), X(6));
                            radioButton.setTextSize(2, 14.0f);
                            radioButton.setMaxLines(2);
                            layoutParams = radioButton.getLayoutParams();
                            if (layoutParams instanceof ViewGroup$MarginLayoutParams) {
                                ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams4 = (ViewGroup$MarginLayoutParams) layoutParams;
                                viewGroup$MarginLayoutParams4.setMargins(X(3), X(3), X(3), X(3));
                                radioButton.setLayoutParams(viewGroup$MarginLayoutParams4);
                            }
                        } else if (!(view4.getParent() instanceof View)) {
                            view4 = (View) view4.getParent();
                        }
                        i11 = 0;
                    }
                    if (view instanceof MaterialSwitch) {
                        MaterialSwitch materialSwitch3 = (MaterialSwitch) view;
                        materialSwitch3.setTextSize(2, 16.0f);
                        materialSwitch3.setMinHeight(X(54));
                        int[][] iArr3 = {new int[]{R$attr.state_checked}, new int[0]};
                        materialSwitch3.setThumbTintList(new ColorStateList(iArr3, new int[]{i10, color2}));
                        materialSwitch3.setTrackTintList(new ColorStateList(iArr3, new int[]{color6, ContextCompat.getColor(this, 2131035001)}));
                    } else if (view instanceof Button) {
                        button = (Button) view;
                        button.setAllCaps(false);
                        view3 = view;
                        while (true) {
                            if (view3 == null) {
                                if (view3.getId() == 2131296954) {
                                    button.setTextSize(2, 15.0f);
                                    button.setTypeface(button.getTypeface(), 1);
                                    button.setTextColor(color);
                                    button.setMinHeight(X(52));
                                    button.setGravity(8388627);
                                    button.setPadding(X(18), 0, X(18), 0);
                                    button.setCompoundDrawablePadding(X(14));
                                    button.setBackgroundResource(2131165574);
                                    button.setBackgroundTintList(null);
                                    U(button, X(26));
                                    if (button.getId() != 2131296307) {
                                        button.setTextSize(2, 20.0f);
                                        button.setMinimumHeight(X(80));
                                        button.getLayoutParams().height = -2;
                                        button.setPadding(X(22), X(16), X(22), X(16));
                                        U(button, X(40));
                                    } else {
                                        button.setTextSize(2, 20.0f);
                                        button.setMinimumHeight(X(80));
                                        button.getLayoutParams().height = -2;
                                        button.setPadding(X(22), X(16), X(22), X(16));
                                        U(button, X(40));
                                    }
                                } else if (!(view3.getParent() instanceof View)) {
                                    view3 = (View) view3.getParent();
                                }
                            }
                            button.setTextSize(2, 15.0f);
                            button.setMinHeight(X(50));
                            button.setTextColor(color);
                            i11 = 0;
                            button.setAllCaps(false);
                            button.setGravity(17);
                            button.setPadding(X(20), 0, X(20), 0);
                            button.setBackgroundResource(2131165574);
                            button.setBackgroundTintList(null);
                        }
                    } else {
                        i11 = 0;
                        if (view instanceof Spinner) {
                            view.setBackgroundTintList(ColorStateList.valueOf(i10));
                        }
                    }
                    i11 = 0;
                }
            } else {
                if (view instanceof MaterialSwitch) {
                    MaterialSwitch materialSwitch4 = (MaterialSwitch) view;
                    materialSwitch4.setTextSize(2, 16.0f);
                    materialSwitch4.setMinHeight(X(54));
                    int[][] iArr4 = {new int[]{R$attr.state_checked}, new int[0]};
                    materialSwitch4.setThumbTintList(new ColorStateList(iArr4, new int[]{i10, color2}));
                    materialSwitch4.setTrackTintList(new ColorStateList(iArr4, new int[]{color6, ContextCompat.getColor(this, 2131035001)}));
                } else if (view instanceof Button) {
                    button = (Button) view;
                    button.setAllCaps(false);
                    view3 = view;
                    while (true) {
                        if (view3 == null) {
                            if (view3.getId() == 2131296954) {
                                button.setTextSize(2, 15.0f);
                                button.setTypeface(button.getTypeface(), 1);
                                button.setTextColor(color);
                                button.setMinHeight(X(52));
                                button.setGravity(8388627);
                                button.setPadding(X(18), 0, X(18), 0);
                                button.setCompoundDrawablePadding(X(14));
                                button.setBackgroundResource(2131165574);
                                button.setBackgroundTintList(null);
                                U(button, X(26));
                                if (button.getId() != 2131296307) {
                                    button.setTextSize(2, 20.0f);
                                    button.setMinimumHeight(X(80));
                                    button.getLayoutParams().height = -2;
                                    button.setPadding(X(22), X(16), X(22), X(16));
                                    U(button, X(40));
                                } else {
                                    button.setTextSize(2, 20.0f);
                                    button.setMinimumHeight(X(80));
                                    button.getLayoutParams().height = -2;
                                    button.setPadding(X(22), X(16), X(22), X(16));
                                    U(button, X(40));
                                }
                            } else if (!(view3.getParent() instanceof View)) {
                                view3 = (View) view3.getParent();
                            }
                        }
                        button.setTextSize(2, 15.0f);
                        button.setMinHeight(X(50));
                        button.setTextColor(color);
                        i11 = 0;
                        button.setAllCaps(false);
                        button.setGravity(17);
                        button.setPadding(X(20), 0, X(20), 0);
                        button.setBackgroundResource(2131165574);
                        button.setBackgroundTintList(null);
                    }
                } else {
                    i11 = 0;
                    if (view instanceof Spinner) {
                        view.setBackgroundTintList(ColorStateList.valueOf(i10));
                    }
                }
                i11 = 0;
            }
            if (view instanceof ViewGroup) {
                viewGroup = (ViewGroup) view;
                while (i12 < viewGroup.getChildCount()) {
                    T(viewGroup.getChildAt(i12));
                }
                return;
            }
            return;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void U(Button button, int i9) {
        int i10;
        int id = button.getId();
        if (id == 2131296876) {
            i10 = 2131165600;
        } else if (id == 2131297045) {
            i10 = 2131165462;
        } else if (id == 2131297046) {
            i10 = 2131165601;
        } else if (id == 2131297039) {
            i10 = 2131165598;
        } else if (id == 2131296307) {
            i10 = 2131689487;
        } else if (id == 2131296306) {
            i10 = 2131689481;
        } else if (id == 2131296309) {
            i10 = 2131165471;
        } else if (id != 2131296308) {
            return;
        } else {
            i10 = 2131165599;
        }
        Drawable drawable = ContextCompat.getDrawable(this, i10);
        if (drawable == null) {
            return;
        }
        drawable.setBounds(0, 0, i9, i9);
        button.setCompoundDrawablesRelative(drawable, null, null, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void V(YMovLay yMovLay, String str, String str2) {
        int i9;
        int i10 = 0;
        try {
            i9 = Integer.parseInt(yMovLay.getYLayMovX());
        } catch (NumberFormatException unused) {
            i9 = 0;
        }
        try {
            i10 = Integer.parseInt(yMovLay.getYLayMovY());
        } catch (NumberFormatException unused2) {
        }
        yMovLay.a(Math.min(-500, i9 - 200), Math.max(2500, i9 + ItemTouchHelper$Callback.DEFAULT_DRAG_ANIMATION_DURATION), Math.min(-500, i10 - 200), Math.max(1500, i10 + ItemTouchHelper$Callback.DEFAULT_DRAG_ANIMATION_DURATION));
        yMovLay.setOnSliderValueChangeListener(new r1(this, str, str2, yMovLay));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void W(YMovLay yMovLay, String str) {
        String yLayMovX = yMovLay.getYLayMovX();
        int i9 = Integer.parseInt(this.f730s);
        try {
            i9 = Integer.parseInt(yLayMovX);
        } catch (NumberFormatException unused) {
        }
        yMovLay.a(Math.min(80, i9 - 40), Math.max(640, i9 + 40), 0, 1);
        yMovLay.setOnSliderValueChangeListener(new androidx.transition.a(this, str, yMovLay, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int X(int i9) {
        return Math.round(i9 * getResources().getDisplayMetrics().density);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean Y(int... iArr) {
        for (int i9 : iArr) {
            View viewFindViewById = findViewById(i9);
            if (viewFindViewById != null && viewFindViewById.getVisibility() == 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void Z(FlexboxLayout flexboxLayout) {
        int width = (flexboxLayout.getWidth() - flexboxLayout.getPaddingLeft()) - flexboxLayout.getPaddingRight();
        if (width <= 0) {
            return;
        }
        flexboxLayout.setJustifyContent(0);
        int iX = X(260);
        int iMax = Math.max(0, (width / Math.max(1, width / ((X(4) * 2) + iX))) - iX);
        int i9 = iMax / 2;
        int i10 = iMax - i9;
        for (int i11 = 0; i11 < flexboxLayout.getChildCount(); i11++) {
            View childAt = flexboxLayout.getChildAt(i11);
            if (childAt instanceof HeatManSetView) {
                o2.e eVar = (o2.e) childAt.getLayoutParams();
                if (((ViewGroup$MarginLayoutParams) eVar).width != iX || ((ViewGroup$MarginLayoutParams) eVar).leftMargin != i9 || ((ViewGroup$MarginLayoutParams) eVar).rightMargin != i10) {
                    ((ViewGroup$MarginLayoutParams) eVar).width = iX;
                    eVar.c = 0.0f;
                    eVar.d = 0.0f;
                    eVar.setMargins(i9, X(4), i10, X(4));
                    childAt.setPadding(0, 0, 0, 0);
                    childAt.setLayoutParams(eVar);
                    ViewGroup viewGroup = (ViewGroup) childAt;
                    if (viewGroup.getChildCount() > 0) {
                        View childAt2 = viewGroup.getChildAt(0);
                        ViewGroup$LayoutParams layoutParams = childAt2.getLayoutParams();
                        layoutParams.width = -1;
                        childAt2.setLayoutParams(layoutParams);
                    }
                    View viewFindViewById = childAt.findViewById(2131296620);
                    if (viewFindViewById != null) {
                        ViewGroup$LayoutParams layoutParams2 = viewFindViewById.getLayoutParams();
                        layoutParams2.width = X(220);
                        viewFindViewById.setLayoutParams(layoutParams2);
                    }
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a0(int i9, int i10) {
        View viewFindViewById = findViewById(i9);
        View viewFindViewById2 = findViewById(i10);
        if (viewFindViewById == null || viewFindViewById2 == null) {
            return;
        }
        viewFindViewById.setVisibility(viewFindViewById2.getVisibility());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ContextThemeWrapper
    public final void applyOverrideConfiguration(Configuration configuration) {
        Configuration configuration2 = new Configuration(configuration);
        if (getBaseContext() != null) {
            configuration2.densityDpi = m.x(getBaseContext()).getResources().getConfiguration().densityDpi;
        }
        super.applyOverrideConfiguration(configuration2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(m.x(context));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b0(int i9) {
        View viewFindViewById = findViewById(i9);
        if (viewFindViewById instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) viewFindViewById;
            if (viewGroup.getChildCount() == 0) {
                return;
            }
            View childAt = viewGroup.getChildAt(0);
            ViewGroup$LayoutParams layoutParams = childAt.getLayoutParams();
            layoutParams.height = -2;
            childAt.setLayoutParams(layoutParams);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c0() {
        boolean zY = Y(2131296946, 2131296322, 2131296945);
        boolean zY2 = Y(2131296948, 2131296947);
        findViewById(2131297054).setVisibility(zY ? 0 : 8);
        findViewById(2131297052).setVisibility(zY2 ? 0 : 8);
        boolean[] zArr = {Y(2131296954), Y(2131296951), Y(2131296950), Y(2131297051, 2131296324, 2131297049, 2131296313, 2131296953), !this.f770z1 && Y(2131296952, 2131296949, 2131296653, 2131297043)};
        int i9 = 0;
        while (true) {
            int[] iArr = this.f763s1;
            if (i9 >= iArr.length) {
                break;
            }
            findViewById(iArr[i9]).setVisibility(zArr[i9] ? 0 : 8);
            i9++;
        }
        int i10 = this.f766v1;
        if ((i10 == 1 && !zY) || (i10 == 2 && !zY2)) {
            this.f766v1 = 0;
            d0(0);
        }
        if (zArr[this.f767w1]) {
            return;
        }
        for (int i11 = 0; i11 < 5; i11++) {
            if (zArr[i11]) {
                this.f767w1 = i11;
                break;
            }
        }
        if (this.f766v1 == this.o1.length - 1) {
            e0(this.f767w1);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d0(int i9) {
        int[] iArr = this.o1;
        if (i9 < 0 || i9 >= iArr.length) {
            i9 = 0;
        }
        this.f766v1 = i9;
        View view = null;
        int i10 = 0;
        while (true) {
            int i11 = 2131035010;
            if (i10 >= iArr.length) {
                break;
            }
            View viewFindViewById = findViewById(iArr[i10]);
            viewFindViewById.setVisibility(i10 == i9 ? 0 : 8);
            if (i10 == i9) {
                view = viewFindViewById;
            }
            int[] iArr2 = this.n1;
            findViewById(iArr2[i10]).setSelected(i10 == i9);
            TextView textView = (TextView) findViewById(iArr2[i10]);
            if (i10 == i9) {
                i11 = 2131035003;
            }
            textView.setCompoundDrawableTintList(ColorStateList.valueOf(ContextCompat.getColor(this, i11)));
            i10++;
        }
        ((TextView) findViewById(2131297063)).setText(this.r1[i9]);
        if (view != null) {
            T(view);
            view.postDelayed(new l1(this, view, 0), 150L);
        }
        if (i9 != iArr.length - 1) {
            int color = ContextCompat.getColor(this, 2131035010);
            for (int i12 : this.f763s1) {
                TextView textView2 = (TextView) findViewById(i12);
                textView2.setSelected(false);
                textView2.setTextColor(color);
                textView2.setCompoundDrawableTintList(ColorStateList.valueOf(color));
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e0(int i9) {
        int[] iArr = this.f764t1;
        if (i9 < 0 || i9 >= iArr.length) {
            i9 = 0;
        }
        if (this.f770z1 && i9 == iArr.length - 1) {
            i9 = 0;
        }
        this.f767w1 = i9;
        ((TextView) findViewById(2131297063)).setText(this.f765u1[i9]);
        int color = ContextCompat.getColor(this, 2131035003);
        int color2 = ContextCompat.getColor(this, 2131035010);
        int i10 = 0;
        while (i10 < iArr.length) {
            View viewFindViewById = findViewById(iArr[i10]);
            boolean z8 = i10 == i9;
            viewFindViewById.setVisibility(z8 ? 0 : 8);
            TextView textView = (TextView) findViewById(this.f763s1[i10]);
            textView.setSelected(z8);
            textView.setTextColor(z8 ? color : color2);
            textView.setCompoundDrawableTintList(ColorStateList.valueOf(z8 ? color : color2));
            if (z8) {
                T(viewFindViewById);
            }
            i10++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        View viewFindViewById = findViewById(2131296944);
        viewFindViewById.post(new l1(this, viewFindViewById, 2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (isFinishing()) {
            return;
        }
        this.f766v1 = bundle == null ? 0 : bundle.getInt(B1, 0);
        this.f767w1 = bundle == null ? 0 : bundle.getInt(C1, 0);
        int i9 = 0;
        while (true) {
            int[] iArr = this.n1;
            if (i9 >= iArr.length) {
                break;
            }
            findViewById(iArr[i9]).setOnClickListener(new m1(this, i9, 2));
            i9++;
        }
        findViewById(2131297030).setOnClickListener(new n1(this, 0));
        int i10 = 0;
        while (true) {
            int[] iArr2 = this.p1;
            if (i10 >= iArr2.length) {
                break;
            }
            findViewById(iArr2[i10]).setOnClickListener(new m1(this, this.q1[i10], 1));
            i10++;
        }
        int i11 = 0;
        while (true) {
            int[] iArr3 = this.f763s1;
            if (i11 >= iArr3.length) {
                break;
            }
            findViewById(iArr3[i11]).setOnClickListener(new m1(this, i11, 0));
            i11++;
        }
        V(this.R0, this.f707g, this.f709h);
        V(this.S0, this.f715k, this.f717l);
        V(this.T0, this.f723o, this.f725p);
        W(this.U0, m.h(new byte[]{43, 126, 46, 0, 58, -39, 56, -33, 16, 118, 42, 38, 36, -2, 28, -1}, new byte[]{102, 31, 94, 95, 123, -70, 76, -74}));
        W(this.V0, m.h(new byte[]{-95, -96, 44, 126, 35, -26, -87, 93, -102, -88, 40, 88, Base64.padSymbol, -63, -115, 125, -77, -122, 9}, new byte[]{-20, -63, 92, 33, 98, -123, -35, 52}));
        findViewById(2131297045).setOnClickListener(new n1(this, 2));
        findViewById(2131297046).setOnClickListener(new n1(this, 3));
        findViewById(2131297039).setOnClickListener(new n1(this, 4));
        findViewById(2131296876).setOnClickListener(new n1(this, 5));
        View viewFindViewById = findViewById(2131297500);
        if (viewFindViewById != null && (viewFindViewById.getParent() instanceof View)) {
            ((View) viewFindViewById.getParent()).setVisibility(8);
        }
        if (findViewById(2131297044) != null && getSupportFragmentManager().findFragmentByTag(m.h(new byte[]{59, 28, -88, 102, 95, 114, -72, 24, 50, 20, -87, 92, 74, 121, -108, 9, 35, 1, -87, 92, 87, 115, -119, 24, 37}, new byte[]{86, 115, -52, 3, 45, 28, -25, 125})) == null) {
            getSupportFragmentManager().beginTransaction().replace(2131297044, new o0.a(), m.h(new byte[]{97, 21, 3, -86, -45, 119, -65, 121, 104, 29, 2, -112, -58, 124, -109, 104, 121, 8, 2, -112, -37, 118, -114, 121, ByteCompanionObject.MAX_VALUE}, new byte[]{12, 122, 103, -49, -95, 25, -32, 28})).commitNow();
        }
        MaterialSwitch materialSwitch = (MaterialSwitch) findViewById(2131297472);
        materialSwitch.setChecked(b.o().loadBoolean(m.h(new byte[]{17, -30, -95, 101, 122, 74, -119, 69, 6, -16, -76, 116, 123, 74, -101, 66, 3, -11, -67, 101, 108}, new byte[]{98, -105, -47, 0, 8, 21, -2, 44}), false));
        materialSwitch.setOnCheckedChangeListener(new s0(2, this));
        findViewById(2131297473).setOnClickListener(new n1(this, 1));
        b0(2131297041);
        b0(2131297040);
        ((TextView) findViewById(2131297083)).setText(m.h(new byte[]{91, 10, 4, -62, -118}, new byte[]{105, 36, 52, -20, -66, -89, -22, -70}));
        T(findViewById(2131296944));
        this.f769y1 = true;
        c0();
        d0(this.f766v1);
        if (this.f766v1 == this.o1.length - 1) {
            e0(this.f767w1);
        }
        View viewFindViewById2 = findViewById(2131296944);
        viewFindViewById2.addOnLayoutChangeListener(new q1(0, this));
        viewFindViewById2.post(new l1(this, viewFindViewById2, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        String str = this.A1;
        if (str == null || str.equals(g0.a())) {
            return;
        }
        recreate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putInt(B1, this.f766v1);
        bundle.putInt(C1, this.f767w1);
        super.onSaveInstanceState(bundle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.MainActivity
    public final int z() {
        Context contextX = m.x(this);
        Configuration configuration = new Configuration(getResources().getConfiguration());
        configuration.densityDpi = contextX.getResources().getConfiguration().densityDpi;
        this.A1 = g0.a();
        Locale locale = new Locale(this.A1);
        configuration.setLocale(locale);
        Locale.setDefault(locale);
        getResources().updateConfiguration(configuration, getResources().getDisplayMetrics());
        return 2131492900;
    }
}
