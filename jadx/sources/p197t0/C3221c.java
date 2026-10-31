package p197t0;

import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.Spinner;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.R;

/* JADX INFO: renamed from: t0.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3221c extends RecyclerView.ViewHolder {

    /* JADX INFO: renamed from: a */
    public final Spinner f9422a;

    /* JADX INFO: renamed from: b */
    public final CheckBox f9423b;

    /* JADX INFO: renamed from: c */
    public final Button f9424c;

    public C3221c(View view) {
        super(view);
        this.f9422a = (Spinner) view.findViewById(R.id.spinnerAction);
        this.f9423b = (CheckBox) view.findViewById(R.id.checkEnabled);
        this.f9424c = (Button) view.findViewById(R.id.btnDelete);
    }
}
