package p132m0;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.R;

/* JADX INFO: renamed from: m0.m3 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2326m3 extends RecyclerView.ViewHolder {

    /* JADX INFO: renamed from: a */
    public final ImageView f6233a;

    /* JADX INFO: renamed from: b */
    public final TextView f6234b;

    /* JADX INFO: renamed from: c */
    public final TextView f6235c;

    public C2326m3(View view) {
        super(view);
        this.f6233a = (ImageView) view.findViewById(R.id.videoPreview);
        this.f6234b = (TextView) view.findViewById(R.id.videoTitle);
        this.f6235c = (TextView) view.findViewById(R.id.videoMeta);
    }
}
