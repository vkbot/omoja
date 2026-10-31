package p132m0;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.Switch;
import androidx.appcompat.app.AlertDialog;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.example.navistart.ActivityC1081W;
import com.example.navistart.R;
import com.example.navistart.mainview.DownloadButton;
import com.woha.appmanag.FilePickerActivity;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p016b1.AbstractC0880u;
import p047e0.AbstractC1387m;
import p047e0.C1349e1;
import p047e0.DialogInterfaceOnClickListenerC1348e0;
import p078h0.C1652b;
import p121l0.C2195b;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: m0.c2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C2275c2 extends C2195b {

    /* JADX INFO: renamed from: i */
    public static final String f5957i = AbstractC1387m.m2421h(new byte[]{-44, ByteCompanionObject.MAX_VALUE, 69, -82, 0, 95, -56, 20, -58, 110, 120, -126, 18, 90, -55, 16, -41, ByteCompanionObject.MAX_VALUE, 67}, new byte[]{-93, 26, 39, -15, 119, 54, -84, 115});

    /* JADX INFO: renamed from: j */
    public static final String f5958j = AbstractC1387m.m2421h(new byte[]{-123, -66, 29, -19, -106, 53, -50, 98, -94, -94, 41, -4, -74, 10, -35, ByteCompanionObject.MAX_VALUE, -84}, new byte[]{-56, -57, 74, -120, -12, 101, -68, 13});

    /* JADX INFO: renamed from: k */
    public static final String f5959k = AbstractC1387m.m2421h(new byte[]{37, 9, 66, 107, 5, 111, -39}, new byte[]{65, 108, 36, 10, 112, 3, -83, -41});

    /* JADX INFO: renamed from: b */
    public Spinner f5960b;

    /* JADX INFO: renamed from: c */
    public Button f5961c;

    /* JADX INFO: renamed from: d */
    public ImageButton f5962d;

    /* JADX INFO: renamed from: e */
    public Button f5963e;

    /* JADX INFO: renamed from: f */
    public File f5964f;

    /* JADX INFO: renamed from: g */
    public final ArrayList f5965g = new ArrayList();

    /* JADX INFO: renamed from: h */
    public ArrayAdapter f5966h;

    /* JADX INFO: renamed from: t */
    public static void m3646t(File file) {
        File[] fileArrListFiles;
        if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                m3646t(file2);
            }
        }
        file.delete();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i10, int i11, Intent intent) {
        String stringExtra;
        super.onActivityResult(i10, i11, intent);
        if (i10 != 101 || i11 != -1 || intent == null || (stringExtra = intent.getStringExtra(AbstractC1387m.m2421h(new byte[]{96, -117, 19, 55, 63, -19, -108, -52, 76, -120, 22, 62, 57}, new byte[]{19, -18, ByteCompanionObject.MAX_VALUE, 82, 92, -103, -15, -88}))) == null) {
            return;
        }
        try {
            String strM1004r = AbstractC0880u.m1004r(new File(stringExtra), this.f5964f, false);
            C1652b.m2745o().saveString(f5957i, strM1004r);
            m3648v();
            int iIndexOf = this.f5965g.indexOf(strM1004r);
            if (iIndexOf >= 0) {
                this.f5960b.setSelection(iIndexOf);
            }
            AbstractC3656k.m5878x(requireContext().getApplicationContext(), AbstractC1387m.m2421h(new byte[]{-110, 5, 117, 26, -116, -33, 51, -58, -110, 34, 116, 32, 124, -70, 96, -95, -61, 70, 39, 114, -20, -69, 94, -96, -4, 71, 23, 114, -25, -69, 86, -96, -1}, new byte[]{66, -105, -91, -94, 92, 107, -29, 112}));
        } catch (Exception e) {
            AbstractC3656k.m5878x(requireContext().getApplicationContext(), AbstractC1387m.m2421h(new byte[]{-103, -109, 11, -28, 45, -115, -64, 16, -103, -73, 10, -36, -35, 111, 89, -15, 115, 45}, new byte[]{73, 13, -38, 108, -3, 53, 16, -95}) + e.getMessage());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        ScrollView scrollView = new ScrollView(requireContext());
        scrollView.setFillViewport(true);
        scrollView.addView(layoutInflater.inflate(R.layout.fra_speedboardactset, (ViewGroup) scrollView, false));
        return scrollView;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        if (this.f5960b == null || this.f5964f == null) {
            return;
        }
        m3648v();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        Switch r9 = (Switch) view.findViewById(R.id.switch23);
        final int i10 = 0;
        r9.setChecked(C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-69, -94, 10, 55, -81, 65, 68, 69, -102, -74, 46, 49, -65, 106, 120, 65, -100, -90, 6, 60, -84, 112, 116, 99, -72, -127}, new byte[]{-24, -46, 111, 82, -53, 3, 43, 36}), false));
        r9.setOnCheckedChangeListener(new C2378z1(0));
        this.f5960b = (Spinner) view.findViewById(R.id.spinnerWidgets);
        this.f5961c = (Button) view.findViewById(R.id.btnUploadZip);
        this.f5962d = (ImageButton) view.findViewById(R.id.btnDeleteWidget);
        Button button = new Button(requireContext());
        button.setText(R.string.custom_widget_settings);
        button.setVisibility(8);
        button.setMinimumHeight(Math.round(getResources().getDisplayMetrics().density * 48.0f));
        final int i11 = 1;
        if (this.f5961c.getParent() instanceof View) {
            View view2 = (View) this.f5961c.getParent();
            if (view2.getParent() instanceof LinearLayout) {
                LinearLayout linearLayout = (LinearLayout) view2.getParent();
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                layoutParams.topMargin = Math.round(getResources().getDisplayMetrics().density * 12.0f);
                linearLayout.addView(button, linearLayout.indexOfChild(view2) + 1, layoutParams);
            }
        }
        this.f5963e = button;
        File file = new File(requireContext().getFilesDir(), f5958j);
        this.f5964f = file;
        if (!file.exists()) {
            this.f5964f.mkdirs();
        }
        this.f5961c.setOnClickListener(new View.OnClickListener(this) { // from class: m0.a2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2275c2 f5936c;

            {
                this.f5936c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                int selectedItemPosition;
                int i12 = i10;
                C2275c2 c2275c2 = this.f5936c;
                switch (i12) {
                    case 0:
                        String str = C2275c2.f5957i;
                        Intent intent = new Intent(c2275c2.requireContext(), (Class<?>) FilePickerActivity.class);
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{-125, -45, -69, -53, 35, 72, -108, -93, ByteCompanionObject.MIN_VALUE, -44, -92, -57, 19, 67}, new byte[]{-27, -70, -41, -82, 124, 45, -20, -41}), AbstractC1387m.m2421h(new byte[]{-10, 86, 115, -32}, new byte[]{-40, 44, 26, -112, -25, 113, -117, -63}));
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{-92, -60, 124, -91, 24, -85, 91, -37, -89, -61, 99, -87, 40, -96, 124, -62, -83, -55, 117, -97, 52, -85, 77, -53}, new byte[]{-62, -83, 16, -64, 71, -50, 35, -81}), 1);
                        c2275c2.startActivityForResult(intent, TypedValues.TYPE_TARGET);
                        break;
                    case 1:
                        ArrayList arrayList = c2275c2.f5965g;
                        Spinner spinner = c2275c2.f5960b;
                        if (spinner != null && (selectedItemPosition = spinner.getSelectedItemPosition()) >= 0 && selectedItemPosition < arrayList.size()) {
                            String str2 = (String) arrayList.get(selectedItemPosition);
                            if (!C2275c2.f5959k.equals(str2)) {
                                new AlertDialog.Builder(c2275c2.requireContext()).setTitle(R.string.delete_custom_widget_title).setMessage(c2275c2.getString(R.string.delete_custom_widget_message, str2)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).setPositiveButton(R.string.delete_custom_widget, new DialogInterfaceOnClickListenerC1348e0(4, c2275c2, str2)).show();
                                break;
                            }
                        }
                        break;
                    case 2:
                        ArrayList arrayList2 = c2275c2.f5965g;
                        int selectedItemPosition2 = c2275c2.f5960b.getSelectedItemPosition();
                        if (selectedItemPosition2 >= 0 && selectedItemPosition2 < arrayList2.size()) {
                            String str3 = (String) arrayList2.get(selectedItemPosition2);
                            if (c2275c2.m3647u(str3) != null) {
                                Context contextRequireContext = c2275c2.requireContext();
                                String str4 = C2275c2.f5958j;
                                String str5 = C2333o0.f6280c;
                                Bundle bundle2 = new Bundle();
                                bundle2.putString(C2333o0.f6280c, str3);
                                bundle2.putString(C2333o0.f6281d, str4);
                                ActivityC1081W.m1609t(contextRequireContext, C2333o0.class, bundle2);
                                break;
                            }
                        }
                        break;
                    default:
                        String str6 = C2275c2.f5957i;
                        ActivityC1081W.m1610u(c2275c2.requireContext(), C2304i1.class, C2304i1.m3696x(AbstractC1387m.m2421h(new byte[]{99, -60, 96, 72, Base64.padSymbol}, new byte[]{1, -85, 1, 58, 89, -39, 91, 43})));
                        break;
                }
            }
        });
        this.f5962d.setOnClickListener(new View.OnClickListener(this) { // from class: m0.a2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2275c2 f5936c;

            {
                this.f5936c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                int selectedItemPosition;
                int i12 = i11;
                C2275c2 c2275c2 = this.f5936c;
                switch (i12) {
                    case 0:
                        String str = C2275c2.f5957i;
                        Intent intent = new Intent(c2275c2.requireContext(), (Class<?>) FilePickerActivity.class);
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{-125, -45, -69, -53, 35, 72, -108, -93, ByteCompanionObject.MIN_VALUE, -44, -92, -57, 19, 67}, new byte[]{-27, -70, -41, -82, 124, 45, -20, -41}), AbstractC1387m.m2421h(new byte[]{-10, 86, 115, -32}, new byte[]{-40, 44, 26, -112, -25, 113, -117, -63}));
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{-92, -60, 124, -91, 24, -85, 91, -37, -89, -61, 99, -87, 40, -96, 124, -62, -83, -55, 117, -97, 52, -85, 77, -53}, new byte[]{-62, -83, 16, -64, 71, -50, 35, -81}), 1);
                        c2275c2.startActivityForResult(intent, TypedValues.TYPE_TARGET);
                        break;
                    case 1:
                        ArrayList arrayList = c2275c2.f5965g;
                        Spinner spinner = c2275c2.f5960b;
                        if (spinner != null && (selectedItemPosition = spinner.getSelectedItemPosition()) >= 0 && selectedItemPosition < arrayList.size()) {
                            String str2 = (String) arrayList.get(selectedItemPosition);
                            if (!C2275c2.f5959k.equals(str2)) {
                                new AlertDialog.Builder(c2275c2.requireContext()).setTitle(R.string.delete_custom_widget_title).setMessage(c2275c2.getString(R.string.delete_custom_widget_message, str2)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).setPositiveButton(R.string.delete_custom_widget, new DialogInterfaceOnClickListenerC1348e0(4, c2275c2, str2)).show();
                                break;
                            }
                        }
                        break;
                    case 2:
                        ArrayList arrayList2 = c2275c2.f5965g;
                        int selectedItemPosition2 = c2275c2.f5960b.getSelectedItemPosition();
                        if (selectedItemPosition2 >= 0 && selectedItemPosition2 < arrayList2.size()) {
                            String str3 = (String) arrayList2.get(selectedItemPosition2);
                            if (c2275c2.m3647u(str3) != null) {
                                Context contextRequireContext = c2275c2.requireContext();
                                String str4 = C2275c2.f5958j;
                                String str5 = C2333o0.f6280c;
                                Bundle bundle2 = new Bundle();
                                bundle2.putString(C2333o0.f6280c, str3);
                                bundle2.putString(C2333o0.f6281d, str4);
                                ActivityC1081W.m1609t(contextRequireContext, C2333o0.class, bundle2);
                                break;
                            }
                        }
                        break;
                    default:
                        String str6 = C2275c2.f5957i;
                        ActivityC1081W.m1610u(c2275c2.requireContext(), C2304i1.class, C2304i1.m3696x(AbstractC1387m.m2421h(new byte[]{99, -60, 96, 72, Base64.padSymbol}, new byte[]{1, -85, 1, 58, 89, -39, 91, 43})));
                        break;
                }
            }
        });
        final int i12 = 2;
        this.f5963e.setOnClickListener(new View.OnClickListener(this) { // from class: m0.a2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2275c2 f5936c;

            {
                this.f5936c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                int selectedItemPosition;
                int i13 = i12;
                C2275c2 c2275c2 = this.f5936c;
                switch (i13) {
                    case 0:
                        String str = C2275c2.f5957i;
                        Intent intent = new Intent(c2275c2.requireContext(), (Class<?>) FilePickerActivity.class);
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{-125, -45, -69, -53, 35, 72, -108, -93, ByteCompanionObject.MIN_VALUE, -44, -92, -57, 19, 67}, new byte[]{-27, -70, -41, -82, 124, 45, -20, -41}), AbstractC1387m.m2421h(new byte[]{-10, 86, 115, -32}, new byte[]{-40, 44, 26, -112, -25, 113, -117, -63}));
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{-92, -60, 124, -91, 24, -85, 91, -37, -89, -61, 99, -87, 40, -96, 124, -62, -83, -55, 117, -97, 52, -85, 77, -53}, new byte[]{-62, -83, 16, -64, 71, -50, 35, -81}), 1);
                        c2275c2.startActivityForResult(intent, TypedValues.TYPE_TARGET);
                        break;
                    case 1:
                        ArrayList arrayList = c2275c2.f5965g;
                        Spinner spinner = c2275c2.f5960b;
                        if (spinner != null && (selectedItemPosition = spinner.getSelectedItemPosition()) >= 0 && selectedItemPosition < arrayList.size()) {
                            String str2 = (String) arrayList.get(selectedItemPosition);
                            if (!C2275c2.f5959k.equals(str2)) {
                                new AlertDialog.Builder(c2275c2.requireContext()).setTitle(R.string.delete_custom_widget_title).setMessage(c2275c2.getString(R.string.delete_custom_widget_message, str2)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).setPositiveButton(R.string.delete_custom_widget, new DialogInterfaceOnClickListenerC1348e0(4, c2275c2, str2)).show();
                                break;
                            }
                        }
                        break;
                    case 2:
                        ArrayList arrayList2 = c2275c2.f5965g;
                        int selectedItemPosition2 = c2275c2.f5960b.getSelectedItemPosition();
                        if (selectedItemPosition2 >= 0 && selectedItemPosition2 < arrayList2.size()) {
                            String str3 = (String) arrayList2.get(selectedItemPosition2);
                            if (c2275c2.m3647u(str3) != null) {
                                Context contextRequireContext = c2275c2.requireContext();
                                String str4 = C2275c2.f5958j;
                                String str5 = C2333o0.f6280c;
                                Bundle bundle2 = new Bundle();
                                bundle2.putString(C2333o0.f6280c, str3);
                                bundle2.putString(C2333o0.f6281d, str4);
                                ActivityC1081W.m1609t(contextRequireContext, C2333o0.class, bundle2);
                                break;
                            }
                        }
                        break;
                    default:
                        String str6 = C2275c2.f5957i;
                        ActivityC1081W.m1610u(c2275c2.requireContext(), C2304i1.class, C2304i1.m3696x(AbstractC1387m.m2421h(new byte[]{99, -60, 96, 72, Base64.padSymbol}, new byte[]{1, -85, 1, 58, 89, -39, 91, 43})));
                        break;
                }
            }
        });
        final int i13 = 3;
        ((DownloadButton) view.findViewById(R.id.btnUploadStore)).setOnClickListener(new View.OnClickListener(this) { // from class: m0.a2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2275c2 f5936c;

            {
                this.f5936c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                int selectedItemPosition;
                int i14 = i13;
                C2275c2 c2275c2 = this.f5936c;
                switch (i14) {
                    case 0:
                        String str = C2275c2.f5957i;
                        Intent intent = new Intent(c2275c2.requireContext(), (Class<?>) FilePickerActivity.class);
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{-125, -45, -69, -53, 35, 72, -108, -93, ByteCompanionObject.MIN_VALUE, -44, -92, -57, 19, 67}, new byte[]{-27, -70, -41, -82, 124, 45, -20, -41}), AbstractC1387m.m2421h(new byte[]{-10, 86, 115, -32}, new byte[]{-40, 44, 26, -112, -25, 113, -117, -63}));
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{-92, -60, 124, -91, 24, -85, 91, -37, -89, -61, 99, -87, 40, -96, 124, -62, -83, -55, 117, -97, 52, -85, 77, -53}, new byte[]{-62, -83, 16, -64, 71, -50, 35, -81}), 1);
                        c2275c2.startActivityForResult(intent, TypedValues.TYPE_TARGET);
                        break;
                    case 1:
                        ArrayList arrayList = c2275c2.f5965g;
                        Spinner spinner = c2275c2.f5960b;
                        if (spinner != null && (selectedItemPosition = spinner.getSelectedItemPosition()) >= 0 && selectedItemPosition < arrayList.size()) {
                            String str2 = (String) arrayList.get(selectedItemPosition);
                            if (!C2275c2.f5959k.equals(str2)) {
                                new AlertDialog.Builder(c2275c2.requireContext()).setTitle(R.string.delete_custom_widget_title).setMessage(c2275c2.getString(R.string.delete_custom_widget_message, str2)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).setPositiveButton(R.string.delete_custom_widget, new DialogInterfaceOnClickListenerC1348e0(4, c2275c2, str2)).show();
                                break;
                            }
                        }
                        break;
                    case 2:
                        ArrayList arrayList2 = c2275c2.f5965g;
                        int selectedItemPosition2 = c2275c2.f5960b.getSelectedItemPosition();
                        if (selectedItemPosition2 >= 0 && selectedItemPosition2 < arrayList2.size()) {
                            String str3 = (String) arrayList2.get(selectedItemPosition2);
                            if (c2275c2.m3647u(str3) != null) {
                                Context contextRequireContext = c2275c2.requireContext();
                                String str4 = C2275c2.f5958j;
                                String str5 = C2333o0.f6280c;
                                Bundle bundle2 = new Bundle();
                                bundle2.putString(C2333o0.f6280c, str3);
                                bundle2.putString(C2333o0.f6281d, str4);
                                ActivityC1081W.m1609t(contextRequireContext, C2333o0.class, bundle2);
                                break;
                            }
                        }
                        break;
                    default:
                        String str6 = C2275c2.f5957i;
                        ActivityC1081W.m1610u(c2275c2.requireContext(), C2304i1.class, C2304i1.m3696x(AbstractC1387m.m2421h(new byte[]{99, -60, 96, 72, Base64.padSymbol}, new byte[]{1, -85, 1, 58, 89, -39, 91, 43})));
                        break;
                }
            }
        });
    }

    /* JADX INFO: renamed from: u */
    public final File m3647u(String str) {
        if (this.f5964f == null || str == null || str.trim().isEmpty() || str.contains(AbstractC1387m.m2421h(new byte[]{-74}, new byte[]{-103, 65, -28, Base64.padSymbol, -32, -70, -42, -51})) || str.contains(AbstractC1387m.m2421h(new byte[]{54}, new byte[]{106, -115, -17, -42, -113, -3, 80, -91}))) {
            return null;
        }
        File file = new File(new File(this.f5964f, str), AbstractC1387m.m2421h(new byte[]{-66, -64, -20, 38, -104, 81, -83, 83, -29, -51, -20, 63, -99}, new byte[]{-51, -91, -104, 82, -15, 63, -54, 32}));
        try {
            File canonicalFile = this.f5964f.getCanonicalFile();
            File canonicalFile2 = file.getCanonicalFile();
            if (canonicalFile2.getPath().startsWith(canonicalFile.getPath() + File.separator) && canonicalFile2.isFile()) {
                return canonicalFile2;
            }
            return null;
        } catch (IOException unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: v */
    public final void m3648v() {
        this.f5960b.setOnItemSelectedListener(null);
        ArrayList arrayList = this.f5965g;
        arrayList.clear();
        String str = f5959k;
        arrayList.add(str);
        File[] fileArrListFiles = this.f5964f.listFiles(new C2270b2());
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                if (!file.getName().equals(str) && !file.getName().startsWith(AbstractC1387m.m2421h(new byte[]{21, 1, -112, 67, 114, -44, 79, -36, 22}, new byte[]{59, 104, -2, 48, 6, -75, 35, -80})) && !file.getName().startsWith(AbstractC1387m.m2421h(new byte[]{48, -114, -81, 122, 107, 56, 72, 1}, new byte[]{30, -20, -50, 25, 0, 77, 56, 44}))) {
                    arrayList.add(file.getName());
                }
            }
        }
        ArrayAdapter arrayAdapter = new ArrayAdapter(requireContext(), android.R.layout.simple_spinner_item, arrayList);
        this.f5966h = arrayAdapter;
        arrayAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        this.f5960b.setAdapter((SpinnerAdapter) this.f5966h);
        C1652b.m2734a();
        int iIndexOf = arrayList.indexOf(C1652b.m2745o().loadString(f5957i, str));
        if (iIndexOf >= 0) {
            this.f5960b.setSelection(iIndexOf);
        }
        this.f5960b.setOnItemSelectedListener(new C1349e1(3, this));
        m3649w();
        m3650x();
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0025  */
    /* JADX INFO: renamed from: w */
    public final void m3649w() {
        Spinner spinner;
        boolean z9;
        if (this.f5962d == null || (spinner = this.f5960b) == null) {
            return;
        }
        int selectedItemPosition = spinner.getSelectedItemPosition();
        if (selectedItemPosition >= 0) {
            ArrayList arrayList = this.f5965g;
            if (selectedItemPosition >= arrayList.size() || f5959k.equals(arrayList.get(selectedItemPosition))) {
                z9 = false;
            } else {
                z9 = true;
            }
        } else {
            z9 = false;
        }
        this.f5962d.setEnabled(z9);
        this.f5962d.setAlpha(z9 ? 1.0f : 0.35f);
    }

    /* JADX INFO: renamed from: x */
    public final void m3650x() {
        int selectedItemPosition;
        Button button = this.f5963e;
        if (button == null) {
            return;
        }
        Spinner spinner = this.f5960b;
        File fileM3647u = null;
        if (spinner != null && (selectedItemPosition = spinner.getSelectedItemPosition()) >= 0) {
            ArrayList arrayList = this.f5965g;
            if (selectedItemPosition < arrayList.size()) {
                fileM3647u = m3647u((String) arrayList.get(selectedItemPosition));
            }
        }
        button.setVisibility(fileM3647u == null ? 8 : 0);
    }
}
