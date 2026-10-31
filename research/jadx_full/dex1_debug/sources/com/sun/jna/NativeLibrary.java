package com.sun.jna;

import ai.onnxruntime.a;
import ai.onnxruntime.b;
import com.sun.jna.internal.Cleaner;
import com.sun.jna.internal.Cleaner$Cleanable;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map$Entry;
import java.util.StringTokenizer;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class NativeLibrary implements Closeable {
    private static final Level DEBUG_LOAD_LEVEL;
    private static final int DEFAULT_OPEN_OPTIONS = -1;
    private static final Logger LOG = Logger.getLogger(NativeLibrary.class.getName());
    private static final SymbolProvider NATIVE_SYMBOL_PROVIDER;
    private static Method addSuppressedMethod;
    private static final Map<String, Reference<NativeLibrary>> libraries;
    private static final LinkedHashSet<String> librarySearchPath;
    private static final Map<String, List<String>> searchPaths;
    final int callFlags;
    private Cleaner$Cleanable cleanable;
    private String encoding;
    private final Map<String, Function> functions;
    private long handle;
    private final String libraryName;
    private final String libraryPath;
    final Map<String, ?> options;
    private final SymbolProvider symbolProvider;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        String string;
        DEBUG_LOAD_LEVEL = Native.DEBUG_LOAD ? Level.INFO : Level.FINE;
        NATIVE_SYMBOL_PROVIDER = new NativeLibrary$1();
        libraries = new HashMap();
        searchPaths = new ConcurrentHashMap();
        librarySearchPath = new LinkedHashSet<>();
        if (Native.POINTER_SIZE == 0) {
            throw new Error("Native library not initialized");
        }
        addSuppressedMethod = null;
        try {
            addSuppressedMethod = Throwable.class.getMethod("addSuppressed", Throwable.class);
        } catch (NoSuchMethodException unused) {
        } catch (SecurityException e) {
            Logger.getLogger(NativeLibrary.class.getName()).log(Level.SEVERE, "Failed to initialize 'addSuppressed' method", (Throwable) e);
        }
        String webStartLibraryPath = Native.getWebStartLibraryPath("jnidispatch");
        if (webStartLibraryPath != null) {
            librarySearchPath.add(webStartLibraryPath);
        }
        if (System.getProperty("jna.platform.library.path") == null && !Platform.isWindows()) {
            if (Platform.isLinux() || Platform.isSolaris() || Platform.isFreeBSD() || Platform.iskFreeBSD()) {
                StringBuilder sb = new StringBuilder();
                sb.append(Platform.isSolaris() ? "/" : "");
                sb.append(Native.POINTER_SIZE * 8);
                string = sb.toString();
            } else {
                string = "";
            }
            String[] strArr = {"/usr/lib".concat(string), "/lib".concat(string), "/usr/lib", "/lib"};
            if (Platform.isLinux() || Platform.iskFreeBSD() || Platform.isGNU()) {
                String multiArchPath = getMultiArchPath();
                strArr = new String[]{a.l("/usr/lib/", multiArchPath), a.l("/lib/", multiArchPath), "/usr/lib".concat(string), "/lib".concat(string), "/usr/lib", "/lib"};
            }
            if (Platform.isLinux()) {
                ArrayList<String> linuxLdPaths = getLinuxLdPaths();
                for (int length = strArr.length - 1; length >= 0; length--) {
                    int iIndexOf = linuxLdPaths.indexOf(strArr[length]);
                    if (iIndexOf != -1) {
                        linuxLdPaths.remove(iIndexOf);
                    }
                    linuxLdPaths.add(0, strArr[length]);
                }
                strArr = (String[]) linuxLdPaths.toArray(new String[0]);
            }
            String string2 = "";
            String str = string2;
            for (int i9 = 0; i9 < strArr.length; i9++) {
                File file = new File(strArr[i9]);
                if (file.exists() && file.isDirectory()) {
                    StringBuilder sbW = a.w(string2, str);
                    sbW.append(strArr[i9]);
                    string2 = sbW.toString();
                    str = File.pathSeparator;
                }
            }
            if (!"".equals(string2)) {
                System.setProperty("jna.platform.library.path", string2);
            }
        }
        librarySearchPath.addAll(initPaths("jna.platform.library.path"));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private NativeLibrary(String str, String str2, long j9, Map<String, ?> map) throws Throwable {
        HashMap map2 = new HashMap();
        this.functions = map2;
        String libraryName = getLibraryName(str);
        this.libraryName = libraryName;
        this.libraryPath = str2;
        this.handle = j9;
        this.cleanable = Cleaner.getCleaner().register(this, new NativeLibrary$NativeLibraryDisposer(j9));
        Object obj = map.get(Library.OPTION_CALLING_CONVENTION);
        int iIntValue = obj instanceof Number ? ((Number) obj).intValue() : 0;
        this.callFlags = iIntValue;
        this.options = map;
        this.encoding = (String) map.get(Library.OPTION_STRING_ENCODING);
        SymbolProvider symbolProvider = (SymbolProvider) map.get(Library.OPTION_SYMBOL_PROVIDER);
        if (symbolProvider == null) {
            this.symbolProvider = NATIVE_SYMBOL_PROVIDER;
        } else {
            this.symbolProvider = symbolProvider;
        }
        if (this.encoding == null) {
            this.encoding = Native.getDefaultStringEncoding();
        }
        if (Platform.isWindows() && "kernel32".equals(libraryName.toLowerCase())) {
            synchronized (map2) {
                try {
                    try {
                        map2.put(functionKey("GetLastError", iIntValue, this.encoding), new NativeLibrary$2(this, this, "GetLastError", 63, this.encoding));
                    } catch (Throwable th) {
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    throw th;
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean access$000(String str) {
        return isVersionedName(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final void addSearchPath(String str, String str2) {
        Map<String, List<String>> map = searchPaths;
        List<String> listSynchronizedList = map.get(str);
        if (listSynchronizedList == null) {
            listSynchronizedList = Collections.synchronizedList(new ArrayList());
            map.put(str, listSynchronizedList);
        }
        listSynchronizedList.add(str2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void addSuppressedReflected(Throwable th, Throwable th2) {
        Method method = addSuppressedMethod;
        if (method == null) {
            return;
        }
        try {
            method.invoke(th, th2);
        } catch (IllegalAccessException e) {
            b.o("Failed to call addSuppressedMethod", e);
        } catch (IllegalArgumentException e6) {
            b.o("Failed to call addSuppressedMethod", e6);
        } catch (InvocationTargetException e9) {
            b.o("Failed to call addSuppressedMethod", e9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void disposeAll() {
        LinkedHashSet linkedHashSet;
        Map<String, Reference<NativeLibrary>> map = libraries;
        synchronized (map) {
            linkedHashSet = new LinkedHashSet(map.values());
        }
        Iterator it = linkedHashSet.iterator();
        while (it.hasNext()) {
            NativeLibrary nativeLibrary = (NativeLibrary) ((Reference) it.next()).get();
            if (nativeLibrary != null) {
                nativeLibrary.close();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static String findLibraryPath(String str, Collection<String> collection) {
        if (new File(str).isAbsolute()) {
            return str;
        }
        String strMapSharedLibraryName = mapSharedLibraryName(str);
        for (String str2 : collection) {
            File file = new File(str2, strMapSharedLibraryName);
            if (file.exists()) {
                return file.getAbsolutePath();
            }
            if (Platform.isMac() && strMapSharedLibraryName.endsWith(".dylib")) {
                File file2 = new File(str2, strMapSharedLibraryName.substring(0, strMapSharedLibraryName.lastIndexOf(".dylib")).concat(".jnilib"));
                if (file2.exists()) {
                    return file2.getAbsolutePath();
                }
            }
        }
        return strMapSharedLibraryName;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static String functionKey(String str, int i9, String str2) {
        return str + "|" + i9 + "|" + str2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final NativeLibrary getInstance(String str, Map<String, ?> map) {
        NativeLibrary nativeLibrary;
        HashMap map2 = new HashMap(map);
        if (map2.get(Library.OPTION_CALLING_CONVENTION) == null) {
            map2.put(Library.OPTION_CALLING_CONVENTION, 0);
        }
        if ((Platform.isLinux() || Platform.isFreeBSD() || Platform.isAIX()) && Platform.C_LIBRARY_NAME.equals(str)) {
            str = null;
        }
        Map<String, Reference<NativeLibrary>> map3 = libraries;
        synchronized (map3) {
            try {
                Reference<NativeLibrary> reference = map3.get(str + map2);
                nativeLibrary = reference != null ? reference.get() : null;
                if (nativeLibrary == null) {
                    nativeLibrary = str == null ? new NativeLibrary("<process>", null, Native.open(null, openFlags(map2)), map2) : loadLibrary(str, map2);
                    WeakReference weakReference = new WeakReference(nativeLibrary);
                    map3.put(nativeLibrary.getName() + map2, weakReference);
                    File file = nativeLibrary.getFile();
                    if (file != null) {
                        map3.put(file.getAbsolutePath() + map2, weakReference);
                        map3.put(file.getName() + map2, weakReference);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return nativeLibrary;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private String getLibraryName(String str) {
        String strMapSharedLibraryName = mapSharedLibraryName("---");
        int iIndexOf = strMapSharedLibraryName.indexOf("---");
        if (iIndexOf > 0 && str.startsWith(strMapSharedLibraryName.substring(0, iIndexOf))) {
            str = str.substring(iIndexOf);
        }
        int iIndexOf2 = str.indexOf(strMapSharedLibraryName.substring(iIndexOf + 3));
        return iIndexOf2 != -1 ? str.substring(0, iIndexOf2) : str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static ArrayList<String> getLinuxLdPaths() throws Throwable {
        Process processExec;
        ArrayList<String> arrayList = new ArrayList<>();
        BufferedReader bufferedReader = null;
        try {
            processExec = Runtime.getRuntime().exec("/sbin/ldconfig -p");
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(processExec.getInputStream()));
                while (true) {
                    try {
                        String line = bufferedReader2.readLine();
                        if (line != null) {
                            int iIndexOf = line.indexOf(" => ");
                            int iLastIndexOf = line.lastIndexOf(47);
                            if (iIndexOf != -1 && iLastIndexOf != -1 && iIndexOf < iLastIndexOf) {
                                String strSubstring = line.substring(iIndexOf + 4, iLastIndexOf);
                                if (arrayList.contains(strSubstring)) {
                                    continue;
                                } else {
                                    arrayList.add(strSubstring);
                                }
                            }
                        } else {
                            try {
                                break;
                            } catch (IOException unused) {
                            }
                        }
                    } catch (Exception unused2) {
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException unused3) {
                            }
                        }
                        if (processExec != null) {
                        }
                        return arrayList;
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException unused4) {
                            }
                        }
                        if (processExec == null) {
                            throw th;
                        }
                        try {
                            processExec.waitFor();
                            throw th;
                        } catch (InterruptedException unused5) {
                            throw th;
                        }
                    }
                }
                bufferedReader2.close();
            } catch (Exception unused6) {
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception unused7) {
            processExec = null;
        } catch (Throwable th3) {
            th = th3;
            processExec = null;
        }
        try {
            processExec.waitFor();
        } catch (InterruptedException unused8) {
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static String getMultiArchPath() {
        String str;
        String str2 = Platform.ARCH;
        if (Platform.iskFreeBSD()) {
            str = "-kfreebsd";
        } else {
            str = Platform.isGNU() ? "" : "-linux";
        }
        String str3 = "-gnu";
        if (Platform.isIntel()) {
            str2 = Platform.is64Bit() ? "x86_64" : "i386";
        } else if (Platform.isPPC()) {
            str2 = Platform.is64Bit() ? "powerpc64" : "powerpc";
        } else if (Platform.isARM()) {
            str2 = "arm";
            str3 = "-gnueabi";
        } else if (str2.equals("mips64el")) {
            str3 = "-gnuabi64";
        }
        return a.D(str2, str, str3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final synchronized NativeLibrary getProcess() {
        return getInstance(null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static List<String> initPaths(String str) {
        String property = System.getProperty(str, "");
        if ("".equals(property)) {
            return Collections.EMPTY_LIST;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(property, File.pathSeparator);
        ArrayList arrayList = new ArrayList();
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            if (!"".equals(strNextToken)) {
                arrayList.add(strNextToken);
            }
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean isVersionedName(String str) {
        int iLastIndexOf;
        int i9;
        if (!str.startsWith("lib") || (iLastIndexOf = str.lastIndexOf(".so.")) == -1 || (i9 = iLastIndexOf + 4) >= str.length()) {
            return false;
        }
        for (i9 = iLastIndexOf + 4; i9 < str.length(); i9++) {
            char cCharAt = str.charAt(i9);
            if (!Character.isDigit(cCharAt) && cCharAt != '.') {
                return false;
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:108:0x026f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:73:0x025f  */
    /* JADX WARN: Code duplicated, block: B:80:0x0281 A[Catch: IOException -> 0x0285, TryCatch #2 {IOException -> 0x0285, blocks: (B:75:0x0263, B:78:0x027b, B:80:0x0281, B:84:0x0288, B:86:0x028e, B:87:0x0291, B:77:0x026f), top: B:107:0x0263, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:91:0x02b2  */
    /* JADX WARN: Code duplicated, block: B:94:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:96:0x02c7 A[LOOP:1: B:95:0x02c5->B:96:0x02c7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:99:0x02eb A[LOOP:2: B:98:0x02e9->B:99:0x02eb, LOOP_END] */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    private static NativeLibrary loadLibrary(String str, Map<String, ?> map) throws Throwable {
        long jOpen;
        long j9;
        Map<String, ?> map2;
        StringBuilder sbX;
        int size;
        int i9;
        UnsatisfiedLinkError unsatisfiedLinkError;
        int size2;
        File fileExtractFromResourcePath;
        Logger logger = LOG;
        Level level = DEBUG_LOAD_LEVEL;
        logger.log(level, "Looking for library '" + str + "'");
        ArrayList arrayList = new ArrayList();
        boolean zIsAbsolute = new File(str).isAbsolute();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int iOpenFlags = openFlags(map);
        List<String> list = searchPaths.get(str);
        if (list != null) {
            synchronized (list) {
                linkedHashSet.addAll(list);
            }
        }
        String webStartLibraryPath = Native.getWebStartLibraryPath(str);
        if (webStartLibraryPath != null) {
            logger.log(level, "Adding web start path ".concat(webStartLibraryPath));
            linkedHashSet.add(webStartLibraryPath);
        }
        logger.log(level, "Adding paths from jna.library.path: " + System.getProperty("jna.library.path"));
        linkedHashSet.addAll(initPaths("jna.library.path"));
        String strFindLibraryPath = findLibraryPath(str, linkedHashSet);
        long j10 = 0;
        try {
            logger.log(level, "Trying " + strFindLibraryPath);
            jOpen = Native.open(strFindLibraryPath, iOpenFlags);
        } catch (UnsatisfiedLinkError e) {
            Logger logger2 = LOG;
            Level level2 = DEBUG_LOAD_LEVEL;
            logger2.log(level2, "Loading failed with message: " + e.getMessage());
            StringBuilder sb = new StringBuilder("Adding system paths: ");
            LinkedHashSet<String> linkedHashSet2 = librarySearchPath;
            sb.append(linkedHashSet2);
            logger2.log(level2, sb.toString());
            arrayList.add(e);
            linkedHashSet.addAll(linkedHashSet2);
            jOpen = 0;
        }
        if (jOpen == 0) {
            try {
                strFindLibraryPath = findLibraryPath(str, linkedHashSet);
                LOG.log(DEBUG_LOAD_LEVEL, "Trying " + strFindLibraryPath);
                jOpen = Native.open(strFindLibraryPath, iOpenFlags);
                if (jOpen == 0) {
                    throw new UnsatisfiedLinkError("Failed to load library '" + str + "'");
                }
            } catch (UnsatisfiedLinkError e6) {
                Logger logger3 = LOG;
                Level level3 = DEBUG_LOAD_LEVEL;
                logger3.log(level3, "Loading failed with message: " + e6.getMessage());
                arrayList.add(e6);
                int i10 = 0;
                if (Platform.isAndroid()) {
                    try {
                        logger3.log(level3, "Preload (via System.loadLibrary) " + str);
                        System.loadLibrary(str);
                        jOpen = Native.open(strFindLibraryPath, iOpenFlags);
                    } catch (UnsatisfiedLinkError e9) {
                        LOG.log(DEBUG_LOAD_LEVEL, "Loading failed with message: " + e9.getMessage());
                        arrayList.add(e9);
                    }
                } else {
                    if (Platform.isLinux() || Platform.isFreeBSD()) {
                        j9 = 0;
                        logger3.log(level3, "Looking for version variants");
                        strFindLibraryPath = matchLibrary(str, linkedHashSet);
                        if (strFindLibraryPath != null) {
                            logger3.log(level3, "Trying ".concat(strFindLibraryPath));
                            try {
                                jOpen = Native.open(strFindLibraryPath, iOpenFlags);
                            } catch (UnsatisfiedLinkError e10) {
                                LOG.log(DEBUG_LOAD_LEVEL, "Loading failed with message: " + e10.getMessage());
                                arrayList.add(e10);
                            }
                        }
                    } else if (!Platform.isMac() || str.endsWith(".dylib")) {
                        j9 = 0;
                        if (Platform.isWindows() && !zIsAbsolute) {
                            logger3.log(level3, "Looking for lib- prefix");
                            strFindLibraryPath = findLibraryPath("lib" + str, linkedHashSet);
                            if (strFindLibraryPath != null) {
                                logger3.log(level3, "Trying ".concat(strFindLibraryPath));
                                try {
                                    jOpen = Native.open(strFindLibraryPath, iOpenFlags);
                                } catch (UnsatisfiedLinkError e11) {
                                    LOG.log(DEBUG_LOAD_LEVEL, "Loading failed with message: " + e11.getMessage());
                                    arrayList.add(e11);
                                }
                            }
                        }
                    } else {
                        String[] strArrMatchFramework = matchFramework(str);
                        int length = strArrMatchFramework.length;
                        int i11 = 0;
                        while (true) {
                            if (i11 < length) {
                                String str2 = strArrMatchFramework[i11];
                                try {
                                    Logger logger4 = LOG;
                                    Level level4 = DEBUG_LOAD_LEVEL;
                                    StringBuilder sb2 = new StringBuilder();
                                    j9 = j10;
                                    try {
                                        sb2.append("Trying ");
                                        sb2.append(str2);
                                        logger4.log(level4, sb2.toString());
                                        jOpen = Native.open(str2, iOpenFlags);
                                        break;
                                    } catch (UnsatisfiedLinkError e12) {
                                        e = e12;
                                        LOG.log(DEBUG_LOAD_LEVEL, "Loading failed with message: " + e.getMessage());
                                        arrayList.add(e);
                                        i11++;
                                        j10 = j9;
                                    }
                                } catch (UnsatisfiedLinkError e13) {
                                    e = e13;
                                    j9 = j10;
                                }
                            }
                        }
                    }
                    if (jOpen == j9) {
                        map2 = map;
                        try {
                            fileExtractFromResourcePath = Native.extractFromResourcePath(str, (ClassLoader) map2.get(Library.OPTION_CLASSLOADER));
                            if (fileExtractFromResourcePath != null) {
                                try {
                                    jOpen = Native.open(fileExtractFromResourcePath.getAbsolutePath(), iOpenFlags);
                                    strFindLibraryPath = fileExtractFromResourcePath.getAbsolutePath();
                                    if (Native.isUnpacked(fileExtractFromResourcePath)) {
                                        Native.deleteLibrary(fileExtractFromResourcePath);
                                    }
                                } catch (Throwable th) {
                                    if (Native.isUnpacked(fileExtractFromResourcePath)) {
                                        Native.deleteLibrary(fileExtractFromResourcePath);
                                    }
                                    throw th;
                                }
                            }
                        } catch (IOException e14) {
                            LOG.log(DEBUG_LOAD_LEVEL, "Loading failed with message: " + e14.getMessage());
                            arrayList.add(e14);
                            if (jOpen == j9) {
                                sbX = a.x("Unable to load library '", str, "':");
                                size = arrayList.size();
                                i9 = 0;
                                while (i9 < size) {
                                    Object obj = arrayList.get(i9);
                                    i9++;
                                    sbX.append("\n");
                                    sbX.append(((Throwable) obj).getMessage());
                                }
                                unsatisfiedLinkError = new UnsatisfiedLinkError(sbX.toString());
                                size2 = arrayList.size();
                                while (i10 < size2) {
                                    Object obj2 = arrayList.get(i10);
                                    i10++;
                                    addSuppressedReflected(unsatisfiedLinkError, (Throwable) obj2);
                                }
                                throw unsatisfiedLinkError;
                            }
                            long j11 = jOpen;
                            LOG.log(DEBUG_LOAD_LEVEL, "Found library '" + str + "' at " + strFindLibraryPath);
                            return new NativeLibrary(str, strFindLibraryPath, j11, map2);
                        }
                    } else {
                        map2 = map;
                    }
                    if (jOpen == j9) {
                        sbX = a.x("Unable to load library '", str, "':");
                        size = arrayList.size();
                        i9 = 0;
                        while (i9 < size) {
                            Object obj3 = arrayList.get(i9);
                            i9++;
                            sbX.append("\n");
                            sbX.append(((Throwable) obj3).getMessage());
                        }
                        unsatisfiedLinkError = new UnsatisfiedLinkError(sbX.toString());
                        size2 = arrayList.size();
                        while (i10 < size2) {
                            Object obj4 = arrayList.get(i10);
                            i10++;
                            addSuppressedReflected(unsatisfiedLinkError, (Throwable) obj4);
                        }
                        throw unsatisfiedLinkError;
                    }
                }
                j9 = j10;
                if (jOpen == j9) {
                    map2 = map;
                    fileExtractFromResourcePath = Native.extractFromResourcePath(str, (ClassLoader) map2.get(Library.OPTION_CLASSLOADER));
                    if (fileExtractFromResourcePath != null) {
                        jOpen = Native.open(fileExtractFromResourcePath.getAbsolutePath(), iOpenFlags);
                        strFindLibraryPath = fileExtractFromResourcePath.getAbsolutePath();
                        if (Native.isUnpacked(fileExtractFromResourcePath)) {
                            Native.deleteLibrary(fileExtractFromResourcePath);
                        }
                    }
                } else {
                    map2 = map;
                }
                if (jOpen == j9) {
                    sbX = a.x("Unable to load library '", str, "':");
                    size = arrayList.size();
                    i9 = 0;
                    while (i9 < size) {
                        Object obj5 = arrayList.get(i9);
                        i9++;
                        sbX.append("\n");
                        sbX.append(((Throwable) obj5).getMessage());
                    }
                    unsatisfiedLinkError = new UnsatisfiedLinkError(sbX.toString());
                    size2 = arrayList.size();
                    while (i10 < size2) {
                        Object obj6 = arrayList.get(i10);
                        i10++;
                        addSuppressedReflected(unsatisfiedLinkError, (Throwable) obj6);
                    }
                    throw unsatisfiedLinkError;
                }
            }
        }
        map2 = map;
        long j12 = jOpen;
        LOG.log(DEBUG_LOAD_LEVEL, "Found library '" + str + "' at " + strFindLibraryPath);
        return new NativeLibrary(str, strFindLibraryPath, j12, map2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String mapSharedLibraryName(String str) {
        if (Platform.isMac()) {
            if (str.startsWith("lib") && (str.endsWith(".dylib") || str.endsWith(".jnilib"))) {
                return str;
            }
            String strMapLibraryName = System.mapLibraryName(str);
            return strMapLibraryName.endsWith(".jnilib") ? strMapLibraryName.substring(0, strMapLibraryName.lastIndexOf(".jnilib")).concat(".dylib") : strMapLibraryName;
        }
        if (Platform.isLinux() || Platform.isFreeBSD()) {
            if (isVersionedName(str) || str.endsWith(".so")) {
                return str;
            }
        } else if (Platform.isAIX()) {
            if (isVersionedName(str) || str.endsWith(".so") || str.startsWith("lib") || str.endsWith(".a")) {
                return str;
            }
        } else if (Platform.isWindows() && (str.endsWith(".drv") || str.endsWith(".dll") || str.endsWith(".ocx"))) {
            return str;
        }
        String strMapLibraryName2 = System.mapLibraryName(str);
        return (Platform.isAIX() && strMapLibraryName2.endsWith(".so")) ? strMapLibraryName2.replaceAll(".so$", ".a") : strMapLibraryName2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String[] matchFramework(String str) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        File file = new File(str);
        if (!file.isAbsolute()) {
            String[] strArr = {System.getProperty("user.home"), "", "/System"};
            if (!str.contains(".framework")) {
                str = a.D(str, ".framework/", str);
            }
            for (int i9 = 0; i9 < 3; i9++) {
                File file2 = new File(a.D(strArr[i9], "/Library/Frameworks/", str));
                if (file2.exists()) {
                    return new String[]{file2.getAbsolutePath()};
                }
                linkedHashSet.add(file2.getAbsolutePath());
            }
        } else if (!str.contains(".framework")) {
            File file3 = new File(new File(file.getParentFile(), file.getName() + ".framework"), file.getName());
            if (file3.exists()) {
                return new String[]{file3.getAbsolutePath()};
            }
            linkedHashSet.add(file3.getAbsolutePath());
        } else {
            if (file.exists()) {
                return new String[]{file.getAbsolutePath()};
            }
            linkedHashSet.add(file.getAbsolutePath());
        }
        return (String[]) linkedHashSet.toArray(new String[0]);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String matchLibrary(String str, Collection<String> collection) {
        File file = new File(str);
        if (file.isAbsolute()) {
            collection = Arrays.asList(file.getParent());
        }
        NativeLibrary$3 nativeLibrary$3 = new NativeLibrary$3(str);
        LinkedList linkedList = new LinkedList();
        Iterator<String> it = collection.iterator();
        while (it.hasNext()) {
            File[] fileArrListFiles = new File(it.next()).listFiles(nativeLibrary$3);
            if (fileArrListFiles != null && fileArrListFiles.length > 0) {
                linkedList.addAll(Arrays.asList(fileArrListFiles));
            }
        }
        Iterator it2 = linkedList.iterator();
        double d = -1.0d;
        String str2 = null;
        while (it2.hasNext()) {
            String absolutePath = ((File) it2.next()).getAbsolutePath();
            double version = parseVersion(absolutePath.substring(absolutePath.lastIndexOf(".so.") + 4));
            if (version > d) {
                str2 = absolutePath;
                d = version;
            }
        }
        return str2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int openFlags(Map<String, ?> map) {
        Object obj = map.get(Library.OPTION_OPEN_FLAGS);
        if (obj instanceof Number) {
            return ((Number) obj).intValue();
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static double parseVersion(String str) {
        String str2;
        int iIndexOf = str.indexOf(".");
        double d = 1.0d;
        double d9 = 0.0d;
        while (str != null) {
            if (iIndexOf != -1) {
                String strSubstring = str.substring(0, iIndexOf);
                String strSubstring2 = str.substring(iIndexOf + 1);
                iIndexOf = strSubstring2.indexOf(".");
                str2 = strSubstring2;
                str = strSubstring;
            } else {
                str2 = null;
            }
            try {
                d9 += ((double) Integer.parseInt(str)) / d;
                d *= 100.0d;
                str = str2;
            } catch (NumberFormatException unused) {
                return 0.0d;
            }
        }
        return d9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        HashSet hashSet = new HashSet();
        Map<String, Reference<NativeLibrary>> map = libraries;
        synchronized (map) {
            try {
                for (Map$Entry<String, Reference<NativeLibrary>> map$Entry : map.entrySet()) {
                    if (map$Entry.getValue().get() == this) {
                        hashSet.add(map$Entry.getKey());
                    }
                }
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    libraries.remove((String) it.next());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this) {
            try {
                if (this.handle != 0) {
                    this.cleanable.clean();
                    this.handle = 0L;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void dispose() {
        close();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public File getFile() {
        if (this.libraryPath == null) {
            return null;
        }
        return new File(this.libraryPath);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Function getFunction(String str, Method method) {
        FunctionMapper functionMapper = (FunctionMapper) this.options.get(Library.OPTION_FUNCTION_MAPPER);
        if (functionMapper != null) {
            str = functionMapper.getFunctionName(this, method);
        }
        String property = System.getProperty("jna.profiler.prefix", "$$YJP$$");
        if (str.startsWith(property)) {
            str = str.substring(property.length());
        }
        int i9 = this.callFlags;
        for (Class<?> cls : method.getExceptionTypes()) {
            if (LastErrorException.class.isAssignableFrom(cls)) {
                i9 |= 64;
            }
        }
        return getFunction(str, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Pointer getGlobalVariableAddress(String str) {
        try {
            return new Pointer(getSymbolAddress(str));
        } catch (UnsatisfiedLinkError e) {
            StringBuilder sbX = a.x("Error looking up '", str, "': ");
            sbX.append(e.getMessage());
            throw new UnsatisfiedLinkError(sbX.toString());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getName() {
        return this.libraryName;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Map<String, ?> getOptions() {
        return this.options;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getSymbolAddress(String str) {
        long j9 = this.handle;
        if (j9 != 0) {
            return this.symbolProvider.getSymbolAddress(j9, str, NATIVE_SYMBOL_PROVIDER);
        }
        throw new UnsatisfiedLinkError("Library has been unloaded");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        StringBuilder sb = new StringBuilder("Native Library <");
        sb.append(this.libraryPath);
        sb.append("@");
        return a.n(sb, this.handle, ">");
    }

    public static final synchronized NativeLibrary getProcess(Map<String, ?> map) {
        return getInstance((String) null, map);
    }

    public Function getFunction(String str) {
        return getFunction(str, this.callFlags);
    }

    public Function getFunction(String str, int i9) {
        return getFunction(str, i9, this.encoding);
    }

    public Function getFunction(String str, int i9, String str2) {
        Function function;
        if (str != null) {
            synchronized (this.functions) {
                try {
                    String strFunctionKey = functionKey(str, i9, str2);
                    function = this.functions.get(strFunctionKey);
                    if (function == null) {
                        function = new Function(this, str, i9, str2);
                        this.functions.put(strFunctionKey, function);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return function;
        }
        n0.b.n("Function name may not be null");
        return null;
    }

    public static final NativeLibrary getInstance(String str, ClassLoader classLoader) {
        return getInstance(str, (Map<String, ?>) Collections.singletonMap(Library.OPTION_CLASSLOADER, classLoader));
    }

    public static final NativeLibrary getInstance(String str) {
        return getInstance(str, (Map<String, ?>) Collections.EMPTY_MAP);
    }
}
