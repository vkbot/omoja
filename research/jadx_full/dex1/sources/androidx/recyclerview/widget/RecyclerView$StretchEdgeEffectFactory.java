package androidx.recyclerview.widget;

import android.widget.EdgeEffect;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class RecyclerView$StretchEdgeEffectFactory extends RecyclerView$EdgeEffectFactory {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$EdgeEffectFactory
    @NonNull
    public EdgeEffect createEdgeEffect(@NonNull RecyclerView recyclerView, int i9) {
        return new EdgeEffect(recyclerView.getContext());
    }
}
