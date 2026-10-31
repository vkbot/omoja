package p096i9;

import androidx.navigation.serialization.RouteDecoder;
import com.bumptech.glide.AbstractC1030c;
import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.reflect.KClass;
import p055e9.C1509e;
import p055e9.C1511g;
import p055e9.InterfaceC1506b;
import p055e9.InterfaceC1512h;
import p076g9.InterfaceC1633e;
import p086h9.AbstractC1729b;
import p086h9.InterfaceC1730c;
import p086h9.InterfaceC1731d;
import p099j1.C1929i;
import p107j9.C2010a;
import p130l9.C2237i;

/* JADX INFO: renamed from: i9.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC1803b implements InterfaceC1506b {
    /* JADX WARN: Code duplicated, block: B:20:0x0058  */
    @Override // p055e9.InterfaceC1512h
    /* JADX INFO: renamed from: b */
    public final void mo2583b(AbstractC1729b abstractC1729b, Object obj) {
        InterfaceC1512h interfaceC1512h;
        obj.getClass();
        C1509e c1509e = (C1509e) this;
        C2010a c2010a = (C2010a) abstractC1729b.getSerializersModule();
        c2010a.getClass();
        KClass kClass = c1509e.f3696a;
        kClass.getClass();
        if (kClass.isInstance(obj)) {
            Map map = (Map) c2010a.f5492b.get(kClass);
            interfaceC1512h = map != null ? (InterfaceC1506b) map.get(Reflection.getOrCreateKotlinClass(obj.getClass())) : null;
            if (interfaceC1512h == null) {
                interfaceC1512h = null;
            }
            if (interfaceC1512h == null) {
                Object obj2 = c2010a.f5493c.get(kClass);
                Function1 function1 = TypeIntrinsics.isFunctionOfArity(obj2, 1) ? (Function1) obj2 : null;
                if (function1 != null) {
                    interfaceC1512h = (InterfaceC1512h) function1.invoke(obj);
                } else {
                    interfaceC1512h = null;
                }
            }
        } else {
            interfaceC1512h = null;
        }
        if (interfaceC1512h != null) {
            InterfaceC1633e interfaceC1633eMo2581a = c1509e.mo2581a();
            InterfaceC1731d interfaceC1731dBeginStructure = abstractC1729b.beginStructure(interfaceC1633eMo2581a);
            interfaceC1731dBeginStructure.encodeStringElement(c1509e.mo2581a(), 0, interfaceC1512h.mo2581a().mo2717a());
            interfaceC1731dBeginStructure.encodeSerializableElement(c1509e.mo2581a(), 1, interfaceC1512h, obj);
            interfaceC1731dBeginStructure.endStructure(interfaceC1633eMo2581a);
            return;
        }
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(obj.getClass());
        orCreateKotlinClass.getClass();
        String simpleName = orCreateKotlinClass.getSimpleName();
        if (simpleName == null) {
            simpleName = String.valueOf(orCreateKotlinClass);
        }
        AbstractC1813d1.m2923i(simpleName, kClass);
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v2, types: [T, java.lang.String] */
    @Override // p055e9.InterfaceC1505a
    /* JADX INFO: renamed from: c */
    public final Object mo2582c(RouteDecoder routeDecoder) {
        Object objDecodeSerializableElement;
        C1509e c1509e = (C1509e) this;
        InterfaceC1633e interfaceC1633eMo2581a = c1509e.mo2581a();
        InterfaceC1730c interfaceC1730cBeginStructure = routeDecoder.beginStructure(interfaceC1633eMo2581a);
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        if (interfaceC1730cBeginStructure.decodeSequentially()) {
            objDecodeSerializableElement = interfaceC1730cBeginStructure.decodeSerializableElement(c1509e.mo2581a(), 1, AbstractC1030c.m1258j(this, interfaceC1730cBeginStructure, interfaceC1730cBeginStructure.decodeStringElement(c1509e.mo2581a(), 0)), null);
        } else {
            Object objDecodeSerializableElement2 = null;
            while (true) {
                int iDecodeElementIndex = interfaceC1730cBeginStructure.decodeElementIndex(c1509e.mo2581a());
                if (iDecodeElementIndex == -1) {
                    if (objDecodeSerializableElement2 != null) {
                        objDecodeSerializableElement = objDecodeSerializableElement2;
                        break;
                    }
                    C2237i.m3598e((String) objectRef.element, "Polymorphic value has not been read for class ");
                    return null;
                }
                if (iDecodeElementIndex != 0) {
                    T t = objectRef.element;
                    if (iDecodeElementIndex != 1) {
                        StringBuilder sb = new StringBuilder("Invalid index in polymorphic deserialization of ");
                        String str = (String) t;
                        if (str == null) {
                            str = "unknown class";
                        }
                        sb.append(str);
                        sb.append("\n Expected 0, 1 or DECODE_DONE(-1), but found ");
                        sb.append(iDecodeElementIndex);
                        throw new C1511g(sb.toString());
                    }
                    if (t == 0) {
                        C1929i.m3029k("Cannot read polymorphic value before its type token");
                        return null;
                    }
                    objectRef.element = t;
                    objDecodeSerializableElement2 = interfaceC1730cBeginStructure.decodeSerializableElement(c1509e.mo2581a(), iDecodeElementIndex, AbstractC1030c.m1258j(this, interfaceC1730cBeginStructure, (String) t), null);
                } else {
                    objectRef.element = interfaceC1730cBeginStructure.decodeStringElement(c1509e.mo2581a(), iDecodeElementIndex);
                }
            }
        }
        interfaceC1730cBeginStructure.endStructure(interfaceC1633eMo2581a);
        return objDecodeSerializableElement;
    }
}
