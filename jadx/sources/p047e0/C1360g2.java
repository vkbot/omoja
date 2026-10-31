package p047e0;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.DialogFragment;
import androidx.navigation.ViewOnClickListenerC0675c;
import com.example.navistart.R;
import p005a4.RunnableC0014g;

/* JADX INFO: renamed from: e0.g2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1360g2 extends DialogFragment {

    /* JADX INFO: renamed from: b */
    public TextView f3239b;

    /* JADX INFO: renamed from: c */
    public ProgressBar f3240c;

    /* JADX INFO: renamed from: d */
    public ProgressBar f3241d;

    /* JADX INFO: renamed from: e */
    public AppCompatActivity f3242e;

    /* JADX INFO: renamed from: f */
    public Button f3243f;

    /* JADX INFO: renamed from: g */
    public RunnableC0014g f3244g;

    /* JADX INFO: renamed from: h */
    public String f3245h;

    /* JADX INFO: renamed from: i */
    public C1360g2 f3246i;

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity(), R.style.ThemeOverlay_JCarTools_ModernAlert);
        View viewInflate = LayoutInflater.from(builder.getContext()).inflate(R.layout.pd, (ViewGroup) null);
        builder.setView(viewInflate);
        this.f3239b = (TextView) viewInflate.findViewById(R.id.progress_bar_message);
        this.f3240c = (ProgressBar) viewInflate.findViewById(R.id.progressBar);
        this.f3241d = (ProgressBar) viewInflate.findViewById(R.id.indeterminateBar);
        this.f3243f = (Button) viewInflate.findViewById(R.id.button14);
        this.f3246i = this;
        this.f3243f.setOnClickListener(new ViewOnClickListenerC0675c(6, this));
        this.f3239b.setText(this.f3245h);
        return builder.create();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onDetach() {
        super.onDetach();
        this.f3244g.run();
        this.f3246i = null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        this.f3246i.dismiss();
    }
}
