package r3;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable$ConstantState;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a extends Drawable$ConstantState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4938a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f4939b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(b bVar) {
        this.f4939b = bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable$ConstantState
    public final int getChangingConfigurations() {
        switch (this.f4938a) {
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable$ConstantState
    public final Drawable newDrawable() {
        switch (this.f4938a) {
            case 0:
                return (b) this.f4939b;
            default:
                return new u.b(this);
        }
    }

    public a(u.f fVar) {
        this.f4939b = fVar;
    }

    @Override // android.graphics.drawable.Drawable$ConstantState
    public Drawable newDrawable(Resources resources) {
        switch (this.f4938a) {
            case 1:
                return new u.b(this);
            default:
                return super.newDrawable(resources);
        }
    }
}
