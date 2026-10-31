package e4;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class z implements TextWatcher {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2131b;
    public final /* synthetic */ EditText c;
    public final /* synthetic */ TextInputLayout d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public z(TextInputLayout textInputLayout, EditText editText) {
        this.d = textInputLayout;
        this.c = editText;
        this.f2131b = editText.getLineCount();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        TextInputLayout textInputLayout = this.d;
        textInputLayout.w(!textInputLayout.C0, false);
        if (textInputLayout.f1400m) {
            textInputLayout.p(editable);
        }
        if (textInputLayout.f1414u) {
            textInputLayout.x(editable);
        }
        EditText editText = this.c;
        int lineCount = editText.getLineCount();
        int i9 = this.f2131b;
        if (lineCount != i9) {
            if (lineCount < i9) {
                int minimumHeight = editText.getMinimumHeight();
                int i10 = textInputLayout.f1417v0;
                if (minimumHeight != i10) {
                    editText.setMinimumHeight(i10);
                }
            }
            this.f2131b = lineCount;
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
    }
}
