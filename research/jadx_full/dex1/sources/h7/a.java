package h7;

import android.app.AlertDialog$Builder;
import android.view.View;
import android.view.View$OnClickListener;
import androidx.core.content.ContextCompat;
import com.woha.appmanag.FilePickerActivity;
import e0.e0;
import e0.m;
import java.io.File;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class a implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2488b;
    public final /* synthetic */ FilePickerActivity c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(FilePickerActivity filePickerActivity, int i9) {
        this.f2488b = i9;
        this.c = filePickerActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        int i9 = this.f2488b;
        FilePickerActivity filePickerActivity = this.c;
        switch (i9) {
            case 0:
                String str = FilePickerActivity.f1601j;
                filePickerActivity.setResult(0);
                filePickerActivity.finish();
                break;
            case 1:
                if (filePickerActivity.e.getParentFile() != null) {
                    filePickerActivity.v(filePickerActivity.e.getParentFile());
                } else {
                    y5.k.x(filePickerActivity, filePickerActivity.getString(2131952656));
                }
                break;
            default:
                k kVar = filePickerActivity.f1604g;
                if (kVar != null) {
                    kVar.o(filePickerActivity);
                }
                ArrayList arrayList = new ArrayList();
                try {
                    k kVar2 = filePickerActivity.f1604g;
                    if (kVar2 != null) {
                        ArrayList arrayListE = kVar2.e();
                        int size = arrayListE.size();
                        int i10 = 0;
                        while (i10 < size) {
                            Object obj = arrayListE.get(i10);
                            i10++;
                            File file = (File) obj;
                            if (FilePickerActivity.u(file) && !FilePickerActivity.s(arrayList, file)) {
                                arrayList.add(file);
                            }
                        }
                    }
                } catch (Exception unused) {
                }
                try {
                    for (File file2 : ContextCompat.getExternalFilesDirs(filePickerActivity, null)) {
                        if (file2 != null) {
                            String absolutePath = file2.getAbsolutePath();
                            if (absolutePath.contains(m.h(new byte[]{23, 29, 97, 26, 19, -33, 47, -18, 23}, new byte[]{56, 110, 21, 117, 97, -66, 72, -117})) && absolutePath.contains(m.h(new byte[]{-98, 87, -53, -78, 86, 27, 126}, new byte[]{-33, 57, -81, -64, 57, 114, 26, 31}))) {
                                File file3 = new File(absolutePath.substring(0, absolutePath.indexOf(m.h(new byte[]{90, 83, 18, -127, 6, -96, -58, 113}, new byte[]{117, 18, 124, -27, 116, -49, -81, 21}))));
                                if (FilePickerActivity.u(file3) && !FilePickerActivity.s(arrayList, file3)) {
                                    arrayList.add(file3);
                                }
                            }
                        }
                    }
                } catch (Exception unused2) {
                }
                try {
                    File[] fileArrListFiles = new File(m.h(new byte[]{1, 74, -73, -96, 93, -89, -104, 25, 1}, new byte[]{46, 57, -61, -49, 47, -58, -1, 124})).listFiles();
                    if (fileArrListFiles != null) {
                        for (File file4 : fileArrListFiles) {
                            if (file4 != null && FilePickerActivity.u(file4) && !FilePickerActivity.s(arrayList, file4)) {
                                arrayList.add(file4);
                            }
                        }
                    }
                } catch (Exception unused3) {
                }
                if (arrayList.isEmpty()) {
                    y5.k.x(filePickerActivity, filePickerActivity.getString(2131952662));
                } else {
                    String[] strArr = new String[arrayList.size()];
                    for (int i11 = 0; i11 < arrayList.size(); i11++) {
                        strArr[i11] = ((File) arrayList.get(i11)).getAbsolutePath();
                    }
                    new AlertDialog$Builder(filePickerActivity).setTitle(filePickerActivity.getString(2131952661)).setItems(strArr, new e0(1, filePickerActivity, arrayList)).show();
                }
                break;
        }
    }
}
