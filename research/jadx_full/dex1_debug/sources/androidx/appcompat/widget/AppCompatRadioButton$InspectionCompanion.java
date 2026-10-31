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
public final class AppCompatRadioButton$InspectionCompanion implements InspectionCompanion {
    private int mBackgroundTintId;
    private int mBackgroundTintModeId;
    private int mButtonTintId;
    private int mButtonTintModeId;
    private int mDrawableTintId;
    private int mDrawableTintModeId;
    private boolean mPropertiesMapped = false;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void mapProperties(@NonNull PropertyMapper propertyMapper) {
        this.mBackgroundTintId = k.c(propertyMapper, R$attr.backgroundTint);
        this.mBackgroundTintModeId = k.o(propertyMapper, R$attr.backgroundTintMode);
        this.mButtonTintId = k.B(propertyMapper, R$attr.buttonTint);
        this.mButtonTintModeId = k.C(propertyMapper, R$attr.buttonTintMode);
        this.mDrawableTintId = k.u(propertyMapper, R$attr.drawableTint);
        this.mDrawableTintModeId = k.x(propertyMapper, R$attr.drawableTintMode);
        this.mPropertiesMapped = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void readProperties(@NonNull AppCompatRadioButton appCompatRadioButton, @NonNull PropertyReader propertyReader) {
        if (!this.mPropertiesMapped) {
            throw k.f();
        }
        k.k(propertyReader, this.mBackgroundTintId, appCompatRadioButton.getBackgroundTintList());
        k.l(propertyReader, this.mBackgroundTintModeId, appCompatRadioButton.getBackgroundTintMode());
        k.k(propertyReader, this.mButtonTintId, appCompatRadioButton.getButtonTintList());
        k.l(propertyReader, this.mButtonTintModeId, appCompatRadioButton.getButtonTintMode());
        k.k(propertyReader, this.mDrawableTintId, appCompatRadioButton.getCompoundDrawableTintList());
        k.l(propertyReader, this.mDrawableTintModeId, appCompatRadioButton.getCompoundDrawableTintMode());
    }

    public /* bridge */ /* synthetic */ void readProperties(@NonNull Object obj, @NonNull PropertyReader propertyReader) {
        readProperties((AppCompatRadioButton) obj, propertyReader);
    }
}
