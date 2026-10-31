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
public final class SwitchCompat$InspectionCompanion implements InspectionCompanion {
    private boolean mPropertiesMapped = false;
    private int mShowTextId;
    private int mSplitTrackId;
    private int mSwitchMinWidthId;
    private int mSwitchPaddingId;
    private int mTextOffId;
    private int mTextOnId;
    private int mThumbId;
    private int mThumbTextPaddingId;
    private int mThumbTintId;
    private int mThumbTintModeId;
    private int mTrackId;
    private int mTrackTintId;
    private int mTrackTintModeId;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void mapProperties(@NonNull PropertyMapper propertyMapper) {
        this.mTextOffId = a.w(propertyMapper);
        this.mTextOnId = a.y(propertyMapper);
        this.mThumbId = a.A(propertyMapper);
        this.mShowTextId = a.m(propertyMapper, R$attr.showText);
        this.mSplitTrackId = a.n(propertyMapper, R$attr.splitTrack);
        this.mSwitchMinWidthId = a.o(propertyMapper, R$attr.switchMinWidth);
        this.mSwitchPaddingId = a.p(propertyMapper, R$attr.switchPadding);
        this.mThumbTextPaddingId = a.x(propertyMapper, R$attr.thumbTextPadding);
        this.mThumbTintId = a.z(propertyMapper, R$attr.thumbTint);
        this.mThumbTintModeId = a.B(propertyMapper, R$attr.thumbTintMode);
        this.mTrackId = a.C(propertyMapper, R$attr.track);
        this.mTrackTintId = a.D(propertyMapper, R$attr.trackTint);
        this.mTrackTintModeId = a.l(propertyMapper, R$attr.trackTintMode);
        this.mPropertiesMapped = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void readProperties(@NonNull SwitchCompat switchCompat, @NonNull PropertyReader propertyReader) {
        if (!this.mPropertiesMapped) {
            throw k.f();
        }
        a.h(propertyReader, this.mTextOffId, switchCompat.getTextOff());
        a.h(propertyReader, this.mTextOnId, switchCompat.getTextOn());
        a.f(propertyReader, this.mThumbId, switchCompat.getThumbDrawable());
        a.i(propertyReader, this.mShowTextId, switchCompat.getShowText());
        a.i(propertyReader, this.mSplitTrackId, switchCompat.getSplitTrack());
        k.j(propertyReader, this.mSwitchMinWidthId, switchCompat.getSwitchMinWidth());
        k.j(propertyReader, this.mSwitchPaddingId, switchCompat.getSwitchPadding());
        k.j(propertyReader, this.mThumbTextPaddingId, switchCompat.getThumbTextPadding());
        k.k(propertyReader, this.mThumbTintId, switchCompat.getThumbTintList());
        k.l(propertyReader, this.mThumbTintModeId, switchCompat.getThumbTintMode());
        a.f(propertyReader, this.mTrackId, switchCompat.getTrackDrawable());
        k.k(propertyReader, this.mTrackTintId, switchCompat.getTrackTintList());
        k.l(propertyReader, this.mTrackTintModeId, switchCompat.getTrackTintMode());
    }

    public /* bridge */ /* synthetic */ void readProperties(@NonNull Object obj, @NonNull PropertyReader propertyReader) {
        readProperties((SwitchCompat) obj, propertyReader);
    }
}
