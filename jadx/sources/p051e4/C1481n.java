package p051e4;

import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: renamed from: e4.n */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1481n {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C1483p f3596a;

    public C1481n(C1483p c1483p) {
        this.f3596a = c1483p;
    }

    /* JADX INFO: renamed from: a */
    public final void m2541a(TextInputLayout textInputLayout) {
        C1483p c1483p = this.f3596a;
        C1480m c1480m = c1483p.f3622w;
        if (c1483p.f3619t == textInputLayout.getEditText()) {
            return;
        }
        EditText editText = c1483p.f3619t;
        if (editText != null) {
            editText.removeTextChangedListener(c1480m);
            if (c1483p.f3619t.getOnFocusChangeListener() == c1483p.m2544b().mo2523e()) {
                c1483p.f3619t.setOnFocusChangeListener(null);
            }
        }
        EditText editText2 = textInputLayout.getEditText();
        c1483p.f3619t = editText2;
        if (editText2 != null) {
            editText2.addTextChangedListener(c1480m);
        }
        c1483p.m2544b().mo2526l(c1483p.f3619t);
        c1483p.m2552j(c1483p.m2544b());
    }
}
