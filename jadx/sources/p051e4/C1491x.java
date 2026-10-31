package p051e4;

import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import androidx.navigation.ViewOnClickListenerC0675c;
import com.example.navistart.R;

/* JADX INFO: renamed from: e4.x */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1491x extends AbstractC1484q {

    /* JADX INFO: renamed from: e */
    public final int f3673e;

    /* JADX INFO: renamed from: f */
    public EditText f3674f;

    /* JADX INFO: renamed from: g */
    public final ViewOnClickListenerC0675c f3675g;

    public C1491x(C1483p c1483p, int i10) {
        super(c1483p);
        this.f3673e = R.drawable.design_password_eye;
        this.f3675g = new ViewOnClickListenerC0675c(9, this);
        if (i10 != 0) {
            this.f3673e = i10;
        }
    }

    @Override // p051e4.AbstractC1484q
    /* JADX INFO: renamed from: b */
    public final void mo2557b() {
        m2559p();
    }

    @Override // p051e4.AbstractC1484q
    /* JADX INFO: renamed from: c */
    public final int mo2521c() {
        return R.string.password_toggle_content_description;
    }

    @Override // p051e4.AbstractC1484q
    /* JADX INFO: renamed from: d */
    public final int mo2522d() {
        return this.f3673e;
    }

    @Override // p051e4.AbstractC1484q
    /* JADX INFO: renamed from: f */
    public final View.OnClickListener mo2524f() {
        return this.f3675g;
    }

    @Override // p051e4.AbstractC1484q
    /* JADX INFO: renamed from: j */
    public final boolean mo2558j() {
        return true;
    }

    @Override // p051e4.AbstractC1484q
    /* JADX INFO: renamed from: k */
    public final boolean mo2536k() {
        EditText editText = this.f3674f;
        return !(editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod));
    }

    @Override // p051e4.AbstractC1484q
    /* JADX INFO: renamed from: l */
    public final void mo2526l(EditText editText) {
        this.f3674f = editText;
        m2559p();
    }

    @Override // p051e4.AbstractC1484q
    /* JADX INFO: renamed from: q */
    public final void mo2528q() {
        EditText editText = this.f3674f;
        if (editText != null) {
            if (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224) {
                this.f3674f.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
        }
    }

    @Override // p051e4.AbstractC1484q
    /* JADX INFO: renamed from: r */
    public final void mo2529r() {
        EditText editText = this.f3674f;
        if (editText != null) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }
}
