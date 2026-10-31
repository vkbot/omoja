package p132m0;

import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.R;

/* JADX INFO: renamed from: m0.l0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2318l0 extends RecyclerView.ViewHolder {

    /* JADX INFO: renamed from: a */
    public final ImageView f6205a;

    /* JADX INFO: renamed from: b */
    public final TextView f6206b;

    /* JADX INFO: renamed from: c */
    public final CheckBox f6207c;

    /* JADX INFO: renamed from: d */
    public final Button f6208d;

    public C2318l0(View view) {
        super(view);
        this.f6205a = (ImageView) view.findViewById(R.id.fullscreenIcon);
        this.f6206b = (TextView) view.findViewById(R.id.fullscreenAppName);
        this.f6207c = (CheckBox) view.findViewById(R.id.fullscreenCheck);
        this.f6208d = (Button) view.findViewById(R.id.fullscreenLaunch);
    }
}
