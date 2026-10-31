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
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import androidx.appcompat.app.AlertDialog;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.navigation.p013ui.ViewOnClickListenerC0701a;
import com.example.navistart.ActivityC1081W;
import com.example.navistart.R;
import com.example.navistart.mainview.DownloadButton;
import com.woha.appmanag.FilePickerActivity;
import java.io.File;
import java.util.ArrayList;
import kotlin.jvm.internal.ByteCompanionObject;
import p016b1.AbstractC0880u;
import p016b1.C0872m;
import p047e0.AbstractC1387m;
import p047e0.C1349e1;
import p047e0.DialogInterfaceOnClickListenerC1348e0;
import p047e0.RunnableC1431v0;
import p078h0.C1652b;
import p121l0.C2195b;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: m0.e2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C2285e2 extends C2195b {

    /* JADX INFO: renamed from: j */
    public static final String f6049j = AbstractC1387m.m2421h(new byte[]{-5, -38, -41, 3, -125, -72, -104, -80, -36, -58, -29, 18, -87, -67, -82}, new byte[]{-74, -93, ByteCompanionObject.MIN_VALUE, 102, -31, -24, -22, -33});

    /* JADX INFO: renamed from: k */
    public static final String f6050k = AbstractC1387m.m2421h(new byte[]{-124, -15, 69, -75, -66, -49, 34, 54, -93, -19, 113, -92, -108, -54, 20, 6, -102, -19, 102, -92, -75, -15, 55, 42, -106, -61, 119, -87}, new byte[]{-55, -120, 18, -48, -36, -97, 80, 89});

    /* JADX INFO: renamed from: l */
    public static final String f6051l = AbstractC1387m.m2421h(new byte[]{-74, 73, -53, 0, 9, 22, -100, 118, -70, 89, -55}, new byte[]{-46, 44, -83, 97, 124, 122, -24, 41});

    /* JADX INFO: renamed from: m */
    public static final String f6052m = AbstractC1387m.m2421h(new byte[]{119, -89, -15, -10, -119, -55, -44, -62, 123, -73, -13, -71, -122, -52, -48}, new byte[]{19, -62, -105, -105, -4, -91, -96, -99});

    /* JADX INFO: renamed from: b */
    public Spinner f6053b;

    /* JADX INFO: renamed from: c */
    public Button f6054c;

    /* JADX INFO: renamed from: d */
    public ImageButton f6055d;

    /* JADX INFO: renamed from: e */
    public Button f6056e;

    /* JADX INFO: renamed from: f */
    public File f6057f;

    /* JADX INFO: renamed from: g */
    public final ArrayList f6058g = new ArrayList();

    /* JADX INFO: renamed from: h */
    public ArrayAdapter f6059h;

    /* JADX INFO: renamed from: i */
    public C0872m f6060i;

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i10, int i11, Intent intent) {
        String stringExtra;
        super.onActivityResult(i10, i11, intent);
        if (i10 != 101 || i11 != -1 || intent == null || (stringExtra = intent.getStringExtra(AbstractC1387m.m2421h(new byte[]{-110, -116, -17, -82, -70, -28, 85, -43, -66, -113, -22, -89, -68}, new byte[]{-31, -23, -125, -53, -39, -112, 48, -79}))) == null) {
            return;
        }
        m3687v(new File(stringExtra));
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fra_speedhudactset, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        if (this.f6053b == null || this.f6060i == null) {
            return;
        }
        m3688w();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f6053b = (Spinner) view.findViewById(R.id.spinnerWidgets);
        this.f6054c = (Button) view.findViewById(R.id.btnUploadZip);
        this.f6055d = (ImageButton) view.findViewById(R.id.btnDeleteWidget);
        this.f6056e = (Button) view.findViewById(R.id.btnWidgetSettings);
        RunnableC1431v0 runnableC1431v0 = new RunnableC1431v0(22);
        RunnableC1431v0 runnableC1431v1 = new RunnableC1431v0(23);
        RunnableC1431v0 runnableC1431v2 = new RunnableC1431v0(24);
        RunnableC1431v0 runnableC1431v3 = new RunnableC1431v0(25);
        Button button = (Button) view.findViewById(R.id.btnHUDCheck);
        button.setOnClickListener(new ViewOnClickListenerC0701a(13, runnableC1431v0, runnableC1431v2));
        Button button2 = (Button) view.findViewById(R.id.btnHUDstop);
        button2.setOnClickListener(new ViewOnClickListenerC0701a(14, runnableC1431v1, runnableC1431v3));
        DownloadButton downloadButton = (DownloadButton) view.findViewById(R.id.btnUploadStore);
        m3685t(this.f6054c);
        m3685t(downloadButton);
        m3685t(button);
        m3685t(button2);
        this.f6057f = new File(requireContext().getFilesDir(), f6049j);
        this.f6060i = new C0872m(requireContext(), f6052m, this.f6057f, f6051l);
        final int i10 = 0;
        this.f6054c.setOnClickListener(new View.OnClickListener(this) { // from class: m0.d2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2285e2 f6008c;

            {
                this.f6008c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int selectedItemPosition;
                int i11 = i10;
                C2285e2 c2285e2 = this.f6008c;
                switch (i11) {
                    case 0:
                        String str = C2285e2.f6049j;
                        Intent intent = new Intent(c2285e2.requireContext(), (Class<?>) FilePickerActivity.class);
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{-42, -11, -18, 4, -55, -80, 101, 12, -43, -14, -15, 8, -7, -69}, new byte[]{-80, -100, -126, 97, -106, -43, 29, 120}), AbstractC1387m.m2421h(new byte[]{-101, -55, -104, -116}, new byte[]{-75, -77, -15, -4, -90, -80, -93, 16}));
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{0, 103, 60, -75, -28, -41, -92, -47, 3, 96, 35, -71, -44, -36, -125, -56, 9, 106, 53, -113, -56, -41, -78, -63}, new byte[]{102, 14, 80, -48, -69, -78, -36, -91}), 1);
                        c2285e2.startActivityForResult(intent, TypedValues.TYPE_TARGET);
                        break;
                    case 1:
                        ArrayList arrayList = c2285e2.f6058g;
                        Spinner spinner = c2285e2.f6053b;
                        if (spinner != null && (selectedItemPosition = spinner.getSelectedItemPosition()) >= 0 && selectedItemPosition < arrayList.size()) {
                            String str2 = (String) arrayList.get(selectedItemPosition);
                            if (!C2285e2.f6051l.equals(str2)) {
                                new AlertDialog.Builder(c2285e2.requireContext()).setTitle(R.string.delete_custom_widget_title).setMessage(c2285e2.getString(R.string.delete_custom_widget_message, str2)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).setPositiveButton(R.string.delete_custom_widget, new DialogInterfaceOnClickListenerC1348e0(5, c2285e2, str2)).show();
                                break;
                            }
                        }
                        break;
                    case 2:
                        ArrayList arrayList2 = c2285e2.f6058g;
                        int selectedItemPosition2 = c2285e2.f6053b.getSelectedItemPosition();
                        if (selectedItemPosition2 >= 0 && selectedItemPosition2 < arrayList2.size()) {
                            String str3 = (String) arrayList2.get(selectedItemPosition2);
                            if (c2285e2.m3686u(str3) != null) {
                                Context contextRequireContext = c2285e2.requireContext();
                                String str4 = C2333o0.f6280c;
                                String strM2421h = AbstractC1387m.m2421h(new byte[]{62, 19, 111, 36, 58, 75, -124, -95, 25, 15, 91, 53, 16, 78, -78}, new byte[]{115, 106, 56, 65, 88, 27, -10, -50});
                                Bundle bundle2 = new Bundle();
                                bundle2.putString(C2333o0.f6280c, str3);
                                bundle2.putString(C2333o0.f6281d, strM2421h);
                                ActivityC1081W.m1609t(contextRequireContext, C2333o0.class, bundle2);
                                break;
                            }
                        }
                        break;
                    default:
                        String str5 = C2285e2.f6049j;
                        ActivityC1081W.m1610u(c2285e2.requireContext(), C2304i1.class, C2304i1.m3696x(AbstractC1387m.m2421h(new byte[]{-29, -47, 97}, new byte[]{-117, -92, 5, -88, 93, -63, 56, -9})));
                        break;
                }
            }
        });
        final int i11 = 1;
        this.f6055d.setOnClickListener(new View.OnClickListener(this) { // from class: m0.d2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2285e2 f6008c;

            {
                this.f6008c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int selectedItemPosition;
                int i12 = i11;
                C2285e2 c2285e2 = this.f6008c;
                switch (i12) {
                    case 0:
                        String str = C2285e2.f6049j;
                        Intent intent = new Intent(c2285e2.requireContext(), (Class<?>) FilePickerActivity.class);
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{-42, -11, -18, 4, -55, -80, 101, 12, -43, -14, -15, 8, -7, -69}, new byte[]{-80, -100, -126, 97, -106, -43, 29, 120}), AbstractC1387m.m2421h(new byte[]{-101, -55, -104, -116}, new byte[]{-75, -77, -15, -4, -90, -80, -93, 16}));
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{0, 103, 60, -75, -28, -41, -92, -47, 3, 96, 35, -71, -44, -36, -125, -56, 9, 106, 53, -113, -56, -41, -78, -63}, new byte[]{102, 14, 80, -48, -69, -78, -36, -91}), 1);
                        c2285e2.startActivityForResult(intent, TypedValues.TYPE_TARGET);
                        break;
                    case 1:
                        ArrayList arrayList = c2285e2.f6058g;
                        Spinner spinner = c2285e2.f6053b;
                        if (spinner != null && (selectedItemPosition = spinner.getSelectedItemPosition()) >= 0 && selectedItemPosition < arrayList.size()) {
                            String str2 = (String) arrayList.get(selectedItemPosition);
                            if (!C2285e2.f6051l.equals(str2)) {
                                new AlertDialog.Builder(c2285e2.requireContext()).setTitle(R.string.delete_custom_widget_title).setMessage(c2285e2.getString(R.string.delete_custom_widget_message, str2)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).setPositiveButton(R.string.delete_custom_widget, new DialogInterfaceOnClickListenerC1348e0(5, c2285e2, str2)).show();
                                break;
                            }
                        }
                        break;
                    case 2:
                        ArrayList arrayList2 = c2285e2.f6058g;
                        int selectedItemPosition2 = c2285e2.f6053b.getSelectedItemPosition();
                        if (selectedItemPosition2 >= 0 && selectedItemPosition2 < arrayList2.size()) {
                            String str3 = (String) arrayList2.get(selectedItemPosition2);
                            if (c2285e2.m3686u(str3) != null) {
                                Context contextRequireContext = c2285e2.requireContext();
                                String str4 = C2333o0.f6280c;
                                String strM2421h = AbstractC1387m.m2421h(new byte[]{62, 19, 111, 36, 58, 75, -124, -95, 25, 15, 91, 53, 16, 78, -78}, new byte[]{115, 106, 56, 65, 88, 27, -10, -50});
                                Bundle bundle2 = new Bundle();
                                bundle2.putString(C2333o0.f6280c, str3);
                                bundle2.putString(C2333o0.f6281d, strM2421h);
                                ActivityC1081W.m1609t(contextRequireContext, C2333o0.class, bundle2);
                                break;
                            }
                        }
                        break;
                    default:
                        String str5 = C2285e2.f6049j;
                        ActivityC1081W.m1610u(c2285e2.requireContext(), C2304i1.class, C2304i1.m3696x(AbstractC1387m.m2421h(new byte[]{-29, -47, 97}, new byte[]{-117, -92, 5, -88, 93, -63, 56, -9})));
                        break;
                }
            }
        });
        final int i12 = 2;
        this.f6056e.setOnClickListener(new View.OnClickListener(this) { // from class: m0.d2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2285e2 f6008c;

            {
                this.f6008c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int selectedItemPosition;
                int i13 = i12;
                C2285e2 c2285e2 = this.f6008c;
                switch (i13) {
                    case 0:
                        String str = C2285e2.f6049j;
                        Intent intent = new Intent(c2285e2.requireContext(), (Class<?>) FilePickerActivity.class);
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{-42, -11, -18, 4, -55, -80, 101, 12, -43, -14, -15, 8, -7, -69}, new byte[]{-80, -100, -126, 97, -106, -43, 29, 120}), AbstractC1387m.m2421h(new byte[]{-101, -55, -104, -116}, new byte[]{-75, -77, -15, -4, -90, -80, -93, 16}));
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{0, 103, 60, -75, -28, -41, -92, -47, 3, 96, 35, -71, -44, -36, -125, -56, 9, 106, 53, -113, -56, -41, -78, -63}, new byte[]{102, 14, 80, -48, -69, -78, -36, -91}), 1);
                        c2285e2.startActivityForResult(intent, TypedValues.TYPE_TARGET);
                        break;
                    case 1:
                        ArrayList arrayList = c2285e2.f6058g;
                        Spinner spinner = c2285e2.f6053b;
                        if (spinner != null && (selectedItemPosition = spinner.getSelectedItemPosition()) >= 0 && selectedItemPosition < arrayList.size()) {
                            String str2 = (String) arrayList.get(selectedItemPosition);
                            if (!C2285e2.f6051l.equals(str2)) {
                                new AlertDialog.Builder(c2285e2.requireContext()).setTitle(R.string.delete_custom_widget_title).setMessage(c2285e2.getString(R.string.delete_custom_widget_message, str2)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).setPositiveButton(R.string.delete_custom_widget, new DialogInterfaceOnClickListenerC1348e0(5, c2285e2, str2)).show();
                                break;
                            }
                        }
                        break;
                    case 2:
                        ArrayList arrayList2 = c2285e2.f6058g;
                        int selectedItemPosition2 = c2285e2.f6053b.getSelectedItemPosition();
                        if (selectedItemPosition2 >= 0 && selectedItemPosition2 < arrayList2.size()) {
                            String str3 = (String) arrayList2.get(selectedItemPosition2);
                            if (c2285e2.m3686u(str3) != null) {
                                Context contextRequireContext = c2285e2.requireContext();
                                String str4 = C2333o0.f6280c;
                                String strM2421h = AbstractC1387m.m2421h(new byte[]{62, 19, 111, 36, 58, 75, -124, -95, 25, 15, 91, 53, 16, 78, -78}, new byte[]{115, 106, 56, 65, 88, 27, -10, -50});
                                Bundle bundle2 = new Bundle();
                                bundle2.putString(C2333o0.f6280c, str3);
                                bundle2.putString(C2333o0.f6281d, strM2421h);
                                ActivityC1081W.m1609t(contextRequireContext, C2333o0.class, bundle2);
                                break;
                            }
                        }
                        break;
                    default:
                        String str5 = C2285e2.f6049j;
                        ActivityC1081W.m1610u(c2285e2.requireContext(), C2304i1.class, C2304i1.m3696x(AbstractC1387m.m2421h(new byte[]{-29, -47, 97}, new byte[]{-117, -92, 5, -88, 93, -63, 56, -9})));
                        break;
                }
            }
        });
        final int i13 = 3;
        downloadButton.setOnClickListener(new View.OnClickListener(this) { // from class: m0.d2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2285e2 f6008c;

            {
                this.f6008c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int selectedItemPosition;
                int i14 = i13;
                C2285e2 c2285e2 = this.f6008c;
                switch (i14) {
                    case 0:
                        String str = C2285e2.f6049j;
                        Intent intent = new Intent(c2285e2.requireContext(), (Class<?>) FilePickerActivity.class);
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{-42, -11, -18, 4, -55, -80, 101, 12, -43, -14, -15, 8, -7, -69}, new byte[]{-80, -100, -126, 97, -106, -43, 29, 120}), AbstractC1387m.m2421h(new byte[]{-101, -55, -104, -116}, new byte[]{-75, -77, -15, -4, -90, -80, -93, 16}));
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{0, 103, 60, -75, -28, -41, -92, -47, 3, 96, 35, -71, -44, -36, -125, -56, 9, 106, 53, -113, -56, -41, -78, -63}, new byte[]{102, 14, 80, -48, -69, -78, -36, -91}), 1);
                        c2285e2.startActivityForResult(intent, TypedValues.TYPE_TARGET);
                        break;
                    case 1:
                        ArrayList arrayList = c2285e2.f6058g;
                        Spinner spinner = c2285e2.f6053b;
                        if (spinner != null && (selectedItemPosition = spinner.getSelectedItemPosition()) >= 0 && selectedItemPosition < arrayList.size()) {
                            String str2 = (String) arrayList.get(selectedItemPosition);
                            if (!C2285e2.f6051l.equals(str2)) {
                                new AlertDialog.Builder(c2285e2.requireContext()).setTitle(R.string.delete_custom_widget_title).setMessage(c2285e2.getString(R.string.delete_custom_widget_message, str2)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).setPositiveButton(R.string.delete_custom_widget, new DialogInterfaceOnClickListenerC1348e0(5, c2285e2, str2)).show();
                                break;
                            }
                        }
                        break;
                    case 2:
                        ArrayList arrayList2 = c2285e2.f6058g;
                        int selectedItemPosition2 = c2285e2.f6053b.getSelectedItemPosition();
                        if (selectedItemPosition2 >= 0 && selectedItemPosition2 < arrayList2.size()) {
                            String str3 = (String) arrayList2.get(selectedItemPosition2);
                            if (c2285e2.m3686u(str3) != null) {
                                Context contextRequireContext = c2285e2.requireContext();
                                String str4 = C2333o0.f6280c;
                                String strM2421h = AbstractC1387m.m2421h(new byte[]{62, 19, 111, 36, 58, 75, -124, -95, 25, 15, 91, 53, 16, 78, -78}, new byte[]{115, 106, 56, 65, 88, 27, -10, -50});
                                Bundle bundle2 = new Bundle();
                                bundle2.putString(C2333o0.f6280c, str3);
                                bundle2.putString(C2333o0.f6281d, strM2421h);
                                ActivityC1081W.m1609t(contextRequireContext, C2333o0.class, bundle2);
                                break;
                            }
                        }
                        break;
                    default:
                        String str5 = C2285e2.f6049j;
                        ActivityC1081W.m1610u(c2285e2.requireContext(), C2304i1.class, C2304i1.m3696x(AbstractC1387m.m2421h(new byte[]{-29, -47, 97}, new byte[]{-117, -92, 5, -88, 93, -63, 56, -9})));
                        break;
                }
            }
        });
    }

    /* JADX INFO: renamed from: t */
    public final void m3685t(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
            layoutParams2.width = 0;
            layoutParams2.height = -2;
            layoutParams2.weight = 1.0f;
            view.setLayoutParams(layoutParams2);
            view.setMinimumWidth(0);
            view.setMinimumHeight(Math.round(48 * getResources().getDisplayMetrics().density));
        }
    }

    /* JADX INFO: renamed from: u */
    public final File m3686u(String str) {
        if (this.f6057f == null || str == null || str.trim().isEmpty() || str.contains(AbstractC1387m.m2421h(new byte[]{63}, new byte[]{16, 94, -93, -100, -112, 29, 9, 14})) || str.contains(AbstractC1387m.m2421h(new byte[]{-114}, new byte[]{-46, -77, 71, -41, -106, -115, -122, 1}))) {
            return null;
        }
        File file = new File(new File(this.f6057f, str), AbstractC1387m.m2421h(new byte[]{34, 24, 39, -34, -112, 78, 71, 70, ByteCompanionObject.MAX_VALUE, 21, 39, -57, -107}, new byte[]{81, 125, 83, -86, -7, 32, 32, 53}));
        try {
            File canonicalFile = this.f6057f.getCanonicalFile();
            File canonicalFile2 = file.getCanonicalFile();
            if (canonicalFile2.getPath().startsWith(canonicalFile.getPath() + File.separator) && canonicalFile2.isFile()) {
                return canonicalFile2;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: v */
    public final void m3687v(File file) {
        try {
            String strM1004r = AbstractC0880u.m1004r(file, (File) this.f6060i.f604f, false);
            C1652b.m2745o().saveString(f6050k, strM1004r);
            m3688w();
            int iIndexOf = this.f6058g.indexOf(strM1004r);
            if (iIndexOf >= 0) {
                this.f6053b.setSelection(iIndexOf);
            }
            m3689x();
            m3690y();
            AbstractC3656k.m5878x(requireContext().getApplicationContext(), AbstractC1387m.m2421h(new byte[]{-41, -8, -3, -40, -86, -28, 126, -37, -41, -33, -4, -30, 90, -127, 45, -68, -122, -69, -81, -80, -54, ByteCompanionObject.MIN_VALUE, 19, -67, -71, -70, -97, -80, -63, ByteCompanionObject.MIN_VALUE, 27, -67, -70}, new byte[]{7, 106, 45, 96, 122, 80, -82, 109}));
        } catch (Exception e) {
            AbstractC3656k.m5878x(requireContext().getApplicationContext(), AbstractC1387m.m2421h(new byte[]{-86, -68, -61, 27, 75, -105, -127, 5, -86, -104, -62, 35, -69, 117, 24, -28, 64, 2}, new byte[]{122, 34, 18, -109, -101, 47, 81, -76}) + e.getMessage());
        }
    }

    /* JADX INFO: renamed from: w */
    public final void m3688w() {
        this.f6053b.setOnItemSelectedListener(null);
        ArrayList arrayList = this.f6058g;
        arrayList.clear();
        String str = f6051l;
        arrayList.add(str);
        arrayList.addAll(this.f6060i.m983h());
        ArrayAdapter arrayAdapter = new ArrayAdapter(requireContext(), android.R.layout.simple_spinner_item, arrayList);
        this.f6059h = arrayAdapter;
        arrayAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        this.f6053b.setAdapter((SpinnerAdapter) this.f6059h);
        C1652b.m2734a();
        int iIndexOf = arrayList.indexOf(C1652b.m2745o().loadString(f6050k, str));
        if (iIndexOf >= 0) {
            this.f6053b.setSelection(iIndexOf);
        }
        this.f6053b.setOnItemSelectedListener(new C1349e1(4, this));
        m3689x();
        m3690y();
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0025  */
    /* JADX INFO: renamed from: x */
    public final void m3689x() {
        Spinner spinner;
        boolean z9;
        if (this.f6055d == null || (spinner = this.f6053b) == null) {
            return;
        }
        int selectedItemPosition = spinner.getSelectedItemPosition();
        if (selectedItemPosition >= 0) {
            ArrayList arrayList = this.f6058g;
            if (selectedItemPosition >= arrayList.size() || f6051l.equals(arrayList.get(selectedItemPosition))) {
                z9 = false;
            } else {
                z9 = true;
            }
        } else {
            z9 = false;
        }
        this.f6055d.setEnabled(z9);
        this.f6055d.setAlpha(z9 ? 1.0f : 0.35f);
    }

    /* JADX INFO: renamed from: y */
    public final void m3690y() {
        int selectedItemPosition;
        Button button = this.f6056e;
        if (button == null) {
            return;
        }
        Spinner spinner = this.f6053b;
        File fileM3686u = null;
        if (spinner != null && (selectedItemPosition = spinner.getSelectedItemPosition()) >= 0) {
            ArrayList arrayList = this.f6058g;
            if (selectedItemPosition < arrayList.size()) {
                fileM3686u = m3686u((String) arrayList.get(selectedItemPosition));
            }
        }
        button.setVisibility(fileM3686u == null ? 8 : 0);
    }
}
