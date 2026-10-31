package androidx.transition;

import android.graphics.Rect;
import android.util.Property;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewUtils$2 extends Property<View, Rect> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ViewUtils$2(Class cls, String str) {
        super(cls, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.util.Property
    public /* bridge */ /* synthetic */ Rect get(View view) {
        return get2(view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // android.util.Property
    public /* bridge */ /* synthetic */ void set(View view, Rect rect) {
        set2(view, rect);
    }

    /* JADX INFO: renamed from: get, reason: avoid collision after fix types in other method */
    public Rect get2(View view) {
        return view.getClipBounds();
    }

    /* JADX INFO: renamed from: set, reason: avoid collision after fix types in other method */
    public void set2(View view, Rect rect) {
        view.setClipBounds(rect);
    }
}
