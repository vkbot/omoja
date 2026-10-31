package p190s1;

import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.File;
import java.util.ArrayList;
import p016b1.RunnableC0873n;
import p047e0.AbstractC1387m;
import p047e0.RunnableC1375j2;
import p080h3.C1658d;
import p094i7.C1754c;
import p098j0.C1919e;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: s1.c0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC3138c0 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8987b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C3166q0 f8988c;

    public /* synthetic */ RunnableC3138c0(C3166q0 c3166q0, int i10) {
        this.f8987b = i10;
        this.f8988c = c3166q0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Bitmap bitmapDecodeFile;
        int i10 = 0;
        switch (this.f8987b) {
            case 0:
                this.f8988c.m5072s();
                break;
            case 1:
                C3166q0 c3166q0 = this.f8988c;
                if (!c3166q0.f9160E) {
                    File file = new File(c3166q0.getContext().getFilesDir(), C3166q0.f9152L);
                    if (file.isFile() && file.length() != 0) {
                        BitmapFactory.Options options = new BitmapFactory.Options();
                        int i11 = 1;
                        options.inJustDecodeBounds = true;
                        BitmapFactory.decodeFile(file.getAbsolutePath(), options);
                        if (options.outWidth <= 0 || options.outHeight <= 0) {
                            bitmapDecodeFile = null;
                        } else {
                            int iMax = Math.max(1280, c3166q0.getResources().getDisplayMetrics().widthPixels);
                            int iMax2 = Math.max(720, c3166q0.getResources().getDisplayMetrics().heightPixels);
                            while (true) {
                                int i12 = i11 * 2;
                                if (options.outWidth / i12 >= iMax && options.outHeight / i12 >= iMax2) {
                                    i11 = i12;
                                }
                            }
                            BitmapFactory.Options options2 = new BitmapFactory.Options();
                            options2.inSampleSize = i11;
                            bitmapDecodeFile = BitmapFactory.decodeFile(file.getAbsolutePath(), options2);
                        }
                        if (bitmapDecodeFile != null) {
                            c3166q0.f9182r.post(new RunnableC1375j2(29, c3166q0, bitmapDecodeFile));
                        }
                        break;
                    }
                }
                break;
            case 2:
                this.f8988c.f9157B = false;
                break;
            case 3:
                C3166q0 c3166q1 = this.f8988c;
                if (!c3166q1.f9160E) {
                    AbstractC3656k.m5878x(c3166q1.getContext(), AbstractC1387m.m2421h(new byte[]{82, 27, -77, 18, 98, 37, 49, 109, 54, 86, -45, 119, -7, 36, 12, 108, 3, 87, -17, -121, -109, 117, 98, 3, 83, 3, -78, 39, -110, 68, 98, 0, 82, 62, -78, 37, -109, 120, -110, 109, 63, 86, -35, 119, -16, 37, 57, 109, 59, -90, -78, 35, -110, 74, 98, 0}, new byte[]{-126, -122, 99, -89, 66, -12, -78, -67}));
                }
                break;
            case 4:
                C3166q0 c3166q2 = this.f8988c;
                if (!c3166q2.f9160E) {
                    AbstractC3656k.m5878x(c3166q2.getContext(), AbstractC1387m.m2421h(new byte[]{-5, 74, 47, 125, 2, 81, 118, -81, -86, 7, 74, 25, 81, 3, -18, 94, -55, 87, 107, -24, 3, 109, -121, -1, -6, 85, 47, 120, 3, 97, -122, -59, -5, 98, 47, 117, -13, 2, -41, -82, -107, 6, 122, 25, 83, 3, -26, -82, -106, 6, 110, 24, 110, 3, -21, -81, -96, 7, 70, -24, 2, 87, -122, -64, -5, 106}, new byte[]{43, -41, -1, -56, -45, -45, 86, 126}));
                }
                break;
            case 5:
                C3166q0 c3166q3 = this.f8988c;
                if (!c3166q3.f9160E) {
                    c3166q3.f9157B = false;
                }
                break;
            default:
                C3166q0 c3166q4 = this.f8988c;
                ArrayList arrayList = new ArrayList(c3166q4.getContext().getPackageManager().queryIntentActivities(new Intent(AbstractC1387m.m2421h(new byte[]{-30, -82, 82, 74, -43, 63, 102, 113, -22, -82, 66, 93, -44, 34, 44, 62, -32, -76, 95, 87, -44, 120, 79, 30, -54, -114}, new byte[]{-125, -64, 54, 56, -70, 86, 2, 95})).addCategory(AbstractC1387m.m2421h(new byte[]{1, 90, -76, 105, -11, 5, -112, 105, 9, 90, -92, 126, -12, 24, -38, 36, 1, 64, -75, 124, -11, 30, -115, 105, 44, 117, -123, 85, -39, 36, -79, 21}, new byte[]{96, 52, -48, 27, -102, 108, -12, 71})), 0));
                arrayList.removeIf(new C1754c(9, c3166q4));
                arrayList.sort(new C1658d(2, c3166q4));
                ArrayList arrayList2 = new ArrayList();
                int size = arrayList.size();
                while (i10 < size) {
                    Object obj = arrayList.get(i10);
                    i10++;
                    arrayList2.add(C1919e.m2999b((ResolveInfo) obj, c3166q4.getContext().getPackageManager()));
                }
                c3166q4.f9182r.post(new RunnableC0873n(c3166q4, arrayList2, arrayList, 13));
                break;
        }
    }
}
