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
public final class AppCompatImageView$InspectionCompanion implements InspectionCompanion {
    private int mBackgroundTintId;
    private int mBackgroundTintModeId;
    private boolean mPropertiesMapped = false;
    private int mTintId;
    private int mTintModeId;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void mapProperties(@NonNull PropertyMapper propertyMapper) {
        this.mBackgroundTintId = k.c(propertyMapper, R$attr.backgroundTint);
        this.mBackgroundTintModeId = k.o(propertyMapper, R$attr.backgroundTintMode);
        this.mTintId = k.r(propertyMapper, R$attr.tint);
        this.mTintModeId = k.s(propertyMapper, R$attr.tintMode);
        this.mPropertiesMapped = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void readProperties(@NonNull AppCompatImageView appCompatImageView, @NonNull PropertyReader propertyReader) {
        if (!this.mPropertiesMapped) {
            throw k.f();
        }
        k.k(propertyReader, this.mBackgroundTintId, appCompatImageView.getBackgroundTintList());
        k.l(propertyReader, this.mBackgroundTintModeId, appCompatImageView.getBackgroundTintMode());
        k.k(propertyReader, this.mTintId, appCompatImageView.getImageTintList());
        k.l(propertyReader, this.mTintModeId, appCompatImageView.getImageTintMode());
    }

    public /* bridge */ /* synthetic */ void readProperties(@NonNull Object obj, @NonNull PropertyReader propertyReader) {
        readProperties((AppCompatImageView) obj, propertyReader);
    }
}
