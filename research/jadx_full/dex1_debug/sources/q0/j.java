package q0;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View$OnClickListener;
import com.example.navistart.MockGPS.MockGpsService;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class j implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4784b;
    public final /* synthetic */ l c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ j(l lVar, int i9) {
        this.f4784b = i9;
        this.c = lVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        switch (this.f4784b) {
            case 0:
                l lVar = this.c;
                Context contextRequireContext = lVar.requireContext();
                String str = lVar.t;
                String string = lVar.d.getText().toString();
                int iX = lVar.x();
                lVar.f4799q.isChecked();
                MockGpsService.n(contextRequireContext, iX, str, string);
                lVar.z();
                break;
            case 1:
                l lVar2 = this.c;
                Context contextRequireContext2 = lVar2.requireContext();
                MockGpsService.b(contextRequireContext2);
                contextRequireContext2.stopService(new Intent(contextRequireContext2, (Class<?>) MockGpsService.class));
                lVar2.z();
                break;
            default:
                l lVar3 = this.c;
                if (lVar3.getParentFragment() instanceof l0.a) {
                    ((l0.a) lVar3.getParentFragment()).dismiss();
                }
                break;
        }
    }
}
