package x0;

import android.graphics.Region;
import android.graphics.Region$Op;
import android.view.View;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class a implements InvocationHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c f5957a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Method f5958b;
    public final /* synthetic */ Field c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(c cVar, Method method, Field field) {
        this.f5957a = cVar;
        this.f5958b = method;
        this.c = field;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, Object[] objArr) throws IllegalAccessException, InvocationTargetException {
        if (!method.getName().equals(e0.m.h(new byte[]{-56, 91, -83, 20, 74, 78, 13, -115, -62, 124, ByteCompanionObject.MIN_VALUE, 15, 66, 76, 22, -104, -53, 124, ByteCompanionObject.MIN_VALUE, 8, 66, 74, 11}, new byte[]{-89, 53, -18, 123, 39, 62, 120, -7}))) {
            if (method.getName().equals(e0.m.h(new byte[]{-127, 64, 18, 66, 54, 91}, new byte[]{-28, 49, 103, 35, 90, 40, 7, -67}))) {
                return Boolean.valueOf(obj == objArr[0]);
            }
            if (method.getName().equals(e0.m.h(new byte[]{-47, 48, -100, -63, -15, 70, -83, -93}, new byte[]{-71, 81, -17, -87, -78, 41, -55, -58}))) {
                return Integer.valueOf(System.identityHashCode(obj));
            }
            if (method.getName().equals(e0.m.h(new byte[]{19, -127, -74, 95, -12, 0, 124, -76}, new byte[]{103, -18, -27, 43, -122, 105, 18, -45}))) {
                return e0.m.h(new byte[]{-42, -119, -103, 0, 88, 20, -39, -14, -12, -125, -107, 53, 88, 7, -28, -14, -17}, new byte[]{-127, -32, -3, 103, Base64.padSymbol, 96, -115, -99});
            }
            return null;
        }
        this.f5958b.invoke(objArr[0], 3);
        Region region = (Region) this.c.get(objArr[0]);
        Region region2 = new Region();
        c cVar = this.f5957a;
        o oVar = cVar.c;
        if (oVar.f6009j != 100) {
            int[] iArr = new int[2];
            if (!cVar.e || oVar.f6010k >= 100) {
                for (int i9 = 0; i9 < cVar.getChildCount(); i9++) {
                    View childAt = cVar.getChildAt(i9);
                    if (childAt.getVisibility() == 0) {
                        childAt.getLocationInWindow(iArr);
                        int i10 = iArr[0];
                        region2.op(i10, iArr[1], Math.round(childAt.getScaleX() * childAt.getWidth()) + i10, iArr[1] + Math.round(childAt.getScaleY() * childAt.getHeight()), Region$Op.UNION);
                    }
                }
            } else {
                cVar.getLocationInWindow(iArr);
                int i11 = iArr[0];
                region2.set(i11, iArr[1], cVar.getWidth() + i11, cVar.getHeight() + iArr[1]);
            }
        }
        region.set(region2);
        return null;
    }
}
