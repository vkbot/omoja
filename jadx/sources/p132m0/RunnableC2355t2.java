package p132m0;

import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.core.content.FileProvider;
import com.example.navistart.R;
import java.io.File;
import p016b1.RunnableC0869j;
import p016b1.RunnableC0873n;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1434w;
import p047e0.C1445y2;

/* JADX INFO: renamed from: m0.t2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC2355t2 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f6358b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C2276c3 f6359c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ File f6360d;

    public /* synthetic */ RunnableC2355t2(C2276c3 c2276c3, File file, int i10) {
        this.f6358b = i10;
        this.f6359c = c2276c3;
        this.f6360d = file;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String simpleName;
        boolean z9;
        String str;
        int i10 = this.f6358b;
        String simpleName2 = null;
        File file = this.f6360d;
        C2276c3 c2276c3 = this.f6359c;
        switch (i10) {
            case 0:
                try {
                    C2276c3.m3660y(file);
                } catch (Exception e) {
                    simpleName2 = e.getMessage() == null ? e.getClass().getSimpleName() : e.getMessage();
                }
                c2276c3.m3662F(new RunnableC0873n(c2276c3, simpleName2, file, 9));
                break;
            case 1:
                try {
                    c2276c3.m3664I(c2276c3.getString(R.string.user_file_manager_install_started, file.getName()));
                    C1445y2.m2493c(C2276c3.m3655G(file), c2276c3.requireActivity(), null);
                } catch (Exception unused) {
                    c2276c3.m3664I(c2276c3.getString(R.string.user_file_manager_install_error, file.getName()));
                    return;
                }
                break;
            case 2:
                c2276c3.m3664I(c2276c3.getString(R.string.user_file_manager_text_preview_loading));
                AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{-18, 13, 97, -72, -3, -58, 88, 86, -10, 31, 106, -85, -36, -54, 70, 103, -34, 6, 112, -102, -55, -54, 66, 90, -34, 9}, new byte[]{-69, 126, 4, -54, -69, -81, 52, 51})).execute(new RunnableC2355t2(c2276c3, file, 4));
                break;
            case 3:
                try {
                    Context contextRequireContext = c2276c3.requireContext();
                    Uri uriForFile = FileProvider.getUriForFile(contextRequireContext, contextRequireContext.getPackageName() + AbstractC1387m.m2421h(new byte[]{-98, -20, 122, -5, -75, -105, 101, 55, -62}, new byte[]{-80, -100, 8, -108, -61, -2, 1, 82}), file);
                    Intent intent = new Intent(AbstractC1387m.m2421h(new byte[]{35, -103, 11, 97, 96, 68, -126, -102, 43, -103, 27, 118, 97, 89, -56, -43, 33, -125, 6, 124, 97, 3, -80, -3, 7, -96}, new byte[]{66, -9, 111, 19, 15, 45, -26, -76}));
                    intent.setDataAndType(uriForFile, C2276c3.m3651A(file));
                    intent.setClipData(ClipData.newUri(contextRequireContext.getContentResolver(), file.getName(), uriForFile));
                    intent.addFlags(1);
                    c2276c3.startActivity(Intent.createChooser(intent, c2276c3.getString(R.string.user_file_manager_open_external)));
                } catch (ActivityNotFoundException unused2) {
                    c2276c3.m3664I(c2276c3.getString(R.string.user_file_manager_external_open_error, file.getName()));
                    return;
                } catch (Exception unused3) {
                    c2276c3.m3664I(c2276c3.getString(R.string.user_file_manager_external_open_error, file.getName()));
                    return;
                }
                break;
            default:
                File file2 = this.f6360d;
                try {
                    C2271b3 c2271b3M3654E = C2276c3.m3654E(file2);
                    String str2 = c2271b3M3654E.f5946b;
                    try {
                        z9 = c2271b3M3654E.f5945a;
                        str = str2;
                        simpleName = null;
                    } catch (Exception e6) {
                        e = e6;
                        simpleName2 = str2;
                        simpleName = e.getMessage() == null ? e.getClass().getSimpleName() : e.getMessage();
                        z9 = false;
                        str = simpleName2;
                    }
                } catch (Exception e10) {
                    e = e10;
                }
                C2276c3 c2276c4 = this.f6359c;
                c2276c4.m3662F(new RunnableC0869j(c2276c4, simpleName, str, z9, file2));
                break;
        }
    }
}
