package androidx.appcompat.widget;

import android.view.inspector.InspectionCompanion;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import androidx.activity.k;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.appcompat.R$attr;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS)
@RestrictTo({RestrictTo$Scope.LIBRARY})
public final class SearchView$InspectionCompanion implements InspectionCompanion {
    private int mIconifiedByDefaultId;
    private int mImeOptionsId;
    private int mMaxWidthId;
    private boolean mPropertiesMapped = false;
    private int mQueryHintId;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void mapProperties(@NonNull PropertyMapper propertyMapper) {
        this.mImeOptionsId = a.s(propertyMapper);
        this.mMaxWidthId = a.u(propertyMapper);
        this.mIconifiedByDefaultId = a.t(propertyMapper, R$attr.iconifiedByDefault);
        this.mQueryHintId = a.v(propertyMapper, R$attr.queryHint);
        this.mPropertiesMapped = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void readProperties(@NonNull SearchView searchView, @NonNull PropertyReader propertyReader) {
        if (!this.mPropertiesMapped) {
            throw k.f();
        }
        k.j(propertyReader, this.mImeOptionsId, searchView.getImeOptions());
        k.j(propertyReader, this.mMaxWidthId, searchView.getMaxWidth());
        a.i(propertyReader, this.mIconifiedByDefaultId, searchView.isIconfiedByDefault());
        a.h(propertyReader, this.mQueryHintId, searchView.getQueryHint());
    }

    public /* bridge */ /* synthetic */ void readProperties(@NonNull Object obj, @NonNull PropertyReader propertyReader) {
        readProperties((SearchView) obj, propertyReader);
    }
}
