package com.mega.nexus.util;

import android.os.RemoteException;
import android.util.Log;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;

/* JADX INFO: loaded from: classes2.dex */
public class ReflectionHelpers {
    private static final String TAG = "ReflectionHelpers";

    public static Object callInstanceMethod(Class<?> cls, Object obj, String str, ClassParameter<?>... classParameterArr) {
        try {
            Class<?>[] classes = ClassParameter.getClasses(classParameterArr);
            Object[] values = ClassParameter.getValues(classParameterArr);
            Method declaredMethod = cls.getDeclaredMethod(str, classes);
            declaredMethod.setAccessible(true);
            return declaredMethod.invoke(obj, values);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            Log.e(TAG, "Failed to call method " + str + " of " + cls, e);
            return null;
        }
    }

    public static Object callInstanceMethod(String str, Object obj, String str2, ClassParameter<?>... classParameterArr) {
        if (obj == null) {
            return null;
        }
        try {
            Class<?> cls = Class.forName(str);
            Class<?>[] classes = ClassParameter.getClasses(classParameterArr);
            Object[] values = ClassParameter.getValues(classParameterArr);
            Method declaredMethod = cls.getDeclaredMethod(str2, classes);
            declaredMethod.setAccessible(true);
            return declaredMethod.invoke(obj, values);
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            Log.e(TAG, "Failed to call method " + str2 + " of " + str, e);
            return null;
        }
    }

    public static void callInstanceMethodWithException(String str, Object obj, String str2, ClassParameter<?>... classParameterArr) throws RemoteException {
        try {
            Class<?> cls = Class.forName(str);
            Class<?>[] classes = ClassParameter.getClasses(classParameterArr);
            Object[] values = ClassParameter.getValues(classParameterArr);
            Method declaredMethod = cls.getDeclaredMethod(str2, classes);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(obj, values);
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            Log.e(TAG, "Failed to call method " + str2 + " of " + str, e);
            throw new RemoteException(e.getMessage());
        }
    }

    public static <R> R callStaticMethod(Class<?> cls, String str, ClassParameter<?>... classParameterArr) {
        try {
            Class<?>[] classes = ClassParameter.getClasses(classParameterArr);
            Object[] values = ClassParameter.getValues(classParameterArr);
            Method declaredMethod = cls.getDeclaredMethod(str, classes);
            declaredMethod.setAccessible(true);
            if (!Modifier.isStatic(declaredMethod.getModifiers())) {
                throw new IllegalArgumentException(declaredMethod + " is not static");
            }
            return (R) declaredMethod.invoke(null, values);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            Log.e(TAG, "Failed to invoke method " + str + " of " + cls, e);
            return null;
        }
    }

    public static <R> R callStaticMethod(String str, String str2, ClassParameter<?>... classParameterArr) {
        try {
            Class<?>[] classes = ClassParameter.getClasses(classParameterArr);
            Object[] values = ClassParameter.getValues(classParameterArr);
            Method declaredMethod = Class.forName(str).getDeclaredMethod(str2, classes);
            declaredMethod.setAccessible(true);
            if (!Modifier.isStatic(declaredMethod.getModifiers())) {
                throw new IllegalArgumentException(declaredMethod + " is not static");
            }
            return (R) declaredMethod.invoke(null, values);
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            Log.e(TAG, "Failed to invoke method " + str2 + " of " + str, e);
            return null;
        }
    }

