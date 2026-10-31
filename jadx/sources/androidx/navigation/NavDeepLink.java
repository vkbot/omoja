package androidx.navigation;

import ai.onnxruntime.AbstractC0074a;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.RestrictTo;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.os.BundleKt;
import androidx.exifinterface.media.ExifInterface;
import androidx.navigation.serialization.RouteSerializerKt;
import com.bumptech.glide.AbstractC1031d;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import p099j1.C1929i;
import p130l9.C2237i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0012\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018\u0000 m2\u00020\u0001:\u0004lmnoB\u000f\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B%\b\u0000\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\bJ*\u0010;\u001a\u00020<2\u0006\u0010\u0002\u001a\u00020\u00032\f\u0010=\u001a\b\u0012\u0004\u0012\u00020\u00030\u00102\n\u0010>\u001a\u00060?j\u0002`@H\u0002J\u0017\u0010A\u001a\u00020B2\b\u0010C\u001a\u0004\u0018\u00010DH\u0000¢\u0006\u0002\bEJ\u0013\u0010F\u001a\u00020\"2\b\u0010G\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J(\u0010H\u001a\u0004\u0018\u00010I2\u0006\u0010J\u001a\u00020D2\u0014\u0010K\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010M0LH\u0007J-\u0010N\u001a\u00020I2\b\u0010J\u001a\u0004\u0018\u00010D2\u0014\u0010K\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010M0LH\u0000¢\u0006\u0002\bOJ.\u0010P\u001a\u00020\"2\u0006\u0010Q\u001a\u00020R2\u0006\u0010S\u001a\u00020I2\u0014\u0010K\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010M0LH\u0002J.\u0010T\u001a\u00020\"2\u0006\u0010J\u001a\u00020D2\u0006\u0010S\u001a\u00020I2\u0014\u0010K\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010M0LH\u0002J0\u0010U\u001a\u00020<2\b\u0010V\u001a\u0004\u0018\u00010\u00032\u0006\u0010S\u001a\u00020I2\u0014\u0010K\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010M0LH\u0002J\u0010\u0010W\u001a\u00020B2\u0006\u0010\u0007\u001a\u00020\u0003H\u0007J\b\u0010X\u001a\u00020BH\u0016J\u0012\u0010Y\u001a\u00020\"2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003H\u0002J\u0012\u0010Z\u001a\u00020\"2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003H\u0002J\u0012\u0010[\u001a\u00020\"2\b\u0010\u0002\u001a\u0004\u0018\u00010DH\u0002J\u0015\u0010\\\u001a\u00020\"2\u0006\u0010\u0002\u001a\u00020DH\u0000¢\u0006\u0002\b]J\u0015\u0010\\\u001a\u00020\"2\u0006\u0010^\u001a\u00020_H\u0000¢\u0006\u0002\b]J*\u0010`\u001a\u00020<2\u0006\u0010S\u001a\u00020I2\u0006\u0010a\u001a\u00020\u00032\u0006\u0010b\u001a\u00020\u00032\b\u0010c\u001a\u0004\u0018\u00010MH\u0002J,\u0010d\u001a\u00020\"2\u0006\u0010S\u001a\u00020I2\u0006\u0010a\u001a\u00020\u00032\b\u0010b\u001a\u0004\u0018\u00010\u00032\b\u0010c\u001a\u0004\u0018\u00010MH\u0002J\u001c\u0010e\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0010\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0015H\u0002J<\u0010f\u001a\u00020\"2\f\u0010g\u001a\b\u0012\u0004\u0012\u00020\u00030\f2\u0006\u0010h\u001a\u0002062\u0006\u0010S\u001a\u00020I2\u0014\u0010K\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010M0LH\u0002J\b\u0010i\u001a\u00020<H\u0002J\b\u0010j\u001a\u00020<H\u0002J\u0014\u0010k\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020605H\u0002R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\f8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR!\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0011\u0010\u000eR/\u0010\u0014\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0010\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0013\u001a\u0004\b\u0016\u0010\u0017R\u001d\u0010\u0019\u001a\u0004\u0018\u00010\u001a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u0013\u001a\u0004\b\u001b\u0010\u001cR\u001d\u0010\u001e\u001a\u0004\u0018\u00010\u00038BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010\u0013\u001a\u0004\b\u001f\u0010\nR&\u0010#\u001a\u00020\"2\u0006\u0010!\u001a\u00020\"8G@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001b\u0010'\u001a\u00020\"8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b(\u0010\u0013\u001a\u0004\b'\u0010$R\u000e\u0010)\u001a\u00020\"X\u0082\u000e¢\u0006\u0002\n\u0000R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\nR\u001d\u0010+\u001a\u0004\u0018\u00010\u001a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b-\u0010\u0013\u001a\u0004\b,\u0010\u001cR\u0010\u0010.\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00030\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u00100\u001a\u0004\u0018\u00010\u001a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b2\u0010\u0013\u001a\u0004\b1\u0010\u001cR\u0010\u00103\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R'\u00104\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u000206058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b9\u0010\u0013\u001a\u0004\b7\u00108R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b:\u0010\n¨\u0006p"}, m3159d2 = {"Landroidx/navigation/NavDeepLink;", "", "uri", "", "(Ljava/lang/String;)V", "uriPattern", "action", "mimeType", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAction", "()Ljava/lang/String;", "argumentsNames", "", "getArgumentsNames$navigation_common_release", "()Ljava/util/List;", "fragArgs", "", "getFragArgs", "fragArgs$delegate", "Lkotlin/Lazy;", "fragArgsAndRegex", "Lkotlin/Pair;", "getFragArgsAndRegex", "()Lkotlin/Pair;", "fragArgsAndRegex$delegate", "fragPattern", "Ljava/util/regex/Pattern;", "getFragPattern", "()Ljava/util/regex/Pattern;", "fragPattern$delegate", "fragRegex", "getFragRegex", "fragRegex$delegate", "<set-?>", "", "isExactDeepLink", "()Z", "setExactDeepLink$navigation_common_release", "(Z)V", "isParameterizedQuery", "isParameterizedQuery$delegate", "isSingleQueryParamValueOnly", "getMimeType", "mimeTypePattern", "getMimeTypePattern", "mimeTypePattern$delegate", "mimeTypeRegex", "pathArgs", "pathPattern", "getPathPattern", "pathPattern$delegate", "pathRegex", "queryArgsMap", "", "Landroidx/navigation/NavDeepLink$ParamQuery;", "getQueryArgsMap", "()Ljava/util/Map;", "queryArgsMap$delegate", "getUriPattern", "buildRegex", "", "args", "uriRegex", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "calculateMatchingPathSegments", "", "requestedLink", "Landroid/net/Uri;", "calculateMatchingPathSegments$navigation_common_release", "equals", "other", "getMatchingArguments", "Landroid/os/Bundle;", "deepLink", "arguments", "", "Landroidx/navigation/NavArgument;", "getMatchingPathAndQueryArgs", "getMatchingPathAndQueryArgs$navigation_common_release", "getMatchingPathArguments", "matcher", "Ljava/util/regex/Matcher;", "bundle", "getMatchingQueryArguments", "getMatchingUriFragment", "fragment", "getMimeTypeMatchRating", "hashCode", "matchAction", "matchMimeType", "matchUri", "matches", "matches$navigation_common_release", "deepLinkRequest", "Landroidx/navigation/NavDeepLinkRequest;", "parseArgument", "name", "value", "argument", "parseArgumentForRepeatedParam", "parseFragment", "parseInputParams", "inputParams", "storedParam", "parseMime", "parsePath", "parseQuery", "Builder", "Companion", "MimeType", "ParamQuery", "navigation-common_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nNavDeepLink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavDeepLink.kt\nandroidx/navigation/NavDeepLink\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,761:1\n1360#2:762\n1446#2,5:763\n1559#2:768\n1590#2,4:769\n1559#2:773\n1590#2,4:774\n1855#2,2:780\n1855#2:782\n1559#2:783\n1590#2,4:784\n1856#2:788\n215#3,2:778\n1#4:789\n*S KotlinDebug\n*F\n+ 1 NavDeepLink.kt\nandroidx/navigation/NavDeepLink\n*L\n86#1:762\n86#1:763,5\n232#1:768\n232#1:769,4\n249#1:773\n249#1:774,4\n310#1:780,2\n319#1:782\n331#1:783\n331#1:784,4\n319#1:788\n271#1:778,2\n*E\n"})
public final class NavDeepLink {
    private final String action;

    /* JADX INFO: renamed from: fragArgs$delegate, reason: from kotlin metadata */
    private final Lazy fragArgs;

    /* JADX INFO: renamed from: fragArgsAndRegex$delegate, reason: from kotlin metadata */
    private final Lazy fragArgsAndRegex;

    /* JADX INFO: renamed from: fragPattern$delegate, reason: from kotlin metadata */
    private final Lazy fragPattern;

    /* JADX INFO: renamed from: fragRegex$delegate, reason: from kotlin metadata */
    private final Lazy fragRegex;
    private boolean isExactDeepLink;

    /* JADX INFO: renamed from: isParameterizedQuery$delegate, reason: from kotlin metadata */
    private final Lazy isParameterizedQuery;
    private boolean isSingleQueryParamValueOnly;
    private final String mimeType;

    /* JADX INFO: renamed from: mimeTypePattern$delegate, reason: from kotlin metadata */
    private final Lazy mimeTypePattern;
    private String mimeTypeRegex;
    private final List<String> pathArgs;

    /* JADX INFO: renamed from: pathPattern$delegate, reason: from kotlin metadata */
    private final Lazy pathPattern;
    private String pathRegex;

    /* JADX INFO: renamed from: queryArgsMap$delegate, reason: from kotlin metadata */
    private final Lazy queryArgsMap;
    private final String uriPattern;
    private static final Companion Companion = new Companion(null);
    private static final Pattern SCHEME_PATTERN = Pattern.compile("^[a-zA-Z]+[+\\w\\-.]*:");
    private static final Pattern FILL_IN_PATTERN = Pattern.compile("\\{(.+?)\\}");

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0011\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0000H\u0096\u0002R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0004R\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\u0004¨\u0006\u000f"}, m3159d2 = {"Landroidx/navigation/NavDeepLink$MimeType;", "", "mimeType", "", "(Ljava/lang/String;)V", "subType", "getSubType", "()Ljava/lang/String;", "setSubType", "type", "getType", "setType", "compareTo", "", "other", "navigation-common_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    @SourceDebugExtension({"SMAP\nNavDeepLink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavDeepLink.kt\nandroidx/navigation/NavDeepLink$MimeType\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,761:1\n731#2,9:762\n*S KotlinDebug\n*F\n+ 1 NavDeepLink.kt\nandroidx/navigation/NavDeepLink$MimeType\n*L\n448#1:762,9\n*E\n"})
    public static final class MimeType implements Comparable<MimeType> {
        private String subType;
        private String type;

        public MimeType(String str) {
            List listEmptyList;
            str.getClass();
            List<String> listSplit = new Regex("/").split(str, 0);
            if (listSplit.isEmpty()) {
                listEmptyList = CollectionsKt.emptyList();
            } else {
                ListIterator<String> listIterator = listSplit.listIterator(listSplit.size());
                while (listIterator.hasPrevious()) {
                    if (listIterator.previous().length() != 0) {
                        listEmptyList = CollectionsKt___CollectionsKt.take(listSplit, listIterator.nextIndex() + 1);
                    }
                }
                listEmptyList = CollectionsKt.emptyList();
            }
            this.type = (String) listEmptyList.get(0);
            this.subType = (String) listEmptyList.get(1);
        }

        @Override // java.lang.Comparable
        public int compareTo(MimeType other) {
            other.getClass();
            int i10 = Intrinsics.areEqual(this.type, other.type) ? 2 : 0;
            return Intrinsics.areEqual(this.subType, other.subType) ? i10 + 1 : i10;
        }

        public final String getSubType() {
            return this.subType;
        }

        public final String getType() {
            return this.type;
        }

        public final void setSubType(String str) {
            str.getClass();
            this.subType = str;
        }

        public final void setType(String str) {
            str.getClass();
            this.type = str;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0005J\u000e\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0012R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0014"}, m3159d2 = {"Landroidx/navigation/NavDeepLink$ParamQuery;", "", "()V", "arguments", "", "", "getArguments", "()Ljava/util/List;", "paramRegex", "getParamRegex", "()Ljava/lang/String;", "setParamRegex", "(Ljava/lang/String;)V", "addArgumentName", "", "name", "getArgumentName", "index", "", "size", "navigation-common_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class ParamQuery {
        private final List<String> arguments = new ArrayList();
        private String paramRegex;

        public final void addArgumentName(String name) {
            name.getClass();
            this.arguments.add(name);
        }

        public final String getArgumentName(int index) {
            return this.arguments.get(index);
        }

        public final List<String> getArguments() {
            return this.arguments;
        }

        public final String getParamRegex() {
            return this.paramRegex;
        }

        public final void setParamRegex(String str) {
            this.paramRegex = str;
        }

        public final int size() {
            return this.arguments.size();
        }
    }

    public NavDeepLink(String str, String str2, String str3) {
        this.uriPattern = str;
        this.action = str2;
        this.mimeType = str3;
        this.pathArgs = new ArrayList();
        this.pathPattern = LazyKt.lazy(new Function0<Pattern>() { // from class: androidx.navigation.NavDeepLink$pathPattern$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Pattern invoke() {
                String str4 = this.this$0.pathRegex;
                if (str4 != null) {
                    return Pattern.compile(str4, 2);
                }
                return null;
            }
        });
        this.isParameterizedQuery = LazyKt.lazy(new Function0<Boolean>() { // from class: androidx.navigation.NavDeepLink.isParameterizedQuery.2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                return Boolean.valueOf((NavDeepLink.this.getUriPattern() == null || Uri.parse(NavDeepLink.this.getUriPattern()).getQuery() == null) ? false : true);
            }
        });
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        this.queryArgsMap = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<Map<String, ParamQuery>>() { // from class: androidx.navigation.NavDeepLink$queryArgsMap$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Map<String, NavDeepLink.ParamQuery> invoke() {
                return this.this$0.parseQuery();
            }
        });
        this.fragArgsAndRegex = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<Pair<? extends List<String>, ? extends String>>() { // from class: androidx.navigation.NavDeepLink$fragArgsAndRegex$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Pair<? extends List<String>, ? extends String> invoke() {
                return this.this$0.parseFragment();
            }
        });
        this.fragArgs = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<List<String>>() { // from class: androidx.navigation.NavDeepLink$fragArgs$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<String> invoke() {
                List<String> list;
                Pair fragArgsAndRegex = this.this$0.getFragArgsAndRegex();
                return (fragArgsAndRegex == null || (list = (List) fragArgsAndRegex.getFirst()) == null) ? new ArrayList() : list;
            }
        });
        this.fragRegex = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<String>() { // from class: androidx.navigation.NavDeepLink$fragRegex$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                Pair fragArgsAndRegex = this.this$0.getFragArgsAndRegex();
                if (fragArgsAndRegex != null) {
                    return (String) fragArgsAndRegex.getSecond();
                }
                return null;
            }
        });
        this.fragPattern = LazyKt.lazy(new Function0<Pattern>() { // from class: androidx.navigation.NavDeepLink$fragPattern$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Pattern invoke() {
                String fragRegex = this.this$0.getFragRegex();
                if (fragRegex != null) {
                    return Pattern.compile(fragRegex, 2);
                }
                return null;
            }
        });
        this.mimeTypePattern = LazyKt.lazy(new Function0<Pattern>() { // from class: androidx.navigation.NavDeepLink$mimeTypePattern$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Pattern invoke() {
                String str4 = this.this$0.mimeTypeRegex;
                if (str4 != null) {
                    return Pattern.compile(str4);
                }
                return null;
            }
        });
        parsePath();
        parseMime();
    }

    private final void buildRegex(String uri, List<String> args, StringBuilder uriRegex) {
        Matcher matcher = FILL_IN_PATTERN.matcher(uri);
        int iEnd = 0;
        while (matcher.find()) {
            String strGroup = matcher.group(1);
            strGroup.getClass();
            args.add(strGroup);
            if (matcher.start() > iEnd) {
                uriRegex.append(Pattern.quote(uri.substring(iEnd, matcher.start())));
            }
            uriRegex.append("([^/]*?|)");
            iEnd = matcher.end();
        }
        if (iEnd < uri.length()) {
            uriRegex.append(Pattern.quote(uri.substring(iEnd)));
        }
    }

    private final List<String> getFragArgs() {
        return (List) this.fragArgs.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Pair<List<String>, String> getFragArgsAndRegex() {
        return (Pair) this.fragArgsAndRegex.getValue();
    }

    private final Pattern getFragPattern() {
        return (Pattern) this.fragPattern.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getFragRegex() {
        return (String) this.fragRegex.getValue();
    }

    private final boolean getMatchingPathArguments(Matcher matcher, Bundle bundle, Map<String, NavArgument> arguments) {
        List<String> list = this.pathArgs;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        int i10 = 0;
        for (Object obj : list) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            String str = (String) obj;
            String strDecode = Uri.decode(matcher.group(i11));
            NavArgument navArgument = arguments.get(str);
            try {
                strDecode.getClass();
                parseArgument(bundle, str, strDecode, navArgument);
                arrayList.add(Unit.INSTANCE);
                i10 = i11;
            } catch (IllegalArgumentException unused) {
                return false;
            }
        }
        return true;
    }

    private final boolean getMatchingQueryArguments(Uri deepLink, Bundle bundle, Map<String, NavArgument> arguments) {
        String query;
        for (Map.Entry<String, ParamQuery> entry : getQueryArgsMap().entrySet()) {
            String key = entry.getKey();
            ParamQuery value = entry.getValue();
            List<String> queryParameters = deepLink.getQueryParameters(key);
            if (this.isSingleQueryParamValueOnly && (query = deepLink.getQuery()) != null && !Intrinsics.areEqual(query, deepLink.toString())) {
                queryParameters = CollectionsKt.listOf(query);
            }
            queryParameters.getClass();
            if (!parseInputParams(queryParameters, value, bundle, arguments)) {
                return false;
            }
        }
        return true;
    }

    private final void getMatchingUriFragment(String fragment, Bundle bundle, Map<String, NavArgument> arguments) {
        Pattern fragPattern = getFragPattern();
        Matcher matcher = fragPattern != null ? fragPattern.matcher(String.valueOf(fragment)) : null;
        if (matcher != null && matcher.matches()) {
            List<String> fragArgs = getFragArgs();
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(fragArgs, 10));
            int i10 = 0;
            for (Object obj : fragArgs) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                String str = (String) obj;
                String strDecode = Uri.decode(matcher.group(i11));
                NavArgument navArgument = arguments.get(str);
                try {
                    strDecode.getClass();
                    parseArgument(bundle, str, strDecode, navArgument);
                    arrayList.add(Unit.INSTANCE);
                    i10 = i11;
                } catch (IllegalArgumentException unused) {
                    return;
                }
            }
        }
    }

    private final Pattern getMimeTypePattern() {
        return (Pattern) this.mimeTypePattern.getValue();
    }

    private final Pattern getPathPattern() {
        return (Pattern) this.pathPattern.getValue();
    }

    private final Map<String, ParamQuery> getQueryArgsMap() {
        return (Map) this.queryArgsMap.getValue();
    }

    private final boolean isParameterizedQuery() {
        return ((Boolean) this.isParameterizedQuery.getValue()).booleanValue();
    }

    private final boolean matchAction(String action) {
        boolean z9 = action == null;
        String str = this.action;
        if (z9 == (str != null)) {
            return false;
        }
        return action == null || Intrinsics.areEqual(str, action);
    }

    private final boolean matchMimeType(String mimeType) {
        if ((mimeType == null) == (this.mimeType != null)) {
            return false;
        }
        if (mimeType != null) {
            Pattern mimeTypePattern = getMimeTypePattern();
            mimeTypePattern.getClass();
            if (!mimeTypePattern.matcher(mimeType).matches()) {
                return false;
            }
        }
        return true;
    }

    private final boolean matchUri(Uri uri) {
        if ((uri == null) == (getPathPattern() != null)) {
            return false;
        }
        if (uri != null) {
            Pattern pathPattern = getPathPattern();
            pathPattern.getClass();
            if (!pathPattern.matcher(uri.toString()).matches()) {
                return false;
            }
        }
        return true;
    }

    private final void parseArgument(Bundle bundle, String name, String value, NavArgument argument) {
        if (argument != null) {
            argument.getType().parseAndPut(bundle, name, value);
        } else {
            bundle.putString(name, value);
        }
    }

    private final boolean parseArgumentForRepeatedParam(Bundle bundle, String name, String value, NavArgument argument) {
        if (!bundle.containsKey(name)) {
            return true;
        }
        if (argument == null) {
            return false;
        }
        NavType<Object> type = argument.getType();
        type.parseAndPut(bundle, name, value, type.get(bundle, name));
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Pair<List<String>, String> parseFragment() {
        String str = this.uriPattern;
        if (str == null || Uri.parse(str).getFragment() == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        String fragment = Uri.parse(this.uriPattern).getFragment();
        StringBuilder sb = new StringBuilder();
        fragment.getClass();
        buildRegex(fragment, arrayList, sb);
        return TuplesKt.m3166to(arrayList, sb.toString());
    }

    private final boolean parseInputParams(List<String> inputParams, ParamQuery storedParam, Bundle bundle, Map<String, NavArgument> arguments) {
        Object objValueOf;
        Bundle bundleBundleOf = BundleKt.bundleOf(new Pair[0]);
        Iterator<T> it = storedParam.getArguments().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            String str = (String) it.next();
            NavArgument navArgument = arguments.get(str);
            NavType<Object> type = navArgument != null ? navArgument.getType() : null;
            if ((type instanceof CollectionNavType) && !navArgument.getIsDefaultValuePresent()) {
                type.put(bundleBundleOf, str, ((CollectionNavType) type).emptyCollection());
            }
        }
        for (String str2 : inputParams) {
            String paramRegex = storedParam.getParamRegex();
            Matcher matcher = paramRegex != null ? Pattern.compile(paramRegex, 32).matcher(str2) : null;
            if (matcher == null || !matcher.matches()) {
                return false;
            }
            List<String> arguments2 = storedParam.getArguments();
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(arguments2, 10));
            int i10 = 0;
            for (Object obj : arguments2) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                String str3 = (String) obj;
                String strGroup = matcher.group(i11);
                if (strGroup == null) {
                    strGroup = "";
                }
                NavArgument navArgument2 = arguments.get(str3);
                try {
                    if (bundleBundleOf.containsKey(str3)) {
                        objValueOf = Boolean.valueOf(parseArgumentForRepeatedParam(bundleBundleOf, str3, strGroup, navArgument2));
                    } else {
                        parseArgument(bundleBundleOf, str3, strGroup, navArgument2);
                        objValueOf = Unit.INSTANCE;
                    }
                } catch (IllegalArgumentException unused) {
                    objValueOf = Unit.INSTANCE;
                }
                arrayList.add(objValueOf);
                i10 = i11;
            }
        }
        bundle.putAll(bundleBundleOf);
        return true;
    }

    private final void parseMime() {
        if (this.mimeType == null) {
            return;
        }
        boolean zMatches = Pattern.compile("^[\\s\\S]+/[\\s\\S]+$").matcher(this.mimeType).matches();
        String str = this.mimeType;
        if (!zMatches) {
            C2237i.m3597d(AbstractC0074a.m162m("The given mimeType ", str, " does not match to required \"type/subtype\" format"));
            return;
        }
        MimeType mimeType = new MimeType(str);
        this.mimeTypeRegex = StringsKt__StringsJVMKt.replace$default("^(" + mimeType.getType() + "|[*]+)/(" + mimeType.getSubType() + "|[*]+)$", "*|[*]", "[\\s\\S]", false, 4, (Object) null);
    }

    private final void parsePath() {
        if (this.uriPattern == null) {
            return;
        }
        StringBuilder sb = new StringBuilder("^");
        if (!SCHEME_PATTERN.matcher(this.uriPattern).find()) {
            sb.append("http[s]?://");
        }
        Matcher matcher = Pattern.compile("(\\?|\\#|$)").matcher(this.uriPattern);
        matcher.find();
        boolean z9 = false;
        buildRegex(this.uriPattern.substring(0, matcher.start()), this.pathArgs, sb);
        if (!StringsKt__StringsKt.contains$default(sb, (CharSequence) ".*", false, 2, (Object) null) && !StringsKt__StringsKt.contains$default(sb, (CharSequence) "([^/]+?)", false, 2, (Object) null)) {
            z9 = true;
        }
        this.isExactDeepLink = z9;
        sb.append("($|(\\?(.)*)|(\\#(.)*))");
        this.pathRegex = StringsKt__StringsJVMKt.replace$default(sb.toString(), ".*", "\\E.*\\Q", false, 4, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Map<String, ParamQuery> parseQuery() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (!isParameterizedQuery()) {
            return linkedHashMap;
        }
        Uri uri = Uri.parse(this.uriPattern);
        for (String str : uri.getQueryParameterNames()) {
            StringBuilder sb = new StringBuilder();
            List<String> queryParameters = uri.getQueryParameters(str);
            if (queryParameters.size() > 1) {
                C2237i.m3597d(AbstractC0074a.m165p(AbstractC0074a.m173x("Query parameter ", str, " must only be present once in "), this.uriPattern, ". To support repeated query parameters, use an array type for your argument and the pattern provided in your URI will be used to parse each query parameter instance."));
                return null;
            }
            String str2 = (String) CollectionsKt.firstOrNull((List) queryParameters);
            if (str2 == null) {
                this.isSingleQueryParamValueOnly = true;
                str2 = str;
            }
            Matcher matcher = FILL_IN_PATTERN.matcher(str2);
            ParamQuery paramQuery = new ParamQuery();
            int iEnd = 0;
            while (matcher.find()) {
                String strGroup = matcher.group(1);
                strGroup.getClass();
                paramQuery.addArgumentName(strGroup);
                str2.getClass();
                sb.append(Pattern.quote(str2.substring(iEnd, matcher.start())));
                sb.append("(.+?)?");
                iEnd = matcher.end();
            }
            if (iEnd < str2.length()) {
                sb.append(Pattern.quote(str2.substring(iEnd)));
            }
            paramQuery.setParamRegex(StringsKt__StringsJVMKt.replace$default(sb.toString(), ".*", "\\E.*\\Q", false, 4, (Object) null));
            str.getClass();
            linkedHashMap.put(str, paramQuery);
        }
        return linkedHashMap;
    }

    public final int calculateMatchingPathSegments$navigation_common_release(Uri requestedLink) {
        if (requestedLink == null || this.uriPattern == null) {
            return 0;
        }
        List<String> pathSegments = requestedLink.getPathSegments();
        List<String> pathSegments2 = Uri.parse(this.uriPattern).getPathSegments();
        pathSegments.getClass();
        pathSegments2.getClass();
        return CollectionsKt___CollectionsKt.intersect(pathSegments, pathSegments2).size();
    }

    public boolean equals(Object other) {
        if (other != null && (other instanceof NavDeepLink)) {
            NavDeepLink navDeepLink = (NavDeepLink) other;
            if (Intrinsics.areEqual(this.uriPattern, navDeepLink.uriPattern) && Intrinsics.areEqual(this.action, navDeepLink.action) && Intrinsics.areEqual(this.mimeType, navDeepLink.mimeType)) {
                return true;
            }
        }
        return false;
    }

    public final String getAction() {
        return this.action;
    }

    public final List<String> getArgumentsNames$navigation_common_release() {
        List<String> list = this.pathArgs;
        Collection<ParamQuery> collectionValues = getQueryArgsMap().values();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = collectionValues.iterator();
        while (it.hasNext()) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, ((ParamQuery) it.next()).getArguments());
        }
        return CollectionsKt.plus((Collection) CollectionsKt.plus((Collection) list, (Iterable) arrayList), (Iterable) getFragArgs());
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final Bundle getMatchingArguments(Uri deepLink, Map<String, NavArgument> arguments) {
        deepLink.getClass();
        arguments.getClass();
        Pattern pathPattern = getPathPattern();
        Matcher matcher = pathPattern != null ? pathPattern.matcher(deepLink.toString()) : null;
        if (matcher == null || !matcher.matches()) {
            return null;
        }
        final Bundle bundle = new Bundle();
        if (!getMatchingPathArguments(matcher, bundle, arguments)) {
            return null;
        }
        if (isParameterizedQuery() && !getMatchingQueryArguments(deepLink, bundle, arguments)) {
            return null;
        }
        getMatchingUriFragment(deepLink.getFragment(), bundle, arguments);
        if (NavArgumentKt.missingRequiredArguments(arguments, new Function1<String, Boolean>() { // from class: androidx.navigation.NavDeepLink$getMatchingArguments$missingRequiredArguments$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(String str) {
                str.getClass();
                return Boolean.valueOf(!bundle.containsKey(str));
            }
        }).isEmpty()) {
            return bundle;
        }
        return null;
    }

    public final Bundle getMatchingPathAndQueryArgs$navigation_common_release(Uri deepLink, Map<String, NavArgument> arguments) {
        arguments.getClass();
        Bundle bundle = new Bundle();
        if (deepLink != null) {
            Pattern pathPattern = getPathPattern();
            Matcher matcher = pathPattern != null ? pathPattern.matcher(deepLink.toString()) : null;
            if (matcher != null && matcher.matches()) {
                getMatchingPathArguments(matcher, bundle, arguments);
                if (isParameterizedQuery()) {
                    getMatchingQueryArguments(deepLink, bundle, arguments);
                }
            }
        }
        return bundle;
    }

    public final String getMimeType() {
        return this.mimeType;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final int getMimeTypeMatchRating(String mimeType) {
        mimeType.getClass();
        if (this.mimeType == null) {
            return -1;
        }
        Pattern mimeTypePattern = getMimeTypePattern();
        mimeTypePattern.getClass();
        if (mimeTypePattern.matcher(mimeType).matches()) {
            return new MimeType(this.mimeType).compareTo(new MimeType(mimeType));
        }
        return -1;
    }

    public final String getUriPattern() {
        return this.uriPattern;
    }

    public int hashCode() {
        String str = this.uriPattern;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.action;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.mimeType;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* JADX INFO: renamed from: isExactDeepLink, reason: from getter */
    public final boolean getIsExactDeepLink() {
        return this.isExactDeepLink;
    }

    public final boolean matches$navigation_common_release(NavDeepLinkRequest deepLinkRequest) {
        deepLinkRequest.getClass();
        if (matchUri(deepLinkRequest.getUri()) && matchAction(deepLinkRequest.getAction())) {
            return matchMimeType(deepLinkRequest.getMimeType());
        }
        return false;
    }

    public final void setExactDeepLink$navigation_common_release(boolean z9) {
        this.isExactDeepLink = z9;
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0007\b\u0017¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0004J<\u0010\u000b\u001a\u00020\u0000\"\n\b\u0000\u0010\f\u0018\u0001*\u00020\u00012\u0006\u0010\r\u001a\u00020\u00042\u001d\b\u0002\u0010\u000e\u001a\u0017\u0012\u0004\u0012\u00020\u0010\u0012\r\u0012\u000b\u0012\u0002\b\u00030\u0011¢\u0006\u0002\b\u00120\u000fH\u0086\bJB\u0010\u000b\u001a\u00020\u0000\"\b\b\u0000\u0010\f*\u00020\u00012\u0006\u0010\r\u001a\u00020\u00042\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\f0\u00142\u0018\b\u0002\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u0010\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00110\u000fH\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0016"}, m3159d2 = {"Landroidx/navigation/NavDeepLink$Builder;", "", "()V", "action", "", "mimeType", "uriPattern", "build", "Landroidx/navigation/NavDeepLink;", "setAction", "setMimeType", "setUriPattern", ExifInterface.GPS_DIRECTION_TRUE, "basePath", "typeMap", "", "Lkotlin/reflect/KType;", "Landroidx/navigation/NavType;", "Lkotlin/jvm/JvmSuppressWildcards;", "route", "Lkotlin/reflect/KClass;", "Companion", "navigation-common_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    @SourceDebugExtension({"SMAP\nNavDeepLink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavDeepLink.kt\nandroidx/navigation/NavDeepLink$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,761:1\n1#2:762\n*E\n"})
    public static final class Builder {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private String action;
        private String mimeType;
        private String uriPattern;

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder() {
        }

        @JvmStatic
        public static final Builder fromAction(String str) {
            return INSTANCE.fromAction(str);
        }

        @JvmStatic
        public static final Builder fromMimeType(String str) {
            return INSTANCE.fromMimeType(str);
        }

        @JvmStatic
        public static final Builder fromUriPattern(String str) {
            return INSTANCE.fromUriPattern(str);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Builder setUriPattern$default(Builder builder, String str, Map map, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                map = MapsKt.emptyMap();
            }
            str.getClass();
            map.getClass();
            Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
            return builder.setUriPattern(str, Reflection.getOrCreateKotlinClass(Object.class), map);
        }

        public final NavDeepLink build() {
            return new NavDeepLink(this.uriPattern, this.action, this.mimeType);
        }

        public final Builder setAction(String action) {
            action.getClass();
            if (action.length() > 0) {
                this.action = action;
                return this;
            }
            C1929i.m3029k("The NavDeepLink cannot have an empty action.");
            return null;
        }

        public final Builder setMimeType(String mimeType) {
            mimeType.getClass();
            this.mimeType = mimeType;
            return this;
        }

        public final /* synthetic */ <T> Builder setUriPattern(String basePath, Map<KType, NavType<?>> typeMap) {
            basePath.getClass();
            typeMap.getClass();
            Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
            return setUriPattern(basePath, Reflection.getOrCreateKotlinClass(Object.class), typeMap);
        }

        /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
        @Metadata(m3158d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0006H\u0007J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0006H\u0007J<\u0010\t\u001a\u00020\u0004\"\n\b\u0000\u0010\u000b\u0018\u0001*\u00020\u00012\u0006\u0010\f\u001a\u00020\u00062\u001d\b\u0002\u0010\r\u001a\u0017\u0012\u0004\u0012\u00020\u000f\u0012\r\u0012\u000b\u0012\u0002\b\u00030\u0010¢\u0006\u0002\b\u00110\u000eH\u0087\b¨\u0006\u0012"}, m3159d2 = {"Landroidx/navigation/NavDeepLink$Builder$Companion;", "", "()V", "fromAction", "Landroidx/navigation/NavDeepLink$Builder;", "action", "", "fromMimeType", "mimeType", "fromUriPattern", "uriPattern", ExifInterface.GPS_DIRECTION_TRUE, "basePath", "typeMap", "", "Lkotlin/reflect/KType;", "Landroidx/navigation/NavType;", "Lkotlin/jvm/JvmSuppressWildcards;", "navigation-common_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
        @SourceDebugExtension({"SMAP\nNavDeepLink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavDeepLink.kt\nandroidx/navigation/NavDeepLink$Builder$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,761:1\n1#2:762\n*E\n"})
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ Builder fromUriPattern$default(Companion companion, String str, Map map, int i10, Object obj) {
                if ((i10 & 2) != 0) {
                    map = MapsKt.emptyMap();
                }
                str.getClass();
                map.getClass();
                Builder builder = new Builder();
                Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
                builder.setUriPattern(str, Reflection.getOrCreateKotlinClass(Object.class), map);
                return builder;
            }

            @JvmStatic
            public final Builder fromAction(String action) {
                action.getClass();
                if (action.length() <= 0) {
                    C1929i.m3029k("The NavDeepLink cannot have an empty action.");
                    return null;
                }
                Builder builder = new Builder();
                builder.setAction(action);
                return builder;
            }

            @JvmStatic
            public final Builder fromMimeType(String mimeType) {
                mimeType.getClass();
                Builder builder = new Builder();
                builder.setMimeType(mimeType);
                return builder;
            }

            @JvmStatic
            public final /* synthetic */ <T> Builder fromUriPattern(String basePath, Map<KType, NavType<?>> typeMap) {
                basePath.getClass();
                typeMap.getClass();
                Builder builder = new Builder();
                Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
                builder.setUriPattern(basePath, Reflection.getOrCreateKotlinClass(Object.class), typeMap);
                return builder;
            }

            private Companion() {
            }

            @JvmStatic
            public final Builder fromUriPattern(String uriPattern) {
                uriPattern.getClass();
                Builder builder = new Builder();
                builder.setUriPattern(uriPattern);
                return builder;
            }
        }

        public final Builder setUriPattern(String uriPattern) {
            uriPattern.getClass();
            this.uriPattern = uriPattern;
            return this;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final <T> Builder setUriPattern(String basePath, KClass<T> route, Map<KType, ? extends NavType<?>> typeMap) {
            basePath.getClass();
            route.getClass();
            typeMap.getClass();
            this.uriPattern = RouteSerializerKt.generateRoutePattern(AbstractC1031d.m1289s(route), typeMap, basePath);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Builder setUriPattern$default(Builder builder, String str, KClass kClass, Map map, int i10, Object obj) {
            if ((i10 & 4) != 0) {
                map = MapsKt.emptyMap();
            }
            return builder.setUriPattern(str, kClass, map);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0007"}, m3159d2 = {"Landroidx/navigation/NavDeepLink$Companion;", "", "()V", "FILL_IN_PATTERN", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "SCHEME_PATTERN", "navigation-common_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final boolean matches$navigation_common_release(Uri uri) {
        uri.getClass();
        return matches$navigation_common_release(new NavDeepLinkRequest(uri, null, null));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public NavDeepLink(String str) {
        this(str, null, null);
        str.getClass();
    }
}
