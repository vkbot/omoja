package androidx.slidingpanelayout.widget;

import android.view.View;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface SlidingPaneLayout$PanelSlideListener {
    void onPanelClosed(@NonNull View view);

    void onPanelOpened(@NonNull View view);

    void onPanelSlide(@NonNull View view, float f8);
}
