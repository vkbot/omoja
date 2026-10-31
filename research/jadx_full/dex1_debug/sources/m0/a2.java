package m0;

import android.R$string;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.Spinner;
import androidx.appcompat.app.AlertDialog$Builder;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.example.navistart.W;
import com.woha.appmanag.FilePickerActivity;
import java.util.ArrayList;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class a2 implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3335b;
    public final /* synthetic */ c2 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a2(c2 c2Var, int i9) {
        this.f3335b = i9;
        this.c = c2Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        int selectedItemPosition;
        int i9 = this.f3335b;
        c2 c2Var = this.c;
        switch (i9) {
            case 0:
                String str = c2.f3348i;
                Intent intent = new Intent(c2Var.requireContext(), (Class<?>) FilePickerActivity.class);
                intent.putExtra(e0.m.h(new byte[]{-125, -45, -69, -53, 35, 72, -108, -93, ByteCompanionObject.MIN_VALUE, -44, -92, -57, 19, 67}, new byte[]{-27, -70, -41, -82, 124, 45, -20, -41}), e0.m.h(new byte[]{-10, 86, 115, -32}, new byte[]{-40, 44, 26, -112, -25, 113, -117, -63}));
                intent.putExtra(e0.m.h(new byte[]{-92, -60, 124, -91, 24, -85, 91, -37, -89, -61, 99, -87, 40, -96, 124, -62, -83, -55, 117, -97, 52, -85, 77, -53}, new byte[]{-62, -83, 16, -64, 71, -50, 35, -81}), 1);
                c2Var.startActivityForResult(intent, TypedValues.TYPE_TARGET);
                break;
            case 1:
                ArrayList arrayList = c2Var.f3353g;
                Spinner spinner = c2Var.f3351b;
                if (spinner != null && (selectedItemPosition = spinner.getSelectedItemPosition()) >= 0 && selectedItemPosition < arrayList.size()) {
                    String str2 = (String) arrayList.get(selectedItemPosition);
                    if (!c2.f3350k.equals(str2)) {
                        new AlertDialog$Builder(c2Var.requireContext()).setTitle(2131951923).setMessage(c2Var.getString(2131951922, str2)).setNegativeButton(R$string.cancel, (DialogInterface$OnClickListener) null).setPositiveButton(2131951919, new e0.e0(4, c2Var, str2)).show();
                        break;
                    }
                }
                break;
            case 2:
                ArrayList arrayList2 = c2Var.f3353g;
                int selectedItemPosition2 = c2Var.f3351b.getSelectedItemPosition();
                if (selectedItemPosition2 >= 0 && selectedItemPosition2 < arrayList2.size()) {
                    String str3 = (String) arrayList2.get(selectedItemPosition2);
                    if (c2Var.u(str3) != null) {
                        Context contextRequireContext = c2Var.requireContext();
                        String str4 = c2.f3349j;
                        String str5 = o0.c;
                        Bundle bundle = new Bundle();
                        bundle.putString(o0.c, str3);
                        bundle.putString(o0.d, str4);
                        W.t(contextRequireContext, o0.class, bundle);
                        break;
                    }
                }
                break;
            default:
                String str6 = c2.f3348i;
                W.u(c2Var.requireContext(), i1.class, i1.x(e0.m.h(new byte[]{99, -60, 96, 72, Base64.padSymbol}, new byte[]{1, -85, 1, 58, 89, -39, 91, 43})));
                break;
        }
    }
}
