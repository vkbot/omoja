package o0;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;
import com.example.navistart.ModernMainActivity;
import e0.c3;
import e0.m;
import kotlin.io.encoding.Base64;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class a extends l0.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public e f4013b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i9;
        int i10;
        boolean z8 = false;
        View viewInflate = layoutInflater.inflate(requireActivity() instanceof ModernMainActivity ? 2131493044 : 2131492896, viewGroup, false);
        this.f4013b = new e(requireContext());
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(2131297784);
        f[] fVarArrValues = f.values();
        int length = fVarArrValues.length;
        int i11 = 0;
        while (i11 < length) {
            f fVar = fVarArrValues[i11];
            View viewInflate2 = LayoutInflater.from(requireActivity()).inflate(requireActivity() instanceof ModernMainActivity ? 2131493045 : 2131492997, linearLayout, z8);
            Spinner spinner = (Spinner) viewInflate2.findViewById(2131297785);
            CheckBox checkBox = (CheckBox) viewInflate2.findViewById(2131297783);
            ImageView imageView = (ImageView) viewInflate2.findViewById(2131296855);
            int iOrdinal = fVar.ordinal();
            if (iOrdinal == 0) {
                i9 = 2131165466;
            } else if (iOrdinal == 1) {
                i9 = 2131165465;
            } else if (iOrdinal == 2) {
                i9 = 2131165468;
            } else if (iOrdinal == 3) {
                i9 = 2131165467;
            } else if (iOrdinal == 4) {
                i9 = 2131165463;
            } else {
                if (iOrdinal != 5) {
                    throw new IncompatibleClassChangeError();
                }
                i9 = 2131165464;
            }
            imageView.setImageResource(i9);
            TextView textView = (TextView) viewInflate2.findViewById(2131297636);
            if (textView != null) {
                int iOrdinal2 = fVar.ordinal();
                if (iOrdinal2 == 0) {
                    i10 = 2131952016;
                } else if (iOrdinal2 == 1) {
                    i10 = 2131952015;
                } else if (iOrdinal2 == 2) {
                    i10 = 2131952018;
                } else if (iOrdinal2 == 3) {
                    i10 = 2131952017;
                } else if (iOrdinal2 == 4) {
                    i10 = 2131952013;
                } else {
                    if (iOrdinal2 != 5) {
                        throw new IncompatibleClassChangeError();
                    }
                    i10 = 2131952014;
                }
                textView.setText(i10);
            }
            checkBox.setChecked(this.f4013b.a(fVar));
            h0.b.a();
            h0.b.f().m(spinner, m.h(new byte[]{62, -7, 108, -117, -7, 33, -29, -15, 22, -14, 122, -78, -19, Base64.padSymbol, -25, -52, 28, -18}, new byte[]{121, -100, 31, -1, -116, 83, -122, -85}) + fVar.name());
            checkBox.setOnCheckedChangeListener(new c3(3, this, fVar));
            linearLayout.addView(viewInflate2);
            i11++;
            z8 = false;
        }
        return viewInflate;
    }
}
