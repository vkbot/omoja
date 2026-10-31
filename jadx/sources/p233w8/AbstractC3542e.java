package p233w8;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import java.lang.reflect.InvocationTargetException;
import kotlin.Result;
import kotlin.ResultKt;

/* JADX INFO: renamed from: w8.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC3542e {
    private static volatile Choreographer choreographer;

    static {
        Object objM6088constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM6088constructorimpl = Result.m6088constructorimpl(new C3540c(m5653a(Looper.getMainLooper()), false));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM6088constructorimpl = Result.m6088constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m6094isFailureimpl(objM6088constructorimpl)) {
            objM6088constructorimpl = null;
        }
    }

    /* JADX INFO: renamed from: a */
    public static final Handler m5653a(Looper looper) throws IllegalAccessException, InvocationTargetException {
        if (Build.VERSION.SDK_INT < 28) {
            try {
                return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
            } catch (NoSuchMethodException unused) {
                return new Handler(looper);
            }
        }
        Object objInvoke = Handler.class.getDeclaredMethod("createAsync", Looper.class).invoke(null, looper);
        objInvoke.getClass();
        return (Handler) objInvoke;
    }
}
