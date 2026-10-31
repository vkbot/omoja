package p182r3;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import p205u.C3270b;
import p205u.C3274f;

/* JADX INFO: renamed from: r3.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3094a extends Drawable.ConstantState {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f8793a = 0;

    /* JADX INFO: renamed from: b */
    public final Object f8794b;

    public C3094a(C3095b c3095b) {
        this.f8794b = c3095b;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        switch (this.f8793a) {
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        switch (this.f8793a) {
            case 0:
                return (C3095b) this.f8794b;
            default:
                return new C3270b(this);
        }
    }

    public C3094a(C3274f c3274f) {
        this.f8794b = c3274f;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources) {
        switch (this.f8793a) {
            case 1:
                return new C3270b(this);
            default:
                return super.newDrawable(resources);
        }
    }
}
