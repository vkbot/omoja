package i9;

import androidx.navigation.serialization.RouteDecoder;
import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class b implements e9.b {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:20:0x0058  */
    @Override // e9.h
    public final void b(h9.b bVar, Object obj) {
        e9.h hVar;
        obj.getClass();
        e9.e eVar = (e9.e) this;
        j9.a aVar = (j9.a) bVar.getSerializersModule();
        aVar.getClass();
        KClass kClass = eVar.a;
        kClass.getClass();
        if (kClass.isInstance(obj)) {
            Map map = (Map) aVar.b.get(kClass);
            hVar = map != null ? (e9.b) map.get(Reflection.getOrCreateKotlinClass(obj.getClass())) : null;
            if (hVar == null) {
                hVar = null;
            }
            if (hVar == null) {
                Object obj2 = aVar.c.get(kClass);
                Function1 function1 = TypeIntrinsics.isFunctionOfArity(obj2, 1) ? (Function1) obj2 : null;
                if (function1 != null) {
                    hVar = (e9.h) function1.invoke(obj);
                } else {
                    hVar = null;
                }
            }
        } else {
            hVar = null;
        }
        if (hVar != null) {
            g9.e eVarA = eVar.a();
            h9.d dVarBeginStructure = bVar.beginStructure(eVarA);
            dVarBeginStructure.encodeStringElement(eVar.a(), 0, hVar.a().a());
            dVarBeginStructure.encodeSerializableElement(eVar.a(), 1, hVar, obj);
            dVarBeginStructure.endStructure(eVarA);
            return;
        }
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(obj.getClass());
        orCreateKotlinClass.getClass();
        String simpleName = orCreateKotlinClass.getSimpleName();
        if (simpleName == null) {
            simpleName = String.valueOf(orCreateKotlinClass);
        }
        d1.i(simpleName, kClass);
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e9.a
    public final Object c(RouteDecoder routeDecoder) {
        Object objDecodeSerializableElement;
        e9.e eVar = (e9.e) this;
        g9.e eVarA = eVar.a();
        h9.c cVarBeginStructure = routeDecoder.beginStructure(eVarA);
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        if (cVarBeginStructure.decodeSequentially()) {
            objDecodeSerializableElement = cVarBeginStructure.decodeSerializableElement(eVar.a(), 1, com.bumptech.glide.c.j(this, cVarBeginStructure, cVarBeginStructure.decodeStringElement(eVar.a(), 0)), null);
        } else {
            Object objDecodeSerializableElement2 = null;
            while (true) {
                int iDecodeElementIndex = cVarBeginStructure.decodeElementIndex(eVar.a());
                if (iDecodeElementIndex == -1) {
                    if (objDecodeSerializableElement2 != null) {
                        objDecodeSerializableElement = objDecodeSerializableElement2;
                        break;
                    }
                    l9.i.e((String) ref$ObjectRef.element, "Polymorphic value has not been read for class ");
                    return null;
                }
                if (iDecodeElementIndex != 0) {
                    Object obj = ref$ObjectRef.element;
                    if (iDecodeElementIndex != 1) {
                        StringBuilder sb = new StringBuilder("Invalid index in polymorphic deserialization of ");
                        String str = (String) obj;
                        if (str == null) {
                            str = "unknown class";
                        }
                        sb.append(str);
                        sb.append("\n Expected 0, 1 or DECODE_DONE(-1), but found ");
                        sb.append(iDecodeElementIndex);
                        throw new e9.g(sb.toString());
                    }
                    if (obj == null) {
                        j1.i.k("Cannot read polymorphic value before its type token");
                        return null;
                    }
                    ref$ObjectRef.element = obj;
                    objDecodeSerializableElement2 = cVarBeginStructure.decodeSerializableElement(eVar.a(), iDecodeElementIndex, com.bumptech.glide.c.j(this, cVarBeginStructure, (String) obj), null);
                } else {
                    ref$ObjectRef.element = cVarBeginStructure.decodeStringElement(eVar.a(), iDecodeElementIndex);
                }
            }
        }
        cVarBeginStructure.endStructure(eVarA);
        return objDecodeSerializableElement;
    }
}
