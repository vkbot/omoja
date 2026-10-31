package androidx.lifecycle;

import androidx.annotation.Nullable;
import j1.i;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import java.util.Map$Entry;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Deprecated
final class ClassesInfoCache {
    private static final int CALL_TYPE_NO_ARG = 0;
    private static final int CALL_TYPE_PROVIDER = 1;
    private static final int CALL_TYPE_PROVIDER_WITH_EVENT = 2;
    static ClassesInfoCache sInstance = new ClassesInfoCache();
    private final Map<Class<?>, ClassesInfoCache$CallbackInfo> mCallbackMap = new HashMap();
    private final Map<Class<?>, Boolean> mHasLifecycleMethods = new HashMap();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ClassesInfoCache$CallbackInfo createInfo(Class<?> cls, @Nullable Method[] methodArr) {
        int i9;
        ClassesInfoCache$CallbackInfo info;
        Class<?> superclass = cls.getSuperclass();
        HashMap map = new HashMap();
        if (superclass != null && (info = getInfo(superclass)) != null) {
            map.putAll(info.mHandlerToEvent);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map$Entry<ClassesInfoCache$MethodReference, Lifecycle$Event> map$Entry : getInfo(cls2).mHandlerToEvent.entrySet()) {
                verifyAndPutHandler(map, map$Entry.getKey(), map$Entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            methodArr = getDeclaredMethods(cls);
        }
        boolean z8 = false;
        for (Method method : methodArr) {
            OnLifecycleEvent onLifecycleEvent = (OnLifecycleEvent) method.getAnnotation(OnLifecycleEvent.class);
            if (onLifecycleEvent != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i9 = 0;
                } else {
                    if (!LifecycleOwner.class.isAssignableFrom(parameterTypes[0])) {
                        i.k("invalid parameter type. Must be one and instanceof LifecycleOwner");
                        return null;
                    }
                    i9 = 1;
                }
                Lifecycle$Event lifecycle$EventValue = onLifecycleEvent.value();
                if (parameterTypes.length > 1) {
                    if (!Lifecycle$Event.class.isAssignableFrom(parameterTypes[1])) {
                        i.k("invalid parameter type. second arg must be an event");
                        return null;
                    }
                    if (lifecycle$EventValue != Lifecycle$Event.ON_ANY) {
                        i.k("Second arg is supported only for ON_ANY value");
                        return null;
                    }
                    i9 = 2;
                }
                if (parameterTypes.length > 2) {
                    i.k("cannot have more than 2 params");
                    return null;
                }
                verifyAndPutHandler(map, new ClassesInfoCache$MethodReference(i9, method), lifecycle$EventValue, cls);
                z8 = true;
            }
        }
        ClassesInfoCache$CallbackInfo classesInfoCache$CallbackInfo = new ClassesInfoCache$CallbackInfo(map);
        this.mCallbackMap.put(cls, classesInfoCache$CallbackInfo);
        this.mHasLifecycleMethods.put(cls, Boolean.valueOf(z8));
        return classesInfoCache$CallbackInfo;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Method[] getDeclaredMethods(Class<?> cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e) {
            throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void verifyAndPutHandler(Map<ClassesInfoCache$MethodReference, Lifecycle$Event> map, ClassesInfoCache$MethodReference classesInfoCache$MethodReference, Lifecycle$Event lifecycle$Event, Class<?> cls) {
        Lifecycle$Event lifecycle$Event2 = map.get(classesInfoCache$MethodReference);
        if (lifecycle$Event2 == null || lifecycle$Event == lifecycle$Event2) {
            if (lifecycle$Event2 == null) {
                map.put(classesInfoCache$MethodReference, lifecycle$Event);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Method " + classesInfoCache$MethodReference.mMethod.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + lifecycle$Event2 + ", new value " + lifecycle$Event);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ClassesInfoCache$CallbackInfo getInfo(Class<?> cls) {
        ClassesInfoCache$CallbackInfo classesInfoCache$CallbackInfo = this.mCallbackMap.get(cls);
        return classesInfoCache$CallbackInfo != null ? classesInfoCache$CallbackInfo : createInfo(cls, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasLifecycleMethods(Class<?> cls) {
        Boolean bool = this.mHasLifecycleMethods.get(cls);
        if (bool != null) {
            return bool.booleanValue();
        }
        Method[] declaredMethods = getDeclaredMethods(cls);
        for (Method method : declaredMethods) {
            if (((OnLifecycleEvent) method.getAnnotation(OnLifecycleEvent.class)) != null) {
                createInfo(cls, declaredMethods);
                return true;
            }
        }
        this.mHasLifecycleMethods.put(cls, Boolean.FALSE);
        return false;
    }
}
