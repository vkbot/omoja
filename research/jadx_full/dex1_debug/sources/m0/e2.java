package m0;

import android.R$layout;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.LinearLayout$LayoutParams;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import com.example.navistart.mainview.DownloadButton;
import java.io.File;
import java.util.ArrayList;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class e2 extends l0.b {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f3407j = e0.m.h(new byte[]{-5, -38, -41, 3, -125, -72, -104, -80, -36, -58, -29, 18, -87, -67, -82}, new byte[]{-74, -93, ByteCompanionObject.MIN_VALUE, 102, -31, -24, -22, -33});

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f3408k = e0.m.h(new byte[]{-124, -15, 69, -75, -66, -49, 34, 54, -93, -19, 113, -92, -108, -54, 20, 6, -102, -19, 102, -92, -75, -15, 55, 42, -106, -61, 119, -87}, new byte[]{-55, -120, 18, -48, -36, -97, 80, 89});

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String f3409l = e0.m.h(new byte[]{-74, 73, -53, 0, 9, 22, -100, 118, -70, 89, -55}, new byte[]{-46, 44, -83, 97, 124, 122, -24, 41});

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final String f3410m = e0.m.h(new byte[]{119, -89, -15, -10, -119, -55, -44, -62, 123, -73, -13, -71, -122, -52, -48}, new byte[]{19, -62, -105, -105, -4, -91, -96, -99});

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Spinner f3411b;
    public Button c;
    public ImageButton d;
    public Button e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public File f3412f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayList f3413g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ArrayAdapter f3414h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public b1.m f3415i;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i9, int i10, Intent intent) {
        String stringExtra;
        super.onActivityResult(i9, i10, intent);
        if (i9 != 101 || i10 != -1 || intent == null || (stringExtra = intent.getStringExtra(e0.m.h(new byte[]{-110, -116, -17, -82, -70, -28, 85, -43, -66, -113, -22, -89, -68}, new byte[]{-31, -23, -125, -53, -39, -112, 48, -79}))) == null) {
            return;
        }
        v(new File(stringExtra));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(2131492946, viewGroup, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        if (this.f3411b == null || this.f3415i == null) {
            return;
        }
        w();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f3411b = (Spinner) view.findViewById(2131297425);
        this.c = (Button) view.findViewById(2131296530);
        this.d = (ImageButton) view.findViewById(2131296521);
        this.e = (Button) view.findViewById(2131296533);
        e0.v0 v0Var = new e0.v0(22);
        e0.v0 v0Var2 = new e0.v0(23);
        e0.v0 v0Var3 = new e0.v0(24);
        e0.v0 v0Var4 = new e0.v0(25);
        Button button = (Button) view.findViewById(2131296522);
        button.setOnClickListener(new androidx.navigation.ui.a(13, v0Var, v0Var3));
        Button button2 = (Button) view.findViewById(2131296523);
        button2.setOnClickListener(new androidx.navigation.ui.a(14, v0Var2, v0Var4));
        DownloadButton downloadButton = (DownloadButton) view.findViewById(2131296529);
        t(this.c);
        t(downloadButton);
        t(button);
        t(button2);
        this.f3412f = new File(requireContext().getFilesDir(), f3407j);
        this.f3415i = new b1.m(requireContext(), f3410m, this.f3412f, f3409l);
        this.c.setOnClickListener(new d2(this, 0));
        this.d.setOnClickListener(new d2(this, 1));
        this.e.setOnClickListener(new d2(this, 2));
        downloadButton.setOnClickListener(new d2(this, 3));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void t(View view) {
        ViewGroup$LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof LinearLayout$LayoutParams) {
            LinearLayout$LayoutParams linearLayout$LayoutParams = (LinearLayout$LayoutParams) layoutParams;
            linearLayout$LayoutParams.width = 0;
            linearLayout$LayoutParams.height = -2;
            linearLayout$LayoutParams.weight = 1.0f;
            view.setLayoutParams(linearLayout$LayoutParams);
            view.setMinimumWidth(0);
            view.setMinimumHeight(Math.round(48 * getResources().getDisplayMetrics().density));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final File u(String str) {
        if (this.f3412f == null || str == null || str.trim().isEmpty() || str.contains(e0.m.h(new byte[]{63}, new byte[]{16, 94, -93, -100, -112, 29, 9, 14})) || str.contains(e0.m.h(new byte[]{-114}, new byte[]{-46, -77, 71, -41, -106, -115, -122, 1}))) {
            return null;
        }
        File file = new File(new File(this.f3412f, str), e0.m.h(new byte[]{34, 24, 39, -34, -112, 78, 71, 70, ByteCompanionObject.MAX_VALUE, 21, 39, -57, -107}, new byte[]{81, 125, 83, -86, -7, 32, 32, 53}));
        try {
            File canonicalFile = this.f3412f.getCanonicalFile();
            File canonicalFile2 = file.getCanonicalFile();
            if (canonicalFile2.getPath().startsWith(canonicalFile.getPath() + File.separator) && canonicalFile2.isFile()) {
                return canonicalFile2;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void v(File file) {
        try {
            String strR = b1.u.r(file, (File) this.f3415i.f270f, false);
            h0.b.o().saveString(f3408k, strR);
            w();
            int iIndexOf = this.f3413g.indexOf(strR);
            if (iIndexOf >= 0) {
                this.f3411b.setSelection(iIndexOf);
            }
            x();
            y();
            y5.k.x(requireContext().getApplicationContext(), e0.m.h(new byte[]{-41, -8, -3, -40, -86, -28, 126, -37, -41, -33, -4, -30, 90, -127, 45, -68, -122, -69, -81, -80, -54, ByteCompanionObject.MIN_VALUE, 19, -67, -71, -70, -97, -80, -63, ByteCompanionObject.MIN_VALUE, 27, -67, -70}, new byte[]{7, 106, 45, 96, 122, 80, -82, 109}));
        } catch (Exception e) {
            y5.k.x(requireContext().getApplicationContext(), e0.m.h(new byte[]{-86, -68, -61, 27, 75, -105, -127, 5, -86, -104, -62, 35, -69, 117, 24, -28, 64, 2}, new byte[]{122, 34, 18, -109, -101, 47, 81, -76}) + e.getMessage());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void w() {
        this.f3411b.setOnItemSelectedListener(null);
        ArrayList arrayList = this.f3413g;
        arrayList.clear();
        String str = f3409l;
        arrayList.add(str);
        arrayList.addAll(this.f3415i.h());
        ArrayAdapter arrayAdapter = new ArrayAdapter(requireContext(), R$layout.simple_spinner_item, arrayList);
        this.f3414h = arrayAdapter;
        arrayAdapter.setDropDownViewResource(R$layout.simple_spinner_dropdown_item);
        this.f3411b.setAdapter((SpinnerAdapter) this.f3414h);
        h0.b.a();
        int iIndexOf = arrayList.indexOf(h0.b.o().loadString(f3408k, str));
        if (iIndexOf >= 0) {
            this.f3411b.setSelection(iIndexOf);
        }
        this.f3411b.setOnItemSelectedListener(new e0.e1(4, this));
        x();
        y();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:14:0x0025  */
    public final void x() {
        Spinner spinner;
        boolean z8;
        if (this.d == null || (spinner = this.f3411b) == null) {
            return;
        }
        int selectedItemPosition = spinner.getSelectedItemPosition();
        if (selectedItemPosition >= 0) {
            ArrayList arrayList = this.f3413g;
            if (selectedItemPosition >= arrayList.size() || f3409l.equals(arrayList.get(selectedItemPosition))) {
                z8 = false;
            } else {
                z8 = true;
            }
        } else {
            z8 = false;
        }
        this.d.setEnabled(z8);
        this.d.setAlpha(z8 ? 1.0f : 0.35f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void y() {
        int selectedItemPosition;
        Button button = this.e;
        if (button == null) {
            return;
        }
        Spinner spinner = this.f3411b;
        File fileU = null;
        if (spinner != null && (selectedItemPosition = spinner.getSelectedItemPosition()) >= 0) {
            ArrayList arrayList = this.f3413g;
            if (selectedItemPosition < arrayList.size()) {
                fileU = u((String) arrayList.get(selectedItemPosition));
            }
        }
        button.setVisibility(fileU == null ? 8 : 0);
    }
}
