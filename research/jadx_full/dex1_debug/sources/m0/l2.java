package m0;

import android.content.Context;
import android.content.Intent;
import android.util.Patterns;
import android.view.View;
import android.view.View$OnClickListener;
import com.example.navistart.Transport.TransportService;
import e0.s3;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class l2 implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3506b;
    public final /* synthetic */ m2 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ l2(m2 m2Var, int i9) {
        this.f3506b = i9;
        this.c = m2Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        s3 s3Var;
        switch (this.f3506b) {
            case 0:
                m2 m2Var = this.c;
                String str = m2.f3514m;
                if (m2Var.getParentFragment() instanceof l0.a) {
                    ((l0.a) m2Var.getParentFragment()).dismiss();
                } else if (m2Var.getActivity() != null) {
                    m2Var.getActivity().onBackPressed();
                }
                break;
            case 1:
                m2 m2Var2 = this.c;
                String str2 = m2.f3514m;
                y0.g.d(m2Var2.requireContext());
                m2Var2.t();
                y5.k.w(2131952645, m2Var2.requireContext());
                break;
            case 2:
                m2 m2Var3 = this.c;
                String str3 = m2.f3514m;
                Context contextRequireContext = m2Var3.requireContext();
                CopyOnWriteArrayList copyOnWriteArrayList = y0.g.f6090a;
                contextRequireContext.getApplicationContext().stopService(new Intent(contextRequireContext.getApplicationContext(), (Class<?>) TransportService.class));
                m2Var3.t();
                y5.k.w(2131952646, m2Var3.requireContext());
                break;
            case 3:
                m2 m2Var4 = this.c;
                m2Var4.f3518h.setText(String.format(Locale.US, e0.m.h(new byte[]{-124, 16, 105, 58}, new byte[]{-95, 32, 80, 94, 17, -107, 36, 25}), Integer.valueOf(m2Var4.f3515b.nextInt(1000000000))));
                break;
            default:
                m2 m2Var5 = this.c;
                String strTrim = m2Var5.f3516f.getText().toString().trim();
                String strTrim2 = m2Var5.f3518h.getText().toString().trim();
                if (!m2Var5.e.isChecked() && (strTrim.isEmpty() || !Patterns.IP_ADDRESS.matcher(strTrim).matches())) {
                    m2Var5.f3516f.setError(m2Var5.getString(2131952634));
                } else if (!y0.m.b(strTrim2)) {
                    m2Var5.f3518h.setError(m2Var5.getString(2131952635));
                } else {
                    String strValueOf = m2Var5.f3517g.getSelectedItemPosition() > 0 ? String.valueOf(m2Var5.f3517g.getSelectedItem()) : "";
                    Context contextRequireContext2 = m2Var5.requireContext();
                    boolean zIsChecked = m2Var5.e.isChecked();
                    if (y0.m.d(strTrim2).isEmpty() || y0.m.b(strTrim2)) {
                        y0.m.c(contextRequireContext2).edit().putBoolean(y0.m.f6105b, zIsChecked).putString(y0.m.c, y0.m.d(strTrim)).putInt(y0.m.d, 8897).putString(y0.m.e, strValueOf.trim()).putString(y0.m.f6106f, y0.m.d(strTrim2)).apply();
                        y0.n.f6108a.set(false);
                        TransportService transportService = TransportService.f859z;
                        if (transportService != null && (s3Var = transportService.f867l) != null) {
                            s3Var.e();
                        }
                        y5.k.w(2131952642, m2Var5.requireContext());
                    } else {
                        j1.i.k(e0.m.h(new byte[]{-33, -69, 1, -68, -4, 126, 77, 16, -1, -23, 20, -67, -28, 107, 76, 66, -26, -68, 19, -90, -81, 109, 77, 12, -1, -88, 9, -68, -81, 107, 90, 3, -24, -67, 12, -85, -81, 55, 2, 6, -30, -82, 9, -90, -4}, new byte[]{-117, -55, 96, -46, -113, 14, 34, 98}));
                    }
                }
                break;
        }
    }
}
