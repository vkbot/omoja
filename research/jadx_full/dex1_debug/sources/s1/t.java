package s1;

import android.R$string;
import android.content.DialogInterface$OnClickListener;
import android.view.View;
import android.view.View$OnClickListener;
import androidx.appcompat.app.AlertDialog$Builder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class t implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5201b;
    public final /* synthetic */ v c;
    public final /* synthetic */ String d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ t(v vVar, String str, int i9) {
        this.f5201b = i9;
        this.c = vVar;
        this.d = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        int i9 = this.f5201b;
        String str = this.d;
        v vVar = this.c;
        switch (i9) {
            case 0:
                String str2 = v.f5219f;
                if (vVar.f5221b.contains(str)) {
                    vVar.e = str;
                    h0.b.o().saveString(v.f5219f, str);
                    vVar.x();
                    break;
                }
                break;
            default:
                if (!v.f5220g.equals(str)) {
                    new AlertDialog$Builder(vVar.requireContext()).setTitle(e0.m.h(new byte[]{-55, -25, 108, 48, -39, -64, -114, -64, -55, -4, 109, 6, -40, -4, 126, -86, -101, -108, 9, 84, -75, -95, -35, 68}, new byte[]{25, 68, -68, -124, 9, 112, 94, 123})).setMessage(v.u(str)).setNegativeButton(R$string.cancel, (DialogInterface$OnClickListener) null).setPositiveButton(e0.m.h(new byte[]{-113, 110, 5, -111, 115, -19, -50, 20, -113, 117, 4, -89, 114, -47}, new byte[]{95, -51, -43, 37, -93, 93, 30, -81}), new e0.e0(9, vVar, str)).show();
                    break;
                }
                break;
        }
    }
}
