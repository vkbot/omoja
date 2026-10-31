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
public final class LinearLayoutCompat$InspectionCompanion implements InspectionCompanion {
    private int mBaselineAlignedChildIndexId;
    private int mBaselineAlignedId;
    private int mDividerId;
    private int mDividerPaddingId;
    private int mGravityId;
    private int mMeasureWithLargestChildId;
    private int mOrientationId;
    private boolean mPropertiesMapped = false;
    private int mShowDividersId;
    private int mWeightSumId;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void mapProperties(@NonNull PropertyMapper propertyMapper) {
        this.mBaselineAlignedId = k.b(propertyMapper);
        this.mBaselineAlignedChildIndexId = a.a(propertyMapper);
        this.mGravityId = a.j(propertyMapper);
        this.mOrientationId = a.d(propertyMapper, new LinearLayoutCompat$InspectionCompanion$1(this));
        this.mWeightSumId = a.q(propertyMapper);
        this.mDividerId = a.b(propertyMapper, R$attr.divider);
        this.mDividerPaddingId = a.k(propertyMapper, R$attr.dividerPadding);
        this.mMeasureWithLargestChildId = a.r(propertyMapper, R$attr.measureWithLargestChild);
        this.mShowDividersId = a.c(propertyMapper, R$attr.showDividers, new LinearLayoutCompat$InspectionCompanion$2(this));
        this.mPropertiesMapped = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void readProperties(@NonNull LinearLayoutCompat linearLayoutCompat, @NonNull PropertyReader propertyReader) {
        if (!this.mPropertiesMapped) {
            throw k.f();
        }
        a.i(propertyReader, this.mBaselineAlignedId, linearLayoutCompat.isBaselineAligned());
        k.j(propertyReader, this.mBaselineAlignedChildIndexId, linearLayoutCompat.getBaselineAlignedChildIndex());
        k.v(propertyReader, this.mGravityId, linearLayoutCompat.getGravity());
        k.p(propertyReader, this.mOrientationId, linearLayoutCompat.getOrientation());
        k.i(propertyReader, this.mWeightSumId, linearLayoutCompat.getWeightSum());
        a.f(propertyReader, this.mDividerId, linearLayoutCompat.getDividerDrawable());
        k.j(propertyReader, this.mDividerPaddingId, linearLayoutCompat.getDividerPadding());
        a.i(propertyReader, this.mMeasureWithLargestChildId, linearLayoutCompat.isMeasureWithLargestChildEnabled());
        a.e(propertyReader, this.mShowDividersId, linearLayoutCompat.getShowDividers());
    }

    public /* bridge */ /* synthetic */ void readProperties(@NonNull Object obj, @NonNull PropertyReader propertyReader) {
        readProperties((LinearLayoutCompat) obj, propertyReader);
    }
}
