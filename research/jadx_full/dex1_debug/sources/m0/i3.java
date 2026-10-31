package m0;

import android.content.DialogInterface$OnClickListener;
import android.os.Environment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AlertDialog$Builder;
import java.io.File;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class i3 implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3477b;
    public final /* synthetic */ n3 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ i3(n3 n3Var, int i9) {
        this.f3477b = i9;
        this.c = n3Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        switch (this.f3477b) {
            case 0:
                n3 n3Var = this.c;
                if (!(n3Var.getParentFragment() instanceof l0.a)) {
                    n3Var.requireActivity().finish();
                } else {
                    ((l0.a) n3Var.getParentFragment()).dismiss();
                }
                break;
            case 1:
                this.c.w();
                break;
            case 2:
                n3 n3Var2 = this.c;
                n3Var2.f3545o.execute(new androidx.activity.f(n3Var2, n3Var2.f3544n, n3Var2.f3537g, 8));
                break;
            default:
                n3 n3Var3 = this.c;
                AlertDialog alertDialog = n3Var3.f3546p;
                if (alertDialog != null) {
                    alertDialog.dismiss();
                }
                AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(n3Var3.requireContext(), 2132017904);
                View viewInflate = LayoutInflater.from(alertDialog$Builder.getContext()).inflate(2131493146, (ViewGroup) null);
                TextView textView = (TextView) viewInflate.findViewById(2131297736);
                ListView listView = (ListView) viewInflate.findViewById(2131297735);
                AlertDialog alertDialogCreate = alertDialog$Builder.setTitle(2131952742).setView(viewInflate).setPositiveButton(2131952755, new b7.h(3, n3Var3)).setNegativeButton(2131951882, (DialogInterface$OnClickListener) null).setNeutralButton(2131952657, (DialogInterface$OnClickListener) null).create();
                n3Var3.f3546p = alertDialogCreate;
                alertDialogCreate.setOnDismissListener(new d3(n3Var3, alertDialogCreate));
                alertDialogCreate.show();
                alertDialogCreate.getButton(-3).setOnClickListener(new e3(n3Var3, alertDialogCreate, textView, listView, 0));
                viewInflate.findViewById(2131297734).setOnClickListener(new e3(n3Var3, alertDialogCreate, textView, listView, 1));
                viewInflate.findViewById(2131297737).setOnClickListener(new e3(n3Var3, alertDialogCreate, textView, listView, 2));
                File externalStorageDirectory = n3Var3.f3543m;
                if (externalStorageDirectory == null) {
                    n3Var3.f3544n.getClass();
                    externalStorageDirectory = Environment.getExternalStorageDirectory();
                }
                n3Var3.v(externalStorageDirectory, alertDialogCreate, textView, listView);
                break;
        }
    }
}
