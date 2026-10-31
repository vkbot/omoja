package p051e4;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: renamed from: e4.z */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1493z implements TextWatcher {

    /* JADX INFO: renamed from: b */
    public int f3686b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ EditText f3687c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ TextInputLayout f3688d;

    public C1493z(TextInputLayout textInputLayout, EditText editText) {
        this.f3688d = textInputLayout;
        this.f3687c = editText;
        this.f3686b = editText.getLineCount();
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        TextInputLayout textInputLayout = this.f3688d;
        textInputLayout.m1868w(!textInputLayout.f2491C0, false);
        if (textInputLayout.f2536m) {
            textInputLayout.m1861p(editable);
        }
        if (textInputLayout.f2552u) {
            textInputLayout.m1869x(editable);
        }
        EditText editText = this.f3687c;
        int lineCount = editText.getLineCount();
        int i10 = this.f3686b;
        if (lineCount != i10) {
            if (lineCount < i10) {
                int minimumHeight = editText.getMinimumHeight();
                int i11 = textInputLayout.f2555v0;
                if (minimumHeight != i11) {
                    editText.setMinimumHeight(i11);
                }
            }
            this.f3686b = lineCount;
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }
}
