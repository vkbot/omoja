package p225w0;

import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Spinner;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.R;

/* JADX INFO: renamed from: w0.p0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3483p0 extends RecyclerView.ViewHolder {

    /* JADX INFO: renamed from: a */
    public final EditText f10184a;

    /* JADX INFO: renamed from: b */
    public final Spinner f10185b;

    /* JADX INFO: renamed from: c */
    public final CheckBox f10186c;

    /* JADX INFO: renamed from: d */
    public final Button f10187d;

    public C3483p0(View view) {
        super(view);
        this.f10184a = (EditText) view.findViewById(R.id.editPhrase);
        this.f10185b = (Spinner) view.findViewById(R.id.spinnerAction);
        this.f10186c = (CheckBox) view.findViewById(R.id.checkEnabled);
        this.f10187d = (Button) view.findViewById(R.id.btnDelete);
    }
}
