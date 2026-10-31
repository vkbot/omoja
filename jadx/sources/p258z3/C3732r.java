package p258z3;

import android.graphics.Canvas;
import android.graphics.Matrix;
import java.util.ArrayList;
import p248y3.C3644a;

/* JADX INFO: renamed from: z3.r */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3732r extends AbstractC3738x {

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ ArrayList f11111c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Matrix f11112d;

    public C3732r(ArrayList arrayList, Matrix matrix) {
        this.f11111c = arrayList;
        this.f11112d = matrix;
    }

    @Override // p258z3.AbstractC3738x
    /* JADX INFO: renamed from: a */
    public final void mo5966a(Matrix matrix, C3644a c3644a, int i10, Canvas canvas) {
        ArrayList arrayList = this.f11111c;
        int size = arrayList.size();
        int i11 = 0;
        while (i11 < size) {
            Object obj = arrayList.get(i11);
            i11++;
            ((AbstractC3738x) obj).mo5966a(this.f11112d, c3644a, i10, canvas);
        }
    }
}
