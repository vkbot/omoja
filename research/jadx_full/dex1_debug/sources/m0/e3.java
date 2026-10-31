package m0;

import android.os.Environment;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import java.io.File;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class e3 implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3416b;
    public final /* synthetic */ n3 c;
    public final /* synthetic */ AlertDialog d;
    public final /* synthetic */ TextView e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ListView f3417f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ e3(n3 n3Var, AlertDialog alertDialog, TextView textView, ListView listView, int i9) {
        this.f3416b = i9;
        this.c = n3Var;
        this.d = alertDialog;
        this.e = textView;
        this.f3417f = listView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        switch (this.f3416b) {
            case 0:
                n3 n3Var = this.c;
                File file = n3Var.r;
                if (file != null && file.getParentFile() != null) {
                    n3Var.v(n3Var.r.getParentFile(), this.d, this.e, this.f3417f);
                    break;
                }
                break;
            case 1:
                n3 n3Var2 = this.c;
                n3Var2.f3544n.getClass();
                n3Var2.v(Environment.getExternalStorageDirectory(), this.d, this.e, this.f3417f);
                break;
            default:
                n3 n3Var3 = this.c;
                n3Var3.f3545o.execute(new f3(n3Var3, n3Var3.f3544n, this.d, n3Var3.f3548s, this.e, this.f3417f));
                break;
        }
    }
}
