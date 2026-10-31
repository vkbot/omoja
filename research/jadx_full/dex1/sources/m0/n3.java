package m0;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.MimeTypeMap;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import e0.p3;
import java.io.File;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class n3 extends l0.b {
    public ExecutorService e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Future f3536f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f3537g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public RecyclerView f3538h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public TextView f3539i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public TextView f3540j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public l3 f3541k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public File f3543m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.bumptech.glide.manager.t f3544n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public ExecutorService f3545o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public AlertDialog f3546p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public AlertDialog f3547q;
    public File r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f3548s;
    public boolean t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f3549u;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f3535b = new ArrayList();
    public final ArrayList c = new ArrayList();
    public final Handler d = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f3542l = "";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Boolean t() {
        StringBuilder sb = new StringBuilder();
        u0.a aVarO = h0.b.o();
        byte[] bArr = e0.m.f1896j;
        String[] strArr = p3.f1924a;
        com.google.protobuf.q.s(bArr, aVarO, "", sb);
        com.google.protobuf.q.r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strG = com.google.protobuf.q.g(sb, e0.x1.f1989q);
        u0.a aVarO2 = h0.b.o();
        byte[] bArr2 = e0.m.f1892f;
        if (com.google.protobuf.q.w(bArr2, aVarO2, "", strG)) {
            return Boolean.valueOf(com.google.protobuf.q.d(Long.MAX_VALUE, h0.b.a().j()) < Long.parseLong(new String(com.google.protobuf.q.x(new byte[]{37}, new byte[]{21, 17, -9, 78, -87, 101, -29, 40}, h0.b.o(), com.google.protobuf.q.h(e0.m.f1893g, h0.b.o(), new String(bArr2)), 0))));
        }
        return Boolean.FALSE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean x(com.bumptech.glide.manager.t tVar, ArrayList arrayList, ArrayList arrayList2) {
        String absolutePath;
        ArrayDeque arrayDeque = new ArrayDeque(arrayList);
        HashSet hashSet = new HashSet();
        boolean z8 = false;
        while (!arrayDeque.isEmpty() && !Thread.currentThread().isInterrupted()) {
            File file = (File) arrayDeque.removeFirst();
            tVar.getClass();
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
                    ArrayList arrayListH = com.bumptech.glide.manager.t.h(file);
                    if (arrayListH == null) {
                        z8 = true;
                    } else {
                        int size = arrayListH.size();
                        int i9 = 0;
                        while (i9 < size) {
                            Object obj = arrayListH.get(i9);
                            i9++;
                            arrayDeque.addLast((File) obj);
                        }
                    }
                } else {
                    String name = file.getName();
                    if (name != null) {
                        int iLastIndexOf = name.lastIndexOf(46);
                        String lowerCase = iLastIndexOf >= 0 ? name.substring(iLastIndexOf + 1).toLowerCase(Locale.ROOT) : "";
                        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(lowerCase);
                        if ((mimeTypeFromExtension != null && mimeTypeFromExtension.startsWith(e0.m.h(new byte[]{37, -46, 125, -48, 34, 101}, new byte[]{83, -69, 25, -75, 77, 74, -112, 91}))) || lowerCase.matches(e0.m.h(new byte[]{97, -55, -38, 82, 124, 88, 82, 11, 97, -51, -38, 82, 112, 94, 15, 11, 97, -106, -38, 82, 106, 75, 89, 26, 112, -60, -64, 88, 97, 89, 86, 1, 112, -49, -36, 73, 97, 67, 75, 18, 107, -34, -40, 93, 97, 67, 79, 4, 112, -49, -98, 90, 110, 82, 77, 24, 110, -34, -97, 73, 109, 82, 84, 16, 122}, new byte[]{12, -94, -84, 46, 29, 46, 59, 119}))) {
                            arrayList2.add(new k3(file.getName(), file.getParent(), file.length(), file.lastModified(), file));
                        }
                    }
                    if (!file.exists()) {
                        z8 = true;
                    }
                }
            }
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(2131492975, viewGroup, false);
        this.e = Executors.newSingleThreadExecutor();
        this.f3545o = Executors.newSingleThreadExecutor();
        this.f3544n = new com.bumptech.glide.manager.t(requireContext(), 3);
        if (bundle != null) {
            String string = bundle.getString(e0.m.h(new byte[]{65, 53, -32, -86}, new byte[]{51, 90, -113, -34, -104, 28, 103, -21}));
            this.f3543m = string == null ? null : new File(string);
        }
        this.f3538h = (RecyclerView) viewInflate.findViewById(2131297738);
        this.f3539i = (TextView) viewInflate.findViewById(2131297745);
        this.f3540j = (TextView) viewInflate.findViewById(2131297744);
        GridLayoutManager gridLayoutManager = new GridLayoutManager(requireContext(), 1);
        this.f3538h.setLayoutManager(gridLayoutManager);
        this.f3538h.addOnLayoutChangeListener(new e0.q1(2, gridLayoutManager));
        l3 l3Var = new l3(this);
        this.f3541k = l3Var;
        this.f3538h.setAdapter(l3Var);
        viewInflate.findViewById(2131297732).setOnClickListener(new i3(this, 0));
        viewInflate.findViewById(2131297741).setOnClickListener(new i3(this, 1));
        viewInflate.findViewById(2131297743).setOnClickListener(new i3(this, 2));
        viewInflate.findViewById(2131297733).setOnClickListener(new i3(this, 3));
        ((TextView) viewInflate.findViewById(2131297742)).addTextChangedListener(new e0.a1(2, this));
        return viewInflate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this.f3537g++;
        this.f3548s++;
        AlertDialog alertDialog = this.f3546p;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
        AlertDialog alertDialog2 = this.f3547q;
        if (alertDialog2 != null) {
            alertDialog2.dismiss();
        }
        this.f3547q = null;
        ExecutorService executorService = this.f3545o;
        if (executorService != null) {
            executorService.shutdownNow();
        }
        Future future = this.f3536f;
        if (future != null) {
            future.cancel(true);
        }
        ExecutorService executorService2 = this.e;
        if (executorService2 != null) {
            executorService2.shutdownNow();
        }
        this.d.removeCallbacksAndMessages(null);
        this.f3538h.setAdapter(null);
        this.f3538h = null;
        this.f3541k = null;
        this.f3539i = null;
        this.f3540j = null;
        this.f3535b.clear();
        this.c.clear();
        super.onDestroyView();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.f3543m != null) {
            bundle.putString(e0.m.h(new byte[]{-21, -21, 40, 68}, new byte[]{-103, -124, 71, 48, -86, -23, -19, 107}), this.f3543m.getAbsolutePath());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        com.bumptech.glide.manager.t tVar = this.f3544n;
        if (tVar.c) {
            return;
        }
        tVar.c = true;
        ((h7.k) tVar.e).v((Context) tVar.d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        com.bumptech.glide.manager.t tVar = this.f3544n;
        if (tVar.c) {
            tVar.c = false;
            ((h7.k) tVar.e).w();
        }
        super.onStop();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        w();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void u() {
        String string;
        if (this.f3541k == null) {
            return;
        }
        ArrayList arrayList = this.c;
        arrayList.clear();
        ArrayList arrayList2 = this.f3535b;
        int size = arrayList2.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList2.get(i9);
            i9++;
            k3 k3Var = (k3) obj;
            if (k3Var.f3499a.toLowerCase(Locale.ROOT).contains(this.f3542l)) {
                arrayList.add(k3Var);
            }
        }
        this.f3541k.notifyDataSetChanged();
        TextView textView = this.f3539i;
        if (this.t) {
            string = getString(2131952748);
        } else if (this.f3549u) {
            string = getString(2131952751, Integer.valueOf(arrayList.size()));
        } else if (arrayList2.isEmpty()) {
            string = getString(2131952745);
        } else {
            string = arrayList.isEmpty() ? getString(2131952749) : getString(2131952743, Integer.valueOf(arrayList.size()));
        }
        textView.setText(string);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void v(File file, AlertDialog alertDialog, TextView textView, ListView listView) {
        File absoluteFile;
        String absolutePath;
        if (this.f3546p != alertDialog) {
            return;
        }
        int i9 = this.f3548s + 1;
        this.f3548s = i9;
        com.bumptech.glide.manager.t tVar = this.f3544n;
        tVar.getClass();
        try {
            absoluteFile = file.getCanonicalFile();
        } catch (IOException unused) {
            absoluteFile = file.getAbsoluteFile();
        }
        File file2 = absoluteFile;
        this.r = file2;
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
        this.f3545o.execute(new g3(this, tVar, file2, i9, alertDialog, textView, listView));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void w() {
        if (this.f3538h == null) {
            return;
        }
        Future future = this.f3536f;
        if (future != null) {
            future.cancel(true);
        }
        int i9 = this.f3537g + 1;
        this.f3537g = i9;
        this.t = true;
        this.f3535b.clear();
        u();
        TextView textView = this.f3540j;
        File file = this.f3543m;
        textView.setText(file != null ? file.getAbsolutePath() : getString(2131952741));
        this.f3536f = this.e.submit(new j2.d(this, this.f3543m, this.f3544n, i9));
    }
}
