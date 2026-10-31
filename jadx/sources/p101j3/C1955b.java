package p101j3;

import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.R;
import com.google.android.material.carousel.CarouselLayoutManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: j3.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1955b extends RecyclerView.ItemDecoration {

    /* JADX INFO: renamed from: a */
    public final Paint f5336a;

    /* JADX INFO: renamed from: b */
    public final List f5337b;

    public C1955b() {
        Paint paint = new Paint();
        this.f5336a = paint;
        this.f5337b = Collections.unmodifiableList(new ArrayList());
        paint.setStrokeWidth(5.0f);
        paint.setColor(-65281);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        Canvas canvas2;
        super.onDrawOver(canvas, recyclerView, state);
        float dimension = recyclerView.getResources().getDimension(R.dimen.m3_carousel_debug_keyline_width);
        Paint paint = this.f5336a;
        paint.setStrokeWidth(dimension);
        Iterator it = this.f5337b.iterator();
        while (it.hasNext()) {
            ((AbstractC1960g) it.next()).getClass();
            paint.setColor(ColorUtils.blendARGB(-65281, -16776961, 0.0f));
            if (((CarouselLayoutManager) recyclerView.getLayoutManager()).m1787l()) {
                canvas2 = canvas;
                canvas2.drawLine(0.0f, ((CarouselLayoutManager) recyclerView.getLayoutManager()).f2227c.mo3056e(), 0.0f, ((CarouselLayoutManager) recyclerView.getLayoutManager()).f2227c.mo3052a(), paint);
            } else {
                canvas2 = canvas;
                canvas2.drawLine(((CarouselLayoutManager) recyclerView.getLayoutManager()).f2227c.mo3053b(), 0.0f, ((CarouselLayoutManager) recyclerView.getLayoutManager()).f2227c.mo3054c(), 0.0f, paint);
            }
            canvas = canvas2;
        }
    }
}
