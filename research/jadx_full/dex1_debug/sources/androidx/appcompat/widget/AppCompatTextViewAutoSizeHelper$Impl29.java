package androidx.appcompat.widget;

import android.text.StaticLayout$Builder;
import android.widget.TextView;
import androidx.activity.k;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS)
public class AppCompatTextViewAutoSizeHelper$Impl29 extends AppCompatTextViewAutoSizeHelper$Impl23 {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatTextViewAutoSizeHelper$Impl23, androidx.appcompat.widget.AppCompatTextViewAutoSizeHelper$Impl
    public void computeAndSetTextDirection(StaticLayout$Builder staticLayout$Builder, TextView textView) {
        staticLayout$Builder.setTextDirection(k.e(textView));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatTextViewAutoSizeHelper$Impl
    public boolean isHorizontallyScrollable(TextView textView) {
        return k.m(textView);
    }
}
