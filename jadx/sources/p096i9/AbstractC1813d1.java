package p096i9;

import ai.onnxruntime.AbstractC0074a;
import androidx.navigation.C0674b;
import com.bumptech.glide.AbstractC1031d;
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
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlin.text.StringsKt__StringsJVMKt;
import org.apache.commons.p161io.FilenameUtils;
import p055e9.C1509e;
import p055e9.C1511g;
import p055e9.InterfaceC1506b;
import p055e9.InterfaceC1507c;
import p055e9.InterfaceC1510f;
import p076g9.InterfaceC1633e;

/* JADX INFO: renamed from: i9.d1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC1813d1 {

    /* JADX INFO: renamed from: a */
    public static final InterfaceC1633e[] f4740a = new InterfaceC1633e[0];

    /* JADX INFO: renamed from: b */
    public static final InterfaceC1506b[] f4741b = new InterfaceC1506b[0];

    /* JADX INFO: renamed from: c */
    public static final Object f4742c = new Object();

    /* JADX INFO: renamed from: a */
    public static final C1826h0 m2915a(String str, InterfaceC1506b interfaceC1506b) {
        return new C1826h0(str, new C1829i0(interfaceC1506b));
    }

    /* JADX INFO: renamed from: b */
    public static final Set m2916b(InterfaceC1633e interfaceC1633e) {
        interfaceC1633e.getClass();
        if (interfaceC1633e instanceof InterfaceC1837l) {
            return ((InterfaceC1837l) interfaceC1633e).mo2723b();
        }
        HashSet hashSet = new HashSet(interfaceC1633e.mo2719d());
        int iMo2719d = interfaceC1633e.mo2719d();
        for (int i10 = 0; i10 < iMo2719d; i10++) {
            hashSet.add(interfaceC1633e.mo2720e(i10));
        }
        return hashSet;
    }

    /* JADX INFO: renamed from: c */
    public static final InterfaceC1633e[] m2917c(List list) {
        InterfaceC1633e[] interfaceC1633eArr;
        if (list == null || list.isEmpty()) {
            list = null;
        }
        return (list == null || (interfaceC1633eArr = (InterfaceC1633e[]) list.toArray(new InterfaceC1633e[0])) == null) ? f4740a : interfaceC1633eArr;
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00ee  */
    /* JADX INFO: renamed from: d */
    public static final InterfaceC1506b m2918d(KClass kClass, InterfaceC1506b... interfaceC1506bArr) {
        Object obj;
        InterfaceC1506b interfaceC1506b;
        Class<?> cls;
        boolean z9;
        Object obj2;
        InterfaceC1506b interfaceC1506bM2920f;
        Field field;
        InterfaceC1510f interfaceC1510f;
        kClass.getClass();
        Class javaClass = JvmClassMappingKt.getJavaClass(kClass);
        InterfaceC1506b[] interfaceC1506bArr2 = (InterfaceC1506b[]) Arrays.copyOf(interfaceC1506bArr, interfaceC1506bArr.length);
        javaClass.getClass();
        if (javaClass.isEnum() && javaClass.getAnnotation(InterfaceC1510f.class) == null && javaClass.getAnnotation(InterfaceC1507c.class) == null) {
            Object[] enumConstants = javaClass.getEnumConstants();
            String canonicalName = javaClass.getCanonicalName();
            canonicalName.getClass();
            enumConstants.getClass();
            return new C1804b0(canonicalName, (Enum[]) enumConstants);
        }
        C1509e c1509e = null;
        if (javaClass.isInterface()) {
            InterfaceC1510f interfaceC1510f2 = (InterfaceC1510f) javaClass.getAnnotation(InterfaceC1510f.class);
            C1509e c1509e2 = (interfaceC1510f2 == null || Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(interfaceC1510f2.with()), Reflection.getOrCreateKotlinClass(C1509e.class))) ? new C1509e(JvmClassMappingKt.getKotlinClass(javaClass)) : null;
            if (c1509e2 != null) {
                return c1509e2;
            }
        }
        InterfaceC1506b[] interfaceC1506bArr3 = (InterfaceC1506b[]) Arrays.copyOf(interfaceC1506bArr2, interfaceC1506bArr2.length);
        try {
            Field declaredField = javaClass.getDeclaredField("Companion");
            declaredField.setAccessible(true);
            obj = declaredField.get(null);
        } catch (Throwable unused) {
            obj = null;
        }
        InterfaceC1506b interfaceC1506bM2920f2 = obj == null ? null : m2920f(obj, (InterfaceC1506b[]) Arrays.copyOf(interfaceC1506bArr3, interfaceC1506bArr3.length));
        if (interfaceC1506bM2920f2 != null) {
            return interfaceC1506bM2920f2;
        }
        String canonicalName2 = javaClass.getCanonicalName();
        if (canonicalName2 == null || StringsKt__StringsJVMKt.startsWith$default(canonicalName2, "java.", false, 2, null) || StringsKt__StringsJVMKt.startsWith$default(canonicalName2, "kotlin.", false, 2, null)) {
            interfaceC1506b = null;
        } else {
            Field[] declaredFields = javaClass.getDeclaredFields();
            declaredFields.getClass();
            int length = declaredFields.length;
            Field field2 = null;
            int i10 = 0;
            boolean z10 = false;
            while (true) {
                if (i10 >= length) {
                    if (!z10) {
                        break;
                    }
                    break;
                }
                Field field3 = declaredFields[i10];
                if (Intrinsics.areEqual(field3.getName(), "INSTANCE") && Intrinsics.areEqual(field3.getType(), javaClass) && Modifier.isStatic(field3.getModifiers())) {
                    if (!z10) {
                        z10 = true;
                        field2 = field3;
                    }
                }
                i10++;
                field2 = null;
                break;
            }
            if (field2 == null) {
                interfaceC1506b = null;
            } else {
                Object obj3 = field2.get(null);
                Method[] methods = javaClass.getMethods();
                methods.getClass();
                int length2 = methods.length;
                Method method = null;
                int i11 = 0;
                boolean z11 = false;
                while (true) {
                    if (i11 >= length2) {
                        if (!z11) {
                            break;
                        }
                        break;
                    }
                    Method method2 = methods[i11];
                    if (Intrinsics.areEqual(method2.getName(), "serializer")) {
                        Class<?>[] parameterTypes = method2.getParameterTypes();
                        parameterTypes.getClass();
                        if (parameterTypes.length == 0 && Intrinsics.areEqual(method2.getReturnType(), InterfaceC1506b.class)) {
                            if (!z11) {
                                method = method2;
                                z11 = true;
                            }
                        }
                    }
                    i11++;
                    method = null;
                    break;
                }
                if (method == null) {
                    interfaceC1506b = null;
                } else {
                    Object objInvoke = method.invoke(obj3, null);
                    if (objInvoke instanceof InterfaceC1506b) {
                        interfaceC1506b = (InterfaceC1506b) objInvoke;
                    } else {
                        interfaceC1506b = null;
                    }
                }
            }
        }
        if (interfaceC1506b != null) {
            return interfaceC1506b;
        }
        InterfaceC1506b[] interfaceC1506bArr4 = (InterfaceC1506b[]) Arrays.copyOf(interfaceC1506bArr2, interfaceC1506bArr2.length);
        Class<?>[] declaredClasses = javaClass.getDeclaredClasses();
        declaredClasses.getClass();
        int length3 = declaredClasses.length;
        int i12 = 0;
        while (true) {
            if (i12 >= length3) {
                cls = null;
                break;
            }
            cls = declaredClasses[i12];
            if (cls.getAnnotation(InterfaceC1871w0.class) != null) {
                break;
            }
            i12++;
        }
        if (cls == null) {
            obj2 = null;
            z9 = true;
        } else {
            try {
                Field declaredField2 = javaClass.getDeclaredField(cls.getSimpleName());
                z9 = true;
                try {
                    declaredField2.setAccessible(true);
                    obj2 = declaredField2.get(null);
                } catch (Throwable unused2) {
                    obj2 = null;
                }
            } catch (Throwable unused3) {
                z9 = true;
            }
        }
        if (obj2 == null || (interfaceC1506bM2920f = m2920f(obj2, (InterfaceC1506b[]) Arrays.copyOf(interfaceC1506bArr4, interfaceC1506bArr4.length))) == null) {
            try {
                Class<?>[] declaredClasses2 = javaClass.getDeclaredClasses();
                declaredClasses2.getClass();
                int length4 = declaredClasses2.length;
                Class<?> cls2 = null;
                int i13 = 0;
                boolean z12 = false;
                while (true) {
                    if (i13 < length4) {
                        Class<?> cls3 = declaredClasses2[i13];
                        if (Intrinsics.areEqual(cls3.getSimpleName(), "$serializer")) {
                            if (!z12) {
                                z12 = z9;
                                cls2 = cls3;
                            }
                        }
                        i13++;
                    } else if (!z12) {
                    }
                    cls2 = null;
                    break;
                }
                Object obj4 = (cls2 == null || (field = cls2.getField("INSTANCE")) == null) ? null : field.get(null);
                interfaceC1506bM2920f = obj4 instanceof InterfaceC1506b ? (InterfaceC1506b) obj4 : null;
            } catch (NoSuchFieldException unused4) {
            }
        }
        if (interfaceC1506bM2920f != null) {
            return interfaceC1506bM2920f;
        }
        if (javaClass.getAnnotation(InterfaceC1507c.class) != null || ((interfaceC1510f = (InterfaceC1510f) javaClass.getAnnotation(InterfaceC1510f.class)) != null && Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(interfaceC1510f.with()), Reflection.getOrCreateKotlinClass(C1509e.class)))) {
            c1509e = new C1509e(JvmClassMappingKt.getKotlinClass(javaClass));
        }
        return c1509e;
    }

    /* JADX INFO: renamed from: e */
    public static final int m2919e(InterfaceC1633e interfaceC1633e, InterfaceC1633e[] interfaceC1633eArr) {
        interfaceC1633eArr.getClass();
        int iHashCode = (interfaceC1633e.mo2717a().hashCode() * 31) + Arrays.hashCode(interfaceC1633eArr);
        int iMo2719d = interfaceC1633e.mo2719d();
        int i10 = 1;
        while (true) {
            int iHashCode2 = 0;
            if (!(iMo2719d > 0)) {
                break;
            }
            int i11 = iMo2719d - 1;
            int i12 = i10 * 31;
            String strMo2717a = interfaceC1633e.mo2721f(interfaceC1633e.mo2719d() - iMo2719d).mo2717a();
            if (strMo2717a != null) {
                iHashCode2 = strMo2717a.hashCode();
            }
            i10 = i12 + iHashCode2;
            iMo2719d = i11;
        }
        int iMo2719d2 = interfaceC1633e.mo2719d();
        int iHashCode3 = 1;
        while (true) {
            if (!(iMo2719d2 > 0)) {
                return (((iHashCode * 31) + i10) * 31) + iHashCode3;
            }
            int i13 = iMo2719d2 - 1;
            int i14 = iHashCode3 * 31;
            AbstractC1031d kind = interfaceC1633e.mo2721f(interfaceC1633e.mo2719d() - iMo2719d2).getKind();
            iHashCode3 = i14 + (kind != null ? kind.hashCode() : 0);
            iMo2719d2 = i13;
        }
    }

    /* JADX INFO: renamed from: f */
    public static final InterfaceC1506b m2920f(Object obj, InterfaceC1506b... interfaceC1506bArr) throws IllegalAccessException, InvocationTargetException {
        Class[] clsArr;
        try {
            if (interfaceC1506bArr.length == 0) {
                clsArr = new Class[0];
            } else {
                int length = interfaceC1506bArr.length;
                Class[] clsArr2 = new Class[length];
                for (int i10 = 0; i10 < length; i10++) {
                    clsArr2[i10] = InterfaceC1506b.class;
                }
                clsArr = clsArr2;
            }
            Object objInvoke = obj.getClass().getDeclaredMethod("serializer", (Class[]) Arrays.copyOf(clsArr, clsArr.length)).invoke(obj, Arrays.copyOf(interfaceC1506bArr, interfaceC1506bArr.length));
            if (objInvoke instanceof InterfaceC1506b) {
                return (InterfaceC1506b) objInvoke;
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

    /* JADX INFO: renamed from: g */
    public static final KClass m2921g(KType kType) {
        kType.getClass();
        KClassifier classifier = kType.getClassifier();
        if (classifier instanceof KClass) {
            return (KClass) classifier;
        }
        if (!(classifier instanceof KTypeParameter)) {
            C0674b.m853t(classifier, "Only KClass supported as classifier, got ");
            return null;
        }
        throw new IllegalArgumentException("Captured type parameter " + classifier + " from generic non-reified function. Such functionality cannot be supported because " + classifier + " is erased, either specify serializer explicitly or make calling function inline with reified " + classifier + FilenameUtils.EXTENSION_SEPARATOR);
    }

    /* JADX INFO: renamed from: h */
    public static final void m2922h(KClass kClass) {
        kClass.getClass();
        String simpleName = kClass.getSimpleName();
        if (simpleName == null) {
            simpleName = "<local class name not available>";
        }
        throw new C1511g(AbstractC0074a.m162m("Serializer for class '", simpleName, "' is not found.\nPlease ensure that class is marked as '@Serializable' and that the serialization compiler plugin is applied.\n"));
    }

    /* JADX INFO: renamed from: i */
    public static final void m2923i(String str, KClass kClass) {
        String str2;
        kClass.getClass();
        String str3 = "in the polymorphic scope of '" + kClass.getSimpleName() + '\'';
        if (str == null) {
            str2 = "Class discriminator was missing and no default serializers were registered " + str3 + FilenameUtils.EXTENSION_SEPARATOR;
        } else {
            str2 = "Serializer for subclass '" + str + "' is not found " + str3 + ".\nCheck if class with serial name '" + str + "' exists and serializer is registered in a corresponding SerializersModule.\nTo be registered automatically, class '" + str + "' has to be '@Serializable', and the base class '" + kClass.getSimpleName() + "' has to be sealed and '@Serializable'.";
        }
        throw new C1511g(str2);
    }
}
