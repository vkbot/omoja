package m0;

import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import java.io.File;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class g3 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n3 f3435b;
    public final /* synthetic */ com.bumptech.glide.manager.t c;
    public final /* synthetic */ File d;
    public final /* synthetic */ int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ AlertDialog f3436f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ TextView f3437g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ListView f3438h;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ g3(n3 n3Var, com.bumptech.glide.manager.t tVar, File file, int i9, AlertDialog alertDialog, TextView textView, ListView listView) {
        this.f3435b = n3Var;
        this.c = tVar;
        this.d = file;
        this.e = i9;
        this.f3436f = alertDialog;
        this.f3437g = textView;
        this.f3438h = listView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        com.bumptech.glide.manager.t tVar = this.c;
        tVar.getClass();
        File file = this.d;
        ArrayList arrayListH = com.bumptech.glide.manager.t.h(file);
        ArrayList arrayList = new ArrayList();
        if (arrayListH != null) {
            int size = arrayListH.size();
            int i9 = 0;
            while (i9 < size) {
                Object obj = arrayListH.get(i9);
                i9++;
                File file2 = (File) obj;
                if (file2.isDirectory()) {
                    arrayList.add(file2);
                }
            }
        }
        n3 n3Var = this.f3435b;
        n3Var.d.post(new h3(n3Var, this.e, this.f3436f, arrayListH, this.f3437g, tVar, file, arrayList, this.f3438h));
    }
}
