package e0;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog$Builder;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.DialogFragment;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g2 extends DialogFragment {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TextView f1843b;
    public ProgressBar c;
    public ProgressBar d;
    public AppCompatActivity e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Button f1844f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public a4.g f1845g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f1846h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public g2 f1847i;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(getActivity(), 2132017903);
        View viewInflate = LayoutInflater.from(alertDialog$Builder.getContext()).inflate(2131493117, (ViewGroup) null);
        alertDialog$Builder.setView(viewInflate);
        this.f1843b = (TextView) viewInflate.findViewById(2131297219);
        this.c = (ProgressBar) viewInflate.findViewById(2131297214);
        this.d = (ProgressBar) viewInflate.findViewById(2131296870);
        this.f1844f = (Button) viewInflate.findViewById(2131296542);
        this.f1847i = this;
        this.f1844f.setOnClickListener(new androidx.navigation.c(6, this));
        this.f1843b.setText(this.f1846h);
        return alertDialog$Builder.create();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onDetach() {
        super.onDetach();
        this.f1845g.run();
        this.f1847i = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        this.f1847i.dismiss();
    }
}
