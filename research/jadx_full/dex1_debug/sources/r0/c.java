package r0;

import android.app.AlertDialog;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent$Callback;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.Button;
import android.widget.FrameLayout$LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.core.graphics.Insets;
import b1.m;
import com.example.navistart.LounchB;
import com.example.navistart.MainActivity;
import com.google.protobuf.q;
import e0.g;
import e0.r1;
import j0.f;
import kotlin.jvm.internal.ByteCompanionObject;
import s1.o;
import s1.r;
import t1.j;
import t1.k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class c implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4931b = 0;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ KeyEvent$Callback f4932f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c(e eVar, SwitchCompat switchCompat, Spinner[] spinnerArr, g gVar, AlertDialog alertDialog) {
        this.c = eVar;
        this.d = switchCompat;
        this.e = spinnerArr;
        this.f4932f = alertDialog;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        j jVar;
        j jVar2;
        switch (this.f4931b) {
            case 0:
                e eVar = (e) this.c;
                SwitchCompat switchCompat = (SwitchCompat) this.d;
                Spinner[] spinnerArr = (Spinner[]) this.e;
                AlertDialog alertDialog = (AlertDialog) this.f4932f;
                d6.d dVar = eVar.f4935b;
                dVar.f1780a = switchCompat.isChecked();
                j0.e[] eVarArr = (j0.e[]) dVar.f1781b;
                for (int i9 = 0; i9 < 8; i9++) {
                    eVarArr[i9] = (j0.e) spinnerArr[i9].getSelectedItem();
                }
                h0.b.o().saveInt(e.c, dVar.f1780a ? 8 : 6);
                for (int i10 = 0; i10 < 8; i10++) {
                    f.f(e.d + i10, eVarArr[i10]);
                }
                String str = MainActivity.f688e1;
                Drawable[] drawableArrA = e.a(eVar.f4934a);
                r5.c cVar = LounchB.f685h;
                if (cVar != null) {
                    LounchB lounchB = (LounchB) cVar.c;
                    j jVar3 = lounchB.c;
                    if (jVar3 != null) {
                        jVar3.setImageRun(drawableArrA);
                    }
                    m mVar = lounchB.d;
                    if (mVar != null && (jVar2 = (j) mVar.d) != null) {
                        jVar2.setImageRun(drawableArrA);
                    }
                    k kVar = lounchB.e;
                    if (kVar != null && (jVar = kVar.f5372b) != null) {
                        jVar.setImageRun(drawableArrA);
                    }
                }
                alertDialog.dismiss();
                break;
            default:
                s1.k kVar2 = (s1.k) this.c;
                r rVar = kVar2.f5106b;
                AlertDialog[] alertDialogArr = (AlertDialog[]) this.d;
                RadioGroup radioGroup = (RadioGroup) this.e;
                TextView textView = (TextView) this.f4932f;
                AlertDialog alertDialog2 = alertDialogArr[0];
                if (alertDialog2 != null) {
                    alertDialog2.hide();
                    View viewFindViewById = radioGroup.findViewById(radioGroup.getCheckedRadioButtonId());
                    Object tag = viewFindViewById == null ? null : viewFindViewById.getTag();
                    o oVarB = tag instanceof o ? (o) tag : rVar.b();
                    r1 r1Var = new r1(kVar2, radioGroup, textView, alertDialog2);
                    kVar2.removeCallbacks(kVar2.f5108g);
                    kVar2.f5111j = true;
                    kVar2.f5113l = oVarB;
                    kVar2.f5112k = rVar.c();
                    kVar2.f5116o = r1Var;
                    kVar2.f5110i = false;
                    kVar2.B();
                    Button button = kVar2.f5107f;
                    button.setVisibility(0);
                    button.setContentDescription(e0.m.h(new byte[]{-103, -33, 84, -106, 75, -11, -126, -27, -104, -62, 84, -109, 75, -4, -126, -24, -104, -62, 84, -106, -70, -91, -24, ByteCompanionObject.MIN_VALUE, -12, -112, 58, -13, 37, -91, -24, -127, -54, 96, 84, -111, 74, -63, -126, -18, -103, -5, 85, -81, -70, -91, -32, -127, -62, -112, 53, -14, 26, -91, -30, ByteCompanionObject.MIN_VALUE, -12, -112, 57, -13, 36, -91, -31, ByteCompanionObject.MIN_VALUE, -9, 96, 84, -103, 75, -11, -126, -32, -104, -49}, new byte[]{73, 64, -124, 35, -102, 117, 82, 80}));
                    button.setOnTouchListener(new s1.d(kVar2, 2));
                    LinearLayout linearLayout = new LinearLayout(kVar2.getContext());
                    kVar2.f5114m = linearLayout;
                    linearLayout.setOrientation(1);
                    kVar2.f5114m.setGravity(17);
                    kVar2.f5114m.setPadding(kVar2.h(18), kVar2.h(14), kVar2.h(18), kVar2.h(14));
                    kVar2.f5114m.setBackground(kVar2.o(-233299668, 17, -11486750));
                    kVar2.f5114m.setElevation(kVar2.h(24));
                    TextView textViewX = kVar2.x(16, -1, e0.m.h(new byte[]{-42, -11, -48, 77, -37, 77, -9, 13, -41, -24, -48, 72, -37, 68, -9, 0, -41, -24, -48, 77, 42, 29, -99, 104, -69, -70, -66, 40, -75, 29, -99, 105, -123, 74, -48, 74, -38, 121, -9, 6, -42, -47, -47, 116, 42, 29, -99, 105, -122, -70, -80, 41, -123}, new byte[]{6, 106, 0, -8, 10, -51, 39, -72}));
                    textViewX.setGravity(17);
                    kVar2.f5114m.addView(textViewX);
                    StringBuilder sb = new StringBuilder();
                    sb.append(e0.m.h(new byte[]{-101, -88, -113, 5, -14, -44, -22, -45, -102, -79, -113, 3, -13, -20, 0, 75}, new byte[]{75, 55, 95, -69, 34, 99, 58, 107}));
                    sb.append(kVar2.f5112k);
                    TextView textViewX2 = kVar2.x(14, -11486750, q.i(new byte[]{-80}, new byte[]{-107, 14, -24, 102, 5, -13, 10, 4}, sb));
                    kVar2.f5115n = textViewX2;
                    textViewX2.setGravity(17);
                    kVar2.f5115n.setPadding(0, kVar2.h(4), 0, kVar2.h(10));
                    kVar2.f5114m.addView(kVar2.f5115n);
                    LinearLayout linearLayout2 = new LinearLayout(kVar2.getContext());
                    linearLayout2.setGravity(17);
                    Button buttonT = kVar2.t(e0.m.h(new byte[]{68, 20, 115, -123, 43, 86, -64, -80, 68, 55, 114, -73}, new byte[]{-108, -118, -94, 7, -5, -22, 16, 5}), false);
                    buttonT.setOnClickListener(new s1.c(kVar2, 3));
                    linearLayout2.addView(buttonT, new LinearLayout$LayoutParams(kVar2.h(140), kVar2.h(48)));
                    Button buttonT2 = kVar2.t(e0.m.h(new byte[]{-10, -94, -80, 93, -53, 14, -28, -6, -10, -77, -80, 94, -54, 51, -28, -8, -9, -113, 64, 51, -91, 91, -117, -86, -111, -45, -40, 50, -100, 91, -115, -85, -88}, new byte[]{38, 3, 96, -29, 26, -117, 53, 122}), true);
                    buttonT2.setOnClickListener(new s1.c(kVar2, 4));
                    LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(kVar2.h(190), kVar2.h(48));
                    linearLayout$LayoutParams.setMarginStart(kVar2.h(10));
                    linearLayout2.addView(buttonT2, linearLayout$LayoutParams);
                    kVar2.f5114m.addView(linearLayout2);
                    FrameLayout$LayoutParams frameLayout$LayoutParams = new FrameLayout$LayoutParams(-2, -2);
                    i10 = oVarB == o.d ? 1 : 0;
                    frameLayout$LayoutParams.gravity = (i10 != 0 ? 80 : 48) | 1;
                    Insets insets = kVar2.f5109h;
                    if (i10 != 0) {
                        frameLayout$LayoutParams.bottomMargin = kVar2.h(18) + insets.bottom;
                    } else {
                        frameLayout$LayoutParams.topMargin = kVar2.h(18) + insets.top;
                    }
                    kVar2.addView(kVar2.f5114m, frameLayout$LayoutParams);
                    kVar2.d();
                    break;
                }
                break;
        }
    }

    public /* synthetic */ c(s1.k kVar, AlertDialog[] alertDialogArr, RadioGroup radioGroup, TextView textView) {
        this.c = kVar;
        this.d = alertDialogArr;
        this.e = radioGroup;
        this.f4932f = textView;
    }
}
