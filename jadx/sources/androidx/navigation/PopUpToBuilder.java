package androidx.navigation;

import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR&\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00048F@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\b¨\u0006\r"}, m3159d2 = {"Landroidx/navigation/PopUpToBuilder;", "", "()V", "inclusive", "", "getInclusive", "()Z", "setInclusive", "(Z)V", "<set-?>", "saveState", "getSaveState", "setSaveState", "navigation-common_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@NavOptionsDsl
public final class PopUpToBuilder {
    private boolean inclusive;
    private boolean saveState;

    public final boolean getInclusive() {
        return this.inclusive;
    }

    public final boolean getSaveState() {
        return this.saveState;
    }

    public final void setInclusive(boolean z9) {
        this.inclusive = z9;
    }

    public final void setSaveState(boolean z9) {
        this.saveState = z9;
    }
}
