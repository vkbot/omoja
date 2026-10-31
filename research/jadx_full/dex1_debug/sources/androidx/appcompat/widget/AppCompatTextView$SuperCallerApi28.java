package androidx.appcompat.widget;

import androidx.annotation.Px;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(api = 28)
public class AppCompatTextView$SuperCallerApi28 extends AppCompatTextView$SuperCallerApi26 {
    final /* synthetic */ AppCompatTextView this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatTextView$SuperCallerApi28(AppCompatTextView appCompatTextView) {
        super(appCompatTextView);
        this.this$0 = appCompatTextView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatTextView$SuperCallerApi26, androidx.appcompat.widget.AppCompatTextView$SuperCaller
    public void setFirstBaselineToTopHeight(@Px int i9) {
        AppCompatTextView.access$1001(this.this$0, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatTextView$SuperCallerApi26, androidx.appcompat.widget.AppCompatTextView$SuperCaller
    public void setLastBaselineToBottomHeight(@Px int i9) {
        AppCompatTextView.access$1101(this.this$0, i9);
    }
}
