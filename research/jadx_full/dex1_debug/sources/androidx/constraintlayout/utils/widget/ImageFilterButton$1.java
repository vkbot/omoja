package androidx.constraintlayout.utils.widget;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ImageFilterButton$1 extends ViewOutlineProvider {
    final /* synthetic */ ImageFilterButton this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ImageFilterButton$1(ImageFilterButton imageFilterButton) {
        this.this$0 = imageFilterButton;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        int width = this.this$0.getWidth();
        int height = this.this$0.getHeight();
        outline.setRoundRect(0, 0, width, height, (ImageFilterButton.access$000(this.this$0) * Math.min(width, height)) / 2.0f);
    }
}
