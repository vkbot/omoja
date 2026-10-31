package e4;

import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p f2071a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public n(p pVar) {
        this.f2071a = pVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(TextInputLayout textInputLayout) {
        p pVar = this.f2071a;
        m mVar = pVar.w;
        if (pVar.t == textInputLayout.getEditText()) {
            return;
        }
        EditText editText = pVar.t;
        if (editText != null) {
            editText.removeTextChangedListener(mVar);
            if (pVar.t.getOnFocusChangeListener() == pVar.b().e()) {
                pVar.t.setOnFocusChangeListener(null);
            }
        }
        EditText editText2 = textInputLayout.getEditText();
        pVar.t = editText2;
        if (editText2 != null) {
            editText2.addTextChangedListener(mVar);
        }
        pVar.b().l(pVar.t);
        pVar.j(pVar.b());
    }
}
