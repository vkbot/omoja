package m0;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.os.Environment;
import android.widget.EditText;
import android.widget.Spinner;
import com.woha.wifim.MainWifiManadger;
import java.io.File;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class y0 implements DialogInterface$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3630b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ y0(Object obj, Object obj2, Object obj3, int i9) {
        this.f3630b = i9;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.DialogInterface$OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i9) {
        File externalStorageDirectory;
        int i10 = this.f3630b;
        int i11 = 0;
        boolean zRenameTo = false;
        Object obj = this.e;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i10) {
            case 0:
                z0 z0Var = (z0) obj3;
                t0 t0Var = (t0) obj;
                ArrayList arrayList = z0Var.f3638b;
                Object selectedItem = ((Spinner) obj2).getSelectedItem();
                if (selectedItem instanceof j0.e) {
                    j0.e eVar = (j0.e) selectedItem;
                    int iIndexOf = arrayList.indexOf(t0Var);
                    if (j0.f.d(eVar)) {
                        t0Var.f3590b = eVar;
                        t0Var.c = true;
                        if (iIndexOf >= 0) {
                            arrayList.remove(iIndexOf);
                            z0Var.f3642i.notifyItemRemoved(iIndexOf);
                        }
                        arrayList.add(0, t0Var);
                        z0Var.f3642i.notifyItemInserted(0);
                        z0Var.f3641h.scrollToPosition(0);
                    } else if (iIndexOf >= 0) {
                        arrayList.remove(iIndexOf);
                        z0Var.c.remove(t0Var.f3589a.toStorageValue());
                        z0Var.f3642i.notifyItemRemoved(iIndexOf);
                    }
                    ArrayList arrayList2 = new ArrayList();
                    int size = arrayList.size();
                    while (i11 < size) {
                        Object obj4 = arrayList.get(i11);
                        i11++;
                        t0 t0Var2 = (t0) obj4;
                        if (t0Var2.c && j0.f.d(t0Var2.f3590b)) {
                            arrayList2.add(new w0.o0(t0Var2.f3589a.toStorageValue(), t0Var2.f3590b, true, true));
                        }
                    }
                    h0.b.a();
                    j0.c cVarF = h0.b.f();
                    String str = z0.f3636m;
                    cVarF.getClass();
                    j0.c.l(str, arrayList2);
                    z0Var.u();
                }
                break;
            case 1:
                c3 c3Var = (c3) obj3;
                EditText editText = (EditText) obj2;
                File file = (File) obj;
                String strTrim = editText.getText() == null ? "" : editText.getText().toString().trim();
                if (strTrim.length() != 0 && !strTrim.contains(e0.m.h(new byte[]{-72}, new byte[]{-105, -65, -54, 67, 115, 63, -73, 30})) && !strTrim.contains(e0.m.h(new byte[]{-113}, new byte[]{-45, -122, 45, 90, 5, -75, -113, 118}))) {
                    File parentFile = file.getParentFile();
                    if (parentFile == null) {
                        c3Var.I(c3Var.getString(2131952723, file.getName()));
                        break;
                    } else if (!file.getName().equals(strTrim)) {
                        File file2 = new File(parentFile, strTrim);
                        if (!file2.exists()) {
                            try {
                                zRenameTo = file.renameTo(file2);
                                break;
                            } catch (Exception unused) {
                            }
                            if (!zRenameTo) {
                                c3Var.I(c3Var.getString(2131952723, file.getName()));
                            } else {
                                File file3 = c3Var.f3369u;
                                if (file3 != null && c3.G(file3).equals(c3.G(file))) {
                                    c3Var.f3369u = file2;
                                    c3Var.K();
                                }
                                c3Var.v();
                                c3Var.I(c3Var.getString(2131952721, file2.getName()));
                                c3Var.D(c3Var.t);
                            }
                        } else {
                            c3Var.I(c3Var.getString(2131952724, strTrim));
                        }
                        break;
                    }
                } else {
                    c3Var.I(c3Var.getString(2131952722));
                    break;
                }
                break;
            case 2:
                n3 n3Var = (n3) obj3;
                com.bumptech.glide.manager.t tVar = (com.bumptech.glide.manager.t) obj2;
                ArrayList arrayList3 = (ArrayList) obj;
                if (i9 == 0) {
                    externalStorageDirectory = null;
                } else if (i9 == 1) {
                    tVar.getClass();
                    externalStorageDirectory = Environment.getExternalStorageDirectory();
                } else {
                    externalStorageDirectory = (File) arrayList3.get(i9 - 2);
                }
                n3Var.f3543m = externalStorageDirectory;
                n3Var.w();
                break;
            default:
                MainWifiManadger mainWifiManadger = (MainWifiManadger) obj3;
                String str2 = (String) obj;
                String str3 = MainWifiManadger.f1632v;
                String string = ((EditText) obj2).getText().toString();
                if (!string.isEmpty()) {
                    mainWifiManadger.t(str2, string, mainWifiManadger.f1643o);
                } else {
                    y5.k.x(mainWifiManadger.getApplicationContext(), mainWifiManadger.getResources().getString(2131952874));
                }
                break;
        }
    }
}
