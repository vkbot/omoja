package com.android.server;

import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.FastImmutableArraySet;
import android.util.LogPrinter;
import android.util.MutableInt;
import android.util.PrintWriterPrinter;
import android.util.Printer;
import android.util.Slog;
import android.util.proto.ProtoOutputStream;
import com.android.internal.util.FastPrintWriter;
import com.android.server.voiceinteraction.DatabaseHelper;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class IntentResolver<F, R> {
    private static final boolean DEBUG = false;
    private static final String TAG = "IntentResolver";
    private static final boolean localLOGV = false;
    private static final boolean localVerificationLOGV = false;
    private static final Comparator mResolvePrioritySorter = new Comparator() { // from class: com.android.server.IntentResolver.1
        @Override // java.util.Comparator
        public int compare(Object o1, Object o2) {
            int q1 = ((IntentFilter) o1).getPriority();
            int q2 = ((IntentFilter) o2).getPriority();
            if (q1 > q2) {
                return -1;
            }
            return q1 < q2 ? 1 : 0;
        }
    };
    protected final ArraySet<F> mFilters = new ArraySet<>();
    private final ArrayMap<String, F[]> mTypeToFilter = new ArrayMap<>();
    private final ArrayMap<String, F[]> mBaseTypeToFilter = new ArrayMap<>();
    private final ArrayMap<String, F[]> mWildTypeToFilter = new ArrayMap<>();
    private final ArrayMap<String, F[]> mSchemeToFilter = new ArrayMap<>();
    private final ArrayMap<String, F[]> mActionToFilter = new ArrayMap<>();
    private final ArrayMap<String, F[]> mTypedActionToFilter = new ArrayMap<>();

    protected abstract IntentFilter getIntentFilter(F f);

    protected abstract boolean isPackageForFilter(String str, F f);

    protected abstract F[] newArray(int i);

    public void addFilter(F f) {
        IntentFilter intentFilter = getIntentFilter(f);
        this.mFilters.add(f);
        int numS = register_intent_filter(f, intentFilter.schemesIterator(), this.mSchemeToFilter, "      Scheme: ");
        int numT = register_mime_types(f, "      Type: ");
        if (numS == 0 && numT == 0) {
            register_intent_filter(f, intentFilter.actionsIterator(), this.mActionToFilter, "      Action: ");
        }
        if (numT != 0) {
            register_intent_filter(f, intentFilter.actionsIterator(), this.mTypedActionToFilter, "      TypedAction: ");
        }
    }

    public static boolean filterEquals(IntentFilter f1, IntentFilter f2) {
        int s1 = f1.countActions();
        int s2 = f2.countActions();
        if (s1 != s2) {
            return false;
        }
        for (int i = 0; i < s1; i++) {
            if (!f2.hasAction(f1.getAction(i))) {
                return false;
            }
        }
        int s3 = f1.countCategories();
        int s4 = f2.countCategories();
        if (s3 != s4) {
            return false;
        }
        for (int i2 = 0; i2 < s3; i2++) {
            if (!f2.hasCategory(f1.getCategory(i2))) {
                return false;
            }
        }
        int s5 = f1.countDataTypes();
        int s6 = f2.countDataTypes();
        if (s5 != s6) {
            return false;
        }
        for (int i3 = 0; i3 < s5; i3++) {
            if (!f2.hasExactDataType(f1.getDataType(i3))) {
                return false;
            }
        }
        int s7 = f1.countDataSchemes();
        int s8 = f2.countDataSchemes();
        if (s7 != s8) {
            return false;
        }
        for (int i4 = 0; i4 < s7; i4++) {
            if (!f2.hasDataScheme(f1.getDataScheme(i4))) {
                return false;
            }
        }
        int s9 = f1.countDataAuthorities();
        int s10 = f2.countDataAuthorities();
        if (s9 != s10) {
            return false;
        }
        for (int i5 = 0; i5 < s9; i5++) {
            if (!f2.hasDataAuthority(f1.getDataAuthority(i5))) {
                return false;
            }
        }
        int s11 = f1.countDataPaths();
        int s12 = f2.countDataPaths();
        if (s11 != s12) {
            return false;
        }
        for (int i6 = 0; i6 < s11; i6++) {
            if (!f2.hasDataPath(f1.getDataPath(i6))) {
                return false;
            }
        }
        int s13 = f1.countDataSchemeSpecificParts();
        int s14 = f2.countDataSchemeSpecificParts();
        if (s13 != s14) {
            return false;
        }
        for (int i7 = 0; i7 < s13; i7++) {
            if (!f2.hasDataSchemeSpecificPart(f1.getDataSchemeSpecificPart(i7))) {
                return false;
            }
        }
        return true;
    }

    private ArrayList<F> collectFilters(F[] array, IntentFilter matching) {
        F cur;
        ArrayList<F> res = null;
        if (array != null) {
            for (int i = 0; i < array.length && (cur = array[i]) != null; i++) {
                if (filterEquals(getIntentFilter(cur), matching)) {
                    if (res == null) {
                        res = new ArrayList<>();
                    }
                    res.add(cur);
                }
            }
        }
        return res;
    }

    public ArrayList<F> findFilters(IntentFilter matching) {
        if (matching.countDataSchemes() == 1) {
            return collectFilters(this.mSchemeToFilter.get(matching.getDataScheme(0)), matching);
        }
        if (matching.countDataTypes() != 0 && matching.countActions() == 1) {
            return collectFilters(this.mTypedActionToFilter.get(matching.getAction(0)), matching);
        }
        if (matching.countDataTypes() == 0 && matching.countDataSchemes() == 0 && matching.countActions() == 1) {
            return collectFilters(this.mActionToFilter.get(matching.getAction(0)), matching);
        }
        ArrayList<F> res = null;
        for (F cur : this.mFilters) {
            if (filterEquals(getIntentFilter(cur), matching)) {
                if (res == null) {
                    res = new ArrayList<>();
                }
                res.add(cur);
            }
        }
        return res;
    }

    public void removeFilter(F f) {
        removeFilterInternal(f);
        this.mFilters.remove(f);
    }

    protected void removeFilterInternal(F f) {
        IntentFilter intentFilter = getIntentFilter(f);
        int numS = unregister_intent_filter(f, intentFilter.schemesIterator(), this.mSchemeToFilter, "      Scheme: ");
        int numT = unregister_mime_types(f, "      Type: ");
        if (numS == 0 && numT == 0) {
            unregister_intent_filter(f, intentFilter.actionsIterator(), this.mActionToFilter, "      Action: ");
        }
        if (numT != 0) {
            unregister_intent_filter(f, intentFilter.actionsIterator(), this.mTypedActionToFilter, "      TypedAction: ");
        }
    }

    boolean dumpMap(PrintWriter out, String titlePrefix, String title, String prefix, ArrayMap<String, F[]> map, String packageName, boolean printFilter, boolean collapseDuplicates) {
        ArrayMap<Object, MutableInt> found;
        F filter;
        String str;
        Printer printer;
        F filter2;
        boolean printedHeader;
        boolean printedSomething;
        StringBuilder sb = new StringBuilder();
        sb.append(prefix);
        String str2 = "  ";
        sb.append("  ");
        String eprefix = sb.toString();
        String fprefix = prefix + "    ";
        ArrayMap<Object, MutableInt> found2 = new ArrayMap<>();
        int mapi = 0;
        Printer printer2 = null;
        boolean printedSomething2 = false;
        String title2 = title;
        while (mapi < map.size()) {
            F[] a = map.valueAt(mapi);
            int N = a.length;
            boolean printedHeader2 = false;
            if (!collapseDuplicates || printFilter) {
                str2 = str2;
                found = found2;
                int i = 0;
                title2 = title2;
                printer2 = printer2;
                boolean printedHeader3 = false;
                printedSomething2 = printedSomething2;
                while (i < N) {
                    F filter3 = a[i];
                    if (filter3 == null) {
                        break;
                    }
                    if (packageName != null) {
                        if (!this.isPackageForFilter(packageName, filter)) {
                            filter = filter3;
                            str = str2;
                        }
                        i++;
                        this = this;
                        map = map;
                        str2 = str;
                        out = out;
                    } else {
                        filter = filter3;
                    }
                    if (title2 != null) {
                        out.print(titlePrefix);
                        out.println(title2);
                        title2 = null;
                    }
                    if (!printedHeader3) {
                        out.print(eprefix);
                        out.print(map.keyAt(mapi));
                        out.println(":");
                        printedHeader3 = true;
                    }
                    this.dumpFilter(out, fprefix, filter);
                    if (!printFilter) {
                        str = str2;
                        printedSomething2 = true;
                    } else {
                        if (printer2 == null) {
                            printer2 = new PrintWriterPrinter(out);
                        }
                        IntentFilter intentFilter = this.getIntentFilter(filter);
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(fprefix);
                        str = str2;
                        sb2.append(str);
                        intentFilter.dump(printer2, sb2.toString());
                        printedSomething2 = true;
                    }
                    i++;
                    this = this;
                    map = map;
                    str2 = str;
                    out = out;
                }
            } else {
                found2.clear();
                String title3 = title2;
                int i2 = 0;
                while (i2 < N) {
                    F filter4 = a[i2];
                    if (filter4 == null) {
                        break;
                    }
                    if (packageName != null) {
                        printer = printer2;
                        filter2 = filter4;
                        if (!isPackageForFilter(packageName, filter2)) {
                            printedSomething = printedSomething2;
                            printedHeader = printedHeader2;
                        }
                        i2++;
                        printer2 = printer;
                        printedHeader2 = printedHeader;
                        printedSomething2 = printedSomething;
                        str2 = str2;
                    } else {
                        printer = printer2;
                        filter2 = filter4;
                    }
                    printedHeader = printedHeader2;
                    Object label = filterToLabel(filter2);
                    int index = found2.indexOfKey(label);
                    printedSomething = printedSomething2;
                    if (index < 0) {
                        found2.put(label, new MutableInt(1));
                    } else {
                        found2.valueAt(index).value++;
                    }
                    i2++;
                    printer2 = printer;
                    printedHeader2 = printedHeader;
                    printedSomething2 = printedSomething;
                    str2 = str2;
                }
                int i3 = 0;
                title2 = title3;
                boolean printedHeader4 = printedHeader2;
                printedSomething2 = printedSomething2;
                while (i3 < found2.size()) {
                    if (title2 != null) {
                        out.print(titlePrefix);
                        out.println(title2);
                        title2 = null;
                    }
                    if (!printedHeader4) {
                        out.print(eprefix);
                        out.print(map.keyAt(mapi));
                        out.println(":");
                        printedHeader4 = true;
                    }
                    printedSomething2 = true;
                    dumpFilterLabel(out, fprefix, found2.keyAt(i3), found2.valueAt(i3).value);
                    i3++;
                    found2 = found2;
                }
                found = found2;
                printer2 = printer2;
            }
            mapi++;
            str2 = str2;
            found2 = found;
        }
        return printedSomething2;
    }

    void writeProtoMap(ProtoOutputStream proto, long fieldId, ArrayMap<String, F[]> map) {
        int N = map.size();
        for (int mapi = 0; mapi < N; mapi++) {
            long token = proto.start(fieldId);
            proto.write(1138166333441L, map.keyAt(mapi));
            for (F f : map.valueAt(mapi)) {
                if (f != null) {
                    proto.write(2237677961218L, f.toString());
                }
            }
            proto.end(token);
        }
    }

    public void dumpDebug(ProtoOutputStream proto, long fieldId) {
        long token = proto.start(fieldId);
        writeProtoMap(proto, 2246267895809L, this.mTypeToFilter);
        writeProtoMap(proto, 2246267895810L, this.mBaseTypeToFilter);
        writeProtoMap(proto, 2246267895811L, this.mWildTypeToFilter);
        writeProtoMap(proto, 2246267895812L, this.mSchemeToFilter);
        writeProtoMap(proto, 2246267895813L, this.mActionToFilter);
        writeProtoMap(proto, 2246267895814L, this.mTypedActionToFilter);
        proto.end(token);
    }

    public boolean dump(PrintWriter out, String title, String prefix, String packageName, boolean printFilter, boolean collapseDuplicates) {
        String innerPrefix = prefix + "  ";
        String sepPrefix = "\n" + prefix;
        String curPrefix = title + "\n" + prefix;
        if (dumpMap(out, curPrefix, "Full MIME Types:", innerPrefix, this.mTypeToFilter, packageName, printFilter, collapseDuplicates)) {
            curPrefix = sepPrefix;
        }
        if (dumpMap(out, curPrefix, "Base MIME Types:", innerPrefix, this.mBaseTypeToFilter, packageName, printFilter, collapseDuplicates)) {
            curPrefix = sepPrefix;
        }
        if (dumpMap(out, curPrefix, "Wild MIME Types:", innerPrefix, this.mWildTypeToFilter, packageName, printFilter, collapseDuplicates)) {
            curPrefix = sepPrefix;
        }
        if (dumpMap(out, curPrefix, "Schemes:", innerPrefix, this.mSchemeToFilter, packageName, printFilter, collapseDuplicates)) {
            curPrefix = sepPrefix;
        }
        if (dumpMap(out, curPrefix, "Non-Data Actions:", innerPrefix, this.mActionToFilter, packageName, printFilter, collapseDuplicates)) {
            curPrefix = sepPrefix;
        }
        if (dumpMap(out, curPrefix, "MIME Typed Actions:", innerPrefix, this.mTypedActionToFilter, packageName, printFilter, collapseDuplicates)) {
            curPrefix = sepPrefix;
        }
        return curPrefix == sepPrefix;
    }

    private class IteratorWrapper implements Iterator<F> {
        private F mCur;
        private final Iterator<F> mI;

        IteratorWrapper(Iterator<F> it) {
            this.mI = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.mI.hasNext();
        }

        @Override // java.util.Iterator
        public F next() {
            F next = this.mI.next();
            this.mCur = next;
            return next;
        }

        @Override // java.util.Iterator
        public void remove() {
            F f = this.mCur;
            if (f != null) {
                IntentResolver.this.removeFilterInternal(f);
            }
            this.mI.remove();
        }
    }

    public Iterator<F> filterIterator() {
        return new IteratorWrapper(this.mFilters.iterator());
    }

    public Set<F> filterSet() {
        return Collections.unmodifiableSet(this.mFilters);
    }

    public List<R> queryIntentFromList(Intent intent, String resolvedType, boolean defaultOnly, ArrayList<F[]> listCut, int userId) {
        ArrayList<R> resultList = new ArrayList<>();
        boolean debug = (intent.getFlags() & 8) != 0;
        FastImmutableArraySet<String> categories = getFastIntentCategories(intent);
        String scheme = intent.getScheme();
        int N = listCut.size();
        for (int i = 0; i < N; i++) {
            buildResolveList(intent, categories, debug, defaultOnly, resolvedType, scheme, listCut.get(i), resultList, userId);
        }
        filterResults(resultList);
        sortResults(resultList);
        return resultList;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x018c  */
    /* JADX WARN: Code duplicated, block: B:48:0x0197  */
    /* JADX WARN: Code duplicated, block: B:56:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:59:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:61:0x0200  */
    /* JADX WARN: Code duplicated, block: B:63:0x0216  */
    /* JADX WARN: Code duplicated, block: B:65:0x022c  */
    /* JADX WARN: Code duplicated, block: B:68:0x0248  */
    /* JADX WARN: Code duplicated, block: B:71:0x0254 A[LOOP:0: B:69:0x024e->B:71:0x0254, LOOP_END] */
    /* JADX WARN: Instruction removed from duplicated block: B:48:0x0197, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:56:0x01ca, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:71:0x0254, please report this as an issue */
    public List<R> queryIntent(Intent intent, String resolvedType, boolean defaultOnly, int userId) {
        F[] secondTypeCut;
        F[] thirdTypeCut;
        F[] schemeCut;
        F[] firstTypeCut;
        F[] firstTypeCut2;
        FastImmutableArraySet<String> categories;
        int i;
        F[] schemeCut2;
        int slashpos;
        F[] secondTypeCut2;
        String scheme = intent.getScheme();
        ArrayList<R> finalList = new ArrayList<>();
        boolean debug = (intent.getFlags() & 8) != 0;
        if (debug) {
            Slog.v(TAG, "Resolving type=" + resolvedType + " scheme=" + scheme + " defaultOnly=" + defaultOnly + " userId=" + userId + " of " + intent);
        }
        if (resolvedType == null || (slashpos = resolvedType.indexOf(47)) <= 0) {
            secondTypeCut = null;
            thirdTypeCut = null;
            schemeCut = null;
        } else {
            String baseType = resolvedType.substring(0, slashpos);
            if (baseType.equals("*")) {
                secondTypeCut = null;
                thirdTypeCut = null;
                schemeCut = null;
                if (intent.getAction() != null) {
                    firstTypeCut = this.mTypedActionToFilter.get(intent.getAction());
                    if (debug) {
                        Slog.v(TAG, "Typed Action list: " + Arrays.toString(firstTypeCut));
                    }
                }
            } else {
                schemeCut = null;
                if (resolvedType.length() != slashpos + 2 || resolvedType.charAt(slashpos + 1) != '*') {
                    firstTypeCut = this.mTypeToFilter.get(resolvedType);
                    if (debug) {
                        Slog.v(TAG, "First type cut: " + Arrays.toString(firstTypeCut));
                    }
                    secondTypeCut2 = this.mWildTypeToFilter.get(baseType);
                    if (debug) {
                        Slog.v(TAG, "Second type cut: " + Arrays.toString(secondTypeCut2));
                    }
                } else {
                    firstTypeCut = this.mBaseTypeToFilter.get(baseType);
                    if (debug) {
                        Slog.v(TAG, "First type cut: " + Arrays.toString(firstTypeCut));
                    }
                    secondTypeCut2 = this.mWildTypeToFilter.get(baseType);
                    if (debug) {
                        Slog.v(TAG, "Second type cut: " + Arrays.toString(secondTypeCut2));
                    }
                }
                F[] thirdTypeCut2 = this.mWildTypeToFilter.get("*");
                if (debug) {
                    Slog.v(TAG, "Third type cut: " + Arrays.toString(thirdTypeCut2));
                }
                secondTypeCut = secondTypeCut2;
                thirdTypeCut = thirdTypeCut2;
            }
            if (scheme != null) {
                schemeCut2 = this.mSchemeToFilter.get(scheme);
                if (debug) {
                    Slog.v(TAG, "Scheme list: " + Arrays.toString(schemeCut2));
                }
                schemeCut = schemeCut2;
            }
            if (resolvedType == null && scheme == null && intent.getAction() != null) {
                F[] firstTypeCut3 = this.mActionToFilter.get(intent.getAction());
                firstTypeCut = firstTypeCut3;
                if (debug) {
                    Slog.v(TAG, "Action list: " + Arrays.toString(firstTypeCut));
                }
            }
            firstTypeCut2 = firstTypeCut;
            categories = getFastIntentCategories(intent);
            if (firstTypeCut2 != null) {
                buildResolveList(intent, categories, debug, defaultOnly, resolvedType, scheme, firstTypeCut2, finalList, userId);
            }
            if (secondTypeCut != null) {
                buildResolveList(intent, categories, debug, defaultOnly, resolvedType, scheme, secondTypeCut, finalList, userId);
            }
            if (thirdTypeCut != null) {
                buildResolveList(intent, categories, debug, defaultOnly, resolvedType, scheme, thirdTypeCut, finalList, userId);
            }
            if (schemeCut != null) {
                buildResolveList(intent, categories, debug, defaultOnly, resolvedType, scheme, schemeCut, finalList, userId);
            }
            filterResults(finalList);
            sortResults(finalList);
            if (debug) {
                Slog.v(TAG, "Final result list:");
                for (i = 0; i < finalList.size(); i++) {
                    Slog.v(TAG, "  " + finalList.get(i));
                }
            }
            return finalList;
        }
        firstTypeCut = null;
        if (scheme != null) {
            schemeCut2 = this.mSchemeToFilter.get(scheme);
            if (debug) {
                Slog.v(TAG, "Scheme list: " + Arrays.toString(schemeCut2));
            }
            schemeCut = schemeCut2;
        }
        if (resolvedType == null) {
            F[] firstTypeCut4 = this.mActionToFilter.get(intent.getAction());
            firstTypeCut = firstTypeCut4;
            if (debug) {
                Slog.v(TAG, "Action list: " + Arrays.toString(firstTypeCut));
            }
        }
        firstTypeCut2 = firstTypeCut;
        categories = getFastIntentCategories(intent);
        if (firstTypeCut2 != null) {
            buildResolveList(intent, categories, debug, defaultOnly, resolvedType, scheme, firstTypeCut2, finalList, userId);
        }
        if (secondTypeCut != null) {
            buildResolveList(intent, categories, debug, defaultOnly, resolvedType, scheme, secondTypeCut, finalList, userId);
        }
        if (thirdTypeCut != null) {
            buildResolveList(intent, categories, debug, defaultOnly, resolvedType, scheme, thirdTypeCut, finalList, userId);
        }
        if (schemeCut != null) {
            buildResolveList(intent, categories, debug, defaultOnly, resolvedType, scheme, schemeCut, finalList, userId);
        }
        filterResults(finalList);
        sortResults(finalList);
        if (debug) {
            Slog.v(TAG, "Final result list:");
            while (i < finalList.size()) {
                Slog.v(TAG, "  " + finalList.get(i));
            }
        }
        return finalList;
    }

    protected boolean allowFilterResult(F filter, List<R> dest) {
        return true;
    }

    protected boolean isFilterStopped(F filter, int userId) {
        return false;
    }

    protected boolean isFilterVerified(F filter) {
        return getIntentFilter(filter).isVerified();
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected R newResult(F f, int match, int userId) {
        return f;
    }

    protected void sortResults(List<R> results) {
        Collections.sort(results, mResolvePrioritySorter);
    }

    protected void filterResults(List<R> results) {
    }

    protected void dumpFilter(PrintWriter out, String prefix, F filter) {
        out.print(prefix);
        out.println(filter);
    }

    protected Object filterToLabel(F filter) {
        return "IntentFilter";
    }

    protected void dumpFilterLabel(PrintWriter out, String prefix, Object label, int count) {
        out.print(prefix);
        out.print(label);
        out.print(": ");
        out.println(count);
    }

    private final void addFilter(ArrayMap<String, F[]> map, String name, F filter) {
        F[] array = map.get(name);
        if (array == null) {
            F[] array2 = newArray(2);
            map.put(name, array2);
            array2[0] = filter;
            return;
        }
        int N = array.length;
        int i = N;
        while (i > 0 && array[i - 1] == null) {
            i--;
        }
        if (i >= N) {
            F[] newa = newArray((N * 3) / 2);
            System.arraycopy(array, 0, newa, 0, N);
            newa[N] = filter;
            map.put(name, newa);
            return;
        }
        array[i] = filter;
    }

    private final int register_mime_types(F filter, String prefix) {
        Iterator<String> i = getIntentFilter(filter).typesIterator();
        if (i == null) {
            return 0;
        }
        int num = 0;
        while (i.hasNext()) {
            String name = i.next();
            num++;
            String baseName = name;
            int slashpos = name.indexOf(47);
            if (slashpos > 0) {
                baseName = name.substring(0, slashpos).intern();
            } else {
                name = name + "/*";
            }
            addFilter(this.mTypeToFilter, name, filter);
            if (slashpos > 0) {
                addFilter(this.mBaseTypeToFilter, baseName, filter);
            } else {
                addFilter(this.mWildTypeToFilter, baseName, filter);
            }
        }
        return num;
    }

    private final int unregister_mime_types(F filter, String prefix) {
        Iterator<String> i = getIntentFilter(filter).typesIterator();
        if (i == null) {
            return 0;
        }
        int num = 0;
        while (i.hasNext()) {
            String name = i.next();
            num++;
            String baseName = name;
            int slashpos = name.indexOf(47);
            if (slashpos > 0) {
                baseName = name.substring(0, slashpos).intern();
            } else {
                name = name + "/*";
            }
            remove_all_objects(this.mTypeToFilter, name, filter);
            if (slashpos > 0) {
                remove_all_objects(this.mBaseTypeToFilter, baseName, filter);
            } else {
                remove_all_objects(this.mWildTypeToFilter, baseName, filter);
            }
        }
        return num;
    }

    protected final int register_intent_filter(F filter, Iterator<String> i, ArrayMap<String, F[]> dest, String prefix) {
        if (i == null) {
            return 0;
        }
        int num = 0;
        while (i.hasNext()) {
            String name = i.next();
            num++;
            addFilter(dest, name, filter);
        }
        return num;
    }

    protected final int unregister_intent_filter(F filter, Iterator<String> i, ArrayMap<String, F[]> dest, String prefix) {
        if (i == null) {
            return 0;
        }
        int num = 0;
        while (i.hasNext()) {
            String name = i.next();
            num++;
            remove_all_objects(dest, name, filter);
        }
        return num;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void remove_all_objects(ArrayMap<String, F[]> arrayMap, String name, F object) {
        F[] fArr = arrayMap.get(name);
        if (fArr != null) {
            int LAST = fArr.length - 1;
            while (LAST >= 0 && fArr[LAST] == null) {
                LAST--;
            }
            for (int idx = LAST; idx >= 0; idx--) {
                Object obj = fArr[idx];
                if (obj != null && getIntentFilter(obj) == getIntentFilter(object)) {
                    int remain = LAST - idx;
                    if (remain > 0) {
                        System.arraycopy(fArr, idx + 1, fArr, idx, remain);
                    }
                    fArr[LAST] = null;
                    LAST--;
                }
            }
            if (LAST < 0) {
                arrayMap.remove(name);
            } else if (LAST < fArr.length / 2) {
                F[] fArrNewArray = newArray(LAST + 2);
                System.arraycopy(fArr, 0, fArrNewArray, 0, LAST + 1);
                arrayMap.put(name, fArrNewArray);
            }
        }
    }

    private static FastImmutableArraySet<String> getFastIntentCategories(Intent intent) {
        Set<String> categories = intent.getCategories();
        if (categories == null) {
            return null;
        }
        return new FastImmutableArraySet<>((String[]) categories.toArray(new String[categories.size()]));
    }

    private void buildResolveList(Intent intent, FastImmutableArraySet<String> categories, boolean debug, boolean defaultOnly, String resolvedType, String scheme, F[] src, List<R> dest, int userId) {
        Printer logPrinter;
        FastPrintWriter fastPrintWriter;
        int i;
        String action;
        String packageName;
        int N;
        Uri data;
        FastPrintWriter fastPrintWriter2;
        boolean excludingStopped;
        Printer logPrinter2;
        String reason;
        F[] fArr = src;
        String action2 = intent.getAction();
        Uri data2 = intent.getData();
        String packageName2 = intent.getPackage();
        boolean excludingStopped2 = intent.isExcludingStopped();
        if (debug) {
            Printer logPrinter3 = new LogPrinter(2, TAG, 3);
            logPrinter = logPrinter3;
            fastPrintWriter = new FastPrintWriter(logPrinter3);
        } else {
            logPrinter = null;
            fastPrintWriter = null;
        }
        int N2 = fArr != null ? fArr.length : 0;
        boolean hasNonDefaults = false;
        int i2 = 0;
        while (i2 < N2) {
            F filter = fArr[i2];
            if (filter == null) {
                break;
            }
            if (debug) {
                Slog.v(TAG, "Matching against filter " + filter);
            }
            if (excludingStopped2 && isFilterStopped(filter, userId)) {
                if (debug) {
                    Slog.v(TAG, "  Filter's target is stopped; skipping");
                    i = i2;
                    N = N2;
                    action = action2;
                    data = data2;
                    packageName = packageName2;
                    excludingStopped = excludingStopped2;
                    fastPrintWriter2 = fastPrintWriter;
                    logPrinter2 = logPrinter;
                } else {
                    i = i2;
                    N = N2;
                    action = action2;
                    data = data2;
                    packageName = packageName2;
                    excludingStopped = excludingStopped2;
                    fastPrintWriter2 = fastPrintWriter;
                    logPrinter2 = logPrinter;
                }
            } else if (packageName2 != null && !isPackageForFilter(packageName2, filter)) {
                if (!debug) {
                    i = i2;
                    N = N2;
                    action = action2;
                    data = data2;
                    packageName = packageName2;
                    excludingStopped = excludingStopped2;
                    fastPrintWriter2 = fastPrintWriter;
                    logPrinter2 = logPrinter;
                } else {
                    Slog.v(TAG, "  Filter is not from package " + packageName2 + "; skipping");
                    i = i2;
                    N = N2;
                    action = action2;
                    data = data2;
                    packageName = packageName2;
                    excludingStopped = excludingStopped2;
                    fastPrintWriter2 = fastPrintWriter;
                    logPrinter2 = logPrinter;
                }
            } else {
                IntentFilter intentFilter = getIntentFilter(filter);
                if (!intentFilter.getAutoVerify() || !debug) {
                    i = i2;
                } else {
                    Slog.v(TAG, "  Filter verified: " + isFilterVerified(filter));
                    int authorities = intentFilter.countDataAuthorities();
                    int z = 0;
                    while (z < authorities) {
                        Slog.v(TAG, "   " + intentFilter.getDataAuthority(z).getHost());
                        z++;
                        authorities = authorities;
                        i2 = i2;
                    }
                    i = i2;
                }
                if (!allowFilterResult(filter, dest)) {
                    if (debug) {
                        Slog.v(TAG, "  Filter's target already added");
                        N = N2;
                        action = action2;
                        data = data2;
                        packageName = packageName2;
                        excludingStopped = excludingStopped2;
                        fastPrintWriter2 = fastPrintWriter;
                        logPrinter2 = logPrinter;
                    } else {
                        N = N2;
                        action = action2;
                        data = data2;
                        packageName = packageName2;
                        excludingStopped = excludingStopped2;
                        fastPrintWriter2 = fastPrintWriter;
                        logPrinter2 = logPrinter;
                    }
                } else {
                    action = action2;
                    packageName = packageName2;
                    N = N2;
                    Uri uri = data2;
                    data = data2;
                    fastPrintWriter2 = fastPrintWriter;
                    excludingStopped = excludingStopped2;
                    logPrinter2 = logPrinter;
                    int match = intentFilter.match(action2, resolvedType, scheme, uri, categories, TAG);
                    if (match >= 0) {
                        if (debug) {
                            Slog.v(TAG, "  Filter matched!  match=0x" + Integer.toHexString(match) + " hasDefault=" + intentFilter.hasCategory("android.intent.category.DEFAULT"));
                        }
                        if (!defaultOnly || intentFilter.hasCategory("android.intent.category.DEFAULT")) {
                            R oneResult = newResult(filter, match, userId);
                            if (debug) {
                                Slog.v(TAG, "    Created result: " + oneResult);
                            }
                            if (oneResult != null) {
                                dest.add(oneResult);
                                if (debug) {
                                    dumpFilter(fastPrintWriter2, "    ", filter);
                                    fastPrintWriter2.flush();
                                    intentFilter.dump(logPrinter2, "    ");
                                }
                            }
                        } else {
                            hasNonDefaults = true;
                        }
                    } else if (debug) {
                        if (match == -4) {
                            reason = "category";
                        } else if (match == -3) {
                            reason = "action";
                        } else if (match == -2) {
                            reason = "data";
                        } else if (match == -1) {
                            reason = DatabaseHelper.SoundModelContract.KEY_TYPE;
                        } else {
                            reason = "unknown reason";
                        }
                        Slog.v(TAG, "  Filter did not match: " + reason);
                    }
                }
            }
            i2 = i + 1;
            fArr = src;
            fastPrintWriter = fastPrintWriter2;
            logPrinter = logPrinter2;
            action2 = action;
            packageName2 = packageName;
            N2 = N;
            data2 = data;
            excludingStopped2 = excludingStopped;
        }
        if (debug && hasNonDefaults) {
            if (dest.size() == 0) {
                Slog.v(TAG, "resolveIntent failed: found match, but none with CATEGORY_DEFAULT");
            } else if (dest.size() > 1) {
                Slog.v(TAG, "resolveIntent: multiple matches, only some with CATEGORY_DEFAULT");
            }
        }
    }
}
