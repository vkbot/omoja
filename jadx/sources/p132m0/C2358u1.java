package p132m0;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.R;

/* JADX INFO: renamed from: m0.u1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2358u1 extends RecyclerView.ViewHolder {

    /* JADX INFO: renamed from: a */
    public final ImageView f6372a;

    /* JADX INFO: renamed from: b */
    public final TextView f6373b;

    /* JADX INFO: renamed from: c */
    public float f6374c;

    /* JADX INFO: renamed from: d */
    public float f6375d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ C2362v1 f6376e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2358u1(C2362v1 c2362v1, View view) {
        super(view);
        this.f6376e = c2362v1;
        this.f6372a = (ImageView) view.findViewById(R.id.appIcon);
        this.f6373b = (TextView) view.findViewById(R.id.appLabel);
    }

    /* JADX INFO: renamed from: a */
    public static void m3725a(View view) {
        view.animate().translationY(0.0f).alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(150L).start();
    }
}
