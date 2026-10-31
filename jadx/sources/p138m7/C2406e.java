package p138m7;

import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.R;

/* JADX INFO: renamed from: m7.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2406e extends RecyclerView.ViewHolder {

    /* JADX INFO: renamed from: a */
    public final TextView f6510a;

    /* JADX INFO: renamed from: b */
    public final TextView f6511b;

    /* JADX INFO: renamed from: c */
    public final TextView f6512c;

    public C2406e(View view) {
        super(view);
        this.f6510a = (TextView) view.findViewById(R.id.ssidText);
        this.f6511b = (TextView) view.findViewById(R.id.statusText);
        this.f6512c = (TextView) view.findViewById(R.id.signalText);
    }
}
