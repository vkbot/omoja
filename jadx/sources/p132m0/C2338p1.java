package p132m0;

import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.Spinner;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.R;

/* JADX INFO: renamed from: m0.p1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2338p1 extends RecyclerView.ViewHolder {

    /* JADX INFO: renamed from: a */
    public final Button f6296a;

    /* JADX INFO: renamed from: b */
    public final Spinner f6297b;

    /* JADX INFO: renamed from: c */
    public final CheckBox f6298c;

    /* JADX INFO: renamed from: d */
    public final Button f6299d;

    public C2338p1(View view) {
        super(view);
        this.f6296a = (Button) view.findViewById(R.id.buttonPhysicalButtonValue);
        this.f6297b = (Spinner) view.findViewById(R.id.spinnerPhysicalButtonAction);
        this.f6298c = (CheckBox) view.findViewById(R.id.checkPhysicalButtonEnabled);
        this.f6299d = (Button) view.findViewById(R.id.btnDeletePhysicalButtonCommand);
    }
}
