package m0;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView$ViewHolder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class u1 extends RecyclerView$ViewHolder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImageView f3601a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextView f3602b;
    public float c;
    public float d;
    public final /* synthetic */ v1 e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u1(v1 v1Var, View view) {
        super(view);
        this.e = v1Var;
        this.f3601a = (ImageView) view.findViewById(2131296451);
        this.f3602b = (TextView) view.findViewById(2131296452);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void a(View view) {
        view.animate().translationY(0.0f).alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(150L).start();
    }
}
