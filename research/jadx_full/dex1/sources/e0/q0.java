package e0;

import android.R$string;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.GridLayout;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AlertDialog$Builder;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatSpinner;
import androidx.appcompat.widget.SwitchCompat;
import androidx.core.content.ContextCompat;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import com.example.navistart.MainActivity;
import com.example.navistart.TestSpaceActivity;
import com.example.navistart.VJCT;
import com.example.navistart.W;
import com.example.navistart.home.WebLauncherActivity;
import com.woha.appmanag.ManageAppsActivity;
import com.woha.atir.RadarActivity;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class q0 implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1928b;
    public final /* synthetic */ MainActivity c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ q0(MainActivity mainActivity, int i9) {
        this.f1928b = i9;
        this.c = mainActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        String string;
        j0.e[] eVarArr;
        ArrayList arrayList;
        int i9;
        int i10;
        int i11 = this.f1928b;
        int i12 = 1;
        int i13 = 3;
        MainActivity mainActivity = this.c;
        switch (i11) {
            case 0:
                String str = MainActivity.f688e1;
                y5.k.u(mainActivity, new Intent(mainActivity, (Class<?>) RadarActivity.class), null);
                break;
            case 1:
                String str2 = MainActivity.f688e1;
                l0.a.t(m0.c2.class, null).show(mainActivity.getSupportFragmentManager(), m.h(new byte[]{72, 124, -50, -51, 51, -21, 114, -39, 66}, new byte[]{37, 5, -111, -87, 90, -118, 30, -74}));
                break;
            case 2:
                String str3 = MainActivity.f688e1;
                l0.a.t(w0.v0.class, null).show(mainActivity.getSupportFragmentManager(), m.h(new byte[]{-62, -3, -84, 43, 26, -74, -97, -99, -56}, new byte[]{-81, -124, -13, 79, 115, -41, -13, -14}));
                break;
            case 3:
                String str4 = MainActivity.f688e1;
                k0.a.a(mainActivity, true);
                break;
            case 4:
                String str5 = MainActivity.f688e1;
                k0.a.a(mainActivity, false);
                break;
            case 5:
                String str6 = MainActivity.f688e1;
                W.t(mainActivity, m0.l1.class, null);
                break;
            case 6:
                String str7 = MainActivity.f688e1;
                l0.a.t(q0.l.class, null).show(mainActivity.getSupportFragmentManager(), m.h(new byte[]{27, 45, -20, 82, 56, -48, 53, -101, 41, 54, -22, 74, 19}, new byte[]{118, 66, -113, 57, 103, -73, 69, -24}));
                break;
            case 7:
                String str8 = MainActivity.f688e1;
                W.t(mainActivity, m0.v.class, null);
                break;
            case 8:
                String str9 = MainActivity.f688e1;
                W.t(mainActivity, m0.n3.class, null);
                break;
            case 9:
                String str10 = MainActivity.f688e1;
                W.t(mainActivity, m0.c3.class, null);
                break;
            case 10:
                String str11 = MainActivity.f688e1;
                l0.a.t(m0.q2.class, null).show(mainActivity.getSupportFragmentManager(), m.h(new byte[]{51, 62, -125, 76, 49, -84, -71, -83, 53, 18, -114, 87, 10, -88, -106, -71, 47, 44, -118, 81, 9}, new byte[]{70, 77, -26, 62, 110, -51, -55, -35}));
                break;
            case 11:
                String str12 = MainActivity.f688e1;
                l0.a.t(m0.w.class, null).show(mainActivity.getSupportFragmentManager(), m.h(new byte[]{-82, -4, 89, 14, -31, -64, -65, 79, -92}, new byte[]{-61, -123, 6, 106, -120, -95, -45, 32}));
                break;
            case 12:
                String str13 = MainActivity.f688e1;
                l0.a.t(m0.e2.class, null).show(mainActivity.getSupportFragmentManager(), m.h(new byte[]{19, -4, 118, -50, 113, 1, 58, -33, 25}, new byte[]{126, -123, 41, -86, 24, 96, 86, -80}));
                break;
            case 13:
                String str14 = MainActivity.f688e1;
                l0.a.t(o0.a.class, null).show(mainActivity.getSupportFragmentManager(), m.h(new byte[]{93, -33, 107, 13, 56, 113, -70, -104, 87}, new byte[]{48, -90, 52, 105, 81, 16, -42, -9}));
                break;
            case 14:
                String str15 = MainActivity.f688e1;
                y5.k.u(mainActivity, new Intent(mainActivity, (Class<?>) VJCT.class), null);
                break;
            case 15:
                String str16 = MainActivity.f688e1;
                String str17 = t1.e.f5341g;
                ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(mainActivity, 2132017810);
                LinearLayout linearLayout = new LinearLayout(contextThemeWrapper);
                linearLayout.setOrientation(1);
                int iRound = Math.round(contextThemeWrapper.getResources().getDisplayMetrics().density * 20.0f);
                int i14 = iRound / 2;
                linearLayout.setPadding(iRound, i14, iRound, i14);
                TextView textView = new TextView(contextThemeWrapper);
                textView.setText(2131951991);
                textView.setTextColor(ContextCompat.getColor(contextThemeWrapper, 2131035010));
                linearLayout.addView(textView);
                AppCompatEditText appCompatEditText = new AppCompatEditText(contextThemeWrapper);
                appCompatEditText.setHint(2131951993);
                appCompatEditText.setSingleLine();
                appCompatEditText.setInputType(8194);
                appCompatEditText.setTextColor(ContextCompat.getColor(contextThemeWrapper, 2131035009));
                appCompatEditText.setHintTextColor(ContextCompat.getColor(contextThemeWrapper, 2131035010));
                double dC = t1.e.c();
                if (Double.isFinite(dC)) {
                    appCompatEditText.setText(String.valueOf(dC));
                }
                linearLayout.addView(appCompatEditText);
                AlertDialog alertDialogCreate = new AlertDialog$Builder(contextThemeWrapper).setTitle(2131951994).setView(linearLayout).setNegativeButton(R$string.cancel, (DialogInterface$OnClickListener) null).setPositiveButton(2131951997, (DialogInterface$OnClickListener) null).create();
                alertDialogCreate.setOnShowListener(new t1.b(alertDialogCreate, contextThemeWrapper, appCompatEditText));
                alertDialogCreate.show();
                break;
            case 16:
                String str18 = MainActivity.f688e1;
                new y2(m.h(new byte[]{37, 125}, new byte[]{100, 46, -87, -3, 72, 120, -64, 32}), mainActivity);
                break;
            case 17:
                String str19 = MainActivity.f688e1;
                new y2(m.h(new byte[]{-32, -75, -116}, new byte[]{-78, -26, -31, 64, -28, 12, 0, -40}), mainActivity);
                break;
            case 18:
                String str20 = MainActivity.f688e1;
                new y2(m.h(new byte[]{40, -44, 125}, new byte[]{105, -124, 16, 6, -75, 28, -7, -28}), mainActivity);
                break;
            case 19:
                String str21 = MainActivity.f688e1;
                y5.k.u(mainActivity, new Intent(mainActivity, (Class<?>) ManageAppsActivity.class), null);
                break;
            case 20:
                String str22 = MainActivity.f688e1;
                mainActivity.startActivity(new Intent(mainActivity, (Class<?>) WebLauncherActivity.class).addFlags(AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL));
                break;
            case 21:
                String str23 = MainActivity.f688e1;
                W.u(mainActivity, m0.a0.class, null);
                break;
            case 22:
                String str24 = MainActivity.f688e1;
                W.u(mainActivity, m0.y1.class, null);
                break;
            case 23:
                String str25 = MainActivity.f688e1;
                W.u(mainActivity, m0.e0.class, null);
                break;
            case 24:
                String str26 = MainActivity.f688e1;
                W.u(mainActivity, m0.z0.class, null);
                break;
            case 25:
                String str27 = MainActivity.f688e1;
                r0.e eVar = new r0.e(mainActivity);
                g gVar = new g(4);
                boolean z8 = h0.b.o().loadInt(r0.e.c, 8) == 8;
                d6.d dVar = eVar.f4935b;
                dVar.f1780a = z8;
                j0.e[] eVarArr2 = (j0.e[]) dVar.f1781b;
                for (int i15 = 0; i15 < 8; i15++) {
                    eVarArr2[i15] = j0.f.e(mainActivity, r0.e.d + i15);
                }
                ContextThemeWrapper contextThemeWrapper2 = new ContextThemeWrapper(mainActivity, 2132017806);
                View viewInflate = LayoutInflater.from(contextThemeWrapper2).inflate(2131492936, (ViewGroup) null);
                SwitchCompat switchCompat = (SwitchCompat) viewInflate.findViewById(2131297118);
                switchCompat.setChecked(dVar.f1780a);
                GridLayout gridLayout = (GridLayout) viewInflate.findViewById(2131297119);
                int iRound2 = Math.round(contextThemeWrapper2.getResources().getDisplayMetrics().density * 12.0f);
                Spinner[] spinnerArr = new Spinner[8];
                ArrayList arrayListE = new j0.c(mainActivity).e();
                int i16 = 0;
                for (int i17 = 8; i16 < i17; i17 = 8) {
                    LinearLayout linearLayout2 = new LinearLayout(contextThemeWrapper2);
                    linearLayout2.setOrientation(i12);
                    linearLayout2.setPadding(iRound2, iRound2, iRound2, iRound2);
                    linearLayout2.setBackgroundResource(2131165593);
                    TextView textView2 = new TextView(contextThemeWrapper2);
                    byte[] bArr = new byte[i13];
                    // fill-array-data instruction
                    bArr[0] = 113;
                    bArr[1] = -43;
                    bArr[2] = 3;
                    byte[] bArr2 = new byte[i17];
                    // fill-array-data instruction
                    bArr2[0] = -109;
                    bArr2[1] = 83;
                    bArr2[2] = -110;
                    bArr2[3] = -82;
                    bArr2[4] = 73;
                    bArr2[5] = -94;
                    bArr2[6] = -76;
                    bArr2[7] = -83;
                    String strH = m.h(bArr, bArr2);
                    byte[] bArr3 = new byte[i17];
                    // fill-array-data instruction
                    bArr3[0] = 50;
                    bArr3[1] = -39;
                    bArr3[2] = -24;
                    bArr3[3] = -49;
                    bArr3[4] = -122;
                    bArr3[5] = -26;
                    bArr3[6] = 49;
                    bArr3[7] = 48;
                    String strH2 = m.h(new byte[]{-48, 95, 123}, bArr3);
                    byte[] bArr4 = new byte[i17];
                    // fill-array-data instruction
                    bArr4[0] = -115;
                    bArr4[1] = -42;
                    bArr4[2] = -28;
                    bArr4[3] = 88;
                    bArr4[4] = 58;
                    bArr4[5] = 29;
                    bArr4[6] = 59;
                    bArr4[7] = -123;
                    String strH3 = m.h(new byte[]{111, 80, 116}, bArr4);
                    byte[] bArr5 = new byte[i17];
                    // fill-array-data instruction
                    bArr5[0] = 30;
                    bArr5[1] = -116;
                    bArr5[2] = -103;
                    bArr5[3] = -126;
                    bArr5[4] = 21;
                    bArr5[5] = 46;
                    bArr5[6] = 45;
                    bArr5[7] = -64;
                    String strH4 = m.h(new byte[]{-4, 10, 11}, bArr5);
                    byte[] bArr6 = new byte[i17];
                    // fill-array-data instruction
                    bArr6[0] = 41;
                    bArr6[1] = -126;
                    bArr6[2] = -96;
                    bArr6[3] = -97;
                    bArr6[4] = -98;
                    bArr6[5] = 94;
                    bArr6[6] = 90;
                    bArr6[7] = -72;
                    String strH5 = m.h(new byte[]{-53, 4, 54}, bArr6);
                    byte[] bArr7 = new byte[i17];
                    // fill-array-data instruction
                    bArr7[0] = 108;
                    bArr7[1] = -37;
                    bArr7[2] = 81;
                    bArr7[3] = 74;
                    bArr7[4] = -119;
                    bArr7[5] = -43;
                    bArr7[6] = 81;
                    bArr7[7] = 91;
                    String strH6 = m.h(new byte[]{-114, 93, -58}, bArr7);
                    byte[] bArr8 = new byte[i17];
                    // fill-array-data instruction
                    bArr8[0] = -91;
                    bArr8[1] = -101;
                    bArr8[2] = 100;
                    bArr8[3] = -61;
                    bArr8[4] = -27;
                    bArr8[5] = 113;
                    bArr8[6] = 25;
                    bArr8[7] = -42;
                    String strH7 = m.h(new byte[]{71, 29, -3}, bArr8);
                    byte[] bArr9 = new byte[i17];
                    // fill-array-data instruction
                    bArr9[0] = -58;
                    bArr9[1] = 16;
                    bArr9[2] = 91;
                    bArr9[3] = -128;
                    bArr9[4] = 117;
                    bArr9[5] = 116;
                    bArr9[6] = -71;
                    bArr9[7] = 42;
                    String[] strArr = {strH, strH2, strH3, strH4, strH5, strH6, strH7, m.h(new byte[]{36, -106, -61}, bArr9)};
                    StringBuilder sb = new StringBuilder();
                    sb.append(strArr[i16]);
                    sb.append("  ");
                    switch (i16) {
                        case 0:
                            string = mainActivity.getResources().getString(2131952863);
                            break;
                        case 1:
                            string = mainActivity.getResources().getString(2131952429);
                            break;
                        case 2:
                            string = mainActivity.getResources().getString(2131952126);
                            break;
                        case 3:
                            string = mainActivity.getResources().getString(2131952476);
                            break;
                        case 4:
                            string = mainActivity.getResources().getString(2131952864);
                            break;
                        case 5:
                            string = mainActivity.getResources().getString(2131952865);
                            break;
                        case 6:
                            string = mainActivity.getResources().getString(2131952430);
                            break;
                        case 7:
                            string = mainActivity.getResources().getString(2131952431);
                            break;
                        default:
                            string = "";
                            break;
                    }
                    sb.append(string);
                    textView2.setText(sb.toString());
                    textView2.setTextSize(2, 15.0f);
                    textView2.setTextColor(contextThemeWrapper2.getColor(2131035010));
                    textView2.setTypeface(null, 1);
                    textView2.setPadding(0, 0, 0, iRound2);
                    linearLayout2.addView(textView2);
                    AppCompatSpinner appCompatSpinner = new AppCompatSpinner(contextThemeWrapper2, 0);
                    appCompatSpinner.setBackgroundResource(2131165578);
                    appCompatSpinner.setAdapter((SpinnerAdapter) new j0.b(appCompatSpinner.getContext(), (List) arrayListE));
                    j0.e eVar2 = eVarArr2[i16];
                    if (eVar2 == null) {
                        eVarArr = eVarArr2;
                        arrayList = arrayListE;
                        i10 = 0;
                    } else {
                        int i18 = 0;
                        while (true) {
                            if (i18 < arrayListE.size()) {
                                j0.e eVar3 = (j0.e) arrayListE.get(i18);
                                eVarArr = eVarArr2;
                                j0.d dVar2 = eVar3.f2872a;
                                arrayList = arrayListE;
                                if (dVar2 == eVar2.f2872a) {
                                    if (dVar2 == j0.d.f2870b) {
                                        i9 = i18;
                                        if (eVar3.f2873b == eVar2.f2873b) {
                                        }
                                        i10 = i9;
                                    } else {
                                        i9 = i18;
                                    }
                                    if ((dVar2 == j0.d.c && Objects.equals(eVar3.c, eVar2.c)) || ((eVar3.f2872a == j0.d.d && Objects.equals(eVar3.c, eVar2.c) && Objects.equals(eVar3.d, eVar2.d) && eVar3.f2875g == eVar2.f2875g && eVar3.f2876h == eVar2.f2876h) || (eVar3.f2872a == j0.d.e && Objects.equals(eVar3.e, eVar2.e)))) {
                                        i10 = i9;
                                    }
                                } else {
                                    i9 = i18;
                                }
                                i18 = i9 + 1;
                                eVarArr2 = eVarArr;
                                arrayListE = arrayList;
                            } else {
                                eVarArr = eVarArr2;
                                arrayList = arrayListE;
                                i10 = 0;
                            }
                        }
                    }
                    appCompatSpinner.setSelection(i10);
                    linearLayout2.addView(appCompatSpinner, new LinearLayout$LayoutParams(-1, -2));
                    gridLayout.addView(linearLayout2);
                    spinnerArr[i16] = appCompatSpinner;
                    i16++;
                    eVarArr2 = eVarArr;
                    arrayListE = arrayList;
                    i12 = 1;
                    i13 = 3;
                }
                gridLayout.addOnLayoutChangeListener(new r0.b(gridLayout, contextThemeWrapper2, iRound2));
                android.app.AlertDialog alertDialogCreate2 = new android.app.AlertDialog$Builder(contextThemeWrapper2, 2132017808).setView(viewInflate).create();
                viewInflate.findViewById(2131297120).setOnClickListener(new r0.c(eVar, switchCompat, spinnerArr, gVar, alertDialogCreate2));
                viewInflate.findViewById(2131297117).setOnClickListener(new r0.d(alertDialogCreate2, 0));
                alertDialogCreate2.show();
                if (alertDialogCreate2.getWindow() != null) {
                    alertDialogCreate2.getWindow().setLayout(Math.min(contextThemeWrapper2.getResources().getDisplayMetrics().widthPixels - (iRound2 * 2), Math.round(contextThemeWrapper2.getResources().getDisplayMetrics().density * 960.0f)), -2);
                }
                break;
            case 26:
                mainActivity.d++;
                Handler handler = mainActivity.e;
                handler.removeCallbacksAndMessages(null);
                handler.postDelayed(new m0(mainActivity, 17), 1000L);
                if (mainActivity.d >= 10) {
                    mainActivity.d = 0;
                    y5.k.u(mainActivity, new Intent(mainActivity.getApplicationContext(), (Class<?>) TestSpaceActivity.class).addFlags(268435456), null);
                }
                break;
            case 27:
                String str28 = MainActivity.f688e1;
                new y2(MainActivity.f693k1[h0.b.o().loadInt(m.h(new byte[]{24, -50, 0, 119, 15, -5, 42, 26, 53}, new byte[]{65, -125, 97, 7, 124, -73, 67, 105}), 0)], mainActivity);
                break;
            case 28:
                if (mainActivity.w.isEmpty()) {
                    y5.k.x(mainActivity, mainActivity.getText(2131952485));
                } else {
                    h0.b.a();
                    h0.b.c().OpenProPri();
                }
                break;
            default:
                if (mainActivity.w.isEmpty()) {
                    y5.k.x(mainActivity, mainActivity.getText(2131952485));
                } else {
                    h0.b.a();
                    h0.b.c().OpenProGu();
                }
                break;
        }
    }
}