    public static <R> R getStaticField(Class<?> cls, String str) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            return (R) declaredField.get(null);
        } catch (IllegalAccessException | NoSuchFieldException e) {
            Log.e(TAG, "Failed to get value of static filed " + str, e);
            return null;
        }
    }

    public static <R> R getInstanceFiled(String str, Object obj, String str2) {
        try {
            Field declaredField = Class.forName(str).getDeclaredField(str2);
            declaredField.setAccessible(true);
            return (R) declaredField.get(obj);
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e) {
            Log.e(TAG, "Failed to get value of instance field " + str2, e);
            return null;
        }
    }

    public static void setInstanceField(Class<?> cls, Object obj, String str, Object obj2) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            declaredField.set(obj, obj2);
        } catch (IllegalAccessException | NoSuchFieldException e) {
            Log.e(TAG, "Failed to set value of instance field " + str, e);
        }
    }

    public static void setInstanceField(String str, Object obj, String str2, Object obj2) {
        try {
            Field declaredField = Class.forName(str).getDeclaredField(str2);
            declaredField.setAccessible(true);
            declaredField.set(obj, obj2);
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e) {
            Log.e(TAG, "Failed to set value of instance field " + str2, e);
        }
    }

    public static <T> T createPassThroughProxy(Class<T> cls, final T t, final Object obj) {
        final Class<?> cls2 = obj.getClass();
        return (T) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: com.mega.nexus.util.ReflectionHelpers$$ExternalSyntheticLambda0
            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj2, Method method, Object[] objArr) {
                return ReflectionHelpers.lambda$createPassThroughProxy$0(cls2, obj, t, obj2, method, objArr);
            }
        });
    }

    static /* synthetic */ Object lambda$createPassThroughProxy$0(Class cls, Object obj, Object obj2, Object obj3, Method method, Object[] objArr) throws Throwable {
        try {
            Method method2 = cls.getMethod(method.getName(), method.getParameterTypes());
            method2.setAccessible(true);
            method2.invoke(obj, objArr);
        } catch (NoSuchMethodException unused) {
        }
        return method.invoke(obj2, objArr);
    }

    public static <T> T newInstance(Class<T> cls) {
        try {
            return cls.newInstance();
        } catch (IllegalAccessException | InstantiationException e) {
            Log.e(TAG, "Failed to call new instance " + cls, e);
            return null;
        }
    }

    public static <T> T newInstance(String str) {
        try {
            return (T) Class.forName(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e) {
            Log.e(TAG, "Failed to call new instance " + str, e);
            return null;
        }
    }

    public static Object newInnerClassInstance(Class<?> cls, String str) {
        Class<?> cls2;
        Class<?>[] declaredClasses = cls.getDeclaredClasses();
        if (declaredClasses.length <= 0 || (cls2 = declaredClasses[0]) == null || !cls2.getName().contains(str)) {
            return null;
        }
        try {
            Constructor<?> declaredConstructor = cls2.getDeclaredConstructor(new Class[0]);
            declaredConstructor.setAccessible(true);
            return declaredConstructor.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            Log.e(TAG, "Failed to create new inner class instance " + str + " of " + cls, e);
            return null;
        }
    }

    public static class ClassParameter<V> {
        public final Class<? extends V> clazz;
        public final V val;

        public ClassParameter(Class<? extends V> cls, V v) {
            this.clazz = cls;
            this.val = v;
        }

        public static <V> ClassParameter<V> from(Class<? extends V> cls, V v) {
            return new ClassParameter<>(cls, v);
        }

        public static Class<?>[] getClasses(ClassParameter<?>... classParameterArr) {
            Class<?>[] clsArr = new Class[classParameterArr.length];
            for (int i = 0; i < classParameterArr.length; i++) {
                clsArr[i] = classParameterArr[i].clazz;
            }
            return clsArr;
        }

        public static Object[] getValues(ClassParameter<?>... classParameterArr) {
            Object[] objArr = new Object[classParameterArr.length];
            for (int i = 0; i < classParameterArr.length; i++) {
                objArr[i] = classParameterArr[i].val;
            }
            return objArr;
        }
    }

    public static class StringParameter<V> {
        public final String className;
        public final V val;

        public StringParameter(String str, V v) {
            this.className = str;
            this.val = v;
        }

        public static <V> StringParameter<V> from(String str, V v) {
            return new StringParameter<>(str, v);
        }
    }
}
