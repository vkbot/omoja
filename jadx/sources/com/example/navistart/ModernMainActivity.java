package com.example.navistart;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.GridLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupMenu;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.SeekBar;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.appcompat.widget.Toolbar;
import androidx.cardview.widget.CardView;
import androidx.core.content.ContextCompat;
import androidx.core.view.GravityCompat;
import androidx.core.widget.TextViewCompat;
import androidx.transition.C0802a;
import com.example.navistart.ActivityC1081W;
import com.example.navistart.ModernMainActivity;
import com.example.navistart.PermActivity;
import com.example.navistart.R;
import com.example.navistart.SuperWidgets.WidgetBuilderFragment;
import com.example.navistart.mainview.HeatManSetView;
import com.example.navistart.mainview.YMovLay;
import com.google.android.flexbox.FlexboxLayout;
import com.google.android.material.materialswitch.MaterialSwitch;
import com.google.android.material.tabs.TabLayout;
import com.woha.appmanag.ManageAppsActivity;
import java.util.HashSet;
import java.util.Locale;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import kotlin.text.Typography;
import p002a1.RunnableC0003a;
import p032c7.RunnableC1001e;
import p047e0.AbstractC1358g0;
import p047e0.AbstractC1387m;
import p047e0.C1414r1;
import p047e0.C1418s0;
import p047e0.RunnableC1384l1;
import p047e0.ViewOnClickListenerC1399o1;
import p047e0.ViewOnLayoutChangeListenerC1409q1;
import p078h0.C1652b;
import p121l0.C2194a;
import p132m0.C2302i;
import p132m0.C2328n0;
import p132m0.C2372y;
import p142n0.EnumC2468c;
import p152o0.C2567a;
import p153o2.C2577e;
import p250y5.AbstractC3656k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class ModernMainActivity extends MainActivity {

    /* JADX INFO: renamed from: B1 */
    public static final String f1436B1 = AbstractC1387m.m2421h(new byte[]{-75, -42, 52, 120, -15, 94, 92, 51, -67, -38, 36, 116, -20, 94}, new byte[]{-40, -71, 80, 29, -125, 48, 3, 64});

    /* JADX INFO: renamed from: C1 */
    public static final String f1437C1 = AbstractC1387m.m2421h(new byte[]{108, -46, -37, -6, 3, 92, 15, 6, 110, -46, -45}, new byte[]{1, -67, -65, -97, 113, 50, 80, 114});

    /* JADX INFO: renamed from: A1 */
    public String f1438A1;

    /* JADX INFO: renamed from: m1 */
    public final HashSet f1439m1 = new HashSet();

    /* JADX INFO: renamed from: n1 */
    public final int[] f1440n1 = {R.id.modern_nav_home, R.id.modern_nav_startup, R.id.modern_nav_comfort, R.id.modern_nav_tools};

    /* JADX INFO: renamed from: o1 */
    public final int[] f1441o1 = {R.id.modern_section_home, R.id.modern_section_startup, R.id.modern_section_comfort, R.id.modern_section_tools};

    /* JADX INFO: renamed from: p1 */
    public final int[] f1442p1 = {R.id.modern_action_auth, R.id.modern_action_update, R.id.modern_action_wifi, R.id.modern_action_vpn, R.id.modern_action_radar, R.id.modern_action_app_settings, R.id.modern_action_about};

    /* JADX INFO: renamed from: q1 */
    public final int[] f1443q1 = {R.id.au, R.id.menu_update, R.id.menu_wifi, R.id.menu_vpn, R.id.menu_arad, R.id.aupdate, R.id.menu_about};

    /* JADX INFO: renamed from: r1 */
    public final int[] f1444r1 = {R.string.modern_home, R.string.modern_startup, R.string.modern_comfort, R.string.modern_tools};

    /* JADX INFO: renamed from: s1 */
    public final int[] f1445s1 = {R.id.modern_tool_tab_store, R.id.modern_tool_tab_maps, R.id.modern_tool_tab_car, R.id.modern_tool_tab_other, R.id.modern_tool_tab_controls};

    /* JADX INFO: renamed from: t1 */
    public final int[] f1446t1 = {R.id.modern_tool_panel_store, R.id.modern_tool_panel_maps, R.id.modern_tool_panel_car, R.id.modern_tool_panel_other, R.id.modern_tool_panel_controls};

    /* JADX INFO: renamed from: u1 */
    public final int[] f1447u1 = {R.string.item_store, R.string.karti, R.string.item_car_settings, R.string.modern_useful_features, R.string.modern_convenient_control};

    /* JADX INFO: renamed from: v1 */
    public int f1448v1;

    /* JADX INFO: renamed from: w1 */
    public int f1449w1;

    /* JADX INFO: renamed from: x1 */
    public Boolean f1450x1;

    /* JADX INFO: renamed from: y1 */
    public boolean f1451y1;

    /* JADX INFO: renamed from: z1 */
    public boolean f1452z1;

    @Override // com.example.navistart.MainActivity
    /* JADX INFO: renamed from: H */
    public final void mo1435H(EnumC2468c enumC2468c) {
        this.f1452z1 = enumC2468c == EnumC2468c.f6687k;
        m1471a0(R.id.modern_messages, R.id.MainWidjet);
        m1471a0(R.id.modern_location_card, R.id.main_other);
        m1471a0(R.id.main_button_settings, R.id.main_other);
        if (this.f1451y1) {
            m1473c0();
        }
    }

    @Override // com.example.navistart.MainActivity
    /* JADX INFO: renamed from: J */
    public final void mo1437J(boolean z9) {
        super.mo1437J(z9);
        runOnUiThread(new RunnableC1001e(this, z9, 4));
    }

    /* JADX INFO: renamed from: R */
    public final void m1462R(int i10, int i11) {
        if (i10 <= 0 || i11 <= 0) {
            return;
        }
        boolean z9 = false;
        boolean z10 = ((float) i10) / getResources().getDisplayMetrics().density < 850.0f;
        Boolean bool = this.f1450x1;
        if (bool == null || bool.booleanValue() != z10) {
            this.f1450x1 = Boolean.valueOf(z10);
            LinearLayout linearLayout = (LinearLayout) findViewById(R.id.modern_navigation_rail);
            ViewGroup.LayoutParams layoutParams = linearLayout.getLayoutParams();
            layoutParams.width = m1468X(z10 ? 164 : 220);
            linearLayout.setLayoutParams(layoutParams);
            int i12 = 8;
            findViewById(R.id.modern_brand_text).setVisibility(z10 ? 8 : 0);
            LinearLayout linearLayout2 = (LinearLayout) findViewById(R.id.modern_brand);
            int i13 = 16;
            linearLayout2.setGravity((z10 ? 1 : GravityCompat.START) | 16);
            linearLayout2.setPadding(z10 ? 0 : m1468X(18), 0, z10 ? 0 : m1468X(14), 0);
            int i14 = 0;
            while (true) {
                int[] iArr = this.f1440n1;
                if (i14 >= iArr.length) {
                    break;
                }
                TextView textView = (TextView) findViewById(iArr[i14]);
                int[] iArr2 = this.f1444r1;
                textView.setText(getString(iArr2[i14]));
                textView.setGravity(16);
                textView.setSingleLine(false);
                textView.setMaxLines(3);
                textView.setTextSize(2, z10 ? 13.0f : 15.0f);
                textView.setPadding(m1468X(z10 ? 10 : 16), m1468X(6), m1468X(8), m1468X(6));
                textView.setCompoundDrawablePadding(m1468X(z10 ? 8 : 12));
                textView.getLayoutParams().height = -2;
                textView.setMinimumHeight(m1468X(54));
                textView.setContentDescription(getString(iArr2[i14]));
                i14++;
            }
            int i15 = 0;
            while (true) {
                int[] iArr3 = this.f1445s1;
                if (i15 >= iArr3.length) {
                    break;
                }
                TextView textView2 = (TextView) findViewById(iArr3[i15]);
                int[] iArr4 = this.f1447u1;
                textView2.setText(getString(iArr4[i15]));
                textView2.setGravity(i13);
                textView2.setSingleLine(z9);
                textView2.setMaxLines(3);
                textView2.setTextSize(2, z10 ? 13.0f : 15.0f);
                textView2.setPadding(m1468X(z10 ? 10 : i13), m1468X(6), m1468X(i12), m1468X(6));
                textView2.setCompoundDrawablePadding(m1468X(z10 ? 8 : 12));
                textView2.getLayoutParams().height = -2;
                textView2.setMinimumHeight(m1468X(54));
                textView2.setContentDescription(getString(iArr4[i15]));
                i15++;
                z9 = false;
                i12 = 8;
                i13 = 16;
            }
            ((TextView) findViewById(R.id.modern_section_title)).setTextSize(2, z10 ? 21.0f : 24.0f);
        }
    }

    /* JADX INFO: renamed from: S */
    public final void m1463S(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.leftMargin = m1468X(6);
            marginLayoutParams.rightMargin = m1468X(6);
            marginLayoutParams.topMargin = m1468X(4);
            marginLayoutParams.bottomMargin = m1468X(4);
        }
    }

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
    /* JADX INFO: renamed from: T */
    public final void m1464T(View view) {
        int i10;
        int i11;
        View view2;
        TextView textView;
        int i12;
        Button button;
        View view3;
        ViewGroup viewGroup;
        int i13;
        View view4;
        RadioButton radioButton;
        ViewGroup.LayoutParams layoutParams;
        TextView textView2;
        int i14;
        int i15;
        int i16;
        LinearLayout linearLayout;
        char c;
        if (view == null) {
            return;
        }
        int color = ContextCompat.getColor(this, R.color.modern_text);
        int color2 = ContextCompat.getColor(this, R.color.modern_text_secondary);
        int color3 = ContextCompat.getColor(this, R.color.modern_surface);
        int color4 = ContextCompat.getColor(this, R.color.modern_surface_high);
        int color5 = ContextCompat.getColor(this, R.color.modern_primary);
        int color6 = ContextCompat.getColor(this, R.color.modern_primary_dark);
        if (view.getId() == R.id.toolbar) {
            view.setVisibility(8);
        }
        int id = view.getId();
        if (id == R.id.MainLabel || id == R.id.MainStartProPriLabel || id == R.id.MainPayViewLabel || id == R.id.MainCarPrefViewLabel) {
            TextView textView3 = (TextView) view;
            textView3.setVisibility(0);
            textView3.setBackgroundResource(R.drawable.modern_window_header);
            textView3.setGravity(8388627);
            textView3.setPadding(m1468X(20), 0, m1468X(20), 0);
            TextViewCompat.setAutoSizeTextTypeWithDefaults(textView3, 0);
            textView3.setTextSize(2, 18.0f);
            textView3.setTextColor(color);
            textView3.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
            textView3.setTypeface(textView3.getTypeface(), 1);
            ViewGroup.LayoutParams layoutParams2 = textView3.getLayoutParams();
            layoutParams2.height = m1468X(52);
            textView3.setLayoutParams(layoutParams2);
        }
        if (view instanceof CardView) {
            CardView cardView = (CardView) view;
            cardView.setBackgroundTintList(null);
            if (view.getId() == R.id.mainStartProPri || view.getId() == R.id.mainStartProGu) {
                cardView.setCardBackgroundColor(0);
                cardView.setRadius(0.0f);
                cardView.setCardElevation(0.0f);
            } else {
                cardView.setCardBackgroundColor(color3);
                cardView.setRadius(m1468X(20));
                cardView.setCardElevation(0.0f);
            }
        }
        int i17 = 6;
        int i18 = -1;
        if (view instanceof FlexboxLayout) {
            view.setBackgroundTintList(null);
            view.setBackgroundColor(color3);
            boolean z9 = view.getId() == R.id.bez_aw_layFlex;
            view.setPadding(z9 ? 0 : m1468X(14), z9 ? 0 : m1468X(14), z9 ? 0 : m1468X(14), z9 ? 0 : m1468X(14));
            ViewGroup.LayoutParams layoutParams3 = view.getLayoutParams();
            if (layoutParams3 instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams3;
                if (marginLayoutParams.topMargin >= m1468X(32)) {
                    marginLayoutParams.topMargin = m1468X(54);
                }
                view.setLayoutParams(marginLayoutParams);
            }
            if (z9) {
                FlexboxLayout flexboxLayout = (FlexboxLayout) view;
                int i19 = 0;
                while (i19 < flexboxLayout.getChildCount()) {
                    View childAt = flexboxLayout.getChildAt(i19);
                    ViewGroup.LayoutParams layoutParams4 = childAt.getLayoutParams();
                    layoutParams4.width = -1;
                    if (layoutParams4 instanceof ViewGroup.MarginLayoutParams) {
                        ((ViewGroup.MarginLayoutParams) layoutParams4).setMargins(0, 0, 0, m1468X(i17));
                    }
                    childAt.setMinimumHeight(m1468X(58));
                    childAt.setBackgroundResource(R.drawable.modern_action_row);
                    childAt.setPadding(m1468X(18), 0, m1468X(14), 0);
                    childAt.setLayoutParams(layoutParams4);
                    i19++;
                    i17 = 6;
                }
                i10 = color5;
            } else {
                final FlexboxLayout flexboxLayout2 = (FlexboxLayout) view;
                flexboxLayout2.setAlignItems(2);
                flexboxLayout2.setJustifyContent(0);
                int i20 = 0;
                while (i20 < flexboxLayout2.getChildCount()) {
                    View childAt2 = flexboxLayout2.getChildAt(i20);
                    ViewGroup.LayoutParams layoutParams5 = childAt2.getLayoutParams();
                    if (childAt2 instanceof HeatManSetView) {
                        i14 = color5;
                        i20 = i20;
                    } else if (!(childAt2 instanceof LinearLayout)) {
                        i14 = color5;
                        i20 = i20;
                        if (!(childAt2 instanceof MaterialSwitch)) {
                            if (!(childAt2 instanceof FrameLayout)) {
                                m1463S(layoutParams5);
                                childAt2.setLayoutParams(layoutParams5);
                                break;
                                break;
                            }
                            ViewGroup viewGroup2 = (ViewGroup) childAt2;
                            int i21 = 0;
                            while (true) {
                                if (i21 >= viewGroup2.getChildCount()) {
                                    m1463S(layoutParams5);
                                    childAt2.setLayoutParams(layoutParams5);
                                    break;
                                } else {
                                    if (viewGroup2.getChildAt(i21) instanceof Spinner) {
                                        layoutParams5.width = 0;
                                        if (layoutParams5 instanceof C2577e) {
                                            C2577e c2577e = (C2577e) layoutParams5;
                                            c2577e.f7160c = 1.0f;
                                            c2577e.f7164g = m1468X(220);
                                        }
                                        m1463S(layoutParams5);
                                        childAt2.setLayoutParams(layoutParams5);
                                        break;
                                    }
                                    i21++;
                                }
                            }
                        } else {
                            layoutParams5.width = -2;
                            if (layoutParams5 instanceof C2577e) {
                                ((C2577e) layoutParams5).f7160c = 1.0f;
                            }
                            m1463S(layoutParams5);
                            childAt2.setLayoutParams(layoutParams5);
                        }
                    } else {
                        if (layoutParams5.width == -2) {
                            layoutParams5.width = i18;
                        }
                        LinearLayout linearLayout2 = (LinearLayout) childAt2;
                        if (linearLayout2.getOrientation() == 0) {
                            linearLayout2.setGravity(8388627);
                            linearLayout2.setMinimumHeight(m1468X(60));
                            linearLayout2.setPadding(m1468X(6), m1468X(4), m1468X(6), m1468X(4));
                        } else {
                            int i22 = 0;
                            while (i22 < linearLayout2.getChildCount()) {
                                View childAt3 = linearLayout2.getChildAt(i22);
                                ViewGroup.LayoutParams layoutParams6 = childAt3.getLayoutParams();
                                if (childAt3 instanceof MaterialSwitch) {
                                    layoutParams6.width = -1;
                                    if (layoutParams6 instanceof LinearLayout.LayoutParams) {
                                        ((LinearLayout.LayoutParams) layoutParams6).gravity = GravityCompat.START;
                                    }
                                    i16 = i22;
                                    linearLayout = linearLayout2;
                                    i15 = color5;
                                    childAt3.setPadding(m1468X(12), m1468X(4), m1468X(12), m1468X(4));
                                    childAt3.setMinimumHeight(m1468X(60));
                                    childAt3.setLayoutParams(layoutParams6);
                                } else {
                                    i15 = color5;
                                    i16 = i22;
                                    linearLayout = linearLayout2;
                                    if (childAt3 instanceof LinearLayout) {
                                        LinearLayout linearLayout3 = (LinearLayout) childAt3;
                                        if (linearLayout3.getOrientation() == 0) {
                                            layoutParams6.width = -1;
                                            childAt3.setLayoutParams(layoutParams6);
                                            linearLayout3.setGravity(8388627);
                                            c = Typography.less;
                                            linearLayout3.setMinimumHeight(m1468X(60));
                                            linearLayout3.setPadding(m1468X(6), m1468X(4), m1468X(6), m1468X(4));
                                        }
                                    }
                                    linearLayout2 = linearLayout;
                                    i22 = i16 + 1;
                                    color5 = i15;
                                }
                                c = Typography.less;
                                linearLayout2 = linearLayout;
                                i22 = i16 + 1;
                                color5 = i15;
                            }
                        }
                        i14 = color5;
                        m1463S(layoutParams5);
                        childAt2.setLayoutParams(layoutParams5);
                    }
                    i20++;
                    color5 = i14;
                    i18 = -1;
                }
                i10 = color5;
                for (int i23 = 0; i23 < flexboxLayout2.getChildCount(); i23++) {
                    if (flexboxLayout2.getChildAt(i23) instanceof HeatManSetView) {
                        if (this.f1439m1.add(flexboxLayout2)) {
                            flexboxLayout2.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: e0.p1
                                @Override // android.view.View.OnLayoutChangeListener
                                public final void onLayoutChange(View view5, int i24, int i25, int i26, int i27, int i28, int i29, int i30, int i31) {
                                    String str = ModernMainActivity.f1436B1;
                                    this.f3366a.m1470Z(flexboxLayout2);
                                }
                            });
                        }
                        flexboxLayout2.post(new RunnableC0003a(18, this, flexboxLayout2));
                        break;
                    }
                }
            }
        } else {
            i10 = color5;
        }
        for (View view5 = view; view5 != null; view5 = (View) view5.getParent()) {
            if (view5.getId() == R.id.main_car_settings) {
                int id2 = view.getId();
                if (id2 != R.id.lay_start_stop_off && id2 != R.id.lay_speed_limit_alarm_off) {
                    if (!(view instanceof RadioGroup)) {
                        break;
                    }
                    view.setPadding(m1468X(4), m1468X(6), m1468X(4), m1468X(6));
                    break;
                }
                view.setBackgroundResource(R.drawable.modern_action_row);
                view.setMinimumHeight(m1468X(66));
                view.setPadding(m1468X(10), m1468X(4), m1468X(12), m1468X(4));
                ViewGroup.LayoutParams layoutParams7 = view.getLayoutParams();
                layoutParams7.width = -1;
                if (layoutParams7 instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams7;
                    marginLayoutParams2.topMargin = 0;
                    marginLayoutParams2.bottomMargin = m1468X(6);
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
            for (int i24 = 0; i24 < viewGroup3.getChildCount(); i24++) {
                if (viewGroup3.getChildAt(i24) instanceof Spinner) {
                    view.setBackgroundResource(R.drawable.modern_field);
                    break;
                }
            }
        }
        Drawable background = view.getBackground();
        if (background instanceof ColorDrawable) {
            int color7 = ((ColorDrawable) background).getColor();
            if (color7 == -1) {
                view.setBackgroundColor(color4);
            } else if (color7 == ContextCompat.getColor(this, R.color.header)) {
                view.setBackgroundColor(color6);
            }
        }
        View view6 = view;
        while (true) {
            if (view6 != null) {
                int id3 = view6.getId();
                if (id3 == R.id.main_auto_vod || id3 == R.id.main_auto_heat) {
                    if (view instanceof TabLayout) {
                        TabLayout tabLayout = (TabLayout) view;
                        tabLayout.setBackgroundColor(color4);
                        tabLayout.setTabTextColors(TabLayout.m1830g(color2, color));
                        i11 = i10;
                        tabLayout.setSelectedTabIndicatorColor(i11);
                        tabLayout.setTabRippleColor(ColorStateList.valueOf(0));
                        ViewGroup viewGroup4 = (ViewGroup) tabLayout.getChildAt(0);
                        ColorStateList colorStateList = new ColorStateList(new int[][]{new int[]{android.R.attr.state_selected}, new int[0]}, new int[]{color6, color4});
                        for (int i25 = 0; i25 < viewGroup4.getChildCount(); i25++) {
                            viewGroup4.getChildAt(i25).setBackgroundTintList(colorStateList);
                        }
                    } else {
                        i11 = i10;
                        if (view instanceof GridLayout) {
                            GridLayout gridLayout = (GridLayout) view;
                            boolean z10 = gridLayout.findViewById(R.id.centerLabel) != null;
                            if (z10) {
                                color4 = color6;
                            }
                            gridLayout.setBackgroundColor(color4);
                            if (z10) {
                                ViewGroup.LayoutParams layoutParams8 = gridLayout.getLayoutParams();
                                layoutParams8.height = m1468X(40);
                                gridLayout.setLayoutParams(layoutParams8);
                                gridLayout.setElevation(m1468X(2));
                            }
                        }
                    }
                    int id4 = view.getId();
                    if (view instanceof ImageView) {
                        ImageView imageView = (ImageView) view;
                        if (id4 == R.id.seatIcon || id4 == R.id.temperatureSign) {
                            imageView.setImageTintList(ColorStateList.valueOf(color2));
                        } else if (id4 == R.id.modern_driver_mapping_arrow) {
                            imageView.setImageTintList(ColorStateList.valueOf(i11));
                        } else if (id4 == R.id.headerIcon) {
                            imageView.setBackground(null);
                            imageView.setImageResource(R.drawable.baseline_help_24);
                            imageView.setImageTintList(ColorStateList.valueOf(color));
                            if ((imageView.getParent() instanceof View) && (textView2 = (TextView) ((View) imageView.getParent()).findViewById(R.id.centerLabel)) != null) {
                                imageView.setContentDescription(textView2.getText());
                            }
                            imageView.setOnClickListener(new ViewOnClickListenerC1399o1(0));
                        }
                    }
                    if ((view instanceof ProgressBar) && (id4 == R.id.timeSlider || id4 == R.id.tempSlider)) {
                        ProgressBar progressBar = (ProgressBar) view;
                        progressBar.setProgressTintList(ColorStateList.valueOf(i11));
                        progressBar.setProgressBackgroundTintList(ColorStateList.valueOf(ContextCompat.getColor(this, R.color.modern_divider)));
                        if (view instanceof SeekBar) {
                            ((SeekBar) view).setThumbTintList(ColorStateList.valueOf(color));
                        }
                    }
                    if (view instanceof EditText) {
                        EditText editText = (EditText) view;
                        editText.setTextColor(color);
                        editText.setHintTextColor(color2);
                        editText.setBackgroundTintList(ColorStateList.valueOf(i11));
                    } else if (view instanceof TextView) {
                        ((TextView) view).setTextColor(color);
                    }
                    for (view2 = view; view2 != null; view2 = (View) view2.getParent()) {
                        if (view2.getId() == R.id.modern_donation_card) {
                            if (view.getId() == R.id.textView) {
                                if (view.getId() == R.id.Pay_text) {
                                    if (view.getId() == R.id.QRPAY) {
                                        break;
                                    }
                                    View view7 = (View) view.getParent();
                                    ViewGroup.LayoutParams layoutParams9 = view7.getLayoutParams();
                                    layoutParams9.width = m1468X(170);
                                    layoutParams9.height = m1468X(170);
                                    view7.setLayoutParams(layoutParams9);
                                    view.setLayoutParams(new LinearLayout.LayoutParams(-1, 0, 1.0f));
                                    break;
                                }
                                TextView textView4 = (TextView) view;
                                textView4.setTextSize(2, 15.0f);
                                textView4.setTextColor(i11);
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
                        textView.setPadding(m1468X(12), m1468X(4), m1468X(12), m1468X(4));
                        if (textView instanceof SwitchCompat) {
                            ((SwitchCompat) textView).setSwitchPadding(m1468X(16));
                        } else {
                            ((Switch) textView).setSwitchPadding(m1468X(16));
                        }
                    }
                    if (view instanceof RadioButton) {
                        view4 = view;
                        while (true) {
                            if (view4 == null) {
                                if (view4.getId() == R.id.main_car_settings) {
                                    radioButton = (RadioButton) view;
                                    radioButton.setButtonDrawable((Drawable) null);
                                    radioButton.setBackgroundResource(R.drawable.modern_segment_option);
                                    radioButton.setTextColor(ContextCompat.getColorStateList(this, R.color.modern_segment_text));
                                    radioButton.setGravity(17);
                                    radioButton.setMinHeight(m1468X(54));
                                    radioButton.setPadding(m1468X(10), m1468X(6), m1468X(10), m1468X(6));
                                    radioButton.setTextSize(2, 14.0f);
                                    radioButton.setMaxLines(2);
                                    layoutParams = radioButton.getLayoutParams();
                                    if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                                        ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) layoutParams;
                                        marginLayoutParams3.setMargins(m1468X(3), m1468X(3), m1468X(3), m1468X(3));
                                        radioButton.setLayoutParams(marginLayoutParams3);
                                    }
                                } else if (!(view4.getParent() instanceof View)) {
                                    view4 = (View) view4.getParent();
                                }
                                i12 = 0;
                            }
                            if (view instanceof MaterialSwitch) {
                                MaterialSwitch materialSwitch = (MaterialSwitch) view;
                                materialSwitch.setTextSize(2, 16.0f);
                                materialSwitch.setMinHeight(m1468X(54));
                                int[][] iArr = {new int[]{android.R.attr.state_checked}, new int[0]};
                                materialSwitch.setThumbTintList(new ColorStateList(iArr, new int[]{i11, color2}));
                                materialSwitch.setTrackTintList(new ColorStateList(iArr, new int[]{color6, ContextCompat.getColor(this, R.color.modern_divider)}));
                            } else if (view instanceof Button) {
                                button = (Button) view;
                                button.setAllCaps(false);
                                view3 = view;
                                while (true) {
                                    if (view3 == null) {
                                        if (view3.getId() == R.id.main_store) {
                                            button.setTextSize(2, 15.0f);
                                            button.setTypeface(button.getTypeface(), 1);
                                            button.setTextColor(color);
                                            button.setMinHeight(m1468X(52));
                                            button.setGravity(8388627);
                                            button.setPadding(m1468X(18), 0, m1468X(18), 0);
                                            button.setCompoundDrawablePadding(m1468X(14));
                                            button.setBackgroundResource(R.drawable.modern_button_primary);
                                            button.setBackgroundTintList(null);
                                            m1465U(button, m1468X(26));
                                            if (button.getId() != R.id.JCT_Store_app || button.getId() == R.id.JCT_File_Manager || button.getId() == R.id.JCT_Video_Library) {
                                                button.setTextSize(2, 20.0f);
                                                button.setMinimumHeight(m1468X(80));
                                                button.getLayoutParams().height = -2;
                                                button.setPadding(m1468X(22), m1468X(16), m1468X(22), m1468X(16));
                                                m1465U(button, m1468X(40));
                                            }
                                        } else if (!(view3.getParent() instanceof View)) {
                                            view3 = (View) view3.getParent();
                                        }
                                    }
                                    button.setTextSize(2, 15.0f);
                                    button.setMinHeight(m1468X(50));
                                    button.setTextColor(color);
                                    i12 = 0;
                                    button.setAllCaps(false);
                                    button.setGravity(17);
                                    button.setPadding(m1468X(20), 0, m1468X(20), 0);
                                    button.setBackgroundResource(R.drawable.modern_button_primary);
                                    button.setBackgroundTintList(null);
                                }
                            } else {
                                i12 = 0;
                                if (view instanceof Spinner) {
                                    view.setBackgroundTintList(ColorStateList.valueOf(i11));
                                }
                            }
                            i12 = 0;
                        }
                    } else {
                        if (view instanceof MaterialSwitch) {
                            MaterialSwitch materialSwitch2 = (MaterialSwitch) view;
                            materialSwitch2.setTextSize(2, 16.0f);
                            materialSwitch2.setMinHeight(m1468X(54));
                            int[][] iArr2 = {new int[]{android.R.attr.state_checked}, new int[0]};
                            materialSwitch2.setThumbTintList(new ColorStateList(iArr2, new int[]{i11, color2}));
                            materialSwitch2.setTrackTintList(new ColorStateList(iArr2, new int[]{color6, ContextCompat.getColor(this, R.color.modern_divider)}));
                        } else if (view instanceof Button) {
                            button = (Button) view;
                            button.setAllCaps(false);
                            view3 = view;
                            while (true) {
                                if (view3 == null) {
                                    if (view3.getId() == R.id.main_store) {
                                        button.setTextSize(2, 15.0f);
                                        button.setTypeface(button.getTypeface(), 1);
                                        button.setTextColor(color);
                                        button.setMinHeight(m1468X(52));
                                        button.setGravity(8388627);
                                        button.setPadding(m1468X(18), 0, m1468X(18), 0);
                                        button.setCompoundDrawablePadding(m1468X(14));
                                        button.setBackgroundResource(R.drawable.modern_button_primary);
                                        button.setBackgroundTintList(null);
                                        m1465U(button, m1468X(26));
                                        if (button.getId() != R.id.JCT_Store_app) {
                                            button.setTextSize(2, 20.0f);
                                            button.setMinimumHeight(m1468X(80));
                                            button.getLayoutParams().height = -2;
                                            button.setPadding(m1468X(22), m1468X(16), m1468X(22), m1468X(16));
                                            m1465U(button, m1468X(40));
                                        } else {
                                            button.setTextSize(2, 20.0f);
                                            button.setMinimumHeight(m1468X(80));
                                            button.getLayoutParams().height = -2;
                                            button.setPadding(m1468X(22), m1468X(16), m1468X(22), m1468X(16));
                                            m1465U(button, m1468X(40));
                                        }
                                    } else if (!(view3.getParent() instanceof View)) {
                                        view3 = (View) view3.getParent();
                                    }
                                }
                                button.setTextSize(2, 15.0f);
                                button.setMinHeight(m1468X(50));
                                button.setTextColor(color);
                                i12 = 0;
                                button.setAllCaps(false);
                                button.setGravity(17);
                                button.setPadding(m1468X(20), 0, m1468X(20), 0);
                                button.setBackgroundResource(R.drawable.modern_button_primary);
                                button.setBackgroundTintList(null);
                            }
                        } else {
                            i12 = 0;
                            if (view instanceof Spinner) {
                                view.setBackgroundTintList(ColorStateList.valueOf(i11));
                            }
                        }
                        i12 = 0;
                    }
                    if (view instanceof ViewGroup) {
                        viewGroup = (ViewGroup) view;
                        for (i13 = i12; i13 < viewGroup.getChildCount(); i13++) {
                            m1464T(viewGroup.getChildAt(i13));
                        }
                        return;
                    }
                    return;
                }
                if (view6.getParent() instanceof View) {
                    view6 = (View) view6.getParent();
                }
            }
            i11 = i10;
            if (view instanceof EditText) {
                EditText editText2 = (EditText) view;
                editText2.setTextColor(color);
                editText2.setHintTextColor(color2);
                editText2.setBackgroundTintList(ColorStateList.valueOf(i11));
            } else if (view instanceof TextView) {
                ((TextView) view).setTextColor(color);
            }
            while (view2 != null) {
                if (view2.getId() == R.id.modern_donation_card) {
                    if (view.getId() == R.id.textView) {
                        if (view.getId() == R.id.Pay_text) {
                            if (view.getId() == R.id.QRPAY) {
                                break;
                            }
                            View view8 = (View) view.getParent();
                            ViewGroup.LayoutParams layoutParams10 = view8.getLayoutParams();
                            layoutParams10.width = m1468X(170);
                            layoutParams10.height = m1468X(170);
                            view8.setLayoutParams(layoutParams10);
                            view.setLayoutParams(new LinearLayout.LayoutParams(-1, 0, 1.0f));
                            break;
                        }
                        TextView textView6 = (TextView) view;
                        textView6.setTextSize(2, 15.0f);
                        textView6.setTextColor(i11);
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
                textView.setPadding(m1468X(12), m1468X(4), m1468X(12), m1468X(4));
                if (textView instanceof SwitchCompat) {
                    ((SwitchCompat) textView).setSwitchPadding(m1468X(16));
                } else {
                    ((Switch) textView).setSwitchPadding(m1468X(16));
                }
            } else {
                view.setLayoutDirection(0);
                textView = (TextView) view;
                textView.setGravity(8388627);
                textView.setTextDirection(5);
                textView.setPadding(m1468X(12), m1468X(4), m1468X(12), m1468X(4));
                if (textView instanceof SwitchCompat) {
                    ((SwitchCompat) textView).setSwitchPadding(m1468X(16));
                } else {
                    ((Switch) textView).setSwitchPadding(m1468X(16));
                }
            }
            if (view instanceof RadioButton) {
                view4 = view;
                while (true) {
                    if (view4 == null) {
                        if (view4.getId() == R.id.main_car_settings) {
                            radioButton = (RadioButton) view;
                            radioButton.setButtonDrawable((Drawable) null);
                            radioButton.setBackgroundResource(R.drawable.modern_segment_option);
                            radioButton.setTextColor(ContextCompat.getColorStateList(this, R.color.modern_segment_text));
                            radioButton.setGravity(17);
                            radioButton.setMinHeight(m1468X(54));
                            radioButton.setPadding(m1468X(10), m1468X(6), m1468X(10), m1468X(6));
                            radioButton.setTextSize(2, 14.0f);
                            radioButton.setMaxLines(2);
                            layoutParams = radioButton.getLayoutParams();
                            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                                ViewGroup.MarginLayoutParams marginLayoutParams4 = (ViewGroup.MarginLayoutParams) layoutParams;
                                marginLayoutParams4.setMargins(m1468X(3), m1468X(3), m1468X(3), m1468X(3));
                                radioButton.setLayoutParams(marginLayoutParams4);
                            }
                        } else if (!(view4.getParent() instanceof View)) {
                            view4 = (View) view4.getParent();
                        }
                        i12 = 0;
                    }
                    if (view instanceof MaterialSwitch) {
                        MaterialSwitch materialSwitch3 = (MaterialSwitch) view;
                        materialSwitch3.setTextSize(2, 16.0f);
                        materialSwitch3.setMinHeight(m1468X(54));
                        int[][] iArr3 = {new int[]{android.R.attr.state_checked}, new int[0]};
                        materialSwitch3.setThumbTintList(new ColorStateList(iArr3, new int[]{i11, color2}));
                        materialSwitch3.setTrackTintList(new ColorStateList(iArr3, new int[]{color6, ContextCompat.getColor(this, R.color.modern_divider)}));
                    } else if (view instanceof Button) {
                        button = (Button) view;
                        button.setAllCaps(false);
                        view3 = view;
                        while (true) {
                            if (view3 == null) {
                                if (view3.getId() == R.id.main_store) {
                                    button.setTextSize(2, 15.0f);
                                    button.setTypeface(button.getTypeface(), 1);
                                    button.setTextColor(color);
                                    button.setMinHeight(m1468X(52));
                                    button.setGravity(8388627);
                                    button.setPadding(m1468X(18), 0, m1468X(18), 0);
                                    button.setCompoundDrawablePadding(m1468X(14));
                                    button.setBackgroundResource(R.drawable.modern_button_primary);
                                    button.setBackgroundTintList(null);
                                    m1465U(button, m1468X(26));
                                    if (button.getId() != R.id.JCT_Store_app) {
                                        button.setTextSize(2, 20.0f);
                                        button.setMinimumHeight(m1468X(80));
                                        button.getLayoutParams().height = -2;
                                        button.setPadding(m1468X(22), m1468X(16), m1468X(22), m1468X(16));
                                        m1465U(button, m1468X(40));
                                    } else {
                                        button.setTextSize(2, 20.0f);
                                        button.setMinimumHeight(m1468X(80));
                                        button.getLayoutParams().height = -2;
                                        button.setPadding(m1468X(22), m1468X(16), m1468X(22), m1468X(16));
                                        m1465U(button, m1468X(40));
                                    }
                                } else if (!(view3.getParent() instanceof View)) {
                                    view3 = (View) view3.getParent();
                                }
                            }
                            button.setTextSize(2, 15.0f);
                            button.setMinHeight(m1468X(50));
                            button.setTextColor(color);
                            i12 = 0;
                            button.setAllCaps(false);
                            button.setGravity(17);
                            button.setPadding(m1468X(20), 0, m1468X(20), 0);
                            button.setBackgroundResource(R.drawable.modern_button_primary);
                            button.setBackgroundTintList(null);
                        }
                    } else {
                        i12 = 0;
                        if (view instanceof Spinner) {
                            view.setBackgroundTintList(ColorStateList.valueOf(i11));
                        }
                    }
                    i12 = 0;
                }
            } else {
                if (view instanceof MaterialSwitch) {
                    MaterialSwitch materialSwitch4 = (MaterialSwitch) view;
                    materialSwitch4.setTextSize(2, 16.0f);
                    materialSwitch4.setMinHeight(m1468X(54));
                    int[][] iArr4 = {new int[]{android.R.attr.state_checked}, new int[0]};
                    materialSwitch4.setThumbTintList(new ColorStateList(iArr4, new int[]{i11, color2}));
                    materialSwitch4.setTrackTintList(new ColorStateList(iArr4, new int[]{color6, ContextCompat.getColor(this, R.color.modern_divider)}));
                } else if (view instanceof Button) {
                    button = (Button) view;
                    button.setAllCaps(false);
                    view3 = view;
                    while (true) {
                        if (view3 == null) {
                            if (view3.getId() == R.id.main_store) {
                                button.setTextSize(2, 15.0f);
                                button.setTypeface(button.getTypeface(), 1);
                                button.setTextColor(color);
                                button.setMinHeight(m1468X(52));
                                button.setGravity(8388627);
                                button.setPadding(m1468X(18), 0, m1468X(18), 0);
                                button.setCompoundDrawablePadding(m1468X(14));
                                button.setBackgroundResource(R.drawable.modern_button_primary);
                                button.setBackgroundTintList(null);
                                m1465U(button, m1468X(26));
                                if (button.getId() != R.id.JCT_Store_app) {
                                    button.setTextSize(2, 20.0f);
                                    button.setMinimumHeight(m1468X(80));
                                    button.getLayoutParams().height = -2;
                                    button.setPadding(m1468X(22), m1468X(16), m1468X(22), m1468X(16));
                                    m1465U(button, m1468X(40));
                                } else {
                                    button.setTextSize(2, 20.0f);
                                    button.setMinimumHeight(m1468X(80));
                                    button.getLayoutParams().height = -2;
                                    button.setPadding(m1468X(22), m1468X(16), m1468X(22), m1468X(16));
                                    m1465U(button, m1468X(40));
                                }
                            } else if (!(view3.getParent() instanceof View)) {
                                view3 = (View) view3.getParent();
                            }
                        }
                        button.setTextSize(2, 15.0f);
                        button.setMinHeight(m1468X(50));
                        button.setTextColor(color);
                        i12 = 0;
                        button.setAllCaps(false);
                        button.setGravity(17);
                        button.setPadding(m1468X(20), 0, m1468X(20), 0);
                        button.setBackgroundResource(R.drawable.modern_button_primary);
                        button.setBackgroundTintList(null);
                    }
                } else {
                    i12 = 0;
                    if (view instanceof Spinner) {
                        view.setBackgroundTintList(ColorStateList.valueOf(i11));
                    }
                }
                i12 = 0;
            }
            if (view instanceof ViewGroup) {
                viewGroup = (ViewGroup) view;
                while (i13 < viewGroup.getChildCount()) {
                    m1464T(viewGroup.getChildAt(i13));
                }
                return;
            }
            return;
        }
    }

    /* JADX INFO: renamed from: U */
    public final void m1465U(Button button, int i10) {
        int i11;
        int id = button.getId();
        if (id == R.id.install_unistall_app) {
            i11 = R.drawable.modern_store_manage_apps;
        } else if (id == R.id.modern_fullscreen_apps) {
            i11 = R.drawable.ic_fullscreen_apps;
        } else if (id == R.id.modern_grant_app_permissions) {
            i11 = R.drawable.modern_store_permissions;
        } else if (id == R.id.modern_car_package_toggle) {
            i11 = R.drawable.modern_store_car_packages;
        } else if (id == R.id.JCT_Store_app) {
            i11 = R.mipmap.jct_store_icon;
        } else if (id == R.id.JCT_File_Manager) {
            i11 = R.mipmap.jct_file_icon;
        } else if (id == R.id.JCT_Video_Library) {
            i11 = R.drawable.ic_jct_video;
        } else if (id != R.id.JCT_User_Apps_Hide) {
            return;
        } else {
            i11 = R.drawable.modern_store_hidden_apps;
        }
        Drawable drawable = ContextCompat.getDrawable(this, i11);
        if (drawable == null) {
            return;
        }
        drawable.setBounds(0, 0, i10, i10);
        button.setCompoundDrawablesRelative(drawable, null, null, null);
    }

    /* JADX INFO: renamed from: V */
    public final void m1466V(YMovLay yMovLay, String str, String str2) {
        int i10;
        int i11 = 0;
        try {
            i10 = Integer.parseInt(yMovLay.getYLayMovX());
        } catch (NumberFormatException unused) {
            i10 = 0;
        }
        try {
            i11 = Integer.parseInt(yMovLay.getYLayMovY());
        } catch (NumberFormatException unused2) {
        }
        yMovLay.m1673a(Math.min(-500, i10 - 200), Math.max(2500, i10 + 200), Math.min(-500, i11 - 200), Math.max(1500, i11 + 200));
        yMovLay.setOnSliderValueChangeListener(new C1414r1(this, str, str2, yMovLay));
    }

    /* JADX INFO: renamed from: W */
    public final void m1467W(YMovLay yMovLay, String str) {
        String yLayMovX = yMovLay.getYLayMovX();
        int i10 = Integer.parseInt(this.f1387s);
        try {
            i10 = Integer.parseInt(yLayMovX);
        } catch (NumberFormatException unused) {
        }
        yMovLay.m1673a(Math.min(80, i10 - 40), Math.max(640, i10 + 40), 0, 1);
        yMovLay.setOnSliderValueChangeListener(new C0802a(this, str, yMovLay, 1));
    }

    /* JADX INFO: renamed from: X */
    public final int m1468X(int i10) {
        return Math.round(i10 * getResources().getDisplayMetrics().density);
    }

    /* JADX INFO: renamed from: Y */
    public final boolean m1469Y(int... iArr) {
        for (int i10 : iArr) {
            View viewFindViewById = findViewById(i10);
            if (viewFindViewById != null && viewFindViewById.getVisibility() == 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: Z */
    public final void m1470Z(FlexboxLayout flexboxLayout) {
        int width = (flexboxLayout.getWidth() - flexboxLayout.getPaddingLeft()) - flexboxLayout.getPaddingRight();
        if (width <= 0) {
            return;
        }
        flexboxLayout.setJustifyContent(0);
        int iM1468X = m1468X(260);
        int iMax = Math.max(0, (width / Math.max(1, width / ((m1468X(4) * 2) + iM1468X))) - iM1468X);
        int i10 = iMax / 2;
        int i11 = iMax - i10;
        for (int i12 = 0; i12 < flexboxLayout.getChildCount(); i12++) {
            View childAt = flexboxLayout.getChildAt(i12);
            if (childAt instanceof HeatManSetView) {
                C2577e c2577e = (C2577e) childAt.getLayoutParams();
                if (((ViewGroup.MarginLayoutParams) c2577e).width != iM1468X || ((ViewGroup.MarginLayoutParams) c2577e).leftMargin != i10 || ((ViewGroup.MarginLayoutParams) c2577e).rightMargin != i11) {
                    ((ViewGroup.MarginLayoutParams) c2577e).width = iM1468X;
                    c2577e.f7160c = 0.0f;
                    c2577e.f7161d = 0.0f;
                    c2577e.setMargins(i10, m1468X(4), i11, m1468X(4));
                    childAt.setPadding(0, 0, 0, 0);
                    childAt.setLayoutParams(c2577e);
                    ViewGroup viewGroup = (ViewGroup) childAt;
                    if (viewGroup.getChildCount() > 0) {
                        View childAt2 = viewGroup.getChildAt(0);
                        ViewGroup.LayoutParams layoutParams = childAt2.getLayoutParams();
                        layoutParams.width = -1;
                        childAt2.setLayoutParams(layoutParams);
                    }
                    View viewFindViewById = childAt.findViewById(R.id.centerLabel);
                    if (viewFindViewById != null) {
                        ViewGroup.LayoutParams layoutParams2 = viewFindViewById.getLayoutParams();
                        layoutParams2.width = m1468X(220);
                        viewFindViewById.setLayoutParams(layoutParams2);
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: a0 */
    public final void m1471a0(int i10, int i11) {
        View viewFindViewById = findViewById(i10);
        View viewFindViewById2 = findViewById(i11);
        if (viewFindViewById == null || viewFindViewById2 == null) {
            return;
        }
        viewFindViewById.setVisibility(viewFindViewById2.getVisibility());
    }

    @Override // android.view.ContextThemeWrapper
    public final void applyOverrideConfiguration(Configuration configuration) {
        Configuration configuration2 = new Configuration(configuration);
        if (getBaseContext() != null) {
            configuration2.densityDpi = AbstractC1387m.m2437x(getBaseContext()).getResources().getConfiguration().densityDpi;
        }
        super.applyOverrideConfiguration(configuration2);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(AbstractC1387m.m2437x(context));
    }

    /* JADX INFO: renamed from: b0 */
    public final void m1472b0(int i10) {
        View viewFindViewById = findViewById(i10);
        if (viewFindViewById instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) viewFindViewById;
            if (viewGroup.getChildCount() == 0) {
                return;
            }
            View childAt = viewGroup.getChildAt(0);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            layoutParams.height = -2;
            childAt.setLayoutParams(layoutParams);
        }
    }

    /* JADX INFO: renamed from: c0 */
    public final void m1473c0() {
        boolean zM1469Y = m1469Y(R.id.mainStartProPri, R.id.MainStartProHUD, R.id.mainStartProGu);
        boolean zM1469Y2 = m1469Y(R.id.main_auto_vod, R.id.main_auto_heat);
        findViewById(R.id.modern_nav_startup).setVisibility(zM1469Y ? 0 : 8);
        findViewById(R.id.modern_nav_comfort).setVisibility(zM1469Y2 ? 0 : 8);
        boolean[] zArr = {m1469Y(R.id.main_store), m1469Y(R.id.main_karti), m1469Y(R.id.main_car_settings), m1469Y(R.id.modern_messages, R.id.MainWidjet, R.id.modern_location_card, R.id.Lay_strelka, R.id.main_other), !this.f1452z1 && m1469Y(R.id.main_lounchb, R.id.main_button_settings, R.id.constraintLayout6, R.id.modern_edge_gesture_card)};
        int i10 = 0;
        while (true) {
            int[] iArr = this.f1445s1;
            if (i10 >= iArr.length) {
                break;
            }
            findViewById(iArr[i10]).setVisibility(zArr[i10] ? 0 : 8);
            i10++;
        }
        int i11 = this.f1448v1;
        if ((i11 == 1 && !zM1469Y) || (i11 == 2 && !zM1469Y2)) {
            this.f1448v1 = 0;
            m1474d0(0);
        }
        if (zArr[this.f1449w1]) {
            return;
        }
        for (int i12 = 0; i12 < 5; i12++) {
            if (zArr[i12]) {
                this.f1449w1 = i12;
                break;
            }
        }
        if (this.f1448v1 == this.f1441o1.length - 1) {
            m1475e0(this.f1449w1);
        }
    }

    /* JADX INFO: renamed from: d0 */
    public final void m1474d0(int i10) {
        int[] iArr = this.f1441o1;
        if (i10 < 0 || i10 >= iArr.length) {
            i10 = 0;
        }
        this.f1448v1 = i10;
        View view = null;
        int i11 = 0;
        while (true) {
            int length = iArr.length;
            int i12 = R.color.modern_text_secondary;
            if (i11 >= length) {
                break;
            }
            View viewFindViewById = findViewById(iArr[i11]);
            viewFindViewById.setVisibility(i11 == i10 ? 0 : 8);
            if (i11 == i10) {
                view = viewFindViewById;
            }
            int[] iArr2 = this.f1440n1;
            findViewById(iArr2[i11]).setSelected(i11 == i10);
            TextView textView = (TextView) findViewById(iArr2[i11]);
            if (i11 == i10) {
                i12 = R.color.modern_primary;
            }
            textView.setCompoundDrawableTintList(ColorStateList.valueOf(ContextCompat.getColor(this, i12)));
            i11++;
        }
        ((TextView) findViewById(R.id.modern_section_title)).setText(this.f1444r1[i10]);
        if (view != null) {
            m1464T(view);
            view.postDelayed(new RunnableC1384l1(this, view, 0), 150L);
        }
        if (i10 != iArr.length - 1) {
            int color = ContextCompat.getColor(this, R.color.modern_text_secondary);
            for (int i13 : this.f1445s1) {
                TextView textView2 = (TextView) findViewById(i13);
                textView2.setSelected(false);
                textView2.setTextColor(color);
                textView2.setCompoundDrawableTintList(ColorStateList.valueOf(color));
            }
        }
    }

    /* JADX INFO: renamed from: e0 */
    public final void m1475e0(int i10) {
        int[] iArr = this.f1446t1;
        if (i10 < 0 || i10 >= iArr.length) {
            i10 = 0;
        }
        if (this.f1452z1 && i10 == iArr.length - 1) {
            i10 = 0;
        }
        this.f1449w1 = i10;
        ((TextView) findViewById(R.id.modern_section_title)).setText(this.f1447u1[i10]);
        int color = ContextCompat.getColor(this, R.color.modern_primary);
        int color2 = ContextCompat.getColor(this, R.color.modern_text_secondary);
        int i11 = 0;
        while (i11 < iArr.length) {
            View viewFindViewById = findViewById(iArr[i11]);
            boolean z9 = i11 == i10;
            viewFindViewById.setVisibility(z9 ? 0 : 8);
            TextView textView = (TextView) findViewById(this.f1445s1[i11]);
            textView.setSelected(z9);
            textView.setTextColor(z9 ? color : color2);
            textView.setCompoundDrawableTintList(ColorStateList.valueOf(z9 ? color : color2));
            if (z9) {
                m1464T(viewFindViewById);
            }
            i11++;
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        View viewFindViewById = findViewById(R.id.main);
        viewFindViewById.post(new RunnableC1384l1(this, viewFindViewById, 2));
    }

    @Override // com.example.navistart.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        final int i10;
        final int i11;
        super.onCreate(bundle);
        if (isFinishing()) {
            return;
        }
        final int i12 = 0;
        this.f1448v1 = bundle == null ? 0 : bundle.getInt(f1436B1, 0);
        this.f1449w1 = bundle == null ? 0 : bundle.getInt(f1437C1, 0);
        final int i13 = 0;
        while (true) {
            int[] iArr = this.f1440n1;
            i10 = 2;
            if (i13 >= iArr.length) {
                break;
            }
            findViewById(iArr[i13]).setOnClickListener(new View.OnClickListener(this) { // from class: e0.m1

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ ModernMainActivity f3327c;

                {
                    this.f3327c = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i14 = i10;
                    int i15 = i13;
                    ModernMainActivity modernMainActivity = this.f3327c;
                    switch (i14) {
                        case 0:
                            modernMainActivity.m1474d0(modernMainActivity.f1441o1.length - 1);
                            modernMainActivity.m1475e0(i15);
                            break;
                        case 1:
                            String str = ModernMainActivity.f1436B1;
                            Toolbar toolbar = (Toolbar) modernMainActivity.findViewById(R.id.toolbar);
                            MenuItem menuItemFindItem = toolbar == null ? null : toolbar.getMenu().findItem(i15);
                            if (menuItemFindItem == null) {
                                View viewFindViewById = modernMainActivity.findViewById(R.id.main);
                                if (viewFindViewById != null) {
                                    PopupMenu popupMenu = new PopupMenu(modernMainActivity, viewFindViewById);
                                    popupMenu.getMenuInflater().inflate(R.menu.menu_main, popupMenu.getMenu());
                                    menuItemFindItem = popupMenu.getMenu().findItem(i15);
                                }
                            }
                            if (menuItemFindItem != null) {
                                modernMainActivity.onOptionsItemSelected(menuItemFindItem);
                            }
                            break;
                        default:
                            String str2 = ModernMainActivity.f1436B1;
                            modernMainActivity.m1474d0(i15);
                            break;
                    }
                }
            });
            i13++;
        }
        findViewById(R.id.modern_action_permissions).setOnClickListener(new View.OnClickListener(this) { // from class: e0.n1

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ ModernMainActivity f3340c;

            {
                this.f3340c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i14 = i12;
                ModernMainActivity modernMainActivity = this.f3340c;
                switch (i14) {
                    case 0:
                        String str = ModernMainActivity.f1436B1;
                        AbstractC3656k.m5875u(modernMainActivity, new Intent(modernMainActivity, (Class<?>) PermActivity.class), null);
                        break;
                    case 1:
                        String str2 = ModernMainActivity.f1436B1;
                        ActivityC1081W.m1609t(modernMainActivity, WidgetBuilderFragment.class, null);
                        break;
                    case 2:
                        String str3 = ModernMainActivity.f1436B1;
                        C2194a.m3500t(C2328n0.class, null).show(modernMainActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{55, 70, -45, 53, -77, -72, -57, -53, 52, 93, -32, 56, -80, -85, -58, -15, 53, 90, -34, 53, -81, -68}, new byte[]{81, 51, -65, 89, -64, -37, -75, -82}));
                        break;
                    case 3:
                        String str4 = ModernMainActivity.f1436B1;
                        C2194a.m3500t(C2302i.class, null).show(modernMainActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{-27, -46, -57, 103, -9, -5, 122, 18, -16, -51, -49, 122, -16, -51, 101, 25, -15, -1, -62, 96, -30, -56, 101, 16}, new byte[]{-126, -96, -90, 9, -125, -92, 10, 119}));
                        break;
                    case 4:
                        String str5 = ModernMainActivity.f1436B1;
                        C2194a.m3500t(C2372y.class, null).show(modernMainActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{16, -108, -78, -119, 23, 6, -22, -15, 18, -110, -91, -119, 19, 8, -18, -3, 31, -112, -97, -78, 14, 6, -27, -11, 20}, new byte[]{115, -11, -64, -42, 103, 103, -119, -102}));
                        break;
                    default:
                        String str6 = ModernMainActivity.f1436B1;
                        Intent intent = new Intent(modernMainActivity, (Class<?>) ManageAppsActivity.class);
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{-1, 46, -14, 30, 51, 13, 42, 109, -10, 41, -11, 30, 8, 51, 47, 120, -29, 46, -7, 21, 31}, new byte[]{-105, 71, -106, 123, 108, 108, 78, 27}), true);
                        modernMainActivity.startActivity(intent);
                        break;
                }
            }
        });
        int i14 = 0;
        while (true) {
            int[] iArr2 = this.f1442p1;
            i11 = 1;
            if (i14 >= iArr2.length) {
                break;
            }
            final int i15 = this.f1443q1[i14];
            findViewById(iArr2[i14]).setOnClickListener(new View.OnClickListener(this) { // from class: e0.m1

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ ModernMainActivity f3327c;

                {
                    this.f3327c = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i16 = i11;
                    int i17 = i15;
                    ModernMainActivity modernMainActivity = this.f3327c;
                    switch (i16) {
                        case 0:
                            modernMainActivity.m1474d0(modernMainActivity.f1441o1.length - 1);
                            modernMainActivity.m1475e0(i17);
                            break;
                        case 1:
                            String str = ModernMainActivity.f1436B1;
                            Toolbar toolbar = (Toolbar) modernMainActivity.findViewById(R.id.toolbar);
                            MenuItem menuItemFindItem = toolbar == null ? null : toolbar.getMenu().findItem(i17);
                            if (menuItemFindItem == null) {
                                View viewFindViewById = modernMainActivity.findViewById(R.id.main);
                                if (viewFindViewById != null) {
                                    PopupMenu popupMenu = new PopupMenu(modernMainActivity, viewFindViewById);
                                    popupMenu.getMenuInflater().inflate(R.menu.menu_main, popupMenu.getMenu());
                                    menuItemFindItem = popupMenu.getMenu().findItem(i17);
                                }
                            }
                            if (menuItemFindItem != null) {
                                modernMainActivity.onOptionsItemSelected(menuItemFindItem);
                            }
                            break;
                        default:
                            String str2 = ModernMainActivity.f1436B1;
                            modernMainActivity.m1474d0(i17);
                            break;
                    }
                }
            });
            i14++;
        }
        final int i16 = 0;
        while (true) {
            int[] iArr3 = this.f1445s1;
            if (i16 >= iArr3.length) {
                break;
            }
            findViewById(iArr3[i16]).setOnClickListener(new View.OnClickListener(this) { // from class: e0.m1

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ ModernMainActivity f3327c;

                {
                    this.f3327c = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i17 = i12;
                    int i18 = i16;
                    ModernMainActivity modernMainActivity = this.f3327c;
                    switch (i17) {
                        case 0:
                            modernMainActivity.m1474d0(modernMainActivity.f1441o1.length - 1);
                            modernMainActivity.m1475e0(i18);
                            break;
                        case 1:
                            String str = ModernMainActivity.f1436B1;
                            Toolbar toolbar = (Toolbar) modernMainActivity.findViewById(R.id.toolbar);
                            MenuItem menuItemFindItem = toolbar == null ? null : toolbar.getMenu().findItem(i18);
                            if (menuItemFindItem == null) {
                                View viewFindViewById = modernMainActivity.findViewById(R.id.main);
                                if (viewFindViewById != null) {
                                    PopupMenu popupMenu = new PopupMenu(modernMainActivity, viewFindViewById);
                                    popupMenu.getMenuInflater().inflate(R.menu.menu_main, popupMenu.getMenu());
                                    menuItemFindItem = popupMenu.getMenu().findItem(i18);
                                }
                            }
                            if (menuItemFindItem != null) {
                                modernMainActivity.onOptionsItemSelected(menuItemFindItem);
                            }
                            break;
                        default:
                            String str2 = ModernMainActivity.f1436B1;
                            modernMainActivity.m1474d0(i18);
                            break;
                    }
                }
            });
            i16++;
        }
        m1466V(this.f1331R0, this.f1363g, this.f1365h);
        m1466V(this.f1333S0, this.f1371k, this.f1373l);
        m1466V(this.f1335T0, this.f1379o, this.f1381p);
        m1467W(this.f1337U0, AbstractC1387m.m2421h(new byte[]{43, 126, 46, 0, 58, -39, 56, -33, 16, 118, 42, 38, 36, -2, 28, -1}, new byte[]{102, 31, 94, 95, 123, -70, 76, -74}));
        m1467W(this.f1339V0, AbstractC1387m.m2421h(new byte[]{-95, -96, 44, 126, 35, -26, -87, 93, -102, -88, 40, 88, Base64.padSymbol, -63, -115, 125, -77, -122, 9}, new byte[]{-20, -63, 92, 33, 98, -123, -35, 52}));
        findViewById(R.id.modern_fullscreen_apps).setOnClickListener(new View.OnClickListener(this) { // from class: e0.n1

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ ModernMainActivity f3340c;

            {
                this.f3340c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i17 = i10;
                ModernMainActivity modernMainActivity = this.f3340c;
                switch (i17) {
                    case 0:
                        String str = ModernMainActivity.f1436B1;
                        AbstractC3656k.m5875u(modernMainActivity, new Intent(modernMainActivity, (Class<?>) PermActivity.class), null);
                        break;
                    case 1:
                        String str2 = ModernMainActivity.f1436B1;
                        ActivityC1081W.m1609t(modernMainActivity, WidgetBuilderFragment.class, null);
                        break;
                    case 2:
                        String str3 = ModernMainActivity.f1436B1;
                        C2194a.m3500t(C2328n0.class, null).show(modernMainActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{55, 70, -45, 53, -77, -72, -57, -53, 52, 93, -32, 56, -80, -85, -58, -15, 53, 90, -34, 53, -81, -68}, new byte[]{81, 51, -65, 89, -64, -37, -75, -82}));
                        break;
                    case 3:
                        String str4 = ModernMainActivity.f1436B1;
                        C2194a.m3500t(C2302i.class, null).show(modernMainActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{-27, -46, -57, 103, -9, -5, 122, 18, -16, -51, -49, 122, -16, -51, 101, 25, -15, -1, -62, 96, -30, -56, 101, 16}, new byte[]{-126, -96, -90, 9, -125, -92, 10, 119}));
                        break;
                    case 4:
                        String str5 = ModernMainActivity.f1436B1;
                        C2194a.m3500t(C2372y.class, null).show(modernMainActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{16, -108, -78, -119, 23, 6, -22, -15, 18, -110, -91, -119, 19, 8, -18, -3, 31, -112, -97, -78, 14, 6, -27, -11, 20}, new byte[]{115, -11, -64, -42, 103, 103, -119, -102}));
                        break;
                    default:
                        String str6 = ModernMainActivity.f1436B1;
                        Intent intent = new Intent(modernMainActivity, (Class<?>) ManageAppsActivity.class);
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{-1, 46, -14, 30, 51, 13, 42, 109, -10, 41, -11, 30, 8, 51, 47, 120, -29, 46, -7, 21, 31}, new byte[]{-105, 71, -106, 123, 108, 108, 78, 27}), true);
                        modernMainActivity.startActivity(intent);
                        break;
                }
            }
        });
        final int i17 = 3;
        findViewById(R.id.modern_grant_app_permissions).setOnClickListener(new View.OnClickListener(this) { // from class: e0.n1

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ ModernMainActivity f3340c;

            {
                this.f3340c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i18 = i17;
                ModernMainActivity modernMainActivity = this.f3340c;
                switch (i18) {
                    case 0:
                        String str = ModernMainActivity.f1436B1;
                        AbstractC3656k.m5875u(modernMainActivity, new Intent(modernMainActivity, (Class<?>) PermActivity.class), null);
                        break;
                    case 1:
                        String str2 = ModernMainActivity.f1436B1;
                        ActivityC1081W.m1609t(modernMainActivity, WidgetBuilderFragment.class, null);
                        break;
                    case 2:
                        String str3 = ModernMainActivity.f1436B1;
                        C2194a.m3500t(C2328n0.class, null).show(modernMainActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{55, 70, -45, 53, -77, -72, -57, -53, 52, 93, -32, 56, -80, -85, -58, -15, 53, 90, -34, 53, -81, -68}, new byte[]{81, 51, -65, 89, -64, -37, -75, -82}));
                        break;
                    case 3:
                        String str4 = ModernMainActivity.f1436B1;
                        C2194a.m3500t(C2302i.class, null).show(modernMainActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{-27, -46, -57, 103, -9, -5, 122, 18, -16, -51, -49, 122, -16, -51, 101, 25, -15, -1, -62, 96, -30, -56, 101, 16}, new byte[]{-126, -96, -90, 9, -125, -92, 10, 119}));
                        break;
                    case 4:
                        String str5 = ModernMainActivity.f1436B1;
                        C2194a.m3500t(C2372y.class, null).show(modernMainActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{16, -108, -78, -119, 23, 6, -22, -15, 18, -110, -91, -119, 19, 8, -18, -3, 31, -112, -97, -78, 14, 6, -27, -11, 20}, new byte[]{115, -11, -64, -42, 103, 103, -119, -102}));
                        break;
                    default:
                        String str6 = ModernMainActivity.f1436B1;
                        Intent intent = new Intent(modernMainActivity, (Class<?>) ManageAppsActivity.class);
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{-1, 46, -14, 30, 51, 13, 42, 109, -10, 41, -11, 30, 8, 51, 47, 120, -29, 46, -7, 21, 31}, new byte[]{-105, 71, -106, 123, 108, 108, 78, 27}), true);
                        modernMainActivity.startActivity(intent);
                        break;
                }
            }
        });
        final int i18 = 4;
        findViewById(R.id.modern_car_package_toggle).setOnClickListener(new View.OnClickListener(this) { // from class: e0.n1

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ ModernMainActivity f3340c;

            {
                this.f3340c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i19 = i18;
                ModernMainActivity modernMainActivity = this.f3340c;
                switch (i19) {
                    case 0:
                        String str = ModernMainActivity.f1436B1;
                        AbstractC3656k.m5875u(modernMainActivity, new Intent(modernMainActivity, (Class<?>) PermActivity.class), null);
                        break;
                    case 1:
                        String str2 = ModernMainActivity.f1436B1;
                        ActivityC1081W.m1609t(modernMainActivity, WidgetBuilderFragment.class, null);
                        break;
                    case 2:
                        String str3 = ModernMainActivity.f1436B1;
                        C2194a.m3500t(C2328n0.class, null).show(modernMainActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{55, 70, -45, 53, -77, -72, -57, -53, 52, 93, -32, 56, -80, -85, -58, -15, 53, 90, -34, 53, -81, -68}, new byte[]{81, 51, -65, 89, -64, -37, -75, -82}));
                        break;
                    case 3:
                        String str4 = ModernMainActivity.f1436B1;
                        C2194a.m3500t(C2302i.class, null).show(modernMainActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{-27, -46, -57, 103, -9, -5, 122, 18, -16, -51, -49, 122, -16, -51, 101, 25, -15, -1, -62, 96, -30, -56, 101, 16}, new byte[]{-126, -96, -90, 9, -125, -92, 10, 119}));
                        break;
                    case 4:
                        String str5 = ModernMainActivity.f1436B1;
                        C2194a.m3500t(C2372y.class, null).show(modernMainActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{16, -108, -78, -119, 23, 6, -22, -15, 18, -110, -91, -119, 19, 8, -18, -3, 31, -112, -97, -78, 14, 6, -27, -11, 20}, new byte[]{115, -11, -64, -42, 103, 103, -119, -102}));
                        break;
                    default:
                        String str6 = ModernMainActivity.f1436B1;
                        Intent intent = new Intent(modernMainActivity, (Class<?>) ManageAppsActivity.class);
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{-1, 46, -14, 30, 51, 13, 42, 109, -10, 41, -11, 30, 8, 51, 47, 120, -29, 46, -7, 21, 31}, new byte[]{-105, 71, -106, 123, 108, 108, 78, 27}), true);
                        modernMainActivity.startActivity(intent);
                        break;
                }
            }
        });
        final int i19 = 5;
        findViewById(R.id.install_unistall_app).setOnClickListener(new View.OnClickListener(this) { // from class: e0.n1

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ ModernMainActivity f3340c;

            {
                this.f3340c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i110 = i19;
                ModernMainActivity modernMainActivity = this.f3340c;
                switch (i110) {
                    case 0:
                        String str = ModernMainActivity.f1436B1;
                        AbstractC3656k.m5875u(modernMainActivity, new Intent(modernMainActivity, (Class<?>) PermActivity.class), null);
                        break;
                    case 1:
                        String str2 = ModernMainActivity.f1436B1;
                        ActivityC1081W.m1609t(modernMainActivity, WidgetBuilderFragment.class, null);
                        break;
                    case 2:
                        String str3 = ModernMainActivity.f1436B1;
                        C2194a.m3500t(C2328n0.class, null).show(modernMainActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{55, 70, -45, 53, -77, -72, -57, -53, 52, 93, -32, 56, -80, -85, -58, -15, 53, 90, -34, 53, -81, -68}, new byte[]{81, 51, -65, 89, -64, -37, -75, -82}));
                        break;
                    case 3:
                        String str4 = ModernMainActivity.f1436B1;
                        C2194a.m3500t(C2302i.class, null).show(modernMainActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{-27, -46, -57, 103, -9, -5, 122, 18, -16, -51, -49, 122, -16, -51, 101, 25, -15, -1, -62, 96, -30, -56, 101, 16}, new byte[]{-126, -96, -90, 9, -125, -92, 10, 119}));
                        break;
                    case 4:
                        String str5 = ModernMainActivity.f1436B1;
                        C2194a.m3500t(C2372y.class, null).show(modernMainActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{16, -108, -78, -119, 23, 6, -22, -15, 18, -110, -91, -119, 19, 8, -18, -3, 31, -112, -97, -78, 14, 6, -27, -11, 20}, new byte[]{115, -11, -64, -42, 103, 103, -119, -102}));
                        break;
                    default:
                        String str6 = ModernMainActivity.f1436B1;
                        Intent intent = new Intent(modernMainActivity, (Class<?>) ManageAppsActivity.class);
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{-1, 46, -14, 30, 51, 13, 42, 109, -10, 41, -11, 30, 8, 51, 47, 120, -29, 46, -7, 21, 31}, new byte[]{-105, 71, -106, 123, 108, 108, 78, 27}), true);
                        modernMainActivity.startActivity(intent);
                        break;
                }
            }
        });
        View viewFindViewById = findViewById(R.id.swipe_setting_button);
        if (viewFindViewById != null && (viewFindViewById.getParent() instanceof View)) {
            ((View) viewFindViewById.getParent()).setVisibility(8);
        }
        if (findViewById(R.id.modern_edge_gesture_container) != null && getSupportFragmentManager().findFragmentByTag(AbstractC1387m.m2421h(new byte[]{59, 28, -88, 102, 95, 114, -72, 24, 50, 20, -87, 92, 74, 121, -108, 9, 35, 1, -87, 92, 87, 115, -119, 24, 37}, new byte[]{86, 115, -52, 3, 45, 28, -25, 125})) == null) {
            getSupportFragmentManager().beginTransaction().replace(R.id.modern_edge_gesture_container, new C2567a(), AbstractC1387m.m2421h(new byte[]{97, 21, 3, -86, -45, 119, -65, 121, 104, 29, 2, -112, -58, 124, -109, 104, 121, 8, 2, -112, -37, 118, -114, 121, ByteCompanionObject.MAX_VALUE}, new byte[]{12, 122, 103, -49, -95, 25, -32, 28})).commitNow();
        }
        MaterialSwitch materialSwitch = (MaterialSwitch) findViewById(R.id.super_widgets_enabled);
        materialSwitch.setChecked(C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{17, -30, -95, 101, 122, 74, -119, 69, 6, -16, -76, 116, 123, 74, -101, 66, 3, -11, -67, 101, 108}, new byte[]{98, -105, -47, 0, 8, 21, -2, 44}), false));
        materialSwitch.setOnCheckedChangeListener(new C1418s0(i10, this));
        findViewById(R.id.super_widgets_settings).setOnClickListener(new View.OnClickListener(this) { // from class: e0.n1

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ ModernMainActivity f3340c;

            {
                this.f3340c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i110 = i11;
                ModernMainActivity modernMainActivity = this.f3340c;
                switch (i110) {
                    case 0:
                        String str = ModernMainActivity.f1436B1;
                        AbstractC3656k.m5875u(modernMainActivity, new Intent(modernMainActivity, (Class<?>) PermActivity.class), null);
                        break;
                    case 1:
                        String str2 = ModernMainActivity.f1436B1;
                        ActivityC1081W.m1609t(modernMainActivity, WidgetBuilderFragment.class, null);
                        break;
                    case 2:
                        String str3 = ModernMainActivity.f1436B1;
                        C2194a.m3500t(C2328n0.class, null).show(modernMainActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{55, 70, -45, 53, -77, -72, -57, -53, 52, 93, -32, 56, -80, -85, -58, -15, 53, 90, -34, 53, -81, -68}, new byte[]{81, 51, -65, 89, -64, -37, -75, -82}));
                        break;
                    case 3:
                        String str4 = ModernMainActivity.f1436B1;
                        C2194a.m3500t(C2302i.class, null).show(modernMainActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{-27, -46, -57, 103, -9, -5, 122, 18, -16, -51, -49, 122, -16, -51, 101, 25, -15, -1, -62, 96, -30, -56, 101, 16}, new byte[]{-126, -96, -90, 9, -125, -92, 10, 119}));
                        break;
                    case 4:
                        String str5 = ModernMainActivity.f1436B1;
                        C2194a.m3500t(C2372y.class, null).show(modernMainActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{16, -108, -78, -119, 23, 6, -22, -15, 18, -110, -91, -119, 19, 8, -18, -3, 31, -112, -97, -78, 14, 6, -27, -11, 20}, new byte[]{115, -11, -64, -42, 103, 103, -119, -102}));
                        break;
                    default:
                        String str6 = ModernMainActivity.f1436B1;
                        Intent intent = new Intent(modernMainActivity, (Class<?>) ManageAppsActivity.class);
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{-1, 46, -14, 30, 51, 13, 42, 109, -10, 41, -11, 30, 8, 51, 47, 120, -29, 46, -7, 21, 31}, new byte[]{-105, 71, -106, 123, 108, 108, 78, 27}), true);
                        modernMainActivity.startActivity(intent);
                        break;
                }
            }
        });
        m1472b0(R.id.modern_donation_card);
        m1472b0(R.id.modern_car_profile_card);
        ((TextView) findViewById(R.id.modern_version)).setText(AbstractC1387m.m2421h(new byte[]{91, 10, 4, -62, -118}, new byte[]{105, 36, 52, -20, -66, -89, -22, -70}));
        m1464T(findViewById(R.id.main));
        this.f1451y1 = true;
        m1473c0();
        m1474d0(this.f1448v1);
        if (this.f1448v1 == this.f1441o1.length - 1) {
            m1475e0(this.f1449w1);
        }
        View viewFindViewById2 = findViewById(R.id.main);
        viewFindViewById2.addOnLayoutChangeListener(new ViewOnLayoutChangeListenerC1409q1(i12, this));
        viewFindViewById2.post(new RunnableC1384l1(this, viewFindViewById2, 1));
    }

    @Override // com.example.navistart.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        String str = this.f1438A1;
        if (str == null || str.equals(AbstractC1358g0.m2403a())) {
            return;
        }
        recreate();
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putInt(f1436B1, this.f1448v1);
        bundle.putInt(f1437C1, this.f1449w1);
        super.onSaveInstanceState(bundle);
    }

    @Override // com.example.navistart.MainActivity
    /* JADX INFO: renamed from: z */
    public final int mo1447z() {
        Context contextM2437x = AbstractC1387m.m2437x(this);
        Configuration configuration = new Configuration(getResources().getConfiguration());
        configuration.densityDpi = contextM2437x.getResources().getConfiguration().densityDpi;
        this.f1438A1 = AbstractC1358g0.m2403a();
        Locale locale = new Locale(this.f1438A1);
        configuration.setLocale(locale);
        Locale.setDefault(locale);
        getResources().updateConfiguration(configuration, getResources().getDisplayMetrics());
        return R.layout.activity_modern_main;
    }
}
