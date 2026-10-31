package m0;

import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class h3 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n3 f3451b;
    public final /* synthetic */ int c;
    public final /* synthetic */ AlertDialog d;
    public final /* synthetic */ List e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ TextView f3452f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ com.bumptech.glide.manager.t f3453g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ File f3454h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ ArrayList f3455i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ ListView f3456j;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ h3(n3 n3Var, int i9, AlertDialog alertDialog, ArrayList arrayList, TextView textView, com.bumptech.glide.manager.t tVar, File file, ArrayList arrayList2, ListView listView) {
        this.f3451b = n3Var;
        this.c = i9;
        this.d = alertDialog;
        this.e = arrayList;
        this.f3452f = textView;
        this.f3453g = tVar;
        this.f3454h = file;
        this.f3455i = arrayList2;
        this.f3456j = listView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        String absolutePath;
        File file = this.f3454h;
        n3 n3Var = this.f3451b;
        if (n3Var.getView() == null || this.c != n3Var.f3548s) {
            return;
        }
        AlertDialog alertDialog = n3Var.f3546p;
        AlertDialog alertDialog2 = this.d;
        if (alertDialog != alertDialog2) {
            return;
        }
        List list = this.e;
        TextView textView = this.f3452f;
        if (list == null) {
            this.f3453g.getClass();
            try {
                absolutePath = file.getCanonicalPath();
            } catch (IOException unused) {
                absolutePath = file.getAbsolutePath();
            }
            textView.setText(n3Var.getString(2131952713, absolutePath));
            return;
        }
        alertDialog2.getButton(-1).setEnabled(true);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.f3455i;
        int size = arrayList2.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList2.get(i9);
            i9++;
            arrayList.add(e0.m.h(new byte[]{95}, new byte[]{4, -67, 110, 74, 125, 35, -40, 110}) + n3Var.getString(2131951989) + e0.m.h(new byte[]{109, -43}, new byte[]{48, -11, 41, -49, 16, -89, -69, -21}) + ((File) obj).getName());
        }
        ArrayAdapter arrayAdapter = new ArrayAdapter(alertDialog2.getContext(), 2131493145, arrayList);
        ListView listView = this.f3456j;
        listView.setAdapter((ListAdapter) arrayAdapter);
        listView.setOnItemClickListener(new j3(n3Var, arrayList2, alertDialog2, textView, listView, 0));
    }
}
