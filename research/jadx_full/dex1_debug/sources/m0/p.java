package m0;

import android.content.Intent;
import android.view.View;
import android.view.View$OnClickListener;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.woha.appmanag.ManageAppsActivity;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class p implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3557b;
    public final /* synthetic */ v c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ p(v vVar, int i9) {
        this.f3557b = i9;
        this.c = vVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        int i9 = this.f3557b;
        v vVar = this.c;
        switch (i9) {
            case 0:
                String str = v.f3604h;
                Fragment parentFragment = vVar.getParentFragment();
                if (!(parentFragment instanceof l0.a)) {
                    FragmentActivity activity = vVar.getActivity();
                    if (activity != null) {
                        activity.finish();
                    }
                } else {
                    ((l0.a) parentFragment).dismiss();
                }
                break;
            default:
                String str2 = v.f3604h;
                y5.k.u(vVar.requireActivity(), new Intent(vVar.requireActivity(), (Class<?>) ManageAppsActivity.class), null);
                break;
        }
    }
}
