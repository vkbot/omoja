package androidx.appcompat.widget;

import android.graphics.drawable.LayerDrawable;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(23)
public class AppCompatProgressBarHelper$Api23Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private AppCompatProgressBarHelper$Api23Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void transferLayerProperties(LayerDrawable layerDrawable, LayerDrawable layerDrawable2, int i9) {
        layerDrawable2.setLayerGravity(i9, layerDrawable.getLayerGravity(i9));
        layerDrawable2.setLayerWidth(i9, layerDrawable.getLayerWidth(i9));
        layerDrawable2.setLayerHeight(i9, layerDrawable.getLayerHeight(i9));
        layerDrawable2.setLayerInsetLeft(i9, layerDrawable.getLayerInsetLeft(i9));
        layerDrawable2.setLayerInsetRight(i9, layerDrawable.getLayerInsetRight(i9));
        layerDrawable2.setLayerInsetTop(i9, layerDrawable.getLayerInsetTop(i9));
        layerDrawable2.setLayerInsetBottom(i9, layerDrawable.getLayerInsetBottom(i9));
        layerDrawable2.setLayerInsetStart(i9, layerDrawable.getLayerInsetStart(i9));
        layerDrawable2.setLayerInsetEnd(i9, layerDrawable.getLayerInsetEnd(i9));
    }
}
