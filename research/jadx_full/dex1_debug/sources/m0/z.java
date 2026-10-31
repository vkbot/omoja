package m0;

import android.R$string;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.Spinner;
import androidx.appcompat.app.AlertDialog$Builder;
import com.example.navistart.W;
import com.woha.appmanag.FilePickerActivity;
import java.util.ArrayList;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class z implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3635b;
    public final /* synthetic */ a0 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ z(a0 a0Var, int i9) {
        this.f3635b = i9;
        this.c = a0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        int selectedItemPosition;
        int i9 = this.f3635b;
        a0 a0Var = this.c;
        switch (i9) {
            case 0:
                String str = a0.f3328h;
                Intent intent = new Intent(a0Var.requireContext(), (Class<?>) FilePickerActivity.class);
                intent.putExtra(e0.m.h(new byte[]{-7, 99, -29, 116, -13, 83, 49, 83, -6, 100, -4, 120, -61, 88}, new byte[]{-97, 10, -113, 17, -84, 54, 73, 39}), e0.m.h(new byte[]{39, 90, -90, 3}, new byte[]{9, 32, -49, 115, ByteCompanionObject.MIN_VALUE, 56, 108, -54}));
                intent.putExtra(e0.m.h(new byte[]{116, 74, -36, -20, -99, 90, 28, -39, 119, 77, -61, -32, -83, 81, 59, -64, 125, 71, -43, -42, -79, 90, 10, -55}, new byte[]{18, 35, -80, -119, -62, 63, 100, -83}), 1);
                a0Var.startActivityForResult(intent, 101544);
                break;
            case 1:
                ArrayList arrayList = a0Var.c;
                Spinner spinner = a0Var.d;
                if (spinner != null && (selectedItemPosition = spinner.getSelectedItemPosition()) >= 0 && selectedItemPosition < arrayList.size()) {
                    String str2 = (String) arrayList.get(selectedItemPosition);
                    if (!a0.f3330j.equals(str2)) {
                        new AlertDialog$Builder(a0Var.requireContext()).setTitle(2131951923).setMessage(a0Var.getString(2131951922, str2)).setNegativeButton(R$string.cancel, (DialogInterface$OnClickListener) null).setPositiveButton(2131951919, new e0.e0(3, a0Var, str2)).show();
                        break;
                    }
                }
                break;
            default:
                String str3 = a0.f3328h;
                W.u(a0Var.requireContext(), i1.class, i1.x(e0.m.h(new byte[]{4, 25, -104, 74, 21}, new byte[]{102, 117, -7, 41, 126, -79, 16, -119})));
                break;
        }
    }
}
