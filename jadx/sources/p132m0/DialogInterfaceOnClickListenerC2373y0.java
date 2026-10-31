package p132m0;

import android.content.DialogInterface;
import android.os.Environment;
import android.widget.EditText;
import android.widget.Spinner;
import com.bumptech.glide.manager.C1074t;
import com.example.navistart.R;
import com.woha.wifim.MainWifiManadger;
import java.io.File;
import java.util.ArrayList;
import p047e0.AbstractC1387m;
import p078h0.C1652b;
import p098j0.AbstractC1920f;
import p098j0.C1917c;
import p098j0.C1919e;
import p225w0.C3481o0;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: m0.y0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class DialogInterfaceOnClickListenerC2373y0 implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f6418b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f6419c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f6420d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ Object f6421e;

    public /* synthetic */ DialogInterfaceOnClickListenerC2373y0(Object obj, Object obj2, Object obj3, int i10) {
        this.f6418b = i10;
        this.f6419c = obj;
        this.f6420d = obj2;
        this.f6421e = obj3;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i10) {
        File externalStorageDirectory;
        int i11 = this.f6418b;
        int i12 = 0;
        boolean zRenameTo = false;
        Object obj = this.f6421e;
        Object obj2 = this.f6420d;
        Object obj3 = this.f6419c;
        switch (i11) {
            case 0:
                C2377z0 c2377z0 = (C2377z0) obj3;
                C2353t0 c2353t0 = (C2353t0) obj;
                ArrayList arrayList = c2377z0.f6436b;
                Object selectedItem = ((Spinner) obj2).getSelectedItem();
                if (selectedItem instanceof C1919e) {
                    C1919e c1919e = (C1919e) selectedItem;
                    int iIndexOf = arrayList.indexOf(c2353t0);
                    if (AbstractC1920f.m3006d(c1919e)) {
                        c2353t0.f6354b = c1919e;
                        c2353t0.f6355c = true;
                        if (iIndexOf >= 0) {
                            arrayList.remove(iIndexOf);
                            c2377z0.f6443i.notifyItemRemoved(iIndexOf);
                        }
                        arrayList.add(0, c2353t0);
                        c2377z0.f6443i.notifyItemInserted(0);
                        c2377z0.f6442h.scrollToPosition(0);
                    } else if (iIndexOf >= 0) {
                        arrayList.remove(iIndexOf);
                        c2377z0.f6437c.remove(c2353t0.f6353a.toStorageValue());
                        c2377z0.f6443i.notifyItemRemoved(iIndexOf);
                    }
                    ArrayList arrayList2 = new ArrayList();
                    int size = arrayList.size();
                    while (i12 < size) {
                        Object obj4 = arrayList.get(i12);
                        i12++;
                        C2353t0 c2353t1 = (C2353t0) obj4;
                        if (c2353t1.f6355c && AbstractC1920f.m3006d(c2353t1.f6354b)) {
                            arrayList2.add(new C3481o0(c2353t1.f6353a.toStorageValue(), c2353t1.f6354b, true, true));
                        }
                    }
                    C1652b.m2734a();
                    C1917c c1917cM2737f = C1652b.m2737f();
                    String str = C2377z0.f6434m;
                    c1917cM2737f.getClass();
                    C1917c.m2987l(str, arrayList2);
                    c2377z0.m3744u();
                }
                break;
            case 1:
                C2276c3 c2276c3 = (C2276c3) obj3;
                EditText editText = (EditText) obj2;
                File file = (File) obj;
                String strTrim = editText.getText() == null ? "" : editText.getText().toString().trim();
                if (strTrim.length() != 0 && !strTrim.contains(AbstractC1387m.m2421h(new byte[]{-72}, new byte[]{-105, -65, -54, 67, 115, 63, -73, 30})) && !strTrim.contains(AbstractC1387m.m2421h(new byte[]{-113}, new byte[]{-45, -122, 45, 90, 5, -75, -113, 118}))) {
                    File parentFile = file.getParentFile();
                    if (parentFile == null) {
                        c2276c3.m3664I(c2276c3.getString(R.string.user_file_manager_rename_error, file.getName()));
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
                                c2276c3.m3664I(c2276c3.getString(R.string.user_file_manager_rename_error, file.getName()));
                            } else {
                                File file3 = c2276c3.f5986u;
                                if (file3 != null && C2276c3.m3655G(file3).equals(C2276c3.m3655G(file))) {
                                    c2276c3.f5986u = file2;
                                    c2276c3.m3666K();
                                }
                                c2276c3.m3667v();
                                c2276c3.m3664I(c2276c3.getString(R.string.user_file_manager_rename_done, file2.getName()));
                                c2276c3.m3661D(c2276c3.f5985t);
                            }
                        } else {
                            c2276c3.m3664I(c2276c3.getString(R.string.user_file_manager_rename_exists, strTrim));
                        }
                        break;
                    }
                } else {
                    c2276c3.m3664I(c2276c3.getString(R.string.user_file_manager_rename_empty));
                    break;
                }
                break;
            case 2:
                C2331n3 c2331n3 = (C2331n3) obj3;
                C1074t c1074t = (C1074t) obj2;
                ArrayList arrayList3 = (ArrayList) obj;
                if (i10 == 0) {
                    externalStorageDirectory = null;
                } else if (i10 == 1) {
                    c1074t.getClass();
                    externalStorageDirectory = Environment.getExternalStorageDirectory();
                } else {
                    externalStorageDirectory = (File) arrayList3.get(i10 - 2);
                }
                c2331n3.f6264m = externalStorageDirectory;
                c2331n3.m3714w();
                break;
            default:
                MainWifiManadger mainWifiManadger = (MainWifiManadger) obj3;
                String str2 = (String) obj;
                String str3 = MainWifiManadger.f2888v;
                String string = ((EditText) obj2).getText().toString();
                if (!string.isEmpty()) {
                    mainWifiManadger.m2215t(str2, string, mainWifiManadger.f2902o);
                } else {
                    AbstractC3656k.m5878x(mainWifiManadger.getApplicationContext(), mainWifiManadger.getResources().getString(R.string.wifi_error_pas));
                }
                break;
        }
    }
}
