package j3;

import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView$ItemDecoration;
import androidx.recyclerview.widget.RecyclerView$State;
import com.google.android.material.carousel.CarouselLayoutManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b extends RecyclerView$ItemDecoration {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Paint f3037a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f3038b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b() {
        Paint paint = new Paint();
        this.f3037a = paint;
        this.f3038b = Collections.unmodifiableList(new ArrayList());
        paint.setStrokeWidth(5.0f);
        paint.setColor(-65281);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$ItemDecoration
    public final void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView$State recyclerView$State) {
        Canvas canvas2;
        super.onDrawOver(canvas, recyclerView, recyclerView$State);
        float dimension = recyclerView.getResources().getDimension(2131099897);
        Paint paint = this.f3037a;
        paint.setStrokeWidth(dimension);
        Iterator it = this.f3038b.iterator();
        while (it.hasNext()) {
            ((g) it.next()).getClass();
            paint.setColor(ColorUtils.blendARGB(-65281, -16776961, 0.0f));
            if (((CarouselLayoutManager) recyclerView.getLayoutManager()).l()) {
                canvas2 = canvas;
                canvas2.drawLine(0.0f, ((CarouselLayoutManager) recyclerView.getLayoutManager()).c.e(), 0.0f, ((CarouselLayoutManager) recyclerView.getLayoutManager()).c.a(), paint);
            } else {
                canvas2 = canvas;
                canvas2.drawLine(((CarouselLayoutManager) recyclerView.getLayoutManager()).c.b(), 0.0f, ((CarouselLayoutManager) recyclerView.getLayoutManager()).c.c(), 0.0f, paint);
            }
            canvas = canvas2;
        }
    }
}
