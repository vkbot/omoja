package i9;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlin.text.StringsKt;
import org.apache.commons.io.FilenameUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class d1 {
    public static final g9.e[] a = new g9.e[0];
    public static final e9.b[] b = new e9.b[0];
    public static final Object c = new Object();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final h0 a(String str, e9.b bVar) {
        return new h0(str, new i0(bVar));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final Set b(g9.e eVar) {
        eVar.getClass();
        if (eVar instanceof l) {
            return ((l) eVar).b();
        }
        HashSet hashSet = new HashSet(eVar.d());
        int iD = eVar.d();
        for (int i = 0; i < iD; i++) {
            hashSet.add(eVar.e(i));
        }
        return hashSet;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final g9.e[] c(List list) {
        g9.e[] eVarArr;
        if (list == null || list.isEmpty()) {
            list = null;
        }
        return (list == null || (eVarArr = (g9.e[]) list.toArray(new g9.e[0])) == null) ? a : eVarArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:52:0x00ee  */
    public static final e9.b d(KClass kClass, e9.b... bVarArr) throws IllegalAccessException, InvocationTargetException {
        Object obj;
        e9.b bVar;
        Class<?> cls;
        boolean z;
        Object obj2;
        e9.b bVarF;
        Field field;
        e9.f fVar;
        kClass.getClass();
        Class javaClass = JvmClassMappingKt.getJavaClass(kClass);
        e9.b[] bVarArr2 = (e9.b[]) Arrays.copyOf(bVarArr, bVarArr.length);
        javaClass.getClass();
        if (javaClass.isEnum() && javaClass.getAnnotation(e9.f.class) == null && javaClass.getAnnotation(e9.c.class) == null) {
            Object[] enumConstants = javaClass.getEnumConstants();
            String canonicalName = javaClass.getCanonicalName();
            canonicalName.getClass();
            enumConstants.getClass();
            return new b0(canonicalName, (Enum[]) enumConstants);
        }
        e9.e eVar = null;
        if (javaClass.isInterface()) {
            e9.f fVar2 = (e9.f) javaClass.getAnnotation(e9.f.class);
            e9.e eVar2 = (fVar2 == null || Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(fVar2.with()), Reflection.getOrCreateKotlinClass(e9.e.class))) ? new e9.e(JvmClassMappingKt.getKotlinClass(javaClass)) : null;
            if (eVar2 != null) {
                return eVar2;
            }
        }
        e9.b[] bVarArr3 = (e9.b[]) Arrays.copyOf(bVarArr2, bVarArr2.length);
        try {
            Field declaredField = javaClass.getDeclaredField("Companion");
            declaredField.setAccessible(true);
            obj = declaredField.get(null);
        } catch (Throwable unused) {
            obj = null;
        }
        e9.b bVarF2 = obj == null ? null : f(obj, (e9.b[]) Arrays.copyOf(bVarArr3, bVarArr3.length));
        if (bVarF2 != null) {
            return bVarF2;
        }
        String canonicalName2 = javaClass.getCanonicalName();
        if (canonicalName2 == null || StringsKt.M(canonicalName2, "java.") || StringsKt.M(canonicalName2, "kotlin.")) {
            bVar = null;
        } else {
            Field[] declaredFields = javaClass.getDeclaredFields();
            declaredFields.getClass();
            int length = declaredFields.length;
            Field field2 = null;
            int i = 0;
            boolean z2 = false;
            while (true) {
                if (i >= length) {
                    if (!z2) {
                        break;
                    }
                    break;
                }
                Field field3 = declaredFields[i];
                if (Intrinsics.areEqual(field3.getName(), "INSTANCE") && Intrinsics.areEqual(field3.getType(), javaClass) && Modifier.isStatic(field3.getModifiers())) {
                    if (!z2) {
                        z2 = true;
                        field2 = field3;
                    }
                }
                i++;
                field2 = null;
                break;
            }
            if (field2 == null) {
                bVar = null;
            } else {
                Object obj3 = field2.get(null);
                Method[] methods = javaClass.getMethods();
                methods.getClass();
                int length2 = methods.length;
                Method method = null;
                int i2 = 0;
                boolean z3 = false;
                while (true) {
                    if (i2 >= length2) {
                        if (!z3) {
                            break;
                        }
                        break;
                    }
                    Method method2 = methods[i2];
                    if (Intrinsics.areEqual(method2.getName(), "serializer")) {
                        Class<?>[] parameterTypes = method2.getParameterTypes();
                        parameterTypes.getClass();
                        if (parameterTypes.length == 0 && Intrinsics.areEqual(method2.getReturnType(), e9.b.class)) {
                            if (!z3) {
                                method = method2;
                                z3 = true;
                            }
                        }
                    }
                    i2++;
                    method = null;
                    break;
                }
                if (method == null) {
                    bVar = null;
                } else {
                    Object objInvoke = method.invoke(obj3, null);
                    if (objInvoke instanceof e9.b) {
                        bVar = (e9.b) objInvoke;
                    } else {
                        bVar = null;
                    }
                }
            }
        }
        if (bVar != null) {
            return bVar;
        }
        e9.b[] bVarArr4 = (e9.b[]) Arrays.copyOf(bVarArr2, bVarArr2.length);
        Class<?>[] declaredClasses = javaClass.getDeclaredClasses();
        declaredClasses.getClass();
        int length3 = declaredClasses.length;
        int i3 = 0;
        while (true) {
            if (i3 >= length3) {
                cls = null;
                break;
            }
            cls = declaredClasses[i3];
            if (cls.getAnnotation(w0.class) != null) {
                break;
            }
            i3++;
        }
        if (cls == null) {
            obj2 = null;
            z = true;
        } else {
            try {
                Field declaredField2 = javaClass.getDeclaredField(cls.getSimpleName());
                z = true;
                try {
                    declaredField2.setAccessible(true);
                    obj2 = declaredField2.get(null);
                } catch (Throwable unused2) {
                    obj2 = null;
                }
            } catch (Throwable unused3) {
                z = true;
            }
        }
        if (obj2 == null || (bVarF = f(obj2, (e9.b[]) Arrays.copyOf(bVarArr4, bVarArr4.length))) == null) {
            try {
                Class<?>[] declaredClasses2 = javaClass.getDeclaredClasses();
                declaredClasses2.getClass();
                int length4 = declaredClasses2.length;
                Class<?> cls2 = null;
                int i4 = 0;
                boolean z4 = false;
                while (true) {
                    if (i4 < length4) {
                        Class<?> cls3 = declaredClasses2[i4];
                        if (Intrinsics.areEqual(cls3.getSimpleName(), "$serializer")) {
                            if (!z4) {
                                z4 = z;
                                cls2 = cls3;
                            }
                        }
                        i4++;
                    } else if (!z4) {
                    }
                    cls2 = null;
                    break;
                }
                Object obj4 = (cls2 == null || (field = cls2.getField("INSTANCE")) == null) ? null : field.get(null);
                bVarF = obj4 instanceof e9.b ? (e9.b) obj4 : null;
            } catch (NoSuchFieldException unused4) {
            }
        }
        if (bVarF != null) {
            return bVarF;
        }
        if (javaClass.getAnnotation(e9.c.class) != null || ((fVar = (e9.f) javaClass.getAnnotation(e9.f.class)) != null && Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(fVar.with()), Reflection.getOrCreateKotlinClass(e9.e.class)))) {
            eVar = new e9.e(JvmClassMappingKt.getKotlinClass(javaClass));
        }
        return eVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final int e(g9.e eVar, g9.e[] eVarArr) {
        eVarArr.getClass();
        int iHashCode = (eVar.a().hashCode() * 31) + Arrays.hashCode(eVarArr);
        int iD = eVar.d();
        int i = 1;
        while (true) {
            int iHashCode2 = 0;
            if (!(iD > 0)) {
                break;
            }
            int i2 = iD - 1;
            int i3 = i * 31;
            String strA = eVar.f(eVar.d() - iD).a();
            if (strA != null) {
                iHashCode2 = strA.hashCode();
            }
            i = i3 + iHashCode2;
            iD = i2;
        }
        int iD2 = eVar.d();
        int iHashCode3 = 1;
        while (true) {
            if (!(iD2 > 0)) {
                return (((iHashCode * 31) + i) * 31) + iHashCode3;
            }
            int i4 = iD2 - 1;
            int i5 = iHashCode3 * 31;
            com.bumptech.glide.d kind = eVar.f(eVar.d() - iD2).getKind();
            iHashCode3 = i5 + (kind != null ? kind.hashCode() : 0);
            iD2 = i4;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final e9.b f(Object obj, e9.b... bVarArr) throws IllegalAccessException, InvocationTargetException {
        Class[] clsArr;
        try {
            if (bVarArr.length == 0) {
                clsArr = new Class[0];
            } else {
                int length = bVarArr.length;
                Class[] clsArr2 = new Class[length];
                for (int i = 0; i < length; i++) {
                    clsArr2[i] = e9.b.class;
                }
                clsArr = clsArr2;
            }
            Object objInvoke = obj.getClass().getDeclaredMethod("serializer", (Class[]) Arrays.copyOf(clsArr, clsArr.length)).invoke(obj, Arrays.copyOf(bVarArr, bVarArr.length));
            if (objInvoke instanceof e9.b) {
                return (e9.b) objInvoke;
            }
            return null;
        } catch (NoSuchMethodException unused) {
            return null;
        } catch (InvocationTargetException e) {
            Throwable cause = e.getCause();
            if (cause == null) {
                throw e;
            }
            String message = cause.getMessage();
            if (message == null) {
                message = e.getMessage();
            }
            throw new InvocationTargetException(cause, message);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final KClass g(KType kType) {
        kType.getClass();
        KClass classifier = kType.getClassifier();
        if (classifier instanceof KClass) {
            return classifier;
        }
        if (!(classifier instanceof KTypeParameter)) {
            androidx.navigation.b.t(classifier, "Only KClass supported as classifier, got ");
            return null;
        }
        throw new IllegalArgumentException("Captured type parameter " + classifier + " from generic non-reified function. Such functionality cannot be supported because " + classifier + " is erased, either specify serializer explicitly or make calling function inline with reified " + classifier + FilenameUtils.EXTENSION_SEPARATOR);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final void h(KClass kClass) {
        kClass.getClass();
        String simpleName = kClass.getSimpleName();
        if (simpleName == null) {
            simpleName = "<local class name not available>";
        }
        throw new e9.g(ai.onnxruntime.a.m("Serializer for class '", simpleName, "' is not found.\nPlease ensure that class is marked as '@Serializable' and that the serialization compiler plugin is applied.\n"));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final void i(String str, KClass kClass) {
        String str2;
        kClass.getClass();
        String str3 = "in the polymorphic scope of '" + kClass.getSimpleName() + '\'';
        if (str == null) {
            str2 = "Class discriminator was missing and no default serializers were registered " + str3 + FilenameUtils.EXTENSION_SEPARATOR;
        } else {
            str2 = "Serializer for subclass '" + str + "' is not found " + str3 + ".\nCheck if class with serial name '" + str + "' exists and serializer is registered in a corresponding SerializersModule.\nTo be registered automatically, class '" + str + "' has to be '@Serializable', and the base class '" + kClass.getSimpleName() + "' has to be sealed and '@Serializable'.";
        }
        throw new e9.g(str2);
    }
}
