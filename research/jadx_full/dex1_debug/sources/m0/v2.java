package m0;

import android.content.DialogInterface$OnClickListener;
import android.net.wifi.ScanResult;
import android.view.View;
import android.view.View$OnLongClickListener;
import android.widget.EditText;
import androidx.appcompat.app.AlertDialog$Builder;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView$Adapter;
import com.woha.wifim.MainWifiManadger;
import java.io.File;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class v2 implements View$OnLongClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3614b;
    public final /* synthetic */ RecyclerView$Adapter c;
    public final /* synthetic */ Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ v2(RecyclerView$Adapter recyclerView$Adapter, Object obj, int i9) {
        this.f3614b = i9;
        this.c = recyclerView$Adapter;
        this.d = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnLongClickListener
    public final boolean onLongClick(View view) {
        int i9 = this.f3614b;
        Object obj = this.d;
        RecyclerView$Adapter recyclerView$Adapter = this.c;
        switch (i9) {
            case 0:
                File file = (File) obj;
                c3 c3Var = ((x2) recyclerView$Adapter).f3628a;
                boolean z8 = c3Var.f3370v;
                if (!z8 && !z8 && file.exists()) {
                    if (file.getParentFile() != null) {
                        EditText editText = new EditText(c3Var.requireContext());
                        editText.setBackgroundResource(2131165578);
                        editText.setTextColor(ContextCompat.getColor(c3Var.requireContext(), 2131035009));
                        editText.setTextSize(18.0f);
                        editText.setSingleLine(true);
                        editText.setText(file.getName());
                        editText.setSelectAllOnFocus(true);
                        int iZ = c3Var.z(20);
                        editText.setPadding(iZ, c3Var.z(8), iZ, c3Var.z(8));
                        new AlertDialog$Builder(c3Var.requireContext(), 2132017903).setTitle(2131952725).setView(editText).setPositiveButton(2131952720, new y0(c3Var, editText, file, 1)).setNegativeButton(2131951882, (DialogInterface$OnClickListener) null).show();
                        editText.requestFocus();
                    } else {
                        c3Var.I(c3Var.getString(2131952723, file.getName()));
                    }
                }
                break;
            default:
                m7.b bVar = ((m7.f) recyclerView$Adapter).e;
                String str = ((ScanResult) obj).SSID;
                MainWifiManadger mainWifiManadger = bVar.f3679a;
                String str2 = MainWifiManadger.f1632v;
                new AlertDialog$Builder(mainWifiManadger).setTitle(mainWifiManadger.getResources().getString(2131952894)).setMessage(mainWifiManadger.getResources().getString(2131952895) + str + e0.m.h(new byte[]{-112}, new byte[]{-81, -33, -58, 3, 46, 9, -93, 87})).setPositiveButton(mainWifiManadger.getResources().getString(2131952899), new e0.e0(8, mainWifiManadger, str)).setNegativeButton(mainWifiManadger.getResources().getString(2131952432), new e0.d3(2)).show();
                break;
        }
        return true;
    }
}
