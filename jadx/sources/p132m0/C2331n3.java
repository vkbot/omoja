package p132m0;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.MimeTypeMap;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.activity.RunnableC0131f;
import androidx.appcompat.app.AlertDialog;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.manager.C1074t;
import com.example.navistart.R;
import com.google.protobuf.AbstractC1178q;
import java.io.File;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import p022b7.DialogInterfaceOnClickListenerC0912h;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1406p3;
import p047e0.C1329a1;
import p047e0.C1440x1;
import p047e0.ViewOnLayoutChangeListenerC1409q1;
import p078h0.C1652b;
import p084h7.C1683k;
import p100j2.RunnableC1948d;
import p121l0.C2194a;
import p121l0.C2195b;
import p206u0.C3277a;

/* JADX INFO: renamed from: m0.n3 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C2331n3 extends C2195b {

    /* JADX INFO: renamed from: e */
    public ExecutorService f6256e;

    /* JADX INFO: renamed from: f */
    public Future f6257f;

    /* JADX INFO: renamed from: g */
    public int f6258g;

    /* JADX INFO: renamed from: h */
    public RecyclerView f6259h;

    /* JADX INFO: renamed from: i */
    public TextView f6260i;

    /* JADX INFO: renamed from: j */
    public TextView f6261j;

    /* JADX INFO: renamed from: k */
    public C2321l3 f6262k;

    /* JADX INFO: renamed from: m */
    public File f6264m;

    /* JADX INFO: renamed from: n */
    public C1074t f6265n;

    /* JADX INFO: renamed from: o */
    public ExecutorService f6266o;

    /* JADX INFO: renamed from: p */
    public AlertDialog f6267p;

    /* JADX INFO: renamed from: q */
    public AlertDialog f6268q;

    /* JADX INFO: renamed from: r */
    public File f6269r;

    /* JADX INFO: renamed from: s */
    public int f6270s;

    /* JADX INFO: renamed from: t */
    public boolean f6271t;

    /* JADX INFO: renamed from: u */
    public boolean f6272u;

    /* JADX INFO: renamed from: b */
    public final ArrayList f6253b = new ArrayList();

    /* JADX INFO: renamed from: c */
    public final ArrayList f6254c = new ArrayList();

    /* JADX INFO: renamed from: d */
    public final Handler f6255d = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: l */
    public String f6263l = "";

    /* JADX INFO: renamed from: t */
    public static Boolean m3710t() {
        StringBuilder sb = new StringBuilder();
        C3277a c3277aM2745o = C1652b.m2745o();
        byte[] bArr = AbstractC1387m.f3322j;
        String[] strArr = AbstractC1406p3.f3368a;
        AbstractC1178q.m2085s(bArr, c3277aM2745o, "", sb);
        AbstractC1178q.m2084r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strM2073g = AbstractC1178q.m2073g(sb, C1440x1.f3470q);
        C3277a c3277aM2745o2 = C1652b.m2745o();
        byte[] bArr2 = AbstractC1387m.f3318f;
        if (AbstractC1178q.m2089w(bArr2, c3277aM2745o2, "", strM2073g)) {
            return Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{37}, new byte[]{21, 17, -9, 78, -87, 101, -29, 40}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0))));
        }
        return Boolean.FALSE;
    }

    /* JADX INFO: renamed from: x */
    public static boolean m3711x(C1074t c1074t, ArrayList arrayList, ArrayList arrayList2) {
        String absolutePath;
        ArrayDeque arrayDeque = new ArrayDeque(arrayList);
        HashSet hashSet = new HashSet();
        boolean z9 = false;
        while (!arrayDeque.isEmpty() && !Thread.currentThread().isInterrupted()) {
            File file = (File) arrayDeque.removeFirst();
            c1074t.getClass();
            if (file == null) {
                absolutePath = "";
            } else {
                try {
                    absolutePath = file.getCanonicalPath();
                } catch (IOException unused) {
                    absolutePath = file.getAbsolutePath();
                }
            }
            if (hashSet.add(absolutePath)) {
                if (file.isDirectory()) {
                    ArrayList arrayListM1358h = C1074t.m1358h(file);
                    if (arrayListM1358h == null) {
                        z9 = true;
                    } else {
                        int size = arrayListM1358h.size();
                        int i10 = 0;
                        while (i10 < size) {
                            Object obj = arrayListM1358h.get(i10);
                            i10++;
                            arrayDeque.addLast((File) obj);
                        }
                    }
                } else {
                    String name = file.getName();
                    if (name != null) {
                        int iLastIndexOf = name.lastIndexOf(46);
                        String lowerCase = iLastIndexOf >= 0 ? name.substring(iLastIndexOf + 1).toLowerCase(Locale.ROOT) : "";
                        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(lowerCase);
                        if ((mimeTypeFromExtension != null && mimeTypeFromExtension.startsWith(AbstractC1387m.m2421h(new byte[]{37, -46, 125, -48, 34, 101}, new byte[]{83, -69, 25, -75, 77, 74, -112, 91}))) || lowerCase.matches(AbstractC1387m.m2421h(new byte[]{97, -55, -38, 82, 124, 88, 82, 11, 97, -51, -38, 82, 112, 94, 15, 11, 97, -106, -38, 82, 106, 75, 89, 26, 112, -60, -64, 88, 97, 89, 86, 1, 112, -49, -36, 73, 97, 67, 75, 18, 107, -34, -40, 93, 97, 67, 79, 4, 112, -49, -98, 90, 110, 82, 77, 24, 110, -34, -97, 73, 109, 82, 84, 16, 122}, new byte[]{12, -94, -84, 46, 29, 46, 59, 119}))) {
                            arrayList2.add(new C2316k3(file.getName(), file.getParent(), file.length(), file.lastModified(), file));
                        }
                    }
                    if (!file.exists()) {
                        z9 = true;
                    }
                }
            }
        }
        return z9;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        final int i10 = 0;
        View viewInflate = layoutInflater.inflate(R.layout.fragment_video_library, viewGroup, false);
        this.f6256e = Executors.newSingleThreadExecutor();
        this.f6266o = Executors.newSingleThreadExecutor();
        final int i11 = 3;
        this.f6265n = new C1074t(requireContext(), 3);
        if (bundle != null) {
            String string = bundle.getString(AbstractC1387m.m2421h(new byte[]{65, 53, -32, -86}, new byte[]{51, 90, -113, -34, -104, 28, 103, -21}));
            this.f6264m = string == null ? null : new File(string);
        }
        this.f6259h = (RecyclerView) viewInflate.findViewById(R.id.videoGrid);
        this.f6260i = (TextView) viewInflate.findViewById(R.id.videoStatus);
        this.f6261j = (TextView) viewInflate.findViewById(R.id.videoSourceLabel);
        final int i12 = 1;
        GridLayoutManager gridLayoutManager = new GridLayoutManager(requireContext(), 1);
        this.f6259h.setLayoutManager(gridLayoutManager);
        final int i13 = 2;
        this.f6259h.addOnLayoutChangeListener(new ViewOnLayoutChangeListenerC1409q1(2, gridLayoutManager));
        C2321l3 c2321l3 = new C2321l3(this);
        this.f6262k = c2321l3;
        this.f6259h.setAdapter(c2321l3);
        viewInflate.findViewById(R.id.videoBack).setOnClickListener(new View.OnClickListener(this) { // from class: m0.i3

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2331n3 f6158c;

            {
                this.f6158c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i10) {
                    case 0:
                        C2331n3 c2331n3 = this.f6158c;
                        if (!(c2331n3.getParentFragment() instanceof C2194a)) {
                            c2331n3.requireActivity().finish();
                        } else {
                            ((C2194a) c2331n3.getParentFragment()).dismiss();
                        }
                        break;
                    case 1:
                        this.f6158c.m3714w();
                        break;
                    case 2:
                        C2331n3 c2331n4 = this.f6158c;
                        c2331n4.f6266o.execute(new RunnableC0131f(c2331n4, c2331n4.f6265n, c2331n4.f6258g, 8));
                        break;
                    default:
                        final C2331n3 c2331n5 = this.f6158c;
                        AlertDialog alertDialog = c2331n5.f6267p;
                        if (alertDialog != null) {
                            alertDialog.dismiss();
                        }
                        AlertDialog.Builder builder = new AlertDialog.Builder(c2331n5.requireContext(), R.style.ThemeOverlay_JCarTools_VideoAlert);
                        View viewInflate2 = LayoutInflater.from(builder.getContext()).inflate(R.layout.video_folder_picker, (ViewGroup) null);
                        final TextView textView = (TextView) viewInflate2.findViewById(R.id.videoFolderPath);
                        final ListView listView = (ListView) viewInflate2.findViewById(R.id.videoFolderList);
                        final AlertDialog alertDialogCreate = builder.setTitle(R.string.video_choose_folder).setView(viewInflate2).setPositiveButton(R.string.video_use_folder, new DialogInterfaceOnClickListenerC0912h(3, c2331n5)).setNegativeButton(R.string.cancel, (DialogInterface.OnClickListener) null).setNeutralButton(R.string.up, (DialogInterface.OnClickListener) null).create();
                        c2331n5.f6267p = alertDialogCreate;
                        alertDialogCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: m0.d3
                            @Override // android.content.DialogInterface.OnDismissListener
                            public final void onDismiss(DialogInterface dialogInterface) {
                                C2331n3 c2331n6 = c2331n5;
                                c2331n6.f6270s++;
                                if (c2331n6.f6267p == alertDialogCreate) {
                                    c2331n6.f6267p = null;
                                }
                            }
                        });
                        alertDialogCreate.show();
                        final int i14 = 0;
                        alertDialogCreate.getButton(-3).setOnClickListener(new View.OnClickListener() { // from class: m0.e3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                switch (i14) {
                                    case 0:
                                        C2331n3 c2331n6 = c2331n5;
                                        File file = c2331n6.f6269r;
                                        if (file != null && file.getParentFile() != null) {
                                            c2331n6.m3713v(c2331n6.f6269r.getParentFile(), alertDialogCreate, textView, listView);
                                            break;
                                        }
                                        break;
                                    case 1:
                                        C2331n3 c2331n7 = c2331n5;
                                        c2331n7.f6265n.getClass();
                                        c2331n7.m3713v(Environment.getExternalStorageDirectory(), alertDialogCreate, textView, listView);
                                        break;
                                    default:
                                        C2331n3 c2331n8 = c2331n5;
                                        c2331n8.f6266o.execute(new RunnableC2291f3(c2331n8, c2331n8.f6265n, alertDialogCreate, c2331n8.f6270s, textView, listView));
                                        break;
                                }
                            }
                        });
                        final int i15 = 1;
                        viewInflate2.findViewById(R.id.videoFolderDevice).setOnClickListener(new View.OnClickListener() { // from class: m0.e3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                switch (i15) {
                                    case 0:
                                        C2331n3 c2331n6 = c2331n5;
                                        File file = c2331n6.f6269r;
                                        if (file != null && file.getParentFile() != null) {
                                            c2331n6.m3713v(c2331n6.f6269r.getParentFile(), alertDialogCreate, textView, listView);
                                            break;
                                        }
                                        break;
                                    case 1:
                                        C2331n3 c2331n7 = c2331n5;
                                        c2331n7.f6265n.getClass();
                                        c2331n7.m3713v(Environment.getExternalStorageDirectory(), alertDialogCreate, textView, listView);
                                        break;
                                    default:
                                        C2331n3 c2331n8 = c2331n5;
                                        c2331n8.f6266o.execute(new RunnableC2291f3(c2331n8, c2331n8.f6265n, alertDialogCreate, c2331n8.f6270s, textView, listView));
                                        break;
                                }
                            }
                        });
                        final int i16 = 2;
                        viewInflate2.findViewById(R.id.videoFolderUsb).setOnClickListener(new View.OnClickListener() { // from class: m0.e3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                switch (i16) {
                                    case 0:
                                        C2331n3 c2331n6 = c2331n5;
                                        File file = c2331n6.f6269r;
                                        if (file != null && file.getParentFile() != null) {
                                            c2331n6.m3713v(c2331n6.f6269r.getParentFile(), alertDialogCreate, textView, listView);
                                            break;
                                        }
                                        break;
                                    case 1:
                                        C2331n3 c2331n7 = c2331n5;
                                        c2331n7.f6265n.getClass();
                                        c2331n7.m3713v(Environment.getExternalStorageDirectory(), alertDialogCreate, textView, listView);
                                        break;
                                    default:
                                        C2331n3 c2331n8 = c2331n5;
                                        c2331n8.f6266o.execute(new RunnableC2291f3(c2331n8, c2331n8.f6265n, alertDialogCreate, c2331n8.f6270s, textView, listView));
                                        break;
                                }
                            }
                        });
                        File externalStorageDirectory = c2331n5.f6264m;
                        if (externalStorageDirectory == null) {
                            c2331n5.f6265n.getClass();
                            externalStorageDirectory = Environment.getExternalStorageDirectory();
                        }
                        c2331n5.m3713v(externalStorageDirectory, alertDialogCreate, textView, listView);
                        break;
                }
            }
        });
        viewInflate.findViewById(R.id.videoRefresh).setOnClickListener(new View.OnClickListener(this) { // from class: m0.i3

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2331n3 f6158c;

            {
                this.f6158c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i12) {
                    case 0:
                        C2331n3 c2331n3 = this.f6158c;
                        if (!(c2331n3.getParentFragment() instanceof C2194a)) {
                            c2331n3.requireActivity().finish();
                        } else {
                            ((C2194a) c2331n3.getParentFragment()).dismiss();
                        }
                        break;
                    case 1:
                        this.f6158c.m3714w();
                        break;
                    case 2:
                        C2331n3 c2331n4 = this.f6158c;
                        c2331n4.f6266o.execute(new RunnableC0131f(c2331n4, c2331n4.f6265n, c2331n4.f6258g, 8));
                        break;
                    default:
                        final C2331n3 c2331n5 = this.f6158c;
                        AlertDialog alertDialog = c2331n5.f6267p;
                        if (alertDialog != null) {
                            alertDialog.dismiss();
                        }
                        AlertDialog.Builder builder = new AlertDialog.Builder(c2331n5.requireContext(), R.style.ThemeOverlay_JCarTools_VideoAlert);
                        View viewInflate2 = LayoutInflater.from(builder.getContext()).inflate(R.layout.video_folder_picker, (ViewGroup) null);
                        final TextView textView = (TextView) viewInflate2.findViewById(R.id.videoFolderPath);
                        final ListView listView = (ListView) viewInflate2.findViewById(R.id.videoFolderList);
                        final AlertDialog alertDialogCreate = builder.setTitle(R.string.video_choose_folder).setView(viewInflate2).setPositiveButton(R.string.video_use_folder, new DialogInterfaceOnClickListenerC0912h(3, c2331n5)).setNegativeButton(R.string.cancel, (DialogInterface.OnClickListener) null).setNeutralButton(R.string.up, (DialogInterface.OnClickListener) null).create();
                        c2331n5.f6267p = alertDialogCreate;
                        alertDialogCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: m0.d3
                            @Override // android.content.DialogInterface.OnDismissListener
                            public final void onDismiss(DialogInterface dialogInterface) {
                                C2331n3 c2331n6 = c2331n5;
                                c2331n6.f6270s++;
                                if (c2331n6.f6267p == alertDialogCreate) {
                                    c2331n6.f6267p = null;
                                }
                            }
                        });
                        alertDialogCreate.show();
                        final int i14 = 0;
                        alertDialogCreate.getButton(-3).setOnClickListener(new View.OnClickListener() { // from class: m0.e3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                switch (i14) {
                                    case 0:
                                        C2331n3 c2331n6 = c2331n5;
                                        File file = c2331n6.f6269r;
                                        if (file != null && file.getParentFile() != null) {
                                            c2331n6.m3713v(c2331n6.f6269r.getParentFile(), alertDialogCreate, textView, listView);
                                            break;
                                        }
                                        break;
                                    case 1:
                                        C2331n3 c2331n7 = c2331n5;
                                        c2331n7.f6265n.getClass();
                                        c2331n7.m3713v(Environment.getExternalStorageDirectory(), alertDialogCreate, textView, listView);
                                        break;
                                    default:
                                        C2331n3 c2331n8 = c2331n5;
                                        c2331n8.f6266o.execute(new RunnableC2291f3(c2331n8, c2331n8.f6265n, alertDialogCreate, c2331n8.f6270s, textView, listView));
                                        break;
                                }
                            }
                        });
                        final int i15 = 1;
                        viewInflate2.findViewById(R.id.videoFolderDevice).setOnClickListener(new View.OnClickListener() { // from class: m0.e3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                switch (i15) {
                                    case 0:
                                        C2331n3 c2331n6 = c2331n5;
                                        File file = c2331n6.f6269r;
                                        if (file != null && file.getParentFile() != null) {
                                            c2331n6.m3713v(c2331n6.f6269r.getParentFile(), alertDialogCreate, textView, listView);
                                            break;
                                        }
                                        break;
                                    case 1:
                                        C2331n3 c2331n7 = c2331n5;
                                        c2331n7.f6265n.getClass();
                                        c2331n7.m3713v(Environment.getExternalStorageDirectory(), alertDialogCreate, textView, listView);
                                        break;
                                    default:
                                        C2331n3 c2331n8 = c2331n5;
                                        c2331n8.f6266o.execute(new RunnableC2291f3(c2331n8, c2331n8.f6265n, alertDialogCreate, c2331n8.f6270s, textView, listView));
                                        break;
                                }
                            }
                        });
                        final int i16 = 2;
                        viewInflate2.findViewById(R.id.videoFolderUsb).setOnClickListener(new View.OnClickListener() { // from class: m0.e3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                switch (i16) {
                                    case 0:
                                        C2331n3 c2331n6 = c2331n5;
                                        File file = c2331n6.f6269r;
                                        if (file != null && file.getParentFile() != null) {
                                            c2331n6.m3713v(c2331n6.f6269r.getParentFile(), alertDialogCreate, textView, listView);
                                            break;
                                        }
                                        break;
                                    case 1:
                                        C2331n3 c2331n7 = c2331n5;
                                        c2331n7.f6265n.getClass();
                                        c2331n7.m3713v(Environment.getExternalStorageDirectory(), alertDialogCreate, textView, listView);
                                        break;
                                    default:
                                        C2331n3 c2331n8 = c2331n5;
                                        c2331n8.f6266o.execute(new RunnableC2291f3(c2331n8, c2331n8.f6265n, alertDialogCreate, c2331n8.f6270s, textView, listView));
                                        break;
                                }
                            }
                        });
                        File externalStorageDirectory = c2331n5.f6264m;
                        if (externalStorageDirectory == null) {
                            c2331n5.f6265n.getClass();
                            externalStorageDirectory = Environment.getExternalStorageDirectory();
                        }
                        c2331n5.m3713v(externalStorageDirectory, alertDialogCreate, textView, listView);
                        break;
                }
            }
        });
        viewInflate.findViewById(R.id.videoSource).setOnClickListener(new View.OnClickListener(this) { // from class: m0.i3

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2331n3 f6158c;

            {
                this.f6158c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i13) {
                    case 0:
                        C2331n3 c2331n3 = this.f6158c;
                        if (!(c2331n3.getParentFragment() instanceof C2194a)) {
                            c2331n3.requireActivity().finish();
                        } else {
                            ((C2194a) c2331n3.getParentFragment()).dismiss();
                        }
                        break;
                    case 1:
                        this.f6158c.m3714w();
                        break;
                    case 2:
                        C2331n3 c2331n4 = this.f6158c;
                        c2331n4.f6266o.execute(new RunnableC0131f(c2331n4, c2331n4.f6265n, c2331n4.f6258g, 8));
                        break;
                    default:
                        final C2331n3 c2331n5 = this.f6158c;
                        AlertDialog alertDialog = c2331n5.f6267p;
                        if (alertDialog != null) {
                            alertDialog.dismiss();
                        }
                        AlertDialog.Builder builder = new AlertDialog.Builder(c2331n5.requireContext(), R.style.ThemeOverlay_JCarTools_VideoAlert);
                        View viewInflate2 = LayoutInflater.from(builder.getContext()).inflate(R.layout.video_folder_picker, (ViewGroup) null);
                        final TextView textView = (TextView) viewInflate2.findViewById(R.id.videoFolderPath);
                        final ListView listView = (ListView) viewInflate2.findViewById(R.id.videoFolderList);
                        final AlertDialog alertDialogCreate = builder.setTitle(R.string.video_choose_folder).setView(viewInflate2).setPositiveButton(R.string.video_use_folder, new DialogInterfaceOnClickListenerC0912h(3, c2331n5)).setNegativeButton(R.string.cancel, (DialogInterface.OnClickListener) null).setNeutralButton(R.string.up, (DialogInterface.OnClickListener) null).create();
                        c2331n5.f6267p = alertDialogCreate;
                        alertDialogCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: m0.d3
                            @Override // android.content.DialogInterface.OnDismissListener
                            public final void onDismiss(DialogInterface dialogInterface) {
                                C2331n3 c2331n6 = c2331n5;
                                c2331n6.f6270s++;
                                if (c2331n6.f6267p == alertDialogCreate) {
                                    c2331n6.f6267p = null;
                                }
                            }
                        });
                        alertDialogCreate.show();
                        final int i14 = 0;
                        alertDialogCreate.getButton(-3).setOnClickListener(new View.OnClickListener() { // from class: m0.e3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                switch (i14) {
                                    case 0:
                                        C2331n3 c2331n6 = c2331n5;
                                        File file = c2331n6.f6269r;
                                        if (file != null && file.getParentFile() != null) {
                                            c2331n6.m3713v(c2331n6.f6269r.getParentFile(), alertDialogCreate, textView, listView);
                                            break;
                                        }
                                        break;
                                    case 1:
                                        C2331n3 c2331n7 = c2331n5;
                                        c2331n7.f6265n.getClass();
                                        c2331n7.m3713v(Environment.getExternalStorageDirectory(), alertDialogCreate, textView, listView);
                                        break;
                                    default:
                                        C2331n3 c2331n8 = c2331n5;
                                        c2331n8.f6266o.execute(new RunnableC2291f3(c2331n8, c2331n8.f6265n, alertDialogCreate, c2331n8.f6270s, textView, listView));
                                        break;
                                }
                            }
                        });
                        final int i15 = 1;
                        viewInflate2.findViewById(R.id.videoFolderDevice).setOnClickListener(new View.OnClickListener() { // from class: m0.e3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                switch (i15) {
                                    case 0:
                                        C2331n3 c2331n6 = c2331n5;
                                        File file = c2331n6.f6269r;
                                        if (file != null && file.getParentFile() != null) {
                                            c2331n6.m3713v(c2331n6.f6269r.getParentFile(), alertDialogCreate, textView, listView);
                                            break;
                                        }
                                        break;
                                    case 1:
                                        C2331n3 c2331n7 = c2331n5;
                                        c2331n7.f6265n.getClass();
                                        c2331n7.m3713v(Environment.getExternalStorageDirectory(), alertDialogCreate, textView, listView);
                                        break;
                                    default:
                                        C2331n3 c2331n8 = c2331n5;
                                        c2331n8.f6266o.execute(new RunnableC2291f3(c2331n8, c2331n8.f6265n, alertDialogCreate, c2331n8.f6270s, textView, listView));
                                        break;
                                }
                            }
                        });
                        final int i16 = 2;
                        viewInflate2.findViewById(R.id.videoFolderUsb).setOnClickListener(new View.OnClickListener() { // from class: m0.e3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                switch (i16) {
                                    case 0:
                                        C2331n3 c2331n6 = c2331n5;
                                        File file = c2331n6.f6269r;
                                        if (file != null && file.getParentFile() != null) {
                                            c2331n6.m3713v(c2331n6.f6269r.getParentFile(), alertDialogCreate, textView, listView);
                                            break;
                                        }
                                        break;
                                    case 1:
                                        C2331n3 c2331n7 = c2331n5;
                                        c2331n7.f6265n.getClass();
                                        c2331n7.m3713v(Environment.getExternalStorageDirectory(), alertDialogCreate, textView, listView);
                                        break;
                                    default:
                                        C2331n3 c2331n8 = c2331n5;
                                        c2331n8.f6266o.execute(new RunnableC2291f3(c2331n8, c2331n8.f6265n, alertDialogCreate, c2331n8.f6270s, textView, listView));
                                        break;
                                }
                            }
                        });
                        File externalStorageDirectory = c2331n5.f6264m;
                        if (externalStorageDirectory == null) {
                            c2331n5.f6265n.getClass();
                            externalStorageDirectory = Environment.getExternalStorageDirectory();
                        }
                        c2331n5.m3713v(externalStorageDirectory, alertDialogCreate, textView, listView);
                        break;
                }
            }
        });
        viewInflate.findViewById(R.id.videoFolder).setOnClickListener(new View.OnClickListener(this) { // from class: m0.i3

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2331n3 f6158c;

            {
                this.f6158c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i11) {
                    case 0:
                        C2331n3 c2331n3 = this.f6158c;
                        if (!(c2331n3.getParentFragment() instanceof C2194a)) {
                            c2331n3.requireActivity().finish();
                        } else {
                            ((C2194a) c2331n3.getParentFragment()).dismiss();
                        }
                        break;
                    case 1:
                        this.f6158c.m3714w();
                        break;
                    case 2:
                        C2331n3 c2331n4 = this.f6158c;
                        c2331n4.f6266o.execute(new RunnableC0131f(c2331n4, c2331n4.f6265n, c2331n4.f6258g, 8));
                        break;
                    default:
                        final C2331n3 c2331n5 = this.f6158c;
                        AlertDialog alertDialog = c2331n5.f6267p;
                        if (alertDialog != null) {
                            alertDialog.dismiss();
                        }
                        AlertDialog.Builder builder = new AlertDialog.Builder(c2331n5.requireContext(), R.style.ThemeOverlay_JCarTools_VideoAlert);
                        View viewInflate2 = LayoutInflater.from(builder.getContext()).inflate(R.layout.video_folder_picker, (ViewGroup) null);
                        final TextView textView = (TextView) viewInflate2.findViewById(R.id.videoFolderPath);
                        final ListView listView = (ListView) viewInflate2.findViewById(R.id.videoFolderList);
                        final AlertDialog alertDialogCreate = builder.setTitle(R.string.video_choose_folder).setView(viewInflate2).setPositiveButton(R.string.video_use_folder, new DialogInterfaceOnClickListenerC0912h(3, c2331n5)).setNegativeButton(R.string.cancel, (DialogInterface.OnClickListener) null).setNeutralButton(R.string.up, (DialogInterface.OnClickListener) null).create();
                        c2331n5.f6267p = alertDialogCreate;
                        alertDialogCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: m0.d3
                            @Override // android.content.DialogInterface.OnDismissListener
                            public final void onDismiss(DialogInterface dialogInterface) {
                                C2331n3 c2331n6 = c2331n5;
                                c2331n6.f6270s++;
                                if (c2331n6.f6267p == alertDialogCreate) {
                                    c2331n6.f6267p = null;
                                }
                            }
                        });
                        alertDialogCreate.show();
                        final int i14 = 0;
                        alertDialogCreate.getButton(-3).setOnClickListener(new View.OnClickListener() { // from class: m0.e3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                switch (i14) {
                                    case 0:
                                        C2331n3 c2331n6 = c2331n5;
                                        File file = c2331n6.f6269r;
                                        if (file != null && file.getParentFile() != null) {
                                            c2331n6.m3713v(c2331n6.f6269r.getParentFile(), alertDialogCreate, textView, listView);
                                            break;
                                        }
                                        break;
                                    case 1:
                                        C2331n3 c2331n7 = c2331n5;
                                        c2331n7.f6265n.getClass();
                                        c2331n7.m3713v(Environment.getExternalStorageDirectory(), alertDialogCreate, textView, listView);
                                        break;
                                    default:
                                        C2331n3 c2331n8 = c2331n5;
                                        c2331n8.f6266o.execute(new RunnableC2291f3(c2331n8, c2331n8.f6265n, alertDialogCreate, c2331n8.f6270s, textView, listView));
                                        break;
                                }
                            }
                        });
                        final int i15 = 1;
                        viewInflate2.findViewById(R.id.videoFolderDevice).setOnClickListener(new View.OnClickListener() { // from class: m0.e3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                switch (i15) {
                                    case 0:
                                        C2331n3 c2331n6 = c2331n5;
                                        File file = c2331n6.f6269r;
                                        if (file != null && file.getParentFile() != null) {
                                            c2331n6.m3713v(c2331n6.f6269r.getParentFile(), alertDialogCreate, textView, listView);
                                            break;
                                        }
                                        break;
                                    case 1:
                                        C2331n3 c2331n7 = c2331n5;
                                        c2331n7.f6265n.getClass();
                                        c2331n7.m3713v(Environment.getExternalStorageDirectory(), alertDialogCreate, textView, listView);
                                        break;
                                    default:
                                        C2331n3 c2331n8 = c2331n5;
                                        c2331n8.f6266o.execute(new RunnableC2291f3(c2331n8, c2331n8.f6265n, alertDialogCreate, c2331n8.f6270s, textView, listView));
                                        break;
                                }
                            }
                        });
                        final int i16 = 2;
                        viewInflate2.findViewById(R.id.videoFolderUsb).setOnClickListener(new View.OnClickListener() { // from class: m0.e3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                switch (i16) {
                                    case 0:
                                        C2331n3 c2331n6 = c2331n5;
                                        File file = c2331n6.f6269r;
                                        if (file != null && file.getParentFile() != null) {
                                            c2331n6.m3713v(c2331n6.f6269r.getParentFile(), alertDialogCreate, textView, listView);
                                            break;
                                        }
                                        break;
                                    case 1:
                                        C2331n3 c2331n7 = c2331n5;
                                        c2331n7.f6265n.getClass();
                                        c2331n7.m3713v(Environment.getExternalStorageDirectory(), alertDialogCreate, textView, listView);
                                        break;
                                    default:
                                        C2331n3 c2331n8 = c2331n5;
                                        c2331n8.f6266o.execute(new RunnableC2291f3(c2331n8, c2331n8.f6265n, alertDialogCreate, c2331n8.f6270s, textView, listView));
                                        break;
                                }
                            }
                        });
                        File externalStorageDirectory = c2331n5.f6264m;
                        if (externalStorageDirectory == null) {
                            c2331n5.f6265n.getClass();
                            externalStorageDirectory = Environment.getExternalStorageDirectory();
                        }
                        c2331n5.m3713v(externalStorageDirectory, alertDialogCreate, textView, listView);
                        break;
                }
            }
        });
        ((TextView) viewInflate.findViewById(R.id.videoSearch)).addTextChangedListener(new C1329a1(i13, this));
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this.f6258g++;
        this.f6270s++;
        AlertDialog alertDialog = this.f6267p;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
        AlertDialog alertDialog2 = this.f6268q;
        if (alertDialog2 != null) {
            alertDialog2.dismiss();
        }
        this.f6268q = null;
        ExecutorService executorService = this.f6266o;
        if (executorService != null) {
            executorService.shutdownNow();
        }
        Future future = this.f6257f;
        if (future != null) {
            future.cancel(true);
        }
        ExecutorService executorService2 = this.f6256e;
        if (executorService2 != null) {
            executorService2.shutdownNow();
        }
        this.f6255d.removeCallbacksAndMessages(null);
        this.f6259h.setAdapter(null);
        this.f6259h = null;
        this.f6262k = null;
        this.f6260i = null;
        this.f6261j = null;
        this.f6253b.clear();
        this.f6254c.clear();
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.f6264m != null) {
            bundle.putString(AbstractC1387m.m2421h(new byte[]{-21, -21, 40, 68}, new byte[]{-103, -124, 71, 48, -86, -23, -19, 107}), this.f6264m.getAbsolutePath());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        C1074t c1074t = this.f6265n;
        if (c1074t.f1183c) {
            return;
        }
        c1074t.f1183c = true;
        ((C1683k) c1074t.f1185e).m2801v((Context) c1074t.f1184d);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        C1074t c1074t = this.f6265n;
        if (c1074t.f1183c) {
            c1074t.f1183c = false;
            ((C1683k) c1074t.f1185e).m2802w();
        }
        super.onStop();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        m3714w();
    }

    /* JADX INFO: renamed from: u */
    public final void m3712u() {
        String string;
        if (this.f6262k == null) {
            return;
        }
        ArrayList arrayList = this.f6254c;
        arrayList.clear();
        ArrayList arrayList2 = this.f6253b;
        int size = arrayList2.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList2.get(i10);
            i10++;
            C2316k3 c2316k3 = (C2316k3) obj;
            if (c2316k3.f6197a.toLowerCase(Locale.ROOT).contains(this.f6263l)) {
                arrayList.add(c2316k3);
            }
        }
        this.f6262k.notifyDataSetChanged();
        TextView textView = this.f6260i;
        if (this.f6271t) {
            string = getString(R.string.video_loading);
        } else if (this.f6272u) {
            string = getString(R.string.video_partial, Integer.valueOf(arrayList.size()));
        } else if (arrayList2.isEmpty()) {
            string = getString(R.string.video_empty);
        } else {
            string = arrayList.isEmpty() ? getString(R.string.video_no_matches) : getString(R.string.video_count, Integer.valueOf(arrayList.size()));
        }
        textView.setText(string);
    }

    /* JADX INFO: renamed from: v */
    public final void m3713v(File file, final AlertDialog alertDialog, final TextView textView, final ListView listView) {
        File absoluteFile;
        String absolutePath;
        if (this.f6267p != alertDialog) {
            return;
        }
        final int i10 = this.f6270s + 1;
        this.f6270s = i10;
        final C1074t c1074t = this.f6265n;
        c1074t.getClass();
        try {
            absoluteFile = file.getCanonicalFile();
        } catch (IOException unused) {
            absoluteFile = file.getAbsoluteFile();
        }
        final File file2 = absoluteFile;
        this.f6269r = file2;
        if (file2 == null) {
            absolutePath = "";
        } else {
            try {
                absolutePath = file2.getCanonicalPath();
            } catch (IOException unused2) {
                absolutePath = file2.getAbsolutePath();
            }
        }
        textView.setText(absolutePath);
        listView.setAdapter((ListAdapter) null);
        alertDialog.getButton(-1).setEnabled(false);
        alertDialog.getButton(-3).setEnabled(file2.getParentFile() != null);
        this.f6266o.execute(new Runnable() { // from class: m0.g3
            @Override // java.lang.Runnable
            public final void run() {
                final C1074t c1074t2 = c1074t;
                c1074t2.getClass();
                final File file3 = file2;
                final ArrayList arrayListM1358h = C1074t.m1358h(file3);
                final ArrayList arrayList = new ArrayList();
                if (arrayListM1358h != null) {
                    int size = arrayListM1358h.size();
                    int i11 = 0;
                    while (i11 < size) {
                        Object obj = arrayListM1358h.get(i11);
                        i11++;
                        File file4 = (File) obj;
                        if (file4.isDirectory()) {
                            arrayList.add(file4);
                        }
                    }
                }
                final C2331n3 c2331n3 = this.f6094b;
                Handler handler = c2331n3.f6255d;
                final int i12 = i10;
                final AlertDialog alertDialog2 = alertDialog;
                final TextView textView2 = textView;
                final ListView listView2 = listView;
                handler.post(new Runnable() { // from class: m0.h3
                    @Override // java.lang.Runnable
                    public final void run() {
                        String absolutePath2;
                        File file5 = file3;
                        C2331n3 c2331n4 = c2331n3;
                        if (c2331n4.getView() == null || i12 != c2331n4.f6270s) {
                            return;
                        }
                        AlertDialog alertDialog3 = c2331n4.f6267p;
                        AlertDialog alertDialog4 = alertDialog2;
                        if (alertDialog3 != alertDialog4) {
                            return;
                        }
                        List list = arrayListM1358h;
                        TextView textView3 = textView2;
                        if (list == null) {
                            c1074t2.getClass();
                            try {
                                absolutePath2 = file5.getCanonicalPath();
                            } catch (IOException unused3) {
                                absolutePath2 = file5.getAbsolutePath();
                            }
                            textView3.setText(c2331n4.getString(R.string.user_file_manager_no_access, absolutePath2));
                            return;
                        }
                        alertDialog4.getButton(-1).setEnabled(true);
                        ArrayList arrayList2 = new ArrayList();
                        ArrayList arrayList3 = arrayList;
                        int size2 = arrayList3.size();
                        int i13 = 0;
                        while (i13 < size2) {
                            Object obj2 = arrayList3.get(i13);
                            i13++;
                            arrayList2.add(AbstractC1387m.m2421h(new byte[]{95}, new byte[]{4, -67, 110, 74, 125, 35, -40, 110}) + c2331n4.getString(R.string.folder) + AbstractC1387m.m2421h(new byte[]{109, -43}, new byte[]{48, -11, 41, -49, 16, -89, -69, -21}) + ((File) obj2).getName());
                        }
                        ArrayAdapter arrayAdapter = new ArrayAdapter(alertDialog4.getContext(), R.layout.video_browser_item, arrayList2);
                        ListView listView3 = listView2;
                        listView3.setAdapter((ListAdapter) arrayAdapter);
                        listView3.setOnItemClickListener(new C2311j3(c2331n4, arrayList3, alertDialog4, textView3, listView3, 0));
                    }
                });
            }
        });
    }

    /* JADX INFO: renamed from: w */
    public final void m3714w() {
        if (this.f6259h == null) {
            return;
        }
        Future future = this.f6257f;
        if (future != null) {
            future.cancel(true);
        }
        int i10 = this.f6258g + 1;
        this.f6258g = i10;
        this.f6271t = true;
        this.f6253b.clear();
        m3712u();
        TextView textView = this.f6261j;
        File file = this.f6264m;
        textView.setText(file != null ? file.getAbsolutePath() : getString(R.string.video_all_sources));
        this.f6257f = this.f6256e.submit(new RunnableC1948d(this, this.f6264m, this.f6265n, i10));
    }
}
