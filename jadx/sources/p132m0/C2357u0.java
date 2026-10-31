package p132m0;

import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.R;

/* JADX INFO: renamed from: m0.u0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2357u0 extends RecyclerView.ViewHolder {

    /* JADX INFO: renamed from: a */
    public final TextView f6370a;

    /* JADX INFO: renamed from: b */
    public final TextView f6371b;

    public C2357u0(View view) {
        super(view);
        this.f6370a = (TextView) view.findViewById(R.id.logKeycodeEventValue);
        this.f6371b = (TextView) view.findViewById(R.id.logKeycodeEventAction);
    }
}
