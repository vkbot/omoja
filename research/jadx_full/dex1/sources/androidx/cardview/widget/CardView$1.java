package androidx.cardview.widget;

import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class CardView$1 implements CardViewDelegate {
    private Drawable mCardBackground;
    final /* synthetic */ CardView this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CardView$1(CardView cardView) {
        this.this$0 = cardView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.cardview.widget.CardViewDelegate
    public Drawable getCardBackground() {
        return this.mCardBackground;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.cardview.widget.CardViewDelegate
    public View getCardView() {
        return this.this$0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.cardview.widget.CardViewDelegate
    public boolean getPreventCornerOverlap() {
        return this.this$0.getPreventCornerOverlap();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.cardview.widget.CardViewDelegate
    public boolean getUseCompatPadding() {
        return this.this$0.getUseCompatPadding();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.cardview.widget.CardViewDelegate
    public void setCardBackground(Drawable drawable) {
        this.mCardBackground = drawable;
        this.this$0.setBackgroundDrawable(drawable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.cardview.widget.CardViewDelegate
    public void setMinWidthHeightInternal(int i9, int i10) {
        CardView cardView = this.this$0;
        if (i9 > cardView.mUserSetMinWidth) {
            CardView.access$101(cardView, i9);
        }
        CardView cardView2 = this.this$0;
        if (i10 > cardView2.mUserSetMinHeight) {
            CardView.access$201(cardView2, i10);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.cardview.widget.CardViewDelegate
    public void setShadowPadding(int i9, int i10, int i11, int i12) {
        this.this$0.mShadowBounds.set(i9, i10, i11, i12);
        CardView cardView = this.this$0;
        Rect rect = cardView.mContentPadding;
        CardView.access$001(cardView, i9 + rect.left, i10 + rect.top, i11 + rect.right, i12 + rect.bottom);
    }
}
