package androidx.lifecycle;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Deprecated
public final class ClassesInfoCache$MethodReference {
    final int mCallType;
    final Method mMethod;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ClassesInfoCache$MethodReference(int i9, Method method) {
        this.mCallType = i9;
        this.mMethod = method;
        method.setAccessible(true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClassesInfoCache$MethodReference)) {
            return false;
        }
        ClassesInfoCache$MethodReference classesInfoCache$MethodReference = (ClassesInfoCache$MethodReference) obj;
        return this.mCallType == classesInfoCache$MethodReference.mCallType && this.mMethod.getName().equals(classesInfoCache$MethodReference.mMethod.getName());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        return this.mMethod.getName().hashCode() + (this.mCallType * 31);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void invokeCallback(LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event, Object obj) {
        try {
            int i9 = this.mCallType;
            if (i9 == 0) {
                this.mMethod.invoke(obj, null);
            } else if (i9 == 1) {
                this.mMethod.invoke(obj, lifecycleOwner);
            } else {
                if (i9 != 2) {
                    return;
                }
                this.mMethod.invoke(obj, lifecycleOwner, lifecycle$Event);
            }
        } catch (IllegalAccessException e) {
            n0.b.w(e);
        } catch (InvocationTargetException e6) {
            ai.onnxruntime.b.o("Failed to call observer method", e6.getCause());
        }
    }
}
