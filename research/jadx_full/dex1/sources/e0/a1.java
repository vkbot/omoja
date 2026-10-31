package e0;

import android.text.Editable;
import android.text.TextWatcher;
import com.example.navistart.MainActivity;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a1 implements TextWatcher {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1808b;
    public final /* synthetic */ Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a1(int i9, Object obj) {
        this.f1808b = i9;
        this.c = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        switch (this.f1808b) {
            case 0:
                MainActivity mainActivity = (MainActivity) this.c;
                h0.b.o().saveInt(m.h(new byte[]{80, 107, -71, 63, 14, 35, 108, 109, 101, 111, -81, 2, 32, 33, 74, 120}, new byte[]{0, 10, -53, 84, 65, 77, 63, 29}), !"".equals(mainActivity.Q0.getEditText().getText().toString()) ? Integer.parseInt(mainActivity.Q0.getEditText().getText().toString()) : 0);
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        int i12 = this.f1808b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        int i12 = this.f1808b;
        Object obj = this.c;
        switch (i12) {
            case 0:
                break;
            case 1:
                m0.v vVar = (m0.v) obj;
                String string = charSequence == null ? "" : charSequence.toString();
                String str = m0.v.f3604h;
                vVar.v(string);
                break;
            case 2:
                m0.n3 n3Var = (m0.n3) obj;
                n3Var.f3542l = charSequence.toString().trim().toLowerCase(Locale.ROOT);
                n3Var.u();
                break;
            case 3:
                ((w0.o0) obj).f5750a = charSequence.toString();
                break;
            default:
                ((Runnable) obj).run();
                break;
        }
    }

    private final void a(Editable editable) {
    }

    private final void b(Editable editable) {
    }

    private final void c(Editable editable) {
    }

    private final void d(Editable editable) {
    }

    private final void e(CharSequence charSequence, int i9, int i10, int i11) {
    }

    private final void f(CharSequence charSequence, int i9, int i10, int i11) {
    }

    private final void g(CharSequence charSequence, int i9, int i10, int i11) {
    }

    private final void h(CharSequence charSequence, int i9, int i10, int i11) {
    }

    private final void i(CharSequence charSequence, int i9, int i10, int i11) {
    }

    private final void j(CharSequence charSequence, int i9, int i10, int i11) {
    }
}
