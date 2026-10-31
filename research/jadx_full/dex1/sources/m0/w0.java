package m0;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.EditText;
import androidx.fragment.app.FragmentActivity;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class w0 implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3615b;
    public final /* synthetic */ z0 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ w0(z0 z0Var, int i9) {
        this.f3615b = i9;
        this.c = z0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        int i9 = this.f3615b;
        z0 z0Var = this.c;
        switch (i9) {
            case 0:
                String str = z0.f3636m;
                if (!(z0Var.getParentFragment() instanceof l0.a)) {
                    FragmentActivity activity = z0Var.getActivity();
                    if (activity != null) {
                        activity.finish();
                    }
                } else {
                    ((l0.a) z0Var.getParentFragment()).dismiss();
                }
                break;
            default:
                if (z0Var.f3643j) {
                    z0Var.f3643j = false;
                    z0Var.f3644k = "";
                    z0.t();
                    z0Var.v();
                } else {
                    String strTrim = z0Var.d.getText() != null ? z0Var.d.getText().toString().trim() : "";
                    boolean zIsEmpty = strTrim.isEmpty();
                    EditText editText = z0Var.d;
                    if (zIsEmpty) {
                        editText.setError(z0Var.getString(2131952146));
                    } else {
                        editText.setError(null);
                        try {
                            if (h0.b.a().j() == null) {
                                z0Var.e.setText(2131952153);
                            } else {
                                h0.b.a().j().lo(z0.f3637n, null, null);
                                z0Var.f3644k = strTrim;
                                z0Var.f3643j = true;
                                z0Var.v();
                            }
                        } catch (Exception unused) {
                            z0Var.e.setText(2131952153);
                            return;
                        }
                    }
                }
                break;
        }
    }
}
