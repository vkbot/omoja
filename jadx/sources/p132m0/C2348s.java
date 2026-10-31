package p132m0;

import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.R;

/* JADX INFO: renamed from: m0.s */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2348s extends RecyclerView.ViewHolder {

    /* JADX INFO: renamed from: a */
    public final ImageView f6338a;

    /* JADX INFO: renamed from: b */
    public final TextView f6339b;

    /* JADX INFO: renamed from: c */
    public final TextView f6340c;

    /* JADX INFO: renamed from: d */
    public final Button f6341d;

    /* JADX INFO: renamed from: e */
    public final Button f6342e;

    /* JADX INFO: renamed from: f */
    public final ImageButton f6343f;

    public C2348s(View view) {
        super(view);
        this.f6338a = (ImageView) view.findViewById(R.id.storeAppIcon);
        this.f6339b = (TextView) view.findViewById(R.id.storeAppName);
        this.f6340c = (TextView) view.findViewById(R.id.storeAppMeta);
        this.f6341d = (Button) view.findViewById(R.id.storePrimaryAction);
        this.f6342e = (Button) view.findViewById(R.id.storeOpenAction);
        this.f6343f = (ImageButton) view.findViewById(R.id.storeDeleteAction);
    }
}
