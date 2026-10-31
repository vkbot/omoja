package p180r0;

import android.app.AlertDialog;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.core.graphics.Insets;
import com.example.navistart.LounchB;
import com.example.navistart.MainActivity;
import com.google.protobuf.AbstractC1178q;
import kotlin.jvm.internal.ByteCompanionObject;
import p016b1.C0872m;
import p043d6.C1305d;
import p047e0.AbstractC1387m;
import p047e0.C1357g;
import p047e0.C1414r1;
import p078h0.C1652b;
import p098j0.AbstractC1920f;
import p098j0.C1919e;
import p184r5.C3105c;
import p190s1.C3153k;
import p190s1.C3167r;
import p190s1.EnumC3161o;
import p190s1.ViewOnClickListenerC3137c;
import p190s1.ViewOnTouchListenerC3139d;
import p198t1.C3232j;
import p198t1.C3233k;

/* JADX INFO: renamed from: r0.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC3090c implements View.OnClickListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8779b = 0;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f8780c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f8781d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ Object f8782e;

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ KeyEvent.Callback f8783f;

    public /* synthetic */ ViewOnClickListenerC3090c(C3092e c3092e, SwitchCompat switchCompat, Spinner[] spinnerArr, C1357g c1357g, AlertDialog alertDialog) {
        this.f8780c = c3092e;
        this.f8781d = switchCompat;
        this.f8782e = spinnerArr;
        this.f8783f = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C3232j c3232j;
        C3232j c3232j2;
        switch (this.f8779b) {
            case 0:
                C3092e c3092e = (C3092e) this.f8780c;
                SwitchCompat switchCompat = (SwitchCompat) this.f8781d;
                Spinner[] spinnerArr = (Spinner[]) this.f8782e;
                AlertDialog alertDialog = (AlertDialog) this.f8783f;
                C1305d c1305d = c3092e.f8789b;
                c1305d.f3111a = switchCompat.isChecked();
                C1919e[] c1919eArr = (C1919e[]) c1305d.f3112b;
                for (int i10 = 0; i10 < 8; i10++) {
                    c1919eArr[i10] = (C1919e) spinnerArr[i10].getSelectedItem();
                }
                C1652b.m2745o().saveInt(C3092e.f8786c, c1305d.f3111a ? 8 : 6);
                for (int i11 = 0; i11 < 8; i11++) {
                    AbstractC1920f.m3008f(C3092e.f8787d + i11, c1919eArr[i11]);
                }
                String str = MainActivity.f1288e1;
                Drawable[] drawableArrM4924a = C3092e.m4924a(c3092e.f8788a);
                C3105c c3105c = LounchB.f1282h;
                if (c3105c != null) {
                    LounchB lounchB = (LounchB) c3105c.f8867c;
                    C3232j c3232j3 = lounchB.f1284c;
                    if (c3232j3 != null) {
                        c3232j3.setImageRun(drawableArrM4924a);
                    }
                    C0872m c0872m = lounchB.f1285d;
                    if (c0872m != null && (c3232j2 = (C3232j) c0872m.f602d) != null) {
                        c3232j2.setImageRun(drawableArrM4924a);
                    }
                    C3233k c3233k = lounchB.f1286e;
                    if (c3233k != null && (c3232j = c3233k.f9488b) != null) {
                        c3232j.setImageRun(drawableArrM4924a);
                    }
                }
                alertDialog.dismiss();
                break;
            default:
                C3153k c3153k = (C3153k) this.f8780c;
                C3167r c3167r = c3153k.f9054b;
                AlertDialog[] alertDialogArr = (AlertDialog[]) this.f8781d;
                RadioGroup radioGroup = (RadioGroup) this.f8782e;
                TextView textView = (TextView) this.f8783f;
                AlertDialog alertDialog2 = alertDialogArr[0];
                if (alertDialog2 != null) {
                    alertDialog2.hide();
                    View viewFindViewById = radioGroup.findViewById(radioGroup.getCheckedRadioButtonId());
                    Object tag = viewFindViewById == null ? null : viewFindViewById.getTag();
                    EnumC3161o enumC3161oM5079b = tag instanceof EnumC3161o ? (EnumC3161o) tag : c3167r.m5079b();
                    C1414r1 c1414r1 = new C1414r1(c3153k, radioGroup, textView, alertDialog2);
                    c3153k.removeCallbacks(c3153k.f9059g);
                    c3153k.f9062j = true;
                    c3153k.f9064l = enumC3161oM5079b;
                    c3153k.f9063k = c3167r.m5080c();
                    c3153k.f9067o = c1414r1;
                    c3153k.f9061i = false;
                    c3153k.m4989B();
                    Button button = c3153k.f9058f;
                    button.setVisibility(0);
                    button.setContentDescription(AbstractC1387m.m2421h(new byte[]{-103, -33, 84, -106, 75, -11, -126, -27, -104, -62, 84, -109, 75, -4, -126, -24, -104, -62, 84, -106, -70, -91, -24, ByteCompanionObject.MIN_VALUE, -12, -112, 58, -13, 37, -91, -24, -127, -54, 96, 84, -111, 74, -63, -126, -18, -103, -5, 85, -81, -70, -91, -32, -127, -62, -112, 53, -14, 26, -91, -30, ByteCompanionObject.MIN_VALUE, -12, -112, 57, -13, 36, -91, -31, ByteCompanionObject.MIN_VALUE, -9, 96, 84, -103, 75, -11, -126, -32, -104, -49}, new byte[]{73, 64, -124, 35, -102, 117, 82, 80}));
                    button.setOnTouchListener(new ViewOnTouchListenerC3139d(c3153k, 2));
                    LinearLayout linearLayout = new LinearLayout(c3153k.getContext());
                    c3153k.f9065m = linearLayout;
                    linearLayout.setOrientation(1);
                    c3153k.f9065m.setGravity(17);
                    c3153k.f9065m.setPadding(c3153k.m4997h(18), c3153k.m4997h(14), c3153k.m4997h(18), c3153k.m4997h(14));
                    c3153k.f9065m.setBackground(c3153k.m5003o(-233299668, 17, -11486750));
                    c3153k.f9065m.setElevation(c3153k.m4997h(24));
                    TextView textViewM5011x = c3153k.m5011x(16, -1, AbstractC1387m.m2421h(new byte[]{-42, -11, -48, 77, -37, 77, -9, 13, -41, -24, -48, 72, -37, 68, -9, 0, -41, -24, -48, 77, 42, 29, -99, 104, -69, -70, -66, 40, -75, 29, -99, 105, -123, 74, -48, 74, -38, 121, -9, 6, -42, -47, -47, 116, 42, 29, -99, 105, -122, -70, -80, 41, -123}, new byte[]{6, 106, 0, -8, 10, -51, 39, -72}));
                    textViewM5011x.setGravity(17);
                    c3153k.f9065m.addView(textViewM5011x);
                    StringBuilder sb = new StringBuilder();
                    sb.append(AbstractC1387m.m2421h(new byte[]{-101, -88, -113, 5, -14, -44, -22, -45, -102, -79, -113, 3, -13, -20, 0, 75}, new byte[]{75, 55, 95, -69, 34, 99, 58, 107}));
                    sb.append(c3153k.f9063k);
                    TextView textViewM5011x2 = c3153k.m5011x(14, -11486750, AbstractC1178q.m2075i(new byte[]{-80}, new byte[]{-107, 14, -24, 102, 5, -13, 10, 4}, sb));
                    c3153k.f9066n = textViewM5011x2;
                    textViewM5011x2.setGravity(17);
                    c3153k.f9066n.setPadding(0, c3153k.m4997h(4), 0, c3153k.m4997h(10));
                    c3153k.f9065m.addView(c3153k.f9066n);
                    LinearLayout linearLayout2 = new LinearLayout(c3153k.getContext());
                    linearLayout2.setGravity(17);
                    Button buttonM5008t = c3153k.m5008t(AbstractC1387m.m2421h(new byte[]{68, 20, 115, -123, 43, 86, -64, -80, 68, 55, 114, -73}, new byte[]{-108, -118, -94, 7, -5, -22, 16, 5}), false);
                    buttonM5008t.setOnClickListener(new ViewOnClickListenerC3137c(c3153k, 3));
                    linearLayout2.addView(buttonM5008t, new LinearLayout.LayoutParams(c3153k.m4997h(140), c3153k.m4997h(48)));
                    Button buttonM5008t2 = c3153k.m5008t(AbstractC1387m.m2421h(new byte[]{-10, -94, -80, 93, -53, 14, -28, -6, -10, -77, -80, 94, -54, 51, -28, -8, -9, -113, 64, 51, -91, 91, -117, -86, -111, -45, -40, 50, -100, 91, -115, -85, -88}, new byte[]{38, 3, 96, -29, 26, -117, 53, 122}), true);
                    buttonM5008t2.setOnClickListener(new ViewOnClickListenerC3137c(c3153k, 4));
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(c3153k.m4997h(190), c3153k.m4997h(48));
                    layoutParams.setMarginStart(c3153k.m4997h(10));
                    linearLayout2.addView(buttonM5008t2, layoutParams);
                    c3153k.f9065m.addView(linearLayout2);
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
                    i11 = enumC3161oM5079b == EnumC3161o.f9136d ? 1 : 0;
                    layoutParams2.gravity = (i11 != 0 ? 80 : 48) | 1;
                    Insets insets = c3153k.f9060h;
                    if (i11 != 0) {
                        layoutParams2.bottomMargin = c3153k.m4997h(18) + insets.bottom;
                    } else {
                        layoutParams2.topMargin = c3153k.m4997h(18) + insets.top;
                    }
                    c3153k.addView(c3153k.f9065m, layoutParams2);
                    c3153k.m4993d();
                    break;
                }
                break;
        }
    }

    public /* synthetic */ ViewOnClickListenerC3090c(C3153k c3153k, AlertDialog[] alertDialogArr, RadioGroup radioGroup, TextView textView) {
        this.f8780c = c3153k;
        this.f8781d = alertDialogArr;
        this.f8782e = radioGroup;
        this.f8783f = textView;
    }
}
