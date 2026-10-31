package m0;

import android.R$layout;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageButton;
import android.widget.ImageView$ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SeekBar;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.example.navistart.BlackActivity;
import com.example.navistart.mainview.DownloadButton;
import java.io.File;
import java.util.ArrayList;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class a0 extends l0.b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f3328h = e0.m.h(new byte[]{-75, 122, -18, -51, 63, -25, 90, -99, -110, 102, -38, -36, 31, -37, 73, -111, -109}, new byte[]{-8, 3, -71, -88, 93, -73, 40, -14});

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f3329i = e0.m.h(new byte[]{7, -6, -84, -95, 100, 67, 100, -48, 32, -26, -104, -80, 68, ByteCompanionObject.MAX_VALUE, 119, -36, 33, -36, -88, -95, 114, 103, ByteCompanionObject.MAX_VALUE, -47, 45, -16, -92, -113, 99, 106}, new byte[]{74, -125, -5, -60, 6, 19, 22, -65});

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f3330j = e0.m.h(new byte[]{75, 99, 50, 101, -43, 124, -80, 31, 88, 99, 54, 91, -62, 124, -91, 35, 68}, new byte[]{47, 6, 84, 4, -96, 16, -60, 64});

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public BlackActivity f3331b;
    public Spinner d;
    public ImageButton e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public b1.m f3333g;
    public final ArrayList c = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f3332f = e0.m.h(new byte[]{-92, 48, 58, 73, -118, 72, -85, 48, -73, 48, 62, 119, -99, 72, -66, 12, -85, 123, 38, 65, -113}, new byte[]{-64, 85, 92, 40, -1, 36, -33, 111});

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i9, int i10, Intent intent) {
        String stringExtra;
        super.onActivityResult(i9, i10, intent);
        if (i9 != 101544 || i10 != -1 || intent == null || (stringExtra = intent.getStringExtra(e0.m.h(new byte[]{95, 33, -25, 102, -67, -52, Base64.padSymbol, 100, 115, 34, -30, 111, -69}, new byte[]{44, 68, -117, 3, -34, -72, 88, 0}))) == null) {
            return;
        }
        u(new File(stringExtra));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof BlackActivity) {
            this.f3331b = (BlackActivity) context;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f3333g = new b1.m(requireContext(), this.f3332f, new File(requireContext().getFilesDir(), f3328h), f3330j);
        String[] strArr = new String[f0.b.values().length];
        for (int i9 = 0; i9 < f0.b.values().length; i9++) {
            strArr[i9] = getString(f0.b.values()[i9].f2155b);
        }
        LinearLayout linearLayout = new LinearLayout(requireContext());
        linearLayout.setOrientation(1);
        linearLayout.setPadding(40, 30, 40, 10);
        ListView listView = new ListView(requireContext());
        listView.setAdapter((ListAdapter) new ArrayAdapter(requireContext(), R$layout.simple_list_item_1, strArr));
        SeekBar seekBar = new SeekBar(requireContext());
        seekBar.setMax(100);
        seekBar.setProgress(h0.b.o().loadInt(e0.m.h(new byte[]{-65, -51, 32, -64, 12, -2, 105, -62, -100, -53, 45, -45, 63, -17, 98, -20, -118, -55, 36, -47, 8, -15, ByteCompanionObject.MAX_VALUE, -16, -124}, new byte[]{-16, -69, 69, -78, 96, -97, 16, -125}), 100));
        TextView textView = new TextView(requireContext());
        textView.setText(getString(2131952902) + " " + seekBar.getProgress() + e0.m.h(new byte[]{-123}, new byte[]{-96, 54, -92, 84, 54, -9, -61, -107}));
        seekBar.setOnSeekBarChangeListener(new i7.u(this, textView));
        LinearLayout linearLayout2 = new LinearLayout(requireContext());
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        linearLayout2.setPadding(t(12), t(12), t(12), t(12));
        this.d = new Spinner(requireContext(), 0);
        LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(0, t(56), 1.0f);
        linearLayout$LayoutParams.setMarginEnd(t(12));
        this.d.setLayoutParams(linearLayout$LayoutParams);
        ImageButton imageButton = new ImageButton(requireContext());
        int iT = t(56);
        imageButton.setLayoutParams(new LinearLayout$LayoutParams(iT, iT));
        imageButton.setImageResource(2131165455);
        imageButton.setBackgroundResource(2131165574);
        ImageView$ScaleType imageView$ScaleType = ImageView$ScaleType.CENTER_INSIDE;
        imageButton.setScaleType(imageView$ScaleType);
        imageButton.setPadding(t(12), t(12), t(12), t(12));
        imageButton.setOnClickListener(new z(this, 0));
        this.e = new ImageButton(requireContext());
        LinearLayout$LayoutParams linearLayout$LayoutParams2 = new LinearLayout$LayoutParams(iT, iT);
        linearLayout$LayoutParams2.setMarginEnd(t(12));
        this.e.setLayoutParams(linearLayout$LayoutParams2);
        this.e.setImageResource(2131165448);
        this.e.setBackgroundResource(2131165574);
        this.e.setScaleType(imageView$ScaleType);
        this.e.setPadding(t(12), t(12), t(12), t(12));
        this.e.setContentDescription(getString(2131951919));
        this.e.setOnClickListener(new z(this, 1));
        Context contextRequireContext = requireContext();
        DownloadButton downloadButton = new DownloadButton(contextRequireContext);
        downloadButton.a(contextRequireContext);
        downloadButton.setOnClickListener(new z(this, 2));
        linearLayout2.addView(this.d);
        linearLayout2.addView(this.e);
        linearLayout2.addView(imageButton);
        linearLayout2.addView(downloadButton);
        linearLayout.addView(listView);
        linearLayout.addView(linearLayout2);
        linearLayout.addView(textView);
        linearLayout.addView(seekBar);
        listView.setOnItemClickListener(new h7.b(2, this));
        return linearLayout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        if (this.d == null || this.f3333g == null) {
            return;
        }
        v();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int t(int i9) {
        return (int) (i9 * getResources().getDisplayMetrics().density);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void u(File file) {
        try {
            String strR = b1.u.r(file, (File) this.f3333g.f270f, false);
            h0.b.o().saveString(f3329i, strR);
            v();
            int iIndexOf = this.c.indexOf(strR);
            if (iIndexOf >= 0) {
                this.d.setSelection(iIndexOf);
            }
            y5.k.x(requireContext().getApplicationContext(), e0.m.h(new byte[]{5, 54, -104, -126, -34, 105, -8, -14, 5, 17, -103, -72, 46, 12, -85, -107, 84, 117, -54, -22, -66, 13, -107, -108, 107, 116, -6, -22, -75, 13, -99, -108, 104}, new byte[]{-43, -92, 72, 58, 14, -35, 40, 68}));
        } catch (Exception e) {
            y5.k.x(requireContext().getApplicationContext(), e0.m.h(new byte[]{39, -11, -106, 115, -33, -68, 46, -74, 39, -47, -105, 75, 47, 94, -73, 87, -51, 75}, new byte[]{-9, 107, 71, -5, 15, 4, -2, 7}) + e.getMessage());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void v() {
        this.d.setOnItemSelectedListener(null);
        ArrayList arrayList = this.c;
        arrayList.clear();
        String str = f3330j;
        arrayList.add(str);
        arrayList.addAll(this.f3333g.h());
        ArrayAdapter arrayAdapter = new ArrayAdapter(requireContext(), R$layout.simple_spinner_item, arrayList);
        arrayAdapter.setDropDownViewResource(R$layout.simple_spinner_dropdown_item);
        this.d.setAdapter((SpinnerAdapter) arrayAdapter);
        h0.b.a();
        int iIndexOf = arrayList.indexOf(h0.b.o().loadString(f3329i, str));
        if (iIndexOf >= 0) {
            this.d.setSelection(iIndexOf);
        }
        this.d.setOnItemSelectedListener(new e0.e1(2, this));
        w();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:14:0x0025  */
    public final void w() {
        Spinner spinner;
        boolean z8;
        if (this.e == null || (spinner = this.d) == null) {
            return;
        }
        int selectedItemPosition = spinner.getSelectedItemPosition();
        if (selectedItemPosition >= 0) {
            ArrayList arrayList = this.c;
            if (selectedItemPosition >= arrayList.size() || f3330j.equals(arrayList.get(selectedItemPosition))) {
                z8 = false;
            } else {
                z8 = true;
            }
        } else {
            z8 = false;
        }
        this.e.setEnabled(z8);
        this.e.setAlpha(z8 ? 1.0f : 0.35f);
    }
}
