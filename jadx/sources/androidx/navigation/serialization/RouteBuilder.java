package androidx.navigation.serialization;

import ai.onnxruntime.AbstractC0074a;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.exifinterface.media.ExifInterface;
import androidx.navigation.CollectionNavType;
import androidx.navigation.NavType;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.p161io.IOUtils;
import p055e9.InterfaceC1506b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\b\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001#B\u0017\b\u0016\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\u001f\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003¢\u0006\u0004\b\u0005\u0010\tJ\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u000f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J'\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u00112\u000e\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0013H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\r\u0010\u0018\u001a\u00020\u0007¢\u0006\u0004\b\u0018\u0010\u0019J-\u0010\u001a\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\u00072\u000e\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0013¢\u0006\u0004\b\u001a\u0010\u001bJ;\u0010\u001d\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\u00072\u000e\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00132\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\u001c¢\u0006\u0004\b\u001d\u0010\u001eR\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u001fR\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010 R\u0016\u0010!\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010 R\u0016\u0010\"\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010 ¨\u0006$"}, m3159d2 = {"Landroidx/navigation/serialization/RouteBuilder;", ExifInterface.GPS_DIRECTION_TRUE, "", "Le9/b;", "serializer", "<init>", "(Le9/b;)V", "", "path", "(Ljava/lang/String;Le9/b;)V", "", "addPath", "(Ljava/lang/String;)V", "name", "value", "addQuery", "(Ljava/lang/String;Ljava/lang/String;)V", "", "index", "Landroidx/navigation/NavType;", "type", "Landroidx/navigation/serialization/RouteBuilder$ParamType;", "computeParamType", "(ILandroidx/navigation/NavType;)Landroidx/navigation/serialization/RouteBuilder$ParamType;", "build", "()Ljava/lang/String;", "appendPattern", "(ILjava/lang/String;Landroidx/navigation/NavType;)V", "", "appendArg", "(ILjava/lang/String;Landroidx/navigation/NavType;Ljava/util/List;)V", "Le9/b;", "Ljava/lang/String;", "pathArgs", "queryArgs", "ParamType", "navigation-common_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nRouteBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RouteBuilder.kt\nandroidx/navigation/serialization/RouteBuilder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,111:1\n1855#2,2:112\n*S KotlinDebug\n*F\n+ 1 RouteBuilder.kt\nandroidx/navigation/serialization/RouteBuilder\n*L\n88#1:112,2\n*E\n"})
public final class RouteBuilder<T> {
    private final String path;
    private String pathArgs;
    private String queryArgs;
    private final InterfaceC1506b serializer;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0082\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, m3159d2 = {"Landroidx/navigation/serialization/RouteBuilder$ParamType;", "", "(Ljava/lang/String;I)V", "PATH", "QUERY", "navigation-common_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public enum ParamType {
        PATH,
        QUERY
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3160k = 3, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ParamType.values().length];
            try {
                iArr[ParamType.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ParamType.QUERY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public RouteBuilder(InterfaceC1506b interfaceC1506b) {
        interfaceC1506b.getClass();
        this.pathArgs = "";
        this.queryArgs = "";
        this.serializer = interfaceC1506b;
        this.path = interfaceC1506b.mo2581a().mo2717a();
    }

    private final void addPath(String path) {
        this.pathArgs += IOUtils.DIR_SEPARATOR_UNIX + path;
    }

    private final void addQuery(String name, String value) {
        this.queryArgs += (this.queryArgs.length() == 0 ? "?" : "&") + name + '=' + value;
    }

    private final ParamType computeParamType(int index, NavType<Object> type) {
        return ((type instanceof CollectionNavType) || this.serializer.mo2581a().mo2722g(index)) ? ParamType.QUERY : ParamType.PATH;
    }

    public final void appendArg(int index, String name, NavType<Object> type, List<String> value) {
        name.getClass();
        type.getClass();
        value.getClass();
        int i10 = WhenMappings.$EnumSwitchMapping$0[computeParamType(index, type).ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                return;
            }
            Iterator<T> it = value.iterator();
            while (it.hasNext()) {
                addQuery(name, (String) it.next());
            }
            return;
        }
        if (value.size() == 1) {
            addPath((String) CollectionsKt.first((List) value));
            return;
        }
        StringBuilder sbM173x = AbstractC0074a.m173x("Expected one value for argument ", name, ", found ");
        sbM173x.append(value.size());
        sbM173x.append("values instead.");
        throw new IllegalArgumentException(sbM173x.toString().toString());
    }

    public final void appendPattern(int index, String name, NavType<Object> type) {
        name.getClass();
        type.getClass();
        int i10 = WhenMappings.$EnumSwitchMapping$0[computeParamType(index, type).ordinal()];
        if (i10 == 1) {
            addPath("{" + name + '}');
            return;
        }
        if (i10 != 2) {
            return;
        }
        addQuery(name, "{" + name + '}');
    }

    public final String build() {
        return this.path + this.pathArgs + this.queryArgs;
    }

    public RouteBuilder(String str, InterfaceC1506b interfaceC1506b) {
        str.getClass();
        interfaceC1506b.getClass();
        this.pathArgs = "";
        this.queryArgs = "";
        this.serializer = interfaceC1506b;
        this.path = str;
    }
}
