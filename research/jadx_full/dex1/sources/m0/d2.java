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

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class d2 implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3380b;
    public final /* synthetic */ e2 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d2(e2 e2Var, int i9) {
        this.f3380b = i9;
        this.c = e2Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        int selectedItemPosition;
        int i9 = this.f3380b;
        e2 e2Var = this.c;
        switch (i9) {
            case 0:
                String str = e2.f3407j;
                Intent intent = new Intent(e2Var.requireContext(), (Class<?>) FilePickerActivity.class);
                intent.putExtra(e0.m.h(new byte[]{-42, -11, -18, 4, -55, -80, 101, 12, -43, -14, -15, 8, -7, -69}, new byte[]{-80, -100, -126, 97, -106, -43, 29, 120}), e0.m.h(new byte[]{-101, -55, -104, -116}, new byte[]{-75, -77, -15, -4, -90, -80, -93, 16}));
                intent.putExtra(e0.m.h(new byte[]{0, 103, 60, -75, -28, -41, -92, -47, 3, 96, 35, -71, -44, -36, -125, -56, 9, 106, 53, -113, -56, -41, -78, -63}, new byte[]{102, 14, 80, -48, -69, -78, -36, -91}), 1);
                e2Var.startActivityForResult(intent, TypedValues.TYPE_TARGET);
                break;
            case 1:
                ArrayList arrayList = e2Var.f3413g;
                Spinner spinner = e2Var.f3411b;
                if (spinner != null && (selectedItemPosition = spinner.getSelectedItemPosition()) >= 0 && selectedItemPosition < arrayList.size()) {
                    String str2 = (String) arrayList.get(selectedItemPosition);
                    if (!e2.f3409l.equals(str2)) {
                        new AlertDialog$Builder(e2Var.requireContext()).setTitle(2131951923).setMessage(e2Var.getString(2131951922, str2)).setNegativeButton(R$string.cancel, (DialogInterface$OnClickListener) null).setPositiveButton(2131951919, new e0.e0(5, e2Var, str2)).show();
                        break;
                    }
                }
                break;
            case 2:
                ArrayList arrayList2 = e2Var.f3413g;
                int selectedItemPosition2 = e2Var.f3411b.getSelectedItemPosition();
                if (selectedItemPosition2 >= 0 && selectedItemPosition2 < arrayList2.size()) {
                    String str3 = (String) arrayList2.get(selectedItemPosition2);
                    if (e2Var.u(str3) != null) {
                        Context contextRequireContext = e2Var.requireContext();
                        String str4 = o0.c;
                        String strH = e0.m.h(new byte[]{62, 19, 111, 36, 58, 75, -124, -95, 25, 15, 91, 53, 16, 78, -78}, new byte[]{115, 106, 56, 65, 88, 27, -10, -50});
                        Bundle bundle = new Bundle();
                        bundle.putString(o0.c, str3);
                        bundle.putString(o0.d, strH);
                        W.t(contextRequireContext, o0.class, bundle);
                        break;
                    }
                }
                break;
            default:
                String str5 = e2.f3407j;
                W.u(e2Var.requireContext(), i1.class, i1.x(e0.m.h(new byte[]{-29, -47, 97}, new byte[]{-117, -92, 5, -88, 93, -63, 56, -9})));
                break;
        }
    }
}
