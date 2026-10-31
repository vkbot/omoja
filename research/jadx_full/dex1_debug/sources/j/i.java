package j;

import android.graphics.Bitmap;
import android.graphics.Bitmap$CompressFormat;
import java.io.ByteArrayOutputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i implements v.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2793b;
    public Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i(int i9) {
        switch (i9) {
            case 5:
                this.c = Bitmap$CompressFormat.JPEG;
                this.f2793b = 100;
                break;
            default:
                this.c = new int[10];
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v.a
    public d0 a(d0 d0Var, h.h hVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ((Bitmap) d0Var.get()).compress((Bitmap$CompressFormat) this.c, this.f2793b, byteArrayOutputStream);
        d0Var.recycle();
        return new q.a0(byteArrayOutputStream.toByteArray());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean b(int i9) {
        return ((1 << i9) & this.f2793b) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void c(int i9, int i10) {
        int[] iArr = (int[]) this.c;
        if (i9 >= iArr.length) {
            return;
        }
        this.f2793b = (1 << i9) | this.f2793b;
        iArr[i9] = i10;
    }

    public /* synthetic */ i(Comparable comparable, int i9) {
        this.c = comparable;
        this.f2793b = i9;
    }

    public i(int i9, c6.a aVar) {
        this.f2793b = i9;
        this.c = new c6.a[]{aVar};
    }

    public i(int i9, c6.a... aVarArr) {
        this.f2793b = i9;
        this.c = aVarArr;
    }
}
