package m0;

import android.R$layout;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.Switch;
import com.example.navistart.mainview.DownloadButton;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class c2 extends l0.b {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f3348i = e0.m.h(new byte[]{-44, ByteCompanionObject.MAX_VALUE, 69, -82, 0, 95, -56, 20, -58, 110, 120, -126, 18, 90, -55, 16, -41, ByteCompanionObject.MAX_VALUE, 67}, new byte[]{-93, 26, 39, -15, 119, 54, -84, 115});

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f3349j = e0.m.h(new byte[]{-123, -66, 29, -19, -106, 53, -50, 98, -94, -94, 41, -4, -74, 10, -35, ByteCompanionObject.MAX_VALUE, -84}, new byte[]{-56, -57, 74, -120, -12, 101, -68, 13});

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f3350k = e0.m.h(new byte[]{37, 9, 66, 107, 5, 111, -39}, new byte[]{65, 108, 36, 10, 112, 3, -83, -41});

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Spinner f3351b;
    public Button c;
    public ImageButton d;
    public Button e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public File f3352f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayList f3353g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ArrayAdapter f3354h;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void t(File file) {
        File[] fileArrListFiles;
        if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                t(file2);
            }
        }
        file.delete();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i9, int i10, Intent intent) {
        String stringExtra;
        super.onActivityResult(i9, i10, intent);
        if (i9 != 101 || i10 != -1 || intent == null || (stringExtra = intent.getStringExtra(e0.m.h(new byte[]{96, -117, 19, 55, 63, -19, -108, -52, 76, -120, 22, 62, 57}, new byte[]{19, -18, ByteCompanionObject.MAX_VALUE, 82, 92, -103, -15, -88}))) == null) {
            return;
        }
        try {
            String strR = b1.u.r(new File(stringExtra), this.f3352f, false);
            h0.b.o().saveString(f3348i, strR);
            v();
            int iIndexOf = this.f3353g.indexOf(strR);
            if (iIndexOf >= 0) {
                this.f3351b.setSelection(iIndexOf);
            }
            y5.k.x(requireContext().getApplicationContext(), e0.m.h(new byte[]{-110, 5, 117, 26, -116, -33, 51, -58, -110, 34, 116, 32, 124, -70, 96, -95, -61, 70, 39, 114, -20, -69, 94, -96, -4, 71, 23, 114, -25, -69, 86, -96, -1}, new byte[]{66, -105, -91, -94, 92, 107, -29, 112}));
        } catch (Exception e) {
            y5.k.x(requireContext().getApplicationContext(), e0.m.h(new byte[]{-103, -109, 11, -28, 45, -115, -64, 16, -103, -73, 10, -36, -35, 111, 89, -15, 115, 45}, new byte[]{73, 13, -38, 108, -3, 53, 16, -95}) + e.getMessage());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        ScrollView scrollView = new ScrollView(requireContext());
        scrollView.setFillViewport(true);
        scrollView.addView(layoutInflater.inflate(2131492945, (ViewGroup) scrollView, false));
        return scrollView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        if (this.f3351b == null || this.f3352f == null) {
            return;
        }
        v();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        Switch r9 = (Switch) view.findViewById(2131297516);
        r9.setChecked(h0.b.o().loadBoolean(e0.m.h(new byte[]{-69, -94, 10, 55, -81, 65, 68, 69, -102, -74, 46, 49, -65, 106, 120, 65, -100, -90, 6, 60, -84, 112, 116, 99, -72, -127}, new byte[]{-24, -46, 111, 82, -53, 3, 43, 36}), false));
        r9.setOnCheckedChangeListener(new z1(0));
        this.f3351b = (Spinner) view.findViewById(2131297425);
        this.c = (Button) view.findViewById(2131296530);
        this.d = (ImageButton) view.findViewById(2131296521);
        Button button = new Button(requireContext());
        button.setText(2131951911);
        button.setVisibility(8);
        button.setMinimumHeight(Math.round(getResources().getDisplayMetrics().density * 48.0f));
        if (this.c.getParent() instanceof View) {
            View view2 = (View) this.c.getParent();
            if (view2.getParent() instanceof LinearLayout) {
                LinearLayout linearLayout = (LinearLayout) view2.getParent();
                LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(-1, -2);
                linearLayout$LayoutParams.topMargin = Math.round(getResources().getDisplayMetrics().density * 12.0f);
                linearLayout.addView(button, linearLayout.indexOfChild(view2) + 1, linearLayout$LayoutParams);
            }
        }
        this.e = button;
        File file = new File(requireContext().getFilesDir(), f3349j);
        this.f3352f = file;
        if (!file.exists()) {
            this.f3352f.mkdirs();
        }
        this.c.setOnClickListener(new a2(this, 0));
        this.d.setOnClickListener(new a2(this, 1));
        this.e.setOnClickListener(new a2(this, 2));
        ((DownloadButton) view.findViewById(2131296529)).setOnClickListener(new a2(this, 3));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final File u(String str) {
        if (this.f3352f == null || str == null || str.trim().isEmpty() || str.contains(e0.m.h(new byte[]{-74}, new byte[]{-103, 65, -28, Base64.padSymbol, -32, -70, -42, -51})) || str.contains(e0.m.h(new byte[]{54}, new byte[]{106, -115, -17, -42, -113, -3, 80, -91}))) {
            return null;
        }
        File file = new File(new File(this.f3352f, str), e0.m.h(new byte[]{-66, -64, -20, 38, -104, 81, -83, 83, -29, -51, -20, 63, -99}, new byte[]{-51, -91, -104, 82, -15, 63, -54, 32}));
        try {
            File canonicalFile = this.f3352f.getCanonicalFile();
            File canonicalFile2 = file.getCanonicalFile();
            if (canonicalFile2.getPath().startsWith(canonicalFile.getPath() + File.separator) && canonicalFile2.isFile()) {
                return canonicalFile2;
            }
            return null;
        } catch (IOException unused) {
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void v() {
        this.f3351b.setOnItemSelectedListener(null);
        ArrayList arrayList = this.f3353g;
        arrayList.clear();
        String str = f3350k;
        arrayList.add(str);
        File[] fileArrListFiles = this.f3352f.listFiles(new b2());
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                if (!file.getName().equals(str) && !file.getName().startsWith(e0.m.h(new byte[]{21, 1, -112, 67, 114, -44, 79, -36, 22}, new byte[]{59, 104, -2, 48, 6, -75, 35, -80})) && !file.getName().startsWith(e0.m.h(new byte[]{48, -114, -81, 122, 107, 56, 72, 1}, new byte[]{30, -20, -50, 25, 0, 77, 56, 44}))) {
                    arrayList.add(file.getName());
                }
            }
        }
        ArrayAdapter arrayAdapter = new ArrayAdapter(requireContext(), R$layout.simple_spinner_item, arrayList);
        this.f3354h = arrayAdapter;
        arrayAdapter.setDropDownViewResource(R$layout.simple_spinner_dropdown_item);
        this.f3351b.setAdapter((SpinnerAdapter) this.f3354h);
        h0.b.a();
        int iIndexOf = arrayList.indexOf(h0.b.o().loadString(f3348i, str));
        if (iIndexOf >= 0) {
            this.f3351b.setSelection(iIndexOf);
        }
        this.f3351b.setOnItemSelectedListener(new e0.e1(3, this));
        w();
        x();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:14:0x0025  */
    public final void w() {
        Spinner spinner;
        boolean z8;
        if (this.d == null || (spinner = this.f3351b) == null) {
            return;
        }
        int selectedItemPosition = spinner.getSelectedItemPosition();
        if (selectedItemPosition >= 0) {
            ArrayList arrayList = this.f3353g;
            if (selectedItemPosition >= arrayList.size() || f3350k.equals(arrayList.get(selectedItemPosition))) {
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
    public final void x() {
        int selectedItemPosition;
        Button button = this.e;
        if (button == null) {
            return;
        }
        Spinner spinner = this.f3351b;
        File fileU = null;
        if (spinner != null && (selectedItemPosition = spinner.getSelectedItemPosition()) >= 0) {
            ArrayList arrayList = this.f3353g;
            if (selectedItemPosition < arrayList.size()) {
                fileU = u((String) arrayList.get(selectedItemPosition));
            }
        }
        button.setVisibility(fileU == null ? 8 : 0);
    }
}
