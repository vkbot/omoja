package org.apache.commons.io.filefilter;

import java.util.List;
import org.apache.commons.io.IOCase;
import org.apache.commons.io.build.AbstractSupplier;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class WildcardFileFilter$Builder extends AbstractSupplier<WildcardFileFilter, WildcardFileFilter$Builder> {
    private IOCase ioCase = IOCase.SENSITIVE;
    private String[] wildcards;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ IOCase access$200(WildcardFileFilter$Builder wildcardFileFilter$Builder) {
        return wildcardFileFilter$Builder.ioCase;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ String[] access$300(WildcardFileFilter$Builder wildcardFileFilter$Builder) {
        return wildcardFileFilter$Builder.wildcards;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOSupplier
    public WildcardFileFilter get() {
        return new WildcardFileFilter(this, (WildcardFileFilter$1) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WildcardFileFilter$Builder setIoCase(IOCase iOCase) {
        this.ioCase = IOCase.value(iOCase, IOCase.SENSITIVE);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WildcardFileFilter$Builder setWildcards(List<String> list) {
        setWildcards((String[]) ((List) WildcardFileFilter.access$100(list)).toArray(IOFileFilter.EMPTY_STRING_ARRAY));
        return this;
    }

    @Override // org.apache.commons.io.function.IOSupplier
    public /* bridge */ /* synthetic */ Object get() {
        return get();
    }

    public WildcardFileFilter$Builder setWildcards(String... strArr) {
        this.wildcards = (String[]) WildcardFileFilter.access$100(strArr);
        return this;
    }
}
