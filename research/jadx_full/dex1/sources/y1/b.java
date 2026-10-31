package y1;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import java.util.Observable;
import w1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class b extends Observable {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f6110f = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Paint f6111a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f6112b;
    public i c;
    public float d;
    public int e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(Context context) {
        Paint paint = new Paint(1);
        this.f6111a = paint;
        this.f6112b = context.getResources().getDisplayMetrics().density;
        this.e = -14575885;
        paint.setColor(-14575885);
    }

    public abstract void a(Canvas canvas);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float b() {
        return d();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float c() {
        i iVar = this.c;
        if (iVar == null) {
            return 0.0f;
        }
        iVar.getClass();
        return iVar.getSize() / 2.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float d() {
        i iVar = this.c;
        if (iVar == null) {
            return 0.0f;
        }
        iVar.getClass();
        return iVar.getSize() / 2.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float e() {
        i iVar = this.c;
        if (iVar == null) {
            return 0.0f;
        }
        iVar.getClass();
        return iVar.getPadding();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float f() {
        i iVar = this.c;
        if (iVar != null) {
            return iVar.getSize() - (iVar.getPadding() * 2.0f);
        }
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g(int i9) {
        this.e = i9;
        if (this.c != null) {
            i();
        }
        setChanged();
        notifyObservers(null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void h(float f8) {
        this.d = f8;
        if (this.c != null) {
            i();
        }
        setChanged();
        notifyObservers(null);
    }

    public abstract void i();
}
