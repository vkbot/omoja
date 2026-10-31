package androidx.transition;

import android.graphics.Matrix;
import android.util.Property;
import android.widget.ImageView;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ChangeImageTransform$2 extends Property<ImageView, Matrix> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ChangeImageTransform$2(Class cls, String str) {
        super(cls, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.util.Property
    public /* bridge */ /* synthetic */ Matrix get(ImageView imageView) {
        return get2(imageView);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // android.util.Property
    public /* bridge */ /* synthetic */ void set(ImageView imageView, Matrix matrix) {
        set2(imageView, matrix);
    }

    /* JADX INFO: renamed from: get, reason: avoid collision after fix types in other method */
    public Matrix get2(ImageView imageView) {
        return null;
    }

    /* JADX INFO: renamed from: set, reason: avoid collision after fix types in other method */
    public void set2(ImageView imageView, Matrix matrix) {
        ImageViewUtils.animateTransform(imageView, matrix);
    }
}
