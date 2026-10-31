package p047e0;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridLayout;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatSpinner;
import androidx.appcompat.widget.SwitchCompat;
import androidx.core.content.ContextCompat;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import com.example.navistart.ActivityC1081W;
import com.example.navistart.MainActivity;
import com.example.navistart.R;
import com.example.navistart.TestSpaceActivity;
import com.example.navistart.VJCT;
import com.example.navistart.home.WebLauncherActivity;
import com.woha.appmanag.ManageAppsActivity;
import com.woha.atir.RadarActivity;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import p043d6.C1305d;
import p047e0.ViewOnClickListenerC1393n0;
import p078h0.C1652b;
import p098j0.AbstractC1920f;
import p098j0.C1916b;
import p098j0.C1917c;
import p098j0.C1919e;
import p098j0.EnumC1918d;
import p109k0.AbstractC2025a;
import p121l0.C2194a;
import p132m0.C2263a0;
import p132m0.C2275c2;
import p132m0.C2276c3;
import p132m0.C2283e0;
import p132m0.C2285e2;
import p132m0.C2319l1;
import p132m0.C2331n3;
import p132m0.C2343q2;
import p132m0.C2360v;
import p132m0.C2364w;
import p132m0.C2374y1;
import p132m0.C2377z0;
import p152o0.C2567a;
import p173q0.C3048l;
import p180r0.C3092e;
import p180r0.ViewOnClickListenerC3090c;
import p180r0.ViewOnClickListenerC3091d;
import p198t1.C3227e;
import p225w0.C3495v0;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: e0.q0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC1408q0 implements View.OnClickListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3375b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ MainActivity f3376c;

    public /* synthetic */ ViewOnClickListenerC1408q0(MainActivity mainActivity, int i10) {
        this.f3375b = i10;
        this.f3376c = mainActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        String string;
        C1919e[] c1919eArr;
        ArrayList arrayList;
        int i10;
        int i11;
        int i12 = this.f3375b;
        int i13 = 1;
        int i14 = 3;
        MainActivity mainActivity = this.f3376c;
        switch (i12) {
            case 0:
                String str = MainActivity.f1288e1;
                AbstractC3656k.m5875u(mainActivity, new Intent(mainActivity, (Class<?>) RadarActivity.class), null);
                break;
            case 1:
                String str2 = MainActivity.f1288e1;
                C2194a.m3500t(C2275c2.class, null).show(mainActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{72, 124, -50, -51, 51, -21, 114, -39, 66}, new byte[]{37, 5, -111, -87, 90, -118, 30, -74}));
                break;
            case 2:
                String str3 = MainActivity.f1288e1;
                C2194a.m3500t(C3495v0.class, null).show(mainActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{-62, -3, -84, 43, 26, -74, -97, -99, -56}, new byte[]{-81, -124, -13, 79, 115, -41, -13, -14}));
                break;
            case 3:
                String str4 = MainActivity.f1288e1;
                AbstractC2025a.m3119a(mainActivity, true);
                break;
            case 4:
                String str5 = MainActivity.f1288e1;
                AbstractC2025a.m3119a(mainActivity, false);
                break;
            case 5:
                String str6 = MainActivity.f1288e1;
                ActivityC1081W.m1609t(mainActivity, C2319l1.class, null);
                break;
            case 6:
                String str7 = MainActivity.f1288e1;
                C2194a.m3500t(C3048l.class, null).show(mainActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{27, 45, -20, 82, 56, -48, 53, -101, 41, 54, -22, 74, 19}, new byte[]{118, 66, -113, 57, 103, -73, 69, -24}));
                break;
            case 7:
                String str8 = MainActivity.f1288e1;
                ActivityC1081W.m1609t(mainActivity, C2360v.class, null);
                break;
            case 8:
                String str9 = MainActivity.f1288e1;
                ActivityC1081W.m1609t(mainActivity, C2331n3.class, null);
                break;
            case 9:
                String str10 = MainActivity.f1288e1;
                ActivityC1081W.m1609t(mainActivity, C2276c3.class, null);
                break;
            case 10:
                String str11 = MainActivity.f1288e1;
                C2194a.m3500t(C2343q2.class, null).show(mainActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{51, 62, -125, 76, 49, -84, -71, -83, 53, 18, -114, 87, 10, -88, -106, -71, 47, 44, -118, 81, 9}, new byte[]{70, 77, -26, 62, 110, -51, -55, -35}));
                break;
            case 11:
                String str12 = MainActivity.f1288e1;
                C2194a.m3500t(C2364w.class, null).show(mainActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{-82, -4, 89, 14, -31, -64, -65, 79, -92}, new byte[]{-61, -123, 6, 106, -120, -95, -45, 32}));
                break;
            case 12:
                String str13 = MainActivity.f1288e1;
                C2194a.m3500t(C2285e2.class, null).show(mainActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{19, -4, 118, -50, 113, 1, 58, -33, 25}, new byte[]{126, -123, 41, -86, 24, 96, 86, -80}));
                break;
            case 13:
                String str14 = MainActivity.f1288e1;
                C2194a.m3500t(C2567a.class, null).show(mainActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{93, -33, 107, 13, 56, 113, -70, -104, 87}, new byte[]{48, -90, 52, 105, 81, 16, -42, -9}));
                break;
            case 14:
                String str15 = MainActivity.f1288e1;
                AbstractC3656k.m5875u(mainActivity, new Intent(mainActivity, (Class<?>) VJCT.class), null);
                break;
            case 15:
                String str16 = MainActivity.f1288e1;
                String str17 = C3227e.f9443g;
                final ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(mainActivity, R.style.Theme_JCarTools_WidgetBuilderPopup);
                LinearLayout linearLayout = new LinearLayout(contextThemeWrapper);
                linearLayout.setOrientation(1);
                int iRound = Math.round(contextThemeWrapper.getResources().getDisplayMetrics().density * 20.0f);
                int i15 = iRound / 2;
                linearLayout.setPadding(iRound, i15, iRound, i15);
                TextView textView = new TextView(contextThemeWrapper);
                textView.setText(R.string.fuel_widget_capacity_description);
                textView.setTextColor(ContextCompat.getColor(contextThemeWrapper, R.color.modern_text_secondary));
                linearLayout.addView(textView);
                final AppCompatEditText appCompatEditText = new AppCompatEditText(contextThemeWrapper);
                appCompatEditText.setHint(R.string.fuel_widget_capacity_hint);
                appCompatEditText.setSingleLine();
                appCompatEditText.setInputType(8194);
                appCompatEditText.setTextColor(ContextCompat.getColor(contextThemeWrapper, R.color.modern_text));
                appCompatEditText.setHintTextColor(ContextCompat.getColor(contextThemeWrapper, R.color.modern_text_secondary));
                double dM5161c = C3227e.m5161c();
                if (Double.isFinite(dM5161c)) {
                    appCompatEditText.setText(String.valueOf(dM5161c));
                }
                linearLayout.addView(appCompatEditText);
                final AlertDialog alertDialogCreate = new AlertDialog.Builder(contextThemeWrapper).setTitle(R.string.fuel_widget_capacity_title).setView(linearLayout).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).setPositiveButton(R.string.fuel_widget_save, (DialogInterface.OnClickListener) null).create();
                alertDialogCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: t1.b
                    @Override // android.content.DialogInterface.OnShowListener
                    public final void onShow(DialogInterface dialogInterface) {
                        AlertDialog alertDialog = alertDialogCreate;
                        alertDialog.getButton(-1).setOnClickListener(new ViewOnClickListenerC1393n0(alertDialog, contextThemeWrapper, appCompatEditText));
                    }
                });
                alertDialogCreate.show();
                break;
            case 16:
                String str18 = MainActivity.f1288e1;
                new C1445y2(AbstractC1387m.m2421h(new byte[]{37, 125}, new byte[]{100, 46, -87, -3, 72, 120, -64, 32}), mainActivity);
                break;
            case 17:
                String str19 = MainActivity.f1288e1;
                new C1445y2(AbstractC1387m.m2421h(new byte[]{-32, -75, -116}, new byte[]{-78, -26, -31, 64, -28, 12, 0, -40}), mainActivity);
                break;
            case 18:
                String str20 = MainActivity.f1288e1;
                new C1445y2(AbstractC1387m.m2421h(new byte[]{40, -44, 125}, new byte[]{105, -124, 16, 6, -75, 28, -7, -28}), mainActivity);
                break;
            case 19:
                String str21 = MainActivity.f1288e1;
                AbstractC3656k.m5875u(mainActivity, new Intent(mainActivity, (Class<?>) ManageAppsActivity.class), null);
                break;
            case 20:
                String str22 = MainActivity.f1288e1;
                mainActivity.startActivity(new Intent(mainActivity, (Class<?>) WebLauncherActivity.class).addFlags(AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL));
                break;
            case 21:
                String str23 = MainActivity.f1288e1;
                ActivityC1081W.m1610u(mainActivity, C2263a0.class, null);
                break;
            case 22:
                String str24 = MainActivity.f1288e1;
                ActivityC1081W.m1610u(mainActivity, C2374y1.class, null);
                break;
            case 23:
                String str25 = MainActivity.f1288e1;
                ActivityC1081W.m1610u(mainActivity, C2283e0.class, null);
                break;
            case 24:
                String str26 = MainActivity.f1288e1;
                ActivityC1081W.m1610u(mainActivity, C2377z0.class, null);
                break;
            case 25:
                String str27 = MainActivity.f1288e1;
                C3092e c3092e = new C3092e(mainActivity);
                C1357g c1357g = new C1357g(4);
                boolean z9 = C1652b.m2745o().loadInt(C3092e.f8786c, 8) == 8;
                C1305d c1305d = c3092e.f8789b;
                c1305d.f3111a = z9;
                C1919e[] c1919eArr2 = (C1919e[]) c1305d.f3112b;
                for (int i16 = 0; i16 < 8; i16++) {
                    c1919eArr2[i16] = AbstractC1920f.m3007e(mainActivity, C3092e.f8787d + i16);
                }
                final ContextThemeWrapper contextThemeWrapper2 = new ContextThemeWrapper(mainActivity, R.style.Theme_JCarTools_Uni);
                View viewInflate = LayoutInflater.from(contextThemeWrapper2).inflate(R.layout.dialog_multi_button_settings, (ViewGroup) null);
                SwitchCompat switchCompat = (SwitchCompat) viewInflate.findViewById(R.id.multiSettingsEight);
                switchCompat.setChecked(c1305d.f3111a);
                final GridLayout gridLayout = (GridLayout) viewInflate.findViewById(R.id.multiSettingsGrid);
                final int iRound2 = Math.round(contextThemeWrapper2.getResources().getDisplayMetrics().density * 12.0f);
                Spinner[] spinnerArr = new Spinner[8];
                ArrayList arrayListM2990e = new C1917c(mainActivity).m2990e();
                int i17 = 0;
                for (int i18 = 8; i17 < i18; i18 = 8) {
                    LinearLayout linearLayout2 = new LinearLayout(contextThemeWrapper2);
                    linearLayout2.setOrientation(i13);
                    linearLayout2.setPadding(iRound2, iRound2, iRound2, iRound2);
                    linearLayout2.setBackgroundResource(R.drawable.modern_panel);
                    TextView textView2 = new TextView(contextThemeWrapper2);
                    byte[] bArr = new byte[i14];
                    // fill-array-data instruction
                    bArr[0] = 113;
                    bArr[1] = -43;
                    bArr[2] = 3;
                    byte[] bArr2 = new byte[i18];
                    // fill-array-data instruction
                    bArr2[0] = -109;
                    bArr2[1] = 83;
                    bArr2[2] = -110;
                    bArr2[3] = -82;
                    bArr2[4] = 73;
                    bArr2[5] = -94;
                    bArr2[6] = -76;
                    bArr2[7] = -83;
                    String strM2421h = AbstractC1387m.m2421h(bArr, bArr2);
                    byte[] bArr3 = new byte[i18];
                    // fill-array-data instruction
                    bArr3[0] = 50;
                    bArr3[1] = -39;
                    bArr3[2] = -24;
                    bArr3[3] = -49;
                    bArr3[4] = -122;
                    bArr3[5] = -26;
                    bArr3[6] = 49;
                    bArr3[7] = 48;
                    String strM2421h2 = AbstractC1387m.m2421h(new byte[]{-48, 95, 123}, bArr3);
                    byte[] bArr4 = new byte[i18];
                    // fill-array-data instruction
                    bArr4[0] = -115;
                    bArr4[1] = -42;
                    bArr4[2] = -28;
                    bArr4[3] = 88;
                    bArr4[4] = 58;
                    bArr4[5] = 29;
                    bArr4[6] = 59;
                    bArr4[7] = -123;
                    String strM2421h3 = AbstractC1387m.m2421h(new byte[]{111, 80, 116}, bArr4);
                    byte[] bArr5 = new byte[i18];
                    // fill-array-data instruction
                    bArr5[0] = 30;
                    bArr5[1] = -116;
                    bArr5[2] = -103;
                    bArr5[3] = -126;
                    bArr5[4] = 21;
                    bArr5[5] = 46;
                    bArr5[6] = 45;
                    bArr5[7] = -64;
                    String strM2421h4 = AbstractC1387m.m2421h(new byte[]{-4, 10, 11}, bArr5);
                    byte[] bArr6 = new byte[i18];
                    // fill-array-data instruction
                    bArr6[0] = 41;
                    bArr6[1] = -126;
                    bArr6[2] = -96;
                    bArr6[3] = -97;
                    bArr6[4] = -98;
                    bArr6[5] = 94;
                    bArr6[6] = 90;
                    bArr6[7] = -72;
                    String strM2421h5 = AbstractC1387m.m2421h(new byte[]{-53, 4, 54}, bArr6);
                    byte[] bArr7 = new byte[i18];
                    // fill-array-data instruction
                    bArr7[0] = 108;
                    bArr7[1] = -37;
                    bArr7[2] = 81;
                    bArr7[3] = 74;
                    bArr7[4] = -119;
                    bArr7[5] = -43;
                    bArr7[6] = 81;
                    bArr7[7] = 91;
                    String strM2421h6 = AbstractC1387m.m2421h(new byte[]{-114, 93, -58}, bArr7);
                    byte[] bArr8 = new byte[i18];
                    // fill-array-data instruction
                    bArr8[0] = -91;
                    bArr8[1] = -101;
                    bArr8[2] = 100;
                    bArr8[3] = -61;
                    bArr8[4] = -27;
                    bArr8[5] = 113;
                    bArr8[6] = 25;
                    bArr8[7] = -42;
                    String strM2421h7 = AbstractC1387m.m2421h(new byte[]{71, 29, -3}, bArr8);
                    byte[] bArr9 = new byte[i18];
                    // fill-array-data instruction
                    bArr9[0] = -58;
                    bArr9[1] = 16;
                    bArr9[2] = 91;
                    bArr9[3] = -128;
                    bArr9[4] = 117;
                    bArr9[5] = 116;
                    bArr9[6] = -71;
                    bArr9[7] = 42;
                    String[] strArr = {strM2421h, strM2421h2, strM2421h3, strM2421h4, strM2421h5, strM2421h6, strM2421h7, AbstractC1387m.m2421h(new byte[]{36, -106, -61}, bArr9)};
                    StringBuilder sb = new StringBuilder();
                    sb.append(strArr[i17]);
                    sb.append("  ");
                    switch (i17) {
                        case 0:
                            string = mainActivity.getResources().getString(R.string.vverhB);
                            break;
                        case 1:
                            string = mainActivity.getResources().getString(R.string.nijB);
                            break;
                        case 2:
                            string = mainActivity.getResources().getString(R.string.leftB);
                            break;
                        case 3:
                            string = mainActivity.getResources().getString(R.string.rightB);
                            break;
                        case 4:
                            string = mainActivity.getResources().getString(R.string.vverhleftB);
                            break;
                        case 5:
                            string = mainActivity.getResources().getString(R.string.vverhrightB);
                            break;
                        case 6:
                            string = mainActivity.getResources().getString(R.string.nijleftB);
                            break;
                        case 7:
                            string = mainActivity.getResources().getString(R.string.nijrightB);
                            break;
                        default:
                            string = "";
                            break;
                    }
                    sb.append(string);
                    textView2.setText(sb.toString());
                    textView2.setTextSize(2, 15.0f);
                    textView2.setTextColor(contextThemeWrapper2.getColor(R.color.modern_text_secondary));
                    textView2.setTypeface(null, 1);
                    textView2.setPadding(0, 0, 0, iRound2);
                    linearLayout2.addView(textView2);
                    AppCompatSpinner appCompatSpinner = new AppCompatSpinner(contextThemeWrapper2, 0);
                    appCompatSpinner.setBackgroundResource(R.drawable.modern_field);
                    appCompatSpinner.setAdapter((SpinnerAdapter) new C1916b(appCompatSpinner.getContext(), (List) arrayListM2990e));
                    C1919e c1919e = c1919eArr2[i17];
                    if (c1919e == null) {
                        c1919eArr = c1919eArr2;
                        arrayList = arrayListM2990e;
                        i11 = 0;
                    } else {
                        int i19 = 0;
                        while (true) {
                            if (i19 < arrayListM2990e.size()) {
                                C1919e c1919e2 = (C1919e) arrayListM2990e.get(i19);
                                c1919eArr = c1919eArr2;
                                EnumC1918d enumC1918d = c1919e2.f5058a;
                                arrayList = arrayListM2990e;
                                if (enumC1918d == c1919e.f5058a) {
                                    if (enumC1918d == EnumC1918d.f5053b) {
                                        i10 = i19;
                                        if (c1919e2.f5059b == c1919e.f5059b) {
                                        }
                                        i11 = i10;
                                    } else {
                                        i10 = i19;
                                    }
                                    if ((enumC1918d == EnumC1918d.f5054c && Objects.equals(c1919e2.f5060c, c1919e.f5060c)) || ((c1919e2.f5058a == EnumC1918d.f5055d && Objects.equals(c1919e2.f5060c, c1919e.f5060c) && Objects.equals(c1919e2.f5061d, c1919e.f5061d) && c1919e2.f5064g == c1919e.f5064g && c1919e2.f5065h == c1919e.f5065h) || (c1919e2.f5058a == EnumC1918d.f5056e && Objects.equals(c1919e2.f5062e, c1919e.f5062e)))) {
                                        i11 = i10;
                                    }
                                } else {
                                    i10 = i19;
                                }
                                i19 = i10 + 1;
                                c1919eArr2 = c1919eArr;
                                arrayListM2990e = arrayList;
                            } else {
                                c1919eArr = c1919eArr2;
                                arrayList = arrayListM2990e;
                                i11 = 0;
                            }
                        }
                    }
                    appCompatSpinner.setSelection(i11);
                    linearLayout2.addView(appCompatSpinner, new LinearLayout.LayoutParams(-1, -2));
                    gridLayout.addView(linearLayout2);
                    spinnerArr[i17] = appCompatSpinner;
                    i17++;
                    c1919eArr2 = c1919eArr;
                    arrayListM2990e = arrayList;
                    i13 = 1;
                    i14 = 3;
                }
                gridLayout.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: r0.b
                    @Override // android.view.View.OnLayoutChangeListener
                    public final void onLayoutChange(View view2, int i20, int i21, int i22, int i23, int i24, int i25, int i26, int i27) {
                        int i28 = i22 - i20;
                        if (i28 > 0) {
                            int i29 = i26 - i24;
                            GridLayout gridLayout2 = gridLayout;
                            if (i28 != i29 || gridLayout2.getChildAt(0).getLayoutParams().width <= 0) {
                                int i30 = i28 >= Math.round(contextThemeWrapper2.getResources().getDisplayMetrics().density * 640.0f) ? 2 : 1;
                                gridLayout2.setColumnCount(i30);
                                for (int i31 = 0; i31 < gridLayout2.getChildCount(); i31++) {
                                    GridLayout.LayoutParams layoutParams = new GridLayout.LayoutParams();
                                    layoutParams.rowSpec = GridLayout.spec(i31 / i30);
                                    int i32 = i31 % i30;
                                    layoutParams.columnSpec = GridLayout.spec(i32);
                                    int i33 = i30 - 1;
                                    int i34 = iRound2;
                                    layoutParams.width = (i28 - (i33 * i34)) / i30;
                                    layoutParams.height = -2;
                                    layoutParams.bottomMargin = i34;
                                    if (i32 == i33) {
                                        i34 = 0;
                                    }
                                    layoutParams.setMarginEnd(i34);
                                    gridLayout2.getChildAt(i31).setLayoutParams(layoutParams);
                                }
                            }
                        }
                    }
                });
                android.app.AlertDialog alertDialogCreate2 = new android.app.AlertDialog.Builder(contextThemeWrapper2, R.style.Theme_JCarTools_Uni_FrameworkAlert).setView(viewInflate).create();
                viewInflate.findViewById(R.id.multiSettingsSave).setOnClickListener(new ViewOnClickListenerC3090c(c3092e, switchCompat, spinnerArr, c1357g, alertDialogCreate2));
                viewInflate.findViewById(R.id.multiSettingsCancel).setOnClickListener(new ViewOnClickListenerC3091d(alertDialogCreate2, 0));
                alertDialogCreate2.show();
                if (alertDialogCreate2.getWindow() != null) {
                    alertDialogCreate2.getWindow().setLayout(Math.min(contextThemeWrapper2.getResources().getDisplayMetrics().widthPixels - (iRound2 * 2), Math.round(contextThemeWrapper2.getResources().getDisplayMetrics().density * 960.0f)), -2);
                }
                break;
            case 26:
                mainActivity.f1356d++;
                Handler handler = mainActivity.f1359e;
                handler.removeCallbacksAndMessages(null);
                handler.postDelayed(new RunnableC1388m0(mainActivity, 17), 1000L);
                if (mainActivity.f1356d >= 10) {
                    mainActivity.f1356d = 0;
                    AbstractC3656k.m5875u(mainActivity, new Intent(mainActivity.getApplicationContext(), (Class<?>) TestSpaceActivity.class).addFlags(268435456), null);
                }
                break;
            case 27:
                String str28 = MainActivity.f1288e1;
                new C1445y2(MainActivity.f1294k1[C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{24, -50, 0, 119, 15, -5, 42, 26, 53}, new byte[]{65, -125, 97, 7, 124, -73, 67, 105}), 0)], mainActivity);
                break;
            case 28:
                if (mainActivity.f1395w.isEmpty()) {
                    AbstractC3656k.m5878x(mainActivity, mainActivity.getText(R.string.select_application));
                } else {
                    C1652b.m2734a();
                    C1652b.m2735c().OpenProPri();
                }
                break;
            default:
                if (mainActivity.f1395w.isEmpty()) {
                    AbstractC3656k.m5878x(mainActivity, mainActivity.getText(R.string.select_application));
                } else {
                    C1652b.m2734a();
                    C1652b.m2735c().OpenProGu();
                }
                break;
        }
    }
}
