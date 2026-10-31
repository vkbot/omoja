package p132m0;

import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.R;

/* JADX INFO: renamed from: m0.f1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2289f1 extends RecyclerView.ViewHolder {

    /* JADX INFO: renamed from: a */
    public final ImageView f6073a;

    /* JADX INFO: renamed from: b */
    public final TextView f6074b;

    /* JADX INFO: renamed from: c */
    public final TextView f6075c;

    /* JADX INFO: renamed from: d */
    public final Button f6076d;

    public C2289f1(View view) {
        super(view);
        this.f6073a = (ImageView) view.findViewById(R.id.imgPreview);
        this.f6074b = (TextView) view.findViewById(R.id.txtName);
        this.f6075c = (TextView) view.findViewById(R.id.txtType);
        this.f6076d = (Button) view.findViewById(R.id.down);
    }
}
