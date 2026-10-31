package okhttp3;

import java.time.Instant;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import kotlin.internal.ProgressionUtilKt;
import kotlin.io.path.f;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import l9.i;
import okhttp3.internal.http.DatesKt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u0018\u0010\b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\fH\u0007J\u0016\u0010\b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\rJ\u0016\u0010\b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010J\u0015\u0010\u0011\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005H\u0000¢\u0006\u0002\b\u0012J\u001d\u0010\u0011\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005H\u0000¢\u0006\u0002\b\u0012J\u0016\u0010\u0013\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005J\u0006\u0010\u0014\u001a\u00020\u0010J\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u00052\u0006\u0010\n\u001a\u00020\u0005H\u0086\u0002J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005J\u0019\u0010\u0017\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\fH\u0087\u0002J\u0019\u0010\u0017\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\rH\u0086\u0002J\u0019\u0010\u0017\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005H\u0086\u0002R\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0018"}, d2 = {"Lokhttp3/Headers$Builder;", HttpUrl.FRAGMENT_ENCODE_SET, "()V", "namesAndValues", HttpUrl.FRAGMENT_ENCODE_SET, HttpUrl.FRAGMENT_ENCODE_SET, "getNamesAndValues$okhttp", "()Ljava/util/List;", "add", "line", "name", "value", "Ljava/time/Instant;", "Ljava/util/Date;", "addAll", "headers", "Lokhttp3/Headers;", "addLenient", "addLenient$okhttp", "addUnsafeNonAscii", "build", "get", "removeAll", "set", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHeaders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Headers.kt\nokhttp3/Headers$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,458:1\n1#2:459\n37#3,2:460\n*S KotlinDebug\n*F\n+ 1 Headers.kt\nokhttp3/Headers$Builder\n*L\n359#1:460,2\n*E\n"})
public final class Headers$Builder {
    private final List<String> namesAndValues = new ArrayList(20);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Headers$Builder add(String line) {
        line.getClass();
        int iV = StringsKt.v(line, ':', 0, 6);
        if (iV != -1) {
            add(StringsKt.R(line.substring(0, iV)).toString(), line.substring(iV + 1));
            return this;
        }
        i.d("Unexpected header: ".concat(line));
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Headers$Builder addAll(Headers headers) {
        headers.getClass();
        int size = headers.size();
        for (int i = 0; i < size; i++) {
            addLenient$okhttp(headers.name(i), headers.value(i));
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Headers$Builder addLenient$okhttp(String line) {
        line.getClass();
        int iV = StringsKt.v(line, ':', 1, 4);
        if (iV != -1) {
            addLenient$okhttp(line.substring(0, iV), line.substring(iV + 1));
            return this;
        }
        if (line.charAt(0) == ':') {
            addLenient$okhttp(HttpUrl.FRAGMENT_ENCODE_SET, line.substring(1));
            return this;
        }
        addLenient$okhttp(HttpUrl.FRAGMENT_ENCODE_SET, line);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Headers$Builder addUnsafeNonAscii(String name, String value) {
        name.getClass();
        value.getClass();
        Headers$Companion.access$checkName(Headers.Companion, name);
        addLenient$okhttp(name, value);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Headers build() {
        return new Headers((String[]) this.namesAndValues.toArray(new String[0]), null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String get(String name) {
        name.getClass();
        int size = this.namesAndValues.size() - 2;
        int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(size, 0, -2);
        if (progressionLastElement > size) {
            return null;
        }
        while (!StringsKt.s(name, this.namesAndValues.get(size))) {
            if (size == progressionLastElement) {
                return null;
            }
            size -= 2;
        }
        return this.namesAndValues.get(size + 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final List<String> getNamesAndValues$okhttp() {
        return this.namesAndValues;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Headers$Builder removeAll(String name) {
        name.getClass();
        int i = 0;
        while (i < this.namesAndValues.size()) {
            if (StringsKt.s(name, this.namesAndValues.get(i))) {
                this.namesAndValues.remove(i);
                this.namesAndValues.remove(i);
                i -= 2;
            }
            i += 2;
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Headers$Builder set(String name, String value) {
        name.getClass();
        value.getClass();
        Headers$Companion headers$Companion = Headers.Companion;
        Headers$Companion.access$checkName(headers$Companion, name);
        Headers$Companion.access$checkValue(headers$Companion, value, name);
        removeAll(name);
        addLenient$okhttp(name, value);
        return this;
    }

    public final Headers$Builder set(String name, Instant value) {
        name.getClass();
        value.getClass();
        return set(name, new Date(f.d(value)));
    }

    public final Headers$Builder set(String name, Date value) {
        name.getClass();
        value.getClass();
        set(name, DatesKt.toHttpDateString(value));
        return this;
    }

    public final Headers$Builder add(String name, String value) {
        name.getClass();
        value.getClass();
        Headers$Companion headers$Companion = Headers.Companion;
        Headers$Companion.access$checkName(headers$Companion, name);
        Headers$Companion.access$checkValue(headers$Companion, value, name);
        addLenient$okhttp(name, value);
        return this;
    }

    public final Headers$Builder addLenient$okhttp(String name, String value) {
        name.getClass();
        value.getClass();
        this.namesAndValues.add(name);
        this.namesAndValues.add(StringsKt.R(value).toString());
        return this;
    }

    public final Headers$Builder add(String name, Date value) {
        name.getClass();
        value.getClass();
        add(name, DatesKt.toHttpDateString(value));
        return this;
    }

    public final Headers$Builder add(String name, Instant value) {
        name.getClass();
        value.getClass();
        add(name, new Date(f.d(value)));
        return this;
    }
}
