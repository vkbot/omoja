package e4;

import android.text.method.PasswordTransformationMethod;
import android.view.View$OnClickListener;
import android.widget.EditText;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class x extends q {
    public final int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public EditText f2122f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final androidx.navigation.c f2123g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public x(p pVar, int i9) {
        super(pVar);
        this.e = 2131165404;
        this.f2123g = new androidx.navigation.c(9, this);
        if (i9 != 0) {
            this.e = i9;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e4.q
    public final void b() {
        p();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e4.q
    public final int c() {
        return 2131952447;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e4.q
    public final int d() {
        return this.e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e4.q
    public final View$OnClickListener f() {
        return this.f2123g;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e4.q
    public final boolean j() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e4.q
    public final boolean k() {
        EditText editText = this.f2122f;
        return !(editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e4.q
    public final void l(EditText editText) {
        this.f2122f = editText;
        p();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e4.q
    public final void q() {
        EditText editText = this.f2122f;
        if (editText != null) {
            if (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224) {
                this.f2122f.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e4.q
    public final void r() {
        EditText editText = this.f2122f;
        if (editText != null) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }
}
