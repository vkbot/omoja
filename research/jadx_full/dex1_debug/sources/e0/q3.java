package e0;

import android.app.AlertDialog$Builder;
import android.content.Intent;
import android.util.Patterns;
import android.view.View;
import android.view.View$OnClickListener;
import com.example.navistart.PermActivity;
import com.example.navistart.UpdateActivity;
import com.example.navistart.punto;
import com.woha.wifim.MainWifiManadger;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class q3 implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1933b;
    public final /* synthetic */ punto c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ q3(punto puntoVar, int i9) {
        this.f1933b = i9;
        this.c = puntoVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        int i9 = this.f1933b;
        punto puntoVar = this.c;
        switch (i9) {
            case 0:
                String str = punto.r;
                puntoVar.u(new s3(h0.b.o().loadString(m.h(new byte[]{-90, -37, ByteCompanionObject.MIN_VALUE}, new byte[]{-53, -82, -14, -46, 67, -116, -115, 54}), m.h(new byte[]{ByteCompanionObject.MAX_VALUE}, new byte[]{78, 46, 113, 76, 42, 23, -11, -119})), punto.t(puntoVar.c), punto.w(x1.f1989q), puntoVar.f1011k.getText().toString(), m.h(new byte[]{26, 121}, new byte[]{106, 15, 106, 69, -69, -7, 105, 23}), 0));
                puntoVar.f1011k.setVisibility(0);
                break;
            case 1:
                String str2 = punto.r;
                punto.t = Boolean.FALSE;
                h0.b.o().saveBoolean(m.h(new byte[]{-47, -27}, new byte[]{-80, -112, -8, -123, -56, 113, -15, 15}), punto.t.booleanValue());
                h0.b.o().saveString(m.h(new byte[]{-71, -118, 45}, new byte[]{-44, -1, 95, 86, -43, 77, 113, -93}), "");
                puntoVar.x();
                break;
            case 2:
                String str3 = punto.r;
                String str4 = g0.f1839a;
                f0[] f0VarArrValues = f0.values();
                AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(puntoVar);
                alertDialog$Builder.setTitle(m.h(new byte[]{-13, 69, -92, -85, -83, -1, 25, 63, -47, 67, -84, -79, -65, -3, 92}, new byte[]{-80, 45, -53, -60, -34, -102, 57, 83}));
                String[] strArr = new String[f0VarArrValues.length];
                for (int i10 = 0; i10 < f0VarArrValues.length; i10++) {
                    String str5 = f0VarArrValues[i10].f1833b;
                    strArr[i10] = str5;
                    if ("".equals(str5)) {
                        strArr[i10] = puntoVar.getResources().getString(2131951616);
                    }
                }
                alertDialog$Builder.setItems(strArr, new e0(0, puntoVar, f0VarArrValues));
                alertDialog$Builder.show();
                break;
            case 3:
                String str6 = punto.r;
                y5.k.u(puntoVar, new Intent(puntoVar, (Class<?>) UpdateActivity.class), null);
                break;
            case 4:
                String str7 = punto.r;
                puntoVar.finish();
                break;
            case 5:
                String str8 = punto.r;
                y5.k.u(puntoVar, new Intent(puntoVar, (Class<?>) PermActivity.class), null);
                break;
            case 6:
                String str9 = punto.r;
                y5.k.u(puntoVar, new Intent(puntoVar.c, (Class<?>) MainWifiManadger.class), null);
                break;
            default:
                String string = puntoVar.f1010j.getText().toString();
                if (string == null ? false : Patterns.EMAIL_ADDRESS.matcher(string).matches()) {
                    y5.k.w(2131952470, puntoVar.getApplicationContext());
                    String string2 = puntoVar.f1010j.getText().toString();
                    puntoVar.u(new s3(string2, punto.t(puntoVar.c), punto.w(x1.f1989q), "", m.h(new byte[]{64, -27}, new byte[]{54, -120, 123, 71, 40, -63, -85, 56}), 0));
                    h0.b.o().saveString(punto.t(puntoVar.c), string2);
                    puntoVar.v(true);
                    puntoVar.f1011k.requestFocus();
                    puntoVar.f1012l.setEnabled(false);
                    new r3(puntoVar).start();
                } else {
                    y5.k.w(2131952469, puntoVar.getApplicationContext());
                }
                break;
        }
    }
}
