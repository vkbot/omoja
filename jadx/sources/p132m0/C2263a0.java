package p132m0;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SeekBar;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import com.example.navistart.ActivityC1081W;
import com.example.navistart.BlackActivity;
import com.example.navistart.mainview.DownloadButton;
import com.woha.appmanag.FilePickerActivity;
import java.io.File;
import java.util.ArrayList;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p016b1.AbstractC0880u;
import p016b1.C0872m;
import p047e0.AbstractC1387m;
import p047e0.C1349e1;
import p047e0.DialogInterfaceOnClickListenerC1348e0;
import p057f0.EnumC1524b;
import p078h0.C1652b;
import p084h7.C1674b;
import p094i7.C1772u;
import p121l0.C2195b;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: m0.a0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C2263a0 extends C2195b {

    /* JADX INFO: renamed from: h */
    public static final String f5922h = AbstractC1387m.m2421h(new byte[]{-75, 122, -18, -51, 63, -25, 90, -99, -110, 102, -38, -36, 31, -37, 73, -111, -109}, new byte[]{-8, 3, -71, -88, 93, -73, 40, -14});

    /* JADX INFO: renamed from: i */
    public static final String f5923i = AbstractC1387m.m2421h(new byte[]{7, -6, -84, -95, 100, 67, 100, -48, 32, -26, -104, -80, 68, ByteCompanionObject.MAX_VALUE, 119, -36, 33, -36, -88, -95, 114, 103, ByteCompanionObject.MAX_VALUE, -47, 45, -16, -92, -113, 99, 106}, new byte[]{74, -125, -5, -60, 6, 19, 22, -65});

    /* JADX INFO: renamed from: j */
    public static final String f5924j = AbstractC1387m.m2421h(new byte[]{75, 99, 50, 101, -43, 124, -80, 31, 88, 99, 54, 91, -62, 124, -91, 35, 68}, new byte[]{47, 6, 84, 4, -96, 16, -60, 64});

    /* JADX INFO: renamed from: b */
    public BlackActivity f5925b;

    /* JADX INFO: renamed from: d */
    public Spinner f5927d;

    /* JADX INFO: renamed from: e */
    public ImageButton f5928e;

    /* JADX INFO: renamed from: g */
    public C0872m f5930g;

    /* JADX INFO: renamed from: c */
    public final ArrayList f5926c = new ArrayList();

    /* JADX INFO: renamed from: f */
    public final String f5929f = AbstractC1387m.m2421h(new byte[]{-92, 48, 58, 73, -118, 72, -85, 48, -73, 48, 62, 119, -99, 72, -66, 12, -85, 123, 38, 65, -113}, new byte[]{-64, 85, 92, 40, -1, 36, -33, 111});

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i10, int i11, Intent intent) {
        String stringExtra;
        super.onActivityResult(i10, i11, intent);
        if (i10 != 101544 || i11 != -1 || intent == null || (stringExtra = intent.getStringExtra(AbstractC1387m.m2421h(new byte[]{95, 33, -25, 102, -67, -52, Base64.padSymbol, 100, 115, 34, -30, 111, -69}, new byte[]{44, 68, -117, 3, -34, -72, 88, 0}))) == null) {
            return;
        }
        m3642u(new File(stringExtra));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof BlackActivity) {
            this.f5925b = (BlackActivity) context;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f5930g = new C0872m(requireContext(), this.f5929f, new File(requireContext().getFilesDir(), f5922h), f5924j);
        String[] strArr = new String[EnumC1524b.values().length];
        final int i10 = 0;
        for (int i11 = 0; i11 < EnumC1524b.values().length; i11++) {
            strArr[i11] = getString(EnumC1524b.values()[i11].f3743b);
        }
        LinearLayout linearLayout = new LinearLayout(requireContext());
        linearLayout.setOrientation(1);
        linearLayout.setPadding(40, 30, 40, 10);
        ListView listView = new ListView(requireContext());
        listView.setAdapter((ListAdapter) new ArrayAdapter(requireContext(), R.layout.simple_list_item_1, strArr));
        SeekBar seekBar = new SeekBar(requireContext());
        seekBar.setMax(100);
        seekBar.setProgress(C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{-65, -51, 32, -64, 12, -2, 105, -62, -100, -53, 45, -45, 63, -17, 98, -20, -118, -55, 36, -47, 8, -15, ByteCompanionObject.MAX_VALUE, -16, -124}, new byte[]{-16, -69, 69, -78, 96, -97, 16, -125}), 100));
        TextView textView = new TextView(requireContext());
        textView.setText(getString(com.example.navistart.R.string.zatemneie_clock) + " " + seekBar.getProgress() + AbstractC1387m.m2421h(new byte[]{-123}, new byte[]{-96, 54, -92, 84, 54, -9, -61, -107}));
        seekBar.setOnSeekBarChangeListener(new C1772u(this, textView));
        LinearLayout linearLayout2 = new LinearLayout(requireContext());
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        linearLayout2.setPadding(m3641t(12), m3641t(12), m3641t(12), m3641t(12));
        this.f5927d = new Spinner(requireContext(), 0);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, m3641t(56), 1.0f);
        layoutParams.setMarginEnd(m3641t(12));
        this.f5927d.setLayoutParams(layoutParams);
        ImageButton imageButton = new ImageButton(requireContext());
        int iM3641t = m3641t(56);
        imageButton.setLayoutParams(new LinearLayout.LayoutParams(iM3641t, iM3641t));
        imageButton.setImageResource(com.example.navistart.R.drawable.ic_download_loading);
        imageButton.setBackgroundResource(com.example.navistart.R.drawable.modern_button_primary);
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
        imageButton.setScaleType(scaleType);
        imageButton.setPadding(m3641t(12), m3641t(12), m3641t(12), m3641t(12));
        imageButton.setOnClickListener(new View.OnClickListener(this) { // from class: m0.z

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2263a0 f6433c;

            {
                this.f6433c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int selectedItemPosition;
                int i12 = i10;
                C2263a0 c2263a0 = this.f6433c;
                switch (i12) {
                    case 0:
                        String str = C2263a0.f5922h;
                        Intent intent = new Intent(c2263a0.requireContext(), (Class<?>) FilePickerActivity.class);
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{-7, 99, -29, 116, -13, 83, 49, 83, -6, 100, -4, 120, -61, 88}, new byte[]{-97, 10, -113, 17, -84, 54, 73, 39}), AbstractC1387m.m2421h(new byte[]{39, 90, -90, 3}, new byte[]{9, 32, -49, 115, ByteCompanionObject.MIN_VALUE, 56, 108, -54}));
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{116, 74, -36, -20, -99, 90, 28, -39, 119, 77, -61, -32, -83, 81, 59, -64, 125, 71, -43, -42, -79, 90, 10, -55}, new byte[]{18, 35, -80, -119, -62, 63, 100, -83}), 1);
                        c2263a0.startActivityForResult(intent, 101544);
                        break;
                    case 1:
                        ArrayList arrayList = c2263a0.f5926c;
                        Spinner spinner = c2263a0.f5927d;
                        if (spinner != null && (selectedItemPosition = spinner.getSelectedItemPosition()) >= 0 && selectedItemPosition < arrayList.size()) {
                            String str2 = (String) arrayList.get(selectedItemPosition);
                            if (!C2263a0.f5924j.equals(str2)) {
                                new AlertDialog.Builder(c2263a0.requireContext()).setTitle(com.example.navistart.R.string.delete_custom_widget_title).setMessage(c2263a0.getString(com.example.navistart.R.string.delete_custom_widget_message, str2)).setNegativeButton(R.string.cancel, (DialogInterface.OnClickListener) null).setPositiveButton(com.example.navistart.R.string.delete_custom_widget, new DialogInterfaceOnClickListenerC1348e0(3, c2263a0, str2)).show();
                                break;
                            }
                        }
                        break;
                    default:
                        String str3 = C2263a0.f5922h;
                        ActivityC1081W.m1610u(c2263a0.requireContext(), C2304i1.class, C2304i1.m3696x(AbstractC1387m.m2421h(new byte[]{4, 25, -104, 74, 21}, new byte[]{102, 117, -7, 41, 126, -79, 16, -119})));
                        break;
                }
            }
        });
        this.f5928e = new ImageButton(requireContext());
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(iM3641t, iM3641t);
        layoutParams2.setMarginEnd(m3641t(12));
        this.f5928e.setLayoutParams(layoutParams2);
        this.f5928e.setImageResource(com.example.navistart.R.drawable.ic_delete);
        this.f5928e.setBackgroundResource(com.example.navistart.R.drawable.modern_button_primary);
        this.f5928e.setScaleType(scaleType);
        this.f5928e.setPadding(m3641t(12), m3641t(12), m3641t(12), m3641t(12));
        this.f5928e.setContentDescription(getString(com.example.navistart.R.string.delete_custom_widget));
        final int i12 = 1;
        this.f5928e.setOnClickListener(new View.OnClickListener(this) { // from class: m0.z

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2263a0 f6433c;

            {
                this.f6433c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int selectedItemPosition;
                int i13 = i12;
                C2263a0 c2263a0 = this.f6433c;
                switch (i13) {
                    case 0:
                        String str = C2263a0.f5922h;
                        Intent intent = new Intent(c2263a0.requireContext(), (Class<?>) FilePickerActivity.class);
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{-7, 99, -29, 116, -13, 83, 49, 83, -6, 100, -4, 120, -61, 88}, new byte[]{-97, 10, -113, 17, -84, 54, 73, 39}), AbstractC1387m.m2421h(new byte[]{39, 90, -90, 3}, new byte[]{9, 32, -49, 115, ByteCompanionObject.MIN_VALUE, 56, 108, -54}));
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{116, 74, -36, -20, -99, 90, 28, -39, 119, 77, -61, -32, -83, 81, 59, -64, 125, 71, -43, -42, -79, 90, 10, -55}, new byte[]{18, 35, -80, -119, -62, 63, 100, -83}), 1);
                        c2263a0.startActivityForResult(intent, 101544);
                        break;
                    case 1:
                        ArrayList arrayList = c2263a0.f5926c;
                        Spinner spinner = c2263a0.f5927d;
                        if (spinner != null && (selectedItemPosition = spinner.getSelectedItemPosition()) >= 0 && selectedItemPosition < arrayList.size()) {
                            String str2 = (String) arrayList.get(selectedItemPosition);
                            if (!C2263a0.f5924j.equals(str2)) {
                                new AlertDialog.Builder(c2263a0.requireContext()).setTitle(com.example.navistart.R.string.delete_custom_widget_title).setMessage(c2263a0.getString(com.example.navistart.R.string.delete_custom_widget_message, str2)).setNegativeButton(R.string.cancel, (DialogInterface.OnClickListener) null).setPositiveButton(com.example.navistart.R.string.delete_custom_widget, new DialogInterfaceOnClickListenerC1348e0(3, c2263a0, str2)).show();
                                break;
                            }
                        }
                        break;
                    default:
                        String str3 = C2263a0.f5922h;
                        ActivityC1081W.m1610u(c2263a0.requireContext(), C2304i1.class, C2304i1.m3696x(AbstractC1387m.m2421h(new byte[]{4, 25, -104, 74, 21}, new byte[]{102, 117, -7, 41, 126, -79, 16, -119})));
                        break;
                }
            }
        });
        Context contextRequireContext = requireContext();
        DownloadButton downloadButton = new DownloadButton(contextRequireContext);
        downloadButton.m1665a(contextRequireContext);
        final int i13 = 2;
        downloadButton.setOnClickListener(new View.OnClickListener(this) { // from class: m0.z

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2263a0 f6433c;

            {
                this.f6433c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int selectedItemPosition;
                int i14 = i13;
                C2263a0 c2263a0 = this.f6433c;
                switch (i14) {
                    case 0:
                        String str = C2263a0.f5922h;
                        Intent intent = new Intent(c2263a0.requireContext(), (Class<?>) FilePickerActivity.class);
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{-7, 99, -29, 116, -13, 83, 49, 83, -6, 100, -4, 120, -61, 88}, new byte[]{-97, 10, -113, 17, -84, 54, 73, 39}), AbstractC1387m.m2421h(new byte[]{39, 90, -90, 3}, new byte[]{9, 32, -49, 115, ByteCompanionObject.MIN_VALUE, 56, 108, -54}));
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{116, 74, -36, -20, -99, 90, 28, -39, 119, 77, -61, -32, -83, 81, 59, -64, 125, 71, -43, -42, -79, 90, 10, -55}, new byte[]{18, 35, -80, -119, -62, 63, 100, -83}), 1);
                        c2263a0.startActivityForResult(intent, 101544);
                        break;
                    case 1:
                        ArrayList arrayList = c2263a0.f5926c;
                        Spinner spinner = c2263a0.f5927d;
                        if (spinner != null && (selectedItemPosition = spinner.getSelectedItemPosition()) >= 0 && selectedItemPosition < arrayList.size()) {
                            String str2 = (String) arrayList.get(selectedItemPosition);
                            if (!C2263a0.f5924j.equals(str2)) {
                                new AlertDialog.Builder(c2263a0.requireContext()).setTitle(com.example.navistart.R.string.delete_custom_widget_title).setMessage(c2263a0.getString(com.example.navistart.R.string.delete_custom_widget_message, str2)).setNegativeButton(R.string.cancel, (DialogInterface.OnClickListener) null).setPositiveButton(com.example.navistart.R.string.delete_custom_widget, new DialogInterfaceOnClickListenerC1348e0(3, c2263a0, str2)).show();
                                break;
                            }
                        }
                        break;
                    default:
                        String str3 = C2263a0.f5922h;
                        ActivityC1081W.m1610u(c2263a0.requireContext(), C2304i1.class, C2304i1.m3696x(AbstractC1387m.m2421h(new byte[]{4, 25, -104, 74, 21}, new byte[]{102, 117, -7, 41, 126, -79, 16, -119})));
                        break;
                }
            }
        });
        linearLayout2.addView(this.f5927d);
        linearLayout2.addView(this.f5928e);
        linearLayout2.addView(imageButton);
        linearLayout2.addView(downloadButton);
        linearLayout.addView(listView);
        linearLayout.addView(linearLayout2);
        linearLayout.addView(textView);
        linearLayout.addView(seekBar);
        listView.setOnItemClickListener(new C1674b(i13, this));
        return linearLayout;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        if (this.f5927d == null || this.f5930g == null) {
            return;
        }
        m3643v();
    }

    /* JADX INFO: renamed from: t */
    public final int m3641t(int i10) {
        return (int) (i10 * getResources().getDisplayMetrics().density);
    }

    /* JADX INFO: renamed from: u */
    public final void m3642u(File file) {
        try {
            String strM1004r = AbstractC0880u.m1004r(file, (File) this.f5930g.f604f, false);
            C1652b.m2745o().saveString(f5923i, strM1004r);
            m3643v();
            int iIndexOf = this.f5926c.indexOf(strM1004r);
            if (iIndexOf >= 0) {
                this.f5927d.setSelection(iIndexOf);
            }
            AbstractC3656k.m5878x(requireContext().getApplicationContext(), AbstractC1387m.m2421h(new byte[]{5, 54, -104, -126, -34, 105, -8, -14, 5, 17, -103, -72, 46, 12, -85, -107, 84, 117, -54, -22, -66, 13, -107, -108, 107, 116, -6, -22, -75, 13, -99, -108, 104}, new byte[]{-43, -92, 72, 58, 14, -35, 40, 68}));
        } catch (Exception e) {
            AbstractC3656k.m5878x(requireContext().getApplicationContext(), AbstractC1387m.m2421h(new byte[]{39, -11, -106, 115, -33, -68, 46, -74, 39, -47, -105, 75, 47, 94, -73, 87, -51, 75}, new byte[]{-9, 107, 71, -5, 15, 4, -2, 7}) + e.getMessage());
        }
    }

    /* JADX INFO: renamed from: v */
    public final void m3643v() {
        this.f5927d.setOnItemSelectedListener(null);
        ArrayList arrayList = this.f5926c;
        arrayList.clear();
        String str = f5924j;
        arrayList.add(str);
        arrayList.addAll(this.f5930g.m983h());
        ArrayAdapter arrayAdapter = new ArrayAdapter(requireContext(), R.layout.simple_spinner_item, arrayList);
        arrayAdapter.setDropDownViewResource(R.layout.simple_spinner_dropdown_item);
        this.f5927d.setAdapter((SpinnerAdapter) arrayAdapter);
        C1652b.m2734a();
        int iIndexOf = arrayList.indexOf(C1652b.m2745o().loadString(f5923i, str));
        if (iIndexOf >= 0) {
            this.f5927d.setSelection(iIndexOf);
        }
        this.f5927d.setOnItemSelectedListener(new C1349e1(2, this));
        m3644w();
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0025  */
    /* JADX INFO: renamed from: w */
    public final void m3644w() {
        Spinner spinner;
        boolean z9;
        if (this.f5928e == null || (spinner = this.f5927d) == null) {
            return;
        }
        int selectedItemPosition = spinner.getSelectedItemPosition();
        if (selectedItemPosition >= 0) {
            ArrayList arrayList = this.f5926c;
            if (selectedItemPosition >= arrayList.size() || f5924j.equals(arrayList.get(selectedItemPosition))) {
                z9 = false;
            } else {
                z9 = true;
            }
        } else {
            z9 = false;
        }
        this.f5928e.setEnabled(z9);
        this.f5928e.setAlpha(z9 ? 1.0f : 0.35f);
    }
}
