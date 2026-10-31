package p132m0;

import android.content.Context;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import com.bumptech.glide.manager.C1074t;
import com.example.navistart.R;
import java.io.File;
import java.util.ArrayList;
import p084h7.C1683k;

/* JADX INFO: renamed from: m0.f3 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC2291f3 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f6079b = 1;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C2331n3 f6080c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ AlertDialog f6081d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ int f6082e;

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ TextView f6083f;

    /* JADX INFO: renamed from: g */
    public final /* synthetic */ ListView f6084g;

    /* JADX INFO: renamed from: h */
    public final /* synthetic */ Object f6085h;

    public /* synthetic */ RunnableC2291f3(C2331n3 c2331n3, AlertDialog alertDialog, int i10, ArrayList arrayList, TextView textView, ListView listView) {
        this.f6080c = c2331n3;
        this.f6081d = alertDialog;
        this.f6082e = i10;
        this.f6085h = arrayList;
        this.f6083f = textView;
        this.f6084g = listView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6079b) {
            case 0:
                C1074t c1074t = (C1074t) this.f6085h;
                ((C1683k) c1074t.f1185e).m2797o((Context) c1074t.f1184d);
                ArrayList arrayListM1361e = c1074t.m1361e();
                C2331n3 c2331n3 = this.f6080c;
                c2331n3.f6255d.post(new RunnableC2291f3(c2331n3, this.f6081d, this.f6082e, arrayListM1361e, this.f6083f, this.f6084g));
                break;
            default:
                ArrayList arrayList = (ArrayList) this.f6085h;
                C2331n3 c2331n4 = this.f6080c;
                if (c2331n4.getView() != null) {
                    AlertDialog alertDialog = c2331n4.f6267p;
                    AlertDialog alertDialog2 = this.f6081d;
                    if (alertDialog == alertDialog2) {
                        if (this.f6082e == c2331n4.f6270s) {
                            if (arrayList.isEmpty()) {
                                Toast.makeText(c2331n4.requireContext(), R.string.usb_not, 1).show();
                            } else {
                                String[] strArr = new String[arrayList.size()];
                                for (int i10 = 0; i10 < arrayList.size(); i10++) {
                                    strArr[i10] = ((File) arrayList.get(i10)).getAbsolutePath();
                                }
                                AlertDialog alertDialog3 = c2331n4.f6268q;
                                if (alertDialog3 != null) {
                                    alertDialog3.dismiss();
                                }
                                AlertDialog.Builder builder = new AlertDialog.Builder(c2331n4.requireContext(), R.style.ThemeOverlay_JCarTools_VideoAlert);
                                c2331n4.f6268q = builder.setTitle(R.string.usb_chos).setAdapter(new ArrayAdapter(builder.getContext(), R.layout.video_browser_item, strArr), new DialogInterfaceOnClickListenerC2341q0(c2331n4, arrayList, alertDialog2, this.f6083f, this.f6084g, 1)).show();
                            }
                            break;
                        }
                    }
                }
                break;
        }
    }

    public /* synthetic */ RunnableC2291f3(C2331n3 c2331n3, C1074t c1074t, AlertDialog alertDialog, int i10, TextView textView, ListView listView) {
        this.f6080c = c2331n3;
        this.f6085h = c1074t;
        this.f6081d = alertDialog;
        this.f6082e = i10;
        this.f6083f = textView;
        this.f6084g = listView;
    }
}
