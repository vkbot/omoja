package s1;

import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory$Options;
import e0.j2;
import java.io.File;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class c0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5067b;
    public final /* synthetic */ q0 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c0(q0 q0Var, int i9) {
        this.f5067b = i9;
        this.c = q0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        Bitmap bitmapDecodeFile;
        int i9 = 0;
        switch (this.f5067b) {
            case 0:
                this.c.s();
                break;
            case 1:
                q0 q0Var = this.c;
                if (!q0Var.E) {
                    File file = new File(q0Var.getContext().getFilesDir(), q0.L);
                    if (file.isFile() && file.length() != 0) {
                        BitmapFactory$Options bitmapFactory$Options = new BitmapFactory$Options();
                        int i10 = 1;
                        bitmapFactory$Options.inJustDecodeBounds = true;
                        BitmapFactory.decodeFile(file.getAbsolutePath(), bitmapFactory$Options);
                        if (bitmapFactory$Options.outWidth <= 0 || bitmapFactory$Options.outHeight <= 0) {
                            bitmapDecodeFile = null;
                        } else {
                            int iMax = Math.max(1280, q0Var.getResources().getDisplayMetrics().widthPixels);
                            int iMax2 = Math.max(720, q0Var.getResources().getDisplayMetrics().heightPixels);
                            while (true) {
                                int i11 = i10 * 2;
                                if (bitmapFactory$Options.outWidth / i11 >= iMax && bitmapFactory$Options.outHeight / i11 >= iMax2) {
                                    i10 = i11;
                                }
                            }
                            BitmapFactory$Options bitmapFactory$Options2 = new BitmapFactory$Options();
                            bitmapFactory$Options2.inSampleSize = i10;
                            bitmapDecodeFile = BitmapFactory.decodeFile(file.getAbsolutePath(), bitmapFactory$Options2);
                        }
                        if (bitmapDecodeFile != null) {
                            q0Var.r.post(new j2(29, q0Var, bitmapDecodeFile));
                        }
                        break;
                    }
                }
                break;
            case 2:
                this.c.B = false;
                break;
            case 3:
                q0 q0Var2 = this.c;
                if (!q0Var2.E) {
                    y5.k.x(q0Var2.getContext(), e0.m.h(new byte[]{82, 27, -77, 18, 98, 37, 49, 109, 54, 86, -45, 119, -7, 36, 12, 108, 3, 87, -17, -121, -109, 117, 98, 3, 83, 3, -78, 39, -110, 68, 98, 0, 82, 62, -78, 37, -109, 120, -110, 109, 63, 86, -35, 119, -16, 37, 57, 109, 59, -90, -78, 35, -110, 74, 98, 0}, new byte[]{-126, -122, 99, -89, 66, -12, -78, -67}));
                }
                break;
            case 4:
                q0 q0Var3 = this.c;
                if (!q0Var3.E) {
                    y5.k.x(q0Var3.getContext(), e0.m.h(new byte[]{-5, 74, 47, 125, 2, 81, 118, -81, -86, 7, 74, 25, 81, 3, -18, 94, -55, 87, 107, -24, 3, 109, -121, -1, -6, 85, 47, 120, 3, 97, -122, -59, -5, 98, 47, 117, -13, 2, -41, -82, -107, 6, 122, 25, 83, 3, -26, -82, -106, 6, 110, 24, 110, 3, -21, -81, -96, 7, 70, -24, 2, 87, -122, -64, -5, 106}, new byte[]{43, -41, -1, -56, -45, -45, 86, 126}));
                }
                break;
            case 5:
                q0 q0Var4 = this.c;
                if (!q0Var4.E) {
                    q0Var4.B = false;
                }
                break;
            default:
                q0 q0Var5 = this.c;
                ArrayList arrayList = new ArrayList(q0Var5.getContext().getPackageManager().queryIntentActivities(new Intent(e0.m.h(new byte[]{-30, -82, 82, 74, -43, 63, 102, 113, -22, -82, 66, 93, -44, 34, 44, 62, -32, -76, 95, 87, -44, 120, 79, 30, -54, -114}, new byte[]{-125, -64, 54, 56, -70, 86, 2, 95})).addCategory(e0.m.h(new byte[]{1, 90, -76, 105, -11, 5, -112, 105, 9, 90, -92, 126, -12, 24, -38, 36, 1, 64, -75, 124, -11, 30, -115, 105, 44, 117, -123, 85, -39, 36, -79, 21}, new byte[]{96, 52, -48, 27, -102, 108, -12, 71})), 0));
                arrayList.removeIf(new i7.c(9, q0Var5));
                arrayList.sort(new h3.d(2, q0Var5));
                ArrayList arrayList2 = new ArrayList();
                int size = arrayList.size();
                while (i9 < size) {
                    Object obj = arrayList.get(i9);
                    i9++;
                    arrayList2.add(j0.e.b((ResolveInfo) obj, q0Var5.getContext().getPackageManager()));
                }
                q0Var5.r.post(new b1.n(q0Var5, arrayList2, arrayList, 13));
                break;
        }
    }
}
