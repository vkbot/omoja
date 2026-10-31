package p132m0;

import android.content.DialogInterface;
import android.net.wifi.ScanResult;
import android.view.View;
import android.widget.EditText;
import androidx.appcompat.app.AlertDialog;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.R;
import com.woha.wifim.MainWifiManadger;
import java.io.File;
import p047e0.AbstractC1387m;
import p047e0.DialogInterfaceOnClickListenerC1346d3;
import p047e0.DialogInterfaceOnClickListenerC1348e0;
import p138m7.C2403b;
import p138m7.C2407f;

/* JADX INFO: renamed from: m0.v2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnLongClickListenerC2363v2 implements View.OnLongClickListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f6391b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ RecyclerView.Adapter f6392c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f6393d;

    public /* synthetic */ ViewOnLongClickListenerC2363v2(RecyclerView.Adapter adapter, Object obj, int i10) {
        this.f6391b = i10;
        this.f6392c = adapter;
        this.f6393d = obj;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        int i10 = this.f6391b;
        Object obj = this.f6393d;
        RecyclerView.Adapter adapter = this.f6392c;
        int i11 = 8;
        int i12 = 1;
        switch (i10) {
            case 0:
                File file = (File) obj;
                C2276c3 c2276c3 = ((C2371x2) adapter).f6414a;
                boolean z9 = c2276c3.f5987v;
                if (!z9 && !z9 && file.exists()) {
                    if (file.getParentFile() != null) {
                        EditText editText = new EditText(c2276c3.requireContext());
                        editText.setBackgroundResource(R.drawable.modern_field);
                        editText.setTextColor(ContextCompat.getColor(c2276c3.requireContext(), R.color.modern_text));
                        editText.setTextSize(18.0f);
                        editText.setSingleLine(true);
                        editText.setText(file.getName());
                        editText.setSelectAllOnFocus(true);
                        int iM3668z = c2276c3.m3668z(20);
                        editText.setPadding(iM3668z, c2276c3.m3668z(8), iM3668z, c2276c3.m3668z(8));
                        new AlertDialog.Builder(c2276c3.requireContext(), R.style.ThemeOverlay_JCarTools_ModernAlert).setTitle(R.string.user_file_manager_rename_title).setView(editText).setPositiveButton(R.string.user_file_manager_rename_action, new DialogInterfaceOnClickListenerC2373y0(c2276c3, editText, file, i12)).setNegativeButton(R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        editText.requestFocus();
                    } else {
                        c2276c3.m3664I(c2276c3.getString(R.string.user_file_manager_rename_error, file.getName()));
                    }
                }
                break;
            default:
                C2403b c2403b = ((C2407f) adapter).f6517e;
                String str = ((ScanResult) obj).SSID;
                MainWifiManadger mainWifiManadger = c2403b.f6505a;
                String str2 = MainWifiManadger.f2888v;
                new AlertDialog.Builder(mainWifiManadger).setTitle(mainWifiManadger.getResources().getString(R.string.wifi_zab_wifi)).setMessage(mainWifiManadger.getResources().getString(R.string.wifi_zab_wifi_vopros) + str + AbstractC1387m.m2421h(new byte[]{-112}, new byte[]{-81, -33, -58, 3, 46, 9, -93, 87})).setPositiveButton(mainWifiManadger.getResources().getString(R.string.yes), new DialogInterfaceOnClickListenerC1348e0(i11, mainWifiManadger, str)).setNegativeButton(mainWifiManadger.getResources().getString(R.string.no), new DialogInterfaceOnClickListenerC1346d3(2)).show();
                break;
        }
        return true;
    }
}
