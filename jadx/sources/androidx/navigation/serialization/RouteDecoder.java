package androidx.navigation.serialization;

import android.os.Bundle;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavType;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import p055e9.InterfaceC1505a;
import p076g9.InterfaceC1633e;
import p086h9.AbstractC1728a;
import p086h9.InterfaceC1732e;
import p107j9.AbstractC2011b;
import p107j9.AbstractC2012c;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001B)\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0016\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0004¢\u0006\u0004\b\b\u0010\tB)\b\u0016\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0016\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0004¢\u0006\u0004\b\b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0015\u0010\u000fJ\u0011\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ#\u0010$\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u001f2\f\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00000 H\u0000¢\u0006\u0004\b\"\u0010#J#\u0010%\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u001f2\f\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00000 H\u0016¢\u0006\u0004\b%\u0010#R\u0014\u0010'\u001a\u00020&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010)\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010+\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R \u0010.\u001a\u00020-8\u0016X\u0096\u0004¢\u0006\u0012\n\u0004\b.\u0010/\u0012\u0004\b2\u00103\u001a\u0004\b0\u00101¨\u00064"}, m3159d2 = {"Landroidx/navigation/serialization/RouteDecoder;", "Lh9/a;", "Landroid/os/Bundle;", "bundle", "", "", "Landroidx/navigation/NavType;", "typeMap", "<init>", "(Landroid/os/Bundle;Ljava/util/Map;)V", "Landroidx/lifecycle/SavedStateHandle;", "handle", "(Landroidx/lifecycle/SavedStateHandle;Ljava/util/Map;)V", "", "internalDecodeValue", "()Ljava/lang/Object;", "Lg9/e;", "descriptor", "", "decodeElementIndex", "(Lg9/e;)I", "decodeValue", "", "decodeNull", "()Ljava/lang/Void;", "", "decodeNotNullMark", "()Z", "Lh9/e;", "decodeInline", "(Lg9/e;)Lh9/e;", ExifInterface.GPS_DIRECTION_TRUE, "Le9/a;", "deserializer", "decodeRouteWithArgs$navigation_common_release", "(Le9/a;)Ljava/lang/Object;", "decodeRouteWithArgs", "decodeSerializableValue", "Landroidx/navigation/serialization/ArgStore;", "store", "Landroidx/navigation/serialization/ArgStore;", "elementIndex", "I", "elementName", "Ljava/lang/String;", "Lj9/b;", "serializersModule", "Lj9/b;", "getSerializersModule", "()Lj9/b;", "getSerializersModule$annotations", "()V", "navigation-common_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nRouteDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RouteDecoder.kt\nandroidx/navigation/serialization/RouteDecoder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,183:1\n1#2:184\n*E\n"})
public final class RouteDecoder extends AbstractC1728a {
    private int elementIndex;
    private String elementName;
    private final AbstractC2011b serializersModule;
    private final ArgStore store;

    public RouteDecoder(Bundle bundle, Map<String, ? extends NavType<?>> map) {
        bundle.getClass();
        map.getClass();
        this.elementIndex = -1;
        this.elementName = "";
        this.serializersModule = AbstractC2012c.f5496a;
        this.store = new BundleArgStore(bundle, map);
    }

    private final Object internalDecodeValue() {
        Object obj = this.store.get(this.elementName);
        if (obj != null) {
            return obj;
        }
        C2467b.m3836z(this.elementName, "Unexpected null value for non-nullable argument ");
        return null;
    }

    @Override // p086h9.InterfaceC1730c
    public int decodeElementIndex(InterfaceC1633e descriptor) {
        String strMo2720e;
        descriptor.getClass();
        int i10 = this.elementIndex;
        do {
            i10++;
            if (i10 >= descriptor.mo2719d()) {
                return -1;
            }
            strMo2720e = descriptor.mo2720e(i10);
        } while (!this.store.contains(strMo2720e));
        this.elementIndex = i10;
        this.elementName = strMo2720e;
        return i10;
    }

    @Override // p086h9.AbstractC1728a, p086h9.InterfaceC1732e
    public InterfaceC1732e decodeInline(InterfaceC1633e descriptor) {
        descriptor.getClass();
        if (RouteSerializerKt.isValueClass(descriptor)) {
            this.elementName = descriptor.mo2720e(0);
            this.elementIndex = 0;
        }
        return this;
    }

    @Override // p086h9.InterfaceC1732e
    public boolean decodeNotNullMark() {
        return this.store.get(this.elementName) != null;
    }

    @Override // p086h9.InterfaceC1732e
    public Void decodeNull() {
        return null;
    }

    public final <T> T decodeRouteWithArgs$navigation_common_release(InterfaceC1505a deserializer) {
        deserializer.getClass();
        return (T) deserializer.mo2582c(this);
    }

    @Override // p086h9.AbstractC1728a, p086h9.InterfaceC1732e
    public <T> T decodeSerializableValue(InterfaceC1505a deserializer) {
        deserializer.getClass();
        return (T) internalDecodeValue();
    }

    @Override // p086h9.AbstractC1728a
    public Object decodeValue() {
        return internalDecodeValue();
    }

    @Override // p086h9.InterfaceC1730c
    public AbstractC2011b getSerializersModule() {
        return this.serializersModule;
    }

    public static /* synthetic */ void getSerializersModule$annotations() {
    }

    public RouteDecoder(SavedStateHandle savedStateHandle, Map<String, ? extends NavType<?>> map) {
        savedStateHandle.getClass();
        map.getClass();
        this.elementIndex = -1;
        this.elementName = "";
        this.serializersModule = AbstractC2012c.f5496a;
        this.store = new SavedStateArgStore(savedStateHandle, map);
    }
}
