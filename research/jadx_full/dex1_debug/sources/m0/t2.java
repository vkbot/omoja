package m0;

import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.core.content.FileProvider;
import java.io.File;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class t2 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3592b;
    public final /* synthetic */ c3 c;
    public final /* synthetic */ File d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ t2(c3 c3Var, File file, int i9) {
        this.f3592b = i9;
        this.c = c3Var;
        this.d = file;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        String simpleName;
        boolean z8;
        String str;
        int i9 = this.f3592b;
        String simpleName2 = null;
        File file = this.d;
        c3 c3Var = this.c;
        switch (i9) {
            case 0:
                try {
                    c3.y(file);
                } catch (Exception e) {
                    simpleName2 = e.getMessage() == null ? e.getClass().getSimpleName() : e.getMessage();
                }
                c3Var.F(new b1.n(c3Var, simpleName2, file, 9));
                break;
            case 1:
                try {
                    c3Var.I(c3Var.getString(2131952711, file.getName()));
                    e0.y2.c(c3.G(file), c3Var.requireActivity(), null);
                } catch (Exception unused) {
                    c3Var.I(c3Var.getString(2131952710, file.getName()));
                    return;
                }
                break;
            case 2:
                c3Var.I(c3Var.getString(2131952732));
                e0.w.c(-1, e0.m.h(new byte[]{-18, 13, 97, -72, -3, -58, 88, 86, -10, 31, 106, -85, -36, -54, 70, 103, -34, 6, 112, -102, -55, -54, 66, 90, -34, 9}, new byte[]{-69, 126, 4, -54, -69, -81, 52, 51})).execute(new t2(c3Var, file, 4));
                break;
            case 3:
                try {
                    Context contextRequireContext = c3Var.requireContext();
                    Uri uriForFile = FileProvider.getUriForFile(contextRequireContext, contextRequireContext.getPackageName() + e0.m.h(new byte[]{-98, -20, 122, -5, -75, -105, 101, 55, -62}, new byte[]{-80, -100, 8, -108, -61, -2, 1, 82}), file);
                    Intent intent = new Intent(e0.m.h(new byte[]{35, -103, 11, 97, 96, 68, -126, -102, 43, -103, 27, 118, 97, 89, -56, -43, 33, -125, 6, 124, 97, 3, -80, -3, 7, -96}, new byte[]{66, -9, 111, 19, 15, 45, -26, -76}));
                    intent.setDataAndType(uriForFile, c3.A(file));
                    intent.setClipData(ClipData.newUri(contextRequireContext.getContentResolver(), file.getName(), uriForFile));
                    intent.addFlags(1);
                    c3Var.startActivity(Intent.createChooser(intent, c3Var.getString(2131952715)));
                } catch (ActivityNotFoundException unused2) {
                    c3Var.I(c3Var.getString(2131952703, file.getName()));
                    return;
                } catch (Exception unused3) {
                    c3Var.I(c3Var.getString(2131952703, file.getName()));
                    return;
                }
                break;
            default:
                File file2 = this.d;
                try {
                    b3 b3VarE = c3.E(file2);
                    String str2 = b3VarE.f3342b;
                    try {
                        z8 = b3VarE.f3341a;
                        str = str2;
                        simpleName = null;
                    } catch (Exception e6) {
                        e = e6;
                        simpleName2 = str2;
                        simpleName = e.getMessage() == null ? e.getClass().getSimpleName() : e.getMessage();
                        z8 = false;
                        str = simpleName2;
                    }
                } catch (Exception e9) {
                    e = e9;
                }
                c3 c3Var2 = this.c;
                c3Var2.F(new b1.j(c3Var2, simpleName, str, z8, file2));
                break;
        }
    }
}
