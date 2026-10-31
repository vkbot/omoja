package m0;

import android.content.Context;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AlertDialog$Builder;
import java.io.File;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class f3 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3425b = 1;
    public final /* synthetic */ n3 c;
    public final /* synthetic */ AlertDialog d;
    public final /* synthetic */ int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ TextView f3426f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ ListView f3427g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f3428h;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ f3(n3 n3Var, AlertDialog alertDialog, int i9, ArrayList arrayList, TextView textView, ListView listView) {
        this.c = n3Var;
        this.d = alertDialog;
        this.e = i9;
        this.f3428h = arrayList;
        this.f3426f = textView;
        this.f3427g = listView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3425b) {
            case 0:
                com.bumptech.glide.manager.t tVar = (com.bumptech.glide.manager.t) this.f3428h;
                ((h7.k) tVar.e).o((Context) tVar.d);
                ArrayList arrayListE = tVar.e();
                n3 n3Var = this.c;
                n3Var.d.post(new f3(n3Var, this.d, this.e, arrayListE, this.f3426f, this.f3427g));
                break;
            default:
                ArrayList arrayList = (ArrayList) this.f3428h;
                n3 n3Var2 = this.c;
                if (n3Var2.getView() != null) {
                    AlertDialog alertDialog = n3Var2.f3546p;
                    AlertDialog alertDialog2 = this.d;
                    if (alertDialog == alertDialog2) {
                        if (this.e == n3Var2.f3548s) {
                            if (arrayList.isEmpty()) {
                                Toast.makeText(n3Var2.requireContext(), 2131952662, 1).show();
                            } else {
                                String[] strArr = new String[arrayList.size()];
                                for (int i9 = 0; i9 < arrayList.size(); i9++) {
                                    strArr[i9] = ((File) arrayList.get(i9)).getAbsolutePath();
                                }
                                AlertDialog alertDialog3 = n3Var2.f3547q;
                                if (alertDialog3 != null) {
                                    alertDialog3.dismiss();
                                }
                                AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(n3Var2.requireContext(), 2132017904);
                                n3Var2.f3547q = alertDialog$Builder.setTitle(2131952661).setAdapter(new ArrayAdapter(alertDialog$Builder.getContext(), 2131493145, strArr), new q0(n3Var2, arrayList, alertDialog2, this.f3426f, this.f3427g, 1)).show();
                            }
                            break;
                        }
                    }
                }
                break;
        }
    }

    public /* synthetic */ f3(n3 n3Var, com.bumptech.glide.manager.t tVar, AlertDialog alertDialog, int i9, TextView textView, ListView listView) {
        this.c = n3Var;
        this.f3428h = tVar;
        this.d = alertDialog;
        this.e = i9;
        this.f3426f = textView;
        this.f3427g = listView;
    }
}
