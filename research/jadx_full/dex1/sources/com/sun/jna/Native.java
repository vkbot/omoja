package com.sun.jna;

import ai.onnxruntime.a;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.exifinterface.media.ExifInterface;
import androidx.navigation.b;
import j1.i;
import java.awt.Component;
import java.awt.Window;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLClassLoader;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;
import java.nio.charset.UnsupportedCharsetException;
import java.security.AccessController;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map$Entry;
import java.util.StringTokenizer;
import java.util.WeakHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class Native implements Version {
    public static final int BOOL_SIZE;
    static final int CB_HAS_INITIALIZER = 1;
    static final int CB_OPTION_DIRECT = 1;
    static final int CB_OPTION_IN_DLL = 2;
    private static final int CVT_ARRAY_BOOLEAN = 13;
    private static final int CVT_ARRAY_BYTE = 6;
    private static final int CVT_ARRAY_CHAR = 8;
    private static final int CVT_ARRAY_DOUBLE = 12;
    private static final int CVT_ARRAY_FLOAT = 11;
    private static final int CVT_ARRAY_INT = 9;
    private static final int CVT_ARRAY_LONG = 10;
    private static final int CVT_ARRAY_SHORT = 7;
    private static final int CVT_BOOLEAN = 14;
    private static final int CVT_BUFFER = 5;
    private static final int CVT_BYTE = 29;
    private static final int CVT_CALLBACK = 15;
    private static final int CVT_DEFAULT = 0;
    private static final int CVT_FLOAT = 16;
    private static final int CVT_INTEGER_TYPE = 21;
    private static final int CVT_JNIENV = 27;
    private static final int CVT_NATIVE_MAPPED = 17;
    private static final int CVT_NATIVE_MAPPED_STRING = 18;
    private static final int CVT_NATIVE_MAPPED_WSTRING = 19;
    private static final int CVT_OBJECT = 26;
    private static final int CVT_POINTER = 1;
    private static final int CVT_POINTER_TYPE = 22;
    private static final int CVT_SHORT = 28;
    private static final int CVT_STRING = 2;
    private static final int CVT_STRUCTURE = 3;
    private static final int CVT_STRUCTURE_BYVAL = 4;
    private static final int CVT_TYPE_MAPPER = 23;
    private static final int CVT_TYPE_MAPPER_STRING = 24;
    private static final int CVT_TYPE_MAPPER_WSTRING = 25;
    private static final int CVT_UNSUPPORTED = -1;
    private static final int CVT_WSTRING = 20;
    public static final boolean DEBUG_JNA_LOAD;
    private static final Level DEBUG_JNA_LOAD_LEVEL;
    public static final boolean DEBUG_LOAD;
    public static final Charset DEFAULT_CHARSET;
    public static final String DEFAULT_ENCODING;
    private static final Callback$UncaughtExceptionHandler DEFAULT_HANDLER;
    static final String JNA_TMPLIB_PREFIX = "jna";
    private static final Logger LOG = Logger.getLogger(Native.class.getName());
    public static final int LONG_DOUBLE_SIZE;
    public static final int LONG_SIZE;
    static final int MAX_ALIGNMENT;
    static final int MAX_PADDING;
    public static final int POINTER_SIZE;
    public static final int SIZE_T_SIZE;
    private static final int TYPE_BOOL = 4;
    private static final int TYPE_LONG = 1;
    private static final int TYPE_LONG_DOUBLE = 5;
    private static final int TYPE_SIZE_T = 3;
    private static final int TYPE_VOIDP = 0;
    private static final int TYPE_WCHAR_T = 2;
    public static final int WCHAR_SIZE;
    private static final String _OPTION_ENCLOSING_LIBRARY = "enclosing-library";
    private static Callback$UncaughtExceptionHandler callbackExceptionHandler;
    private static final Object finalizer;
    static String jnidispatchPath;
    private static final Map<Class<?>, Reference<?>> libraries;
    private static final ThreadLocal<Memory> nativeThreadTerminationFlag;
    private static final Map<Thread, Pointer> nativeThreads;
    private static final Map<Class<?>, long[]> registeredClasses;
    private static final Map<Class<?>, NativeLibrary> registeredLibraries;
    private static final Map<Class<?>, Map<String, Object>> typeOptions;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        Charset charsetForName;
        String property = System.getProperty("native.encoding");
        if (property != null) {
            try {
                charsetForName = Charset.forName(property);
            } catch (Exception e) {
                LOG.log(Level.WARNING, a.m("Failed to get charset for native.encoding value : '", property, "'"), (Throwable) e);
                charsetForName = null;
            }
        } else {
            charsetForName = null;
        }
        if (charsetForName == null) {
            charsetForName = Charset.defaultCharset();
        }
        DEFAULT_CHARSET = charsetForName;
        DEFAULT_ENCODING = charsetForName.name();
        DEBUG_LOAD = Boolean.getBoolean("jna.debug_load");
        boolean z8 = Boolean.getBoolean("jna.debug_load.jna");
        DEBUG_JNA_LOAD = z8;
        DEBUG_JNA_LOAD_LEVEL = z8 ? Level.INFO : Level.FINE;
        jnidispatchPath = null;
        typeOptions = Collections.synchronizedMap(new WeakHashMap());
        libraries = Collections.synchronizedMap(new WeakHashMap());
        Native$1 native$1 = new Native$1();
        DEFAULT_HANDLER = native$1;
        callbackExceptionHandler = native$1;
        loadNativeDispatchLibrary();
        if (!isCompatibleVersion(Version.VERSION_NATIVE, getNativeVersion())) {
            String property2 = System.getProperty("line.separator");
            StringBuilder sb = new StringBuilder();
            sb.append(property2);
            sb.append(property2);
            sb.append("There is an incompatible JNA native library installed on this system");
            sb.append(property2);
            sb.append("Expected: 6.1.6");
            sb.append(property2);
            sb.append("Found:    ");
            sb.append(getNativeVersion());
            sb.append(property2);
            sb.append(jnidispatchPath != null ? a.p(new StringBuilder("(at "), jnidispatchPath, ")") : System.getProperty("java.library.path"));
            sb.append(".");
            sb.append(property2);
            sb.append("To resolve this issue you may do one of the following:");
            sb.append(property2);
            sb.append(" - remove or uninstall the offending library");
            sb.append(property2);
            sb.append(" - set the system property jna.nosys=true");
            sb.append(property2);
            sb.append(" - set jna.boot.library.path to include the path to the version of the ");
            sb.append(property2);
            sb.append("   jnidispatch library included with the JNA jar file you are using");
            sb.append(property2);
            throw new Error(sb.toString());
        }
        POINTER_SIZE = sizeof(0);
        int iSizeof = sizeof(1);
        LONG_SIZE = iSizeof;
        WCHAR_SIZE = sizeof(2);
        SIZE_T_SIZE = sizeof(3);
        BOOL_SIZE = sizeof(4);
        LONG_DOUBLE_SIZE = sizeof(5);
        initIDs();
        if (Boolean.getBoolean("jna.protected")) {
            setProtected(true);
        }
        if (Platform.isSPARC() || Platform.isWindows() || ((Platform.isLinux() && (Platform.isARM() || Platform.isPPC() || Platform.isMIPS() || Platform.isLoongArch())) || Platform.isAIX() || (Platform.isAndroid() && !Platform.isIntel()))) {
            iSizeof = 8;
        }
        MAX_ALIGNMENT = iSizeof;
        MAX_PADDING = (Platform.isMac() && Platform.isPPC()) ? 8 : iSizeof;
        System.setProperty("jna.loaded", "true");
        finalizer = new Native$2();
        registeredClasses = new WeakHashMap();
        registeredLibraries = new WeakHashMap();
        nativeThreadTerminationFlag = new Native$7();
        nativeThreads = Collections.synchronizedMap(new WeakHashMap());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Native() {
    }

    private static native long _getDirectBufferPointer(Buffer buffer);

    private static native long _getPointer(long j9);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Logger access$000() {
        return LOG;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void access$100() {
        dispose();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static Map<String, Object> cacheOptions(Class<?> cls, Map<String, ?> map, Object obj) {
        HashMap map2 = new HashMap(map);
        map2.put(_OPTION_ENCLOSING_LIBRARY, cls);
        typeOptions.put(cls, map2);
        if (obj != null) {
            libraries.put(cls, new WeakReference(obj));
        }
        if (!cls.isInterface() && Library.class.isAssignableFrom(cls)) {
            for (Class<?> cls2 : cls.getInterfaces()) {
                if (Library.class.isAssignableFrom(cls2)) {
                    cacheOptions(cls2, map2, obj);
                    return map2;
                }
            }
        }
        return map2;
    }

    public static native void close(long j9);

    public static native synchronized long createNativeCallback(Callback callback, Method method, Class<?>[] clsArr, Class<?> cls, int i9, int i10, String str);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean deleteLibrary(File file) {
        if (file.delete()) {
            return true;
        }
        markTemporaryFile(file);
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void detach(boolean z8) {
        Thread threadCurrentThread = Thread.currentThread();
        if (z8) {
            nativeThreads.remove(threadCurrentThread);
            nativeThreadTerminationFlag.get();
            setDetachState(true, 0L);
        } else {
            Map<Thread, Pointer> map = nativeThreads;
            if (map.containsKey(threadCurrentThread)) {
                return;
            }
            Memory memory = nativeThreadTerminationFlag.get();
            map.put(threadCurrentThread, memory);
            setDetachState(false, memory.peer);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void dispose() {
        CallbackReference.disposeAll();
        Memory.disposeAll();
        NativeLibrary.disposeAll();
        unregisterAll();
        jnidispatchPath = null;
        System.setProperty("jna.loaded", "false");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static File extractFromResourcePath(String str, ClassLoader classLoader) throws Throwable {
        String strSubstring;
        File file;
        Level level = (DEBUG_LOAD || (DEBUG_JNA_LOAD && str.contains("jnidispatch"))) ? Level.INFO : Level.FINE;
        if (classLoader == null && (classLoader = Thread.currentThread().getContextClassLoader()) == null) {
            classLoader = Native.class.getClassLoader();
        }
        Logger logger = LOG;
        logger.log(level, "Looking in classpath from {0} for {1}", new Object[]{classLoader, str});
        String strMapSharedLibraryName = str.startsWith("/") ? str : NativeLibrary.mapSharedLibraryName(str);
        if (str.startsWith("/")) {
            strSubstring = str;
        } else {
            strSubstring = Platform.RESOURCE_PREFIX + "/" + strMapSharedLibraryName;
        }
        if (strSubstring.startsWith("/")) {
            strSubstring = strSubstring.substring(1);
        }
        URL resource = classLoader.getResource(strSubstring);
        if (resource == null) {
            String str2 = Platform.RESOURCE_PREFIX;
            if (strSubstring.startsWith(str2)) {
                if (str2.startsWith("darwin")) {
                    resource = classLoader.getResource("darwin/".concat(strSubstring.substring(str2.length() + 1)));
                }
                if (resource == null) {
                    resource = classLoader.getResource(strMapSharedLibraryName);
                }
            } else {
                if (strSubstring.startsWith("com/sun/jna/" + str2 + "/")) {
                    if (str2.startsWith("com/sun/jna/darwin")) {
                        resource = classLoader.getResource("com/sun/jna/darwin".concat(strSubstring.substring(("com/sun/jna/" + str2).length() + 1)));
                    }
                    if (resource == null) {
                        resource = classLoader.getResource(strMapSharedLibraryName);
                    }
                }
            }
        }
        if (resource == null) {
            String property = System.getProperty("java.class.path");
            if (classLoader instanceof URLClassLoader) {
                property = Arrays.asList(((URLClassLoader) classLoader).getURLs()).toString();
            }
            b.i("Native library (", strSubstring, ") not found in resource path (", property, ")");
            return null;
        }
        logger.log(level, "Found library resource at {0}", resource);
        if (resource.getProtocol().toLowerCase().equals("file")) {
            try {
                file = new File(new URI(resource.toString()));
            } catch (URISyntaxException unused) {
                file = new File(resource.getPath());
            }
            LOG.log(level, "Looking in {0}", file.getAbsolutePath());
            if (file.exists()) {
                return file;
            }
            b.u(resource, "File URL ", " could not be properly decoded");
            return null;
        }
        FileOutputStream fileOutputStream = null;
        if (Boolean.getBoolean("jna.nounpack")) {
            return null;
        }
        InputStream inputStreamOpenStream = resource.openStream();
        if (inputStreamOpenStream == null) {
            n0.b.A("Can't obtain InputStream for ".concat(strSubstring));
            return null;
        }
        try {
            try {
                File fileCreateTempFile = File.createTempFile(JNA_TMPLIB_PREFIX, Platform.isWindows() ? ".dll" : null, getTempDir());
                if (!Boolean.getBoolean("jnidispatch.preserve")) {
                    fileCreateTempFile.deleteOnExit();
                }
                logger.log(level, "Extracting library to {0}", fileCreateTempFile.getAbsolutePath());
                FileOutputStream fileOutputStream2 = new FileOutputStream(fileCreateTempFile);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i9 = inputStreamOpenStream.read(bArr, 0, 1024);
                        if (i9 > 0) {
                            fileOutputStream2.write(bArr, 0, i9);
                        } else {
                            try {
                                break;
                            } catch (IOException unused2) {
                            }
                        }
                    }
                    inputStreamOpenStream.close();
                    try {
                        fileOutputStream2.close();
                    } catch (IOException unused3) {
                    }
                    return fileCreateTempFile;
                } catch (IOException e) {
                    fileOutputStream = fileOutputStream2;
                    e = e;
                    throw new IOException("Failed to create temporary file for " + str + " library: " + e.getMessage());
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    try {
                        inputStreamOpenStream.close();
                    } catch (IOException unused4) {
                    }
                    if (fileOutputStream == null) {
                        throw th;
                    }
                    try {
                        fileOutputStream.close();
                        throw th;
                    } catch (IOException unused5) {
                        throw th;
                    }
                }
            } catch (IOException e6) {
                e = e6;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static native void ffi_call(long j9, long j10, long j11, long j12);

    public static native void ffi_free_closure(long j9);

    public static native long ffi_prep_cif(int i9, int i10, long j9, long j10);

    public static native long ffi_prep_closure(long j9, Native$ffi_callback native$ffi_callback);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Class<?> findDirectMappedClass(Class<?> cls) {
        for (Method method : cls.getDeclaredMethods()) {
            if ((method.getModifiers() & 256) != 0) {
                return cls;
            }
        }
        int iLastIndexOf = cls.getName().lastIndexOf("$");
        if (iLastIndexOf != -1) {
            try {
                return findDirectMappedClass(Class.forName(cls.getName().substring(0, iLastIndexOf), true, cls.getClassLoader()));
            } catch (ClassNotFoundException unused) {
            }
        }
        b.p(cls, "Can't determine class with native methods from the current context (", ")");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Class<?> findEnclosingLibraryClass(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        Map<String, Object> map = typeOptions.get(cls);
        if (map != null) {
            Class<?> cls2 = (Class) map.get(_OPTION_ENCLOSING_LIBRARY);
            if (cls2 != null) {
                return cls2;
            }
        } else if (!Library.class.isAssignableFrom(cls)) {
            if (Callback.class.isAssignableFrom(cls)) {
                cls = CallbackReference.findCallbackClass(cls);
            }
            Class<?> clsFindEnclosingLibraryClass = findEnclosingLibraryClass(cls.getDeclaringClass());
            return clsFindEnclosingLibraryClass != null ? clsFindEnclosingLibraryClass : findEnclosingLibraryClass(cls.getSuperclass());
        }
        return cls;
    }

    public static native long findSymbol(long j9, String str);

    public static native void free(long j9);

    public static native synchronized void freeNativeCallback(long j9);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static NativeMapped fromNative(Method method, Object obj) {
        Class<?> returnType = method.getReturnType();
        return (NativeMapped) NativeMappedConverter.getInstance(returnType).fromNative(obj, new MethodResultContext(returnType, null, null, method));
    }

    private static native String getAPIChecksum();

    public static native byte getByte(Pointer pointer, long j9, long j10);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static byte[] getBytes(String str) {
        return getBytes(str, getDefaultStringEncoding());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Callback$UncaughtExceptionHandler getCallbackExceptionHandler() {
        return callbackExceptionHandler;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Class<?> getCallingClass() {
        Class<?>[] classContext = new Native$6().getClassContext();
        if (classContext == null) {
            i.l("The SecurityManager implementation on this platform is broken; you must explicitly provide the class to register");
            return null;
        }
        if (classContext.length >= 4) {
            return classContext[3];
        }
        i.l("This method must be called from the static initializer of a class");
        return null;
    }

    public static native char getChar(Pointer pointer, long j9, long j10);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static Charset getCharset(String str) {
        Charset charsetForName;
        if (str != null) {
            try {
                charsetForName = Charset.forName(str);
            } catch (IllegalCharsetNameException e) {
                LOG.log(Level.WARNING, "JNA Warning: Encoding ''{0}'' is unsupported ({1})", new Object[]{str, e.getMessage()});
                charsetForName = null;
            } catch (UnsupportedCharsetException e6) {
                LOG.log(Level.WARNING, "JNA Warning: Encoding ''{0}'' is unsupported ({1})", new Object[]{str, e6.getMessage()});
                charsetForName = null;
            }
        } else {
            charsetForName = null;
        }
        if (charsetForName != null) {
            return charsetForName;
        }
        Logger logger = LOG;
        Level level = Level.WARNING;
        Charset charset = DEFAULT_CHARSET;
        logger.log(level, "JNA Warning: Using fallback encoding {0}", charset);
        return charset;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long getComponentID(Component component) {
        return Native$AWT.getComponentID(component);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Pointer getComponentPointer(Component component) {
        return new Pointer(Native$AWT.getComponentID(component));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int getConversion(Class<?> cls, TypeMapper typeMapper, boolean z8) {
        if (cls == Void.class) {
            cls = Void.TYPE;
        }
        if (typeMapper != null) {
            FromNativeConverter fromNativeConverter = typeMapper.getFromNativeConverter(cls);
            ToNativeConverter toNativeConverter = typeMapper.getToNativeConverter(cls);
            if (fromNativeConverter != null) {
                Class<?> clsNativeType = fromNativeConverter.nativeType();
                if (clsNativeType == String.class) {
                    return 24;
                }
                return clsNativeType == WString.class ? 25 : 23;
            }
            if (toNativeConverter != null) {
                Class<?> clsNativeType2 = toNativeConverter.nativeType();
                if (clsNativeType2 == String.class) {
                    return 24;
                }
                return clsNativeType2 == WString.class ? 25 : 23;
            }
        }
        if (Pointer.class.isAssignableFrom(cls)) {
            return 1;
        }
        if (String.class == cls) {
            return 2;
        }
        if (WString.class.isAssignableFrom(cls)) {
            return 20;
        }
        if (Platform.HAS_BUFFERS && Native$Buffers.isBuffer(cls)) {
            return 5;
        }
        if (Structure.class.isAssignableFrom(cls)) {
            return Structure$ByValue.class.isAssignableFrom(cls) ? 4 : 3;
        }
        if (cls.isArray()) {
            char cCharAt = cls.getName().charAt(1);
            if (cCharAt == 'F') {
                return 11;
            }
            if (cCharAt == 'S') {
                return 7;
            }
            if (cCharAt == 'Z') {
                return 13;
            }
            if (cCharAt == 'I') {
                return 9;
            }
            if (cCharAt == 'J') {
                return 10;
            }
            switch (cCharAt) {
                case ConstraintLayout$LayoutParams$Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT /* 66 */:
                    return 6;
                case ConstraintLayout$LayoutParams$Table.GUIDELINE_USE_RTL /* 67 */:
                    return 8;
                case 'D':
                    return 12;
            }
        }
        if (cls.isPrimitive()) {
            return cls == Boolean.TYPE ? 14 : 0;
        }
        if (Callback.class.isAssignableFrom(cls)) {
            return 15;
        }
        if (IntegerType.class.isAssignableFrom(cls)) {
            return 21;
        }
        if (PointerType.class.isAssignableFrom(cls)) {
            return 22;
        }
        if (!NativeMapped.class.isAssignableFrom(cls)) {
            if (JNIEnv.class == cls) {
                return 27;
            }
            return z8 ? 26 : -1;
        }
        Class<?> clsNativeType3 = NativeMappedConverter.getInstance(cls).nativeType();
        if (clsNativeType3 == String.class) {
            return 18;
        }
        return clsNativeType3 == WString.class ? 19 : 17;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String getDefaultStringEncoding() {
        return System.getProperty("jna.encoding", DEFAULT_ENCODING);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Pointer getDirectBufferPointer(Buffer buffer) {
        long j_getDirectBufferPointer = _getDirectBufferPointer(buffer);
        if (j_getDirectBufferPointer == 0) {
            return null;
        }
        return new Pointer(j_getDirectBufferPointer);
    }

    public static native ByteBuffer getDirectByteBuffer(Pointer pointer, long j9, long j10, long j11);

    public static native double getDouble(Pointer pointer, long j9, long j10);

    public static native float getFloat(Pointer pointer, long j9, long j10);

    public static native int getInt(Pointer pointer, long j9, long j10);

    public static native int getLastError();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Map<String, Object> getLibraryOptions(Class<?> cls) {
        Map map;
        Map<Class<?>, Map<String, Object>> map2 = typeOptions;
        Map<String, Object> map3 = map2.get(cls);
        if (map3 != null) {
            return map3;
        }
        Class<?> clsFindEnclosingLibraryClass = findEnclosingLibraryClass(cls);
        if (clsFindEnclosingLibraryClass != null) {
            loadLibraryInstance(clsFindEnclosingLibraryClass);
        } else {
            clsFindEnclosingLibraryClass = cls;
        }
        Map<String, Object> map4 = map2.get(clsFindEnclosingLibraryClass);
        if (map4 != null) {
            map2.put(cls, map4);
            return map4;
        }
        try {
            Field field = clsFindEnclosingLibraryClass.getField("OPTIONS");
            field.setAccessible(true);
            map = (Map) field.get(null);
            if (map == null) {
                throw new IllegalStateException("Null options field");
            }
        } catch (NoSuchFieldException unused) {
            map = Collections.EMPTY_MAP;
        } catch (Exception e) {
            b.v("OPTIONS must be a public field of type java.util.Map (", e, "): ", clsFindEnclosingLibraryClass);
            return null;
        }
        HashMap map5 = new HashMap(map);
        if (!map5.containsKey(Library.OPTION_TYPE_MAPPER)) {
            map5.put(Library.OPTION_TYPE_MAPPER, lookupField(clsFindEnclosingLibraryClass, "TYPE_MAPPER", TypeMapper.class));
        }
        if (!map5.containsKey(Library.OPTION_STRUCTURE_ALIGNMENT)) {
            map5.put(Library.OPTION_STRUCTURE_ALIGNMENT, lookupField(clsFindEnclosingLibraryClass, "STRUCTURE_ALIGNMENT", Integer.class));
        }
        if (!map5.containsKey(Library.OPTION_STRING_ENCODING)) {
            map5.put(Library.OPTION_STRING_ENCODING, lookupField(clsFindEnclosingLibraryClass, "STRING_ENCODING", String.class));
        }
        Map<String, Object> mapCacheOptions = cacheOptions(clsFindEnclosingLibraryClass, map5, null);
        if (cls != clsFindEnclosingLibraryClass) {
            typeOptions.put(cls, mapCacheOptions);
        }
        return mapCacheOptions;
    }

    public static native long getLong(Pointer pointer, long j9, long j10);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int getNativeSize(Class<?> cls) {
        if (NativeMapped.class.isAssignableFrom(cls)) {
            cls = NativeMappedConverter.getInstance(cls).nativeType();
        }
        if (cls == Boolean.TYPE || cls == Boolean.class) {
            return 4;
        }
        if (cls == Byte.TYPE || cls == Byte.class) {
            return 1;
        }
        if (cls == Short.TYPE || cls == Short.class) {
            return 2;
        }
        if (cls == Character.TYPE || cls == Character.class) {
            return WCHAR_SIZE;
        }
        if (cls == Integer.TYPE || cls == Integer.class) {
            return 4;
        }
        if (cls == Long.TYPE || cls == Long.class) {
            return 8;
        }
        if (cls == Float.TYPE || cls == Float.class) {
            return 4;
        }
        if (cls == Double.TYPE || cls == Double.class) {
            return 8;
        }
        if (Structure.class.isAssignableFrom(cls)) {
            return Structure$ByValue.class.isAssignableFrom(cls) ? Structure.size(cls) : POINTER_SIZE;
        }
        if (Pointer.class.isAssignableFrom(cls) || ((Platform.HAS_BUFFERS && Native$Buffers.isBuffer(cls)) || Callback.class.isAssignableFrom(cls) || String.class == cls || WString.class == cls)) {
            return POINTER_SIZE;
        }
        b.x(cls.getName(), "Native size for type \"", "\" is unknown");
        return 0;
    }

    private static native String getNativeVersion();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Pointer getPointer(long j9) {
        long j_getPointer = _getPointer(j9);
        if (j_getPointer == 0) {
            return null;
        }
        return new Pointer(j_getPointer);
    }

    public static native short getShort(Pointer pointer, long j9, long j10);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String getSignature(Class<?> cls) {
        if (cls.isArray()) {
            return "[" + getSignature(cls.getComponentType());
        }
        if (cls.isPrimitive()) {
            if (cls == Void.TYPE) {
                return ExifInterface.GPS_MEASUREMENT_INTERRUPTED;
            }
            if (cls == Boolean.TYPE) {
                return "Z";
            }
            if (cls == Byte.TYPE) {
                return "B";
            }
            if (cls == Short.TYPE) {
                return ExifInterface.LATITUDE_SOUTH;
            }
            if (cls == Character.TYPE) {
                return "C";
            }
            if (cls == Integer.TYPE) {
                return "I";
            }
            if (cls == Long.TYPE) {
                return "J";
            }
            if (cls == Float.TYPE) {
                return "F";
            }
            if (cls == Double.TYPE) {
                return "D";
            }
        }
        return "L" + replace(".", "/", cls.getName()) + ";";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String getString(Pointer pointer, long j9, String str) {
        byte[] stringBytes = getStringBytes(pointer, pointer.peer, j9);
        if (str != null) {
            try {
                return new String(stringBytes, str);
            } catch (UnsupportedEncodingException unused) {
            }
        }
        return new String(stringBytes);
    }

    public static native byte[] getStringBytes(Pointer pointer, long j9, long j10);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String getStringEncoding(Class<?> cls) {
        String str = (String) getLibraryOptions(cls).get(Library.OPTION_STRING_ENCODING);
        return str != null ? str : getDefaultStringEncoding();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int getStructureAlignment(Class<?> cls) {
        Integer num = (Integer) getLibraryOptions(cls).get(Library.OPTION_STRUCTURE_ALIGNMENT);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static File getTempDir() throws IOException {
        File file;
        File file2;
        String property = System.getProperty("jna.tmpdir");
        if (property != null) {
            file = new File(property);
            file.mkdirs();
        } else {
            file = new File(System.getProperty("java.io.tmpdir"));
            if (Platform.isMac()) {
                file2 = new File(System.getProperty("user.home"), "Library/Caches/JNA/temp");
            } else if (Platform.isLinux() || Platform.isSolaris() || Platform.isAIX() || Platform.isFreeBSD() || Platform.isNetBSD() || Platform.isOpenBSD() || Platform.iskFreeBSD()) {
                String str = System.getenv("XDG_CACHE_HOME");
                file2 = new File((str == null || str.trim().isEmpty()) ? new File(System.getProperty("user.home"), ".cache") : new File(str), "JNA/temp");
            } else {
                file2 = new File(file, "jna-" + System.getProperty("user.name").hashCode());
            }
            file2.mkdirs();
            if (file2.exists() && file2.canWrite()) {
                file = file2;
            }
        }
        if (!file.exists()) {
            b.u(file, "JNA temporary directory '", "' does not exist");
            return null;
        }
        if (file.canWrite()) {
            return file;
        }
        b.u(file, "JNA temporary directory '", "' is not writable");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Pointer getTerminationFlag(Thread thread) {
        return nativeThreads.get(thread);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static TypeMapper getTypeMapper(Class<?> cls) {
        return (TypeMapper) getLibraryOptions(cls).get(Library.OPTION_TYPE_MAPPER);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String getWebStartLibraryPath(String str) {
        if (System.getProperty("javawebstart.version") == null) {
            return null;
        }
        try {
            String str2 = (String) ((Method) AccessController.doPrivileged(new Native$4())).invoke(Native.class.getClassLoader(), str);
            if (str2 != null) {
                return new File(str2).getParent();
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static native String getWideString(Pointer pointer, long j9, long j10);

    public static native long getWindowHandle0(Component component);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long getWindowID(Window window) {
        return Native$AWT.getWindowID(window);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Pointer getWindowPointer(Window window) {
        return new Pointer(Native$AWT.getWindowID(window));
    }

    public static native long indexOf(Pointer pointer, long j9, long j10, byte b9);

    private static native void initIDs();

    public static native int initialize_ffi_type(long j9);

    public static native double invokeDouble(Function function, long j9, int i9, Object[] objArr);

    public static native float invokeFloat(Function function, long j9, int i9, Object[] objArr);

    public static native int invokeInt(Function function, long j9, int i9, Object[] objArr);

    public static native long invokeLong(Function function, long j9, int i9, Object[] objArr);

    public static native Object invokeObject(Function function, long j9, int i9, Object[] objArr);

    public static native long invokePointer(Function function, long j9, int i9, Object[] objArr);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Structure invokeStructure(Function function, long j9, int i9, Object[] objArr, Structure structure) {
        invokeStructure(function, j9, i9, objArr, structure.getPointer().peer, structure.getTypeInfo().peer);
        return structure;
    }

    private static native void invokeStructure(Function function, long j9, int i9, Object[] objArr, long j10, long j11);

    public static native void invokeVoid(Function function, long j9, int i9, Object[] objArr);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isCompatibleVersion(String str, String str2) {
        String[] strArrSplit = str.split("\\.");
        String[] strArrSplit2 = str2.split("\\.");
        if (strArrSplit.length < 3 || strArrSplit2.length < 3) {
            return false;
        }
        return Integer.parseInt(strArrSplit[0]) == Integer.parseInt(strArrSplit2[0]) && Integer.parseInt(strArrSplit[1]) <= Integer.parseInt(strArrSplit2[1]);
    }

    public static native synchronized boolean isProtected();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isSupportedNativeType(Class<?> cls) {
        if (Structure.class.isAssignableFrom(cls)) {
            return true;
        }
        try {
            return getNativeSize(cls) != 0;
        } catch (IllegalArgumentException unused) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isUnpacked(File file) {
        return file.getName().startsWith(JNA_TMPLIB_PREFIX);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <T extends Library> T load(String str, Class<T> cls, Map<String, ?> map) {
        if (!Library.class.isAssignableFrom(cls)) {
            b.w("Interface (", cls.getSimpleName(), ") of library=", str, " does not extend Library");
            return null;
        }
        Object objNewProxyInstance = Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new Library$Handler(str, cls, map));
        cacheOptions(cls, map, objNewProxyInstance);
        return cls.cast(objNewProxyInstance);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public static <T> T loadLibrary(String str, Class<T> cls, Map<String, ?> map) {
        if (!Library.class.isAssignableFrom(cls)) {
            b.w("Interface (", cls.getSimpleName(), ") of library=", str, " does not extend Library");
            return null;
        }
        Object objNewProxyInstance = Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new Library$Handler(str, cls, map));
        cacheOptions(cls, map, objNewProxyInstance);
        return cls.cast(objNewProxyInstance);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void loadLibraryInstance(Class<?> cls) {
        if (cls == null || libraries.containsKey(cls)) {
            return;
        }
        try {
            for (Field field : cls.getFields()) {
                if (field.getType() == cls && Modifier.isStatic(field.getModifiers())) {
                    field.setAccessible(true);
                    libraries.put(cls, new WeakReference(field.get(null)));
                    return;
                }
            }
        } catch (Exception e) {
            b.r("Could not access instance of ", cls, " (", e, ")");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void loadNativeDispatchLibrary() throws Throwable {
        if (!Boolean.getBoolean("jna.nounpack")) {
            try {
                removeTemporaryFiles();
            } catch (IOException e) {
                LOG.log(Level.WARNING, "JNA Warning: IOException removing temporary files", (Throwable) e);
            }
        }
        String property = System.getProperty("jna.boot.library.name", "jnidispatch");
        String property2 = System.getProperty("jna.boot.library.path");
        if (property2 != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(property2, File.pathSeparator);
            while (stringTokenizer.hasMoreTokens()) {
                File file = new File(new File(stringTokenizer.nextToken()), System.mapLibraryName(property).replace(".dylib", ".jnilib"));
                String absolutePath = file.getAbsolutePath();
                Logger logger = LOG;
                Level level = DEBUG_JNA_LOAD_LEVEL;
                logger.log(level, "Looking in {0}", absolutePath);
                if (file.exists()) {
                    try {
                        logger.log(level, "Trying {0}", absolutePath);
                        System.setProperty("jnidispatch.path", absolutePath);
                        System.load(absolutePath);
                        jnidispatchPath = absolutePath;
                        logger.log(level, "Found jnidispatch at {0}", absolutePath);
                        return;
                    } catch (UnsatisfiedLinkError unused) {
                    }
                }
                if (Platform.isMac()) {
                    String str = "dylib";
                    String str2 = "jnilib";
                    if (!absolutePath.endsWith("dylib")) {
                        str2 = "dylib";
                        str = "jnilib";
                    }
                    String strConcat = absolutePath.substring(0, absolutePath.lastIndexOf(str)).concat(str2);
                    Logger logger2 = LOG;
                    Level level2 = DEBUG_JNA_LOAD_LEVEL;
                    logger2.log(level2, "Looking in {0}", strConcat);
                    if (new File(strConcat).exists()) {
                        try {
                            logger2.log(level2, "Trying {0}", strConcat);
                            System.setProperty("jnidispatch.path", strConcat);
                            System.load(strConcat);
                            jnidispatchPath = strConcat;
                            logger2.log(level2, "Found jnidispatch at {0}", strConcat);
                            return;
                        } catch (UnsatisfiedLinkError e6) {
                            Logger logger3 = LOG;
                            Level level3 = Level.WARNING;
                            StringBuilder sbX = a.x("File found at ", strConcat, " but not loadable: ");
                            sbX.append(e6.getMessage());
                            logger3.log(level3, sbX.toString(), (Throwable) e6);
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
        if (!Boolean.parseBoolean(System.getProperty("jna.nosys", "true")) || Platform.isAndroid()) {
            try {
                Logger logger4 = LOG;
                Level level4 = DEBUG_JNA_LOAD_LEVEL;
                logger4.log(level4, "Trying (via loadLibrary) {0}", property);
                System.loadLibrary(property);
                logger4.log(level4, "Found jnidispatch on system path");
                return;
            } catch (UnsatisfiedLinkError unused2) {
            }
        }
        if (Boolean.getBoolean("jna.noclasspath")) {
            throw new UnsatisfiedLinkError("Unable to locate JNA native support library");
        }
        loadNativeDispatchLibraryFromClasspath();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void loadNativeDispatchLibraryFromClasspath() throws Throwable {
        try {
            String strReplace = System.mapLibraryName("jnidispatch").replace(".dylib", ".jnilib");
            if (Platform.isAIX()) {
                strReplace = "libjnidispatch.a";
            }
            File fileExtractFromResourcePath = extractFromResourcePath("/com/sun/jna/" + Platform.RESOURCE_PREFIX + "/" + strReplace, Native.class.getClassLoader());
            if (fileExtractFromResourcePath == null && fileExtractFromResourcePath == null) {
                throw new UnsatisfiedLinkError("Could not find JNA native support");
            }
            Logger logger = LOG;
            Level level = DEBUG_JNA_LOAD_LEVEL;
            logger.log(level, "Trying {0}", fileExtractFromResourcePath.getAbsolutePath());
            System.setProperty("jnidispatch.path", fileExtractFromResourcePath.getAbsolutePath());
            System.load(fileExtractFromResourcePath.getAbsolutePath());
            String absolutePath = fileExtractFromResourcePath.getAbsolutePath();
            jnidispatchPath = absolutePath;
            logger.log(level, "Found jnidispatch at {0}", absolutePath);
            if (!isUnpacked(fileExtractFromResourcePath) || Boolean.getBoolean("jnidispatch.preserve")) {
                return;
            }
            deleteLibrary(fileExtractFromResourcePath);
        } catch (IOException e) {
            throw new UnsatisfiedLinkError(e.getMessage());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static Object lookupField(Class<?> cls, String str, Class<?> cls2) {
        try {
            Field field = cls.getField(str);
            field.setAccessible(true);
            return field.get(null);
        } catch (NoSuchFieldException unused) {
            return null;
        } catch (Exception e) {
            b.m(a.w(str, " must be a public field of type "), cls2.getName(), " (", e, "): ", cls);
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void main(String[] strArr) {
        Package r9 = Native.class.getPackage();
        String specificationTitle = r9 != null ? r9.getSpecificationTitle() : "Java Native Access (JNA)";
        String str = specificationTitle != null ? specificationTitle : "Java Native Access (JNA)";
        String str2 = Version.VERSION;
        String specificationVersion = r9 != null ? r9.getSpecificationVersion() : Version.VERSION;
        if (specificationVersion != null) {
            str2 = specificationVersion;
        }
        System.out.println(a.D(str, " API Version ", str2));
        String implementationVersion = r9 != null ? r9.getImplementationVersion() : "5.13.0 (package information missing)";
        System.out.println("Version: ".concat(implementationVersion != null ? implementationVersion : "5.13.0 (package information missing)"));
        System.out.println(" Native: " + getNativeVersion() + " (" + getAPIChecksum() + ")");
        PrintStream printStream = System.out;
        StringBuilder sb = new StringBuilder(" Prefix: ");
        sb.append(Platform.RESOURCE_PREFIX);
        printStream.println(sb.toString());
    }

    public static native long malloc(long j9);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void markTemporaryFile(File file) {
        try {
            new File(file.getParentFile(), file.getName() + ".x").createNewFile();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static Class<?> nativeType(Class<?> cls) {
        return NativeMappedConverter.getInstance(cls).nativeType();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long open(String str) {
        return open(str, -1);
    }

    public static native long open(String str, int i9);

    public static native void read(Pointer pointer, long j9, long j10, byte[] bArr, int i9, int i10);

    public static native void read(Pointer pointer, long j9, long j10, char[] cArr, int i9, int i10);

    public static native void read(Pointer pointer, long j9, long j10, double[] dArr, int i9, int i10);

    public static native void read(Pointer pointer, long j9, long j10, float[] fArr, int i9, int i10);

    public static native void read(Pointer pointer, long j9, long j10, int[] iArr, int i9, int i10);

    public static native void read(Pointer pointer, long j9, long j10, long[] jArr, int i9, int i10);

    public static native void read(Pointer pointer, long j9, long j10, short[] sArr, int i9, int i10);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:20:0x0091  */
    /* JADX WARN: Code duplicated, block: B:63:0x01ab A[FALL_THROUGH] */
    public static void register(Class<?> cls, NativeLibrary nativeLibrary) {
        long j9;
        long j10;
        FromNativeConverter fromNativeConverter;
        boolean z8;
        String str;
        long j11;
        Class<?> cls2 = cls;
        Method[] declaredMethods = cls2.getDeclaredMethods();
        ArrayList arrayList = new ArrayList();
        Map<String, ?> options = nativeLibrary.getOptions();
        TypeMapper typeMapper = (TypeMapper) options.get(Library.OPTION_TYPE_MAPPER);
        boolean zEquals = Boolean.TRUE.equals(options.get(Library.OPTION_ALLOW_OBJECTS));
        cacheOptions(cls2, options, null);
        for (Method method : declaredMethods) {
            if ((method.getModifiers() & 256) != 0) {
                arrayList.add(method);
            }
        }
        int size = arrayList.size();
        long[] jArr = new long[size];
        int i9 = 0;
        while (i9 < size) {
            Method method2 = (Method) arrayList.get(i9);
            Class<?> returnType = method2.getReturnType();
            Class<?>[] parameterTypes = method2.getParameterTypes();
            long[] jArr2 = new long[parameterTypes.length];
            long[] jArr3 = new long[parameterTypes.length];
            int[] iArr = new int[parameterTypes.length];
            ToNativeConverter[] toNativeConverterArr = new ToNativeConverter[parameterTypes.length];
            int conversion = getConversion(returnType, typeMapper, zEquals);
            int i10 = size;
            if (conversion == -1) {
                StringBuilder sb = new StringBuilder();
                sb.append(returnType);
                b.m(sb, " is not a supported return type (in method ", method2.getName(), " in ", cls2, ")");
                return;
            }
            ArrayList arrayList2 = arrayList;
            if (conversion == 3) {
                j9 = Structure$FFIType.get(Pointer.class).getPointer().peer;
                j10 = j9;
                fromNativeConverter = null;
            } else {
                if (conversion != 4) {
                    switch (conversion) {
                        default:
                            switch (conversion) {
                                case 21:
                                case 22:
                                    break;
                                case 23:
                                case 24:
                                case 25:
                                    jArr = jArr;
                                    FromNativeConverter fromNativeConverter2 = typeMapper.getFromNativeConverter(returnType);
                                    long j12 = Structure$FFIType.get(returnType.isPrimitive() ? returnType : Pointer.class).getPointer().peer;
                                    j9 = Structure$FFIType.get(fromNativeConverter2.nativeType()).getPointer().peer;
                                    fromNativeConverter = fromNativeConverter2;
                                    j10 = j12;
                                    break;
                                case 26:
                                    j9 = Structure$FFIType.get(Pointer.class).getPointer().peer;
                                    j10 = j9;
                                    fromNativeConverter = null;
                                    break;
                                default:
                                    j9 = Structure$FFIType.get(returnType).getPointer().peer;
                                    j10 = j9;
                                    fromNativeConverter = null;
                                    break;
                            }
                        case 17:
                        case 18:
                        case 19:
                            j10 = Structure$FFIType.get(Pointer.class).getPointer().peer;
                            j11 = Structure$FFIType.get(NativeMappedConverter.getInstance(returnType).nativeType()).getPointer().peer;
                            break;
                    }
                } else {
                    j10 = Structure$FFIType.get(Pointer.class).getPointer().peer;
                    j11 = Structure$FFIType.get(returnType).getPointer().peer;
                }
                j9 = j11;
                fromNativeConverter = null;
            }
            long j13 = j9;
            String string = "(";
            FromNativeConverter fromNativeConverter3 = fromNativeConverter;
            int i11 = 0;
            while (i11 < parameterTypes.length) {
                Class<?> clsNativeType = parameterTypes[i11];
                StringBuilder sbU = a.u(string);
                int i12 = i11;
                sbU.append(getSignature(clsNativeType));
                string = sbU.toString();
                int conversion2 = getConversion(clsNativeType, typeMapper, zEquals);
                iArr[i12] = conversion2;
                if (conversion2 == -1) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(clsNativeType);
                    b.m(sb2, " is not a supported argument type (in method ", method2.getName(), " in ", cls2, ")");
                    return;
                }
                if (conversion2 == 17 || conversion2 == 18 || conversion2 == 19 || conversion2 == 21) {
                    clsNativeType = NativeMappedConverter.getInstance(clsNativeType).nativeType();
                } else if (conversion2 == 23 || conversion2 == 24 || conversion2 == 25) {
                    toNativeConverterArr[i12] = typeMapper.getToNativeConverter(clsNativeType);
                }
                if (conversion2 == 0) {
                    long j14 = Structure$FFIType.get(clsNativeType).getPointer().peer;
                    jArr2[i12] = j14;
                    jArr3[i12] = j14;
                } else if (conversion2 != 4) {
                    switch (conversion2) {
                        default:
                            switch (conversion2) {
                                case 21:
                                case 22:
                                    break;
                                case 23:
                                case 24:
                                case 25:
                                    if (!clsNativeType.isPrimitive()) {
                                        clsNativeType = Pointer.class;
                                    }
                                    jArr3[i12] = Structure$FFIType.get(clsNativeType).getPointer().peer;
                                    jArr2[i12] = Structure$FFIType.get(toNativeConverterArr[i12].nativeType()).getPointer().peer;
                                    break;
                                default:
                                    long j15 = Structure$FFIType.get(Pointer.class).getPointer().peer;
                                    jArr2[i12] = j15;
                                    jArr3[i12] = j15;
                                    break;
                            }
                        case 17:
                        case 18:
                        case 19:
                            jArr2[i12] = Structure$FFIType.get(clsNativeType).getPointer().peer;
                            jArr3[i12] = Structure$FFIType.get(Pointer.class).getPointer().peer;
                            break;
                    }
                } else {
                    jArr2[i12] = Structure$FFIType.get(clsNativeType).getPointer().peer;
                    jArr3[i12] = Structure$FFIType.get(Pointer.class).getPointer().peer;
                }
                i11 = i12 + 1;
            }
            StringBuilder sbU2 = a.u(string.concat(")"));
            sbU2.append(getSignature(returnType));
            String string2 = sbU2.toString();
            Class<?>[] exceptionTypes = method2.getExceptionTypes();
            int i13 = 0;
            while (true) {
                if (i13 >= exceptionTypes.length) {
                    z8 = false;
                } else if (LastErrorException.class.isAssignableFrom(exceptionTypes[i13])) {
                    z8 = true;
                } else {
                    i13++;
                }
            }
            Function function = nativeLibrary.getFunction(method2.getName(), method2);
            try {
                String name = method2.getName();
                long j16 = function.peer;
                int callingConvention = function.getCallingConvention();
                String str2 = function.encoding;
                boolean z9 = zEquals;
                long j17 = j10;
                TypeMapper typeMapper2 = typeMapper;
                int i14 = i9;
                str = string2;
                long[] jArr4 = jArr;
                try {
                    long jRegisterMethod = registerMethod(cls, name, str, iArr, jArr3, jArr2, conversion, j17, j13, method2, j16, callingConvention, z8, toNativeConverterArr, fromNativeConverter3, str2);
                    cls2 = cls;
                    try {
                        jArr4[i14] = jRegisterMethod;
                        i9 = i14 + 1;
                        jArr = jArr4;
                        zEquals = z9;
                        size = i10;
                        arrayList = arrayList2;
                        typeMapper = typeMapper2;
                    } catch (NoSuchMethodError unused) {
                        throw new UnsatisfiedLinkError("No method " + method2.getName() + " with signature " + str + " in " + cls2);
                    }
                } catch (NoSuchMethodError unused2) {
                    cls2 = cls;
                }
            } catch (NoSuchMethodError unused3) {
                cls2 = cls;
                str = string2;
            }
        }
        long[] jArr5 = jArr;
        Map<Class<?>, long[]> map = registeredClasses;
        synchronized (map) {
            map.put(cls2, jArr5);
            registeredLibraries.put(cls2, nativeLibrary);
        }
    }

    private static native long registerMethod(Class<?> cls, String str, String str2, int[] iArr, long[] jArr, long[] jArr2, int i9, long j9, long j10, Method method, long j11, int i10, boolean z8, ToNativeConverter[] toNativeConverterArr, FromNativeConverter fromNativeConverter, String str3);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean registered(Class<?> cls) {
        boolean zContainsKey;
        Map<Class<?>, long[]> map = registeredClasses;
        synchronized (map) {
            zContainsKey = map.containsKey(cls);
        }
        return zContainsKey;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void removeTemporaryFiles() {
        File[] fileArrListFiles = getTempDir().listFiles(new Native$5());
        for (int i9 = 0; fileArrListFiles != null && i9 < fileArrListFiles.length; i9++) {
            File file = fileArrListFiles[i9];
            String name = file.getName();
            File file2 = new File(file.getParentFile(), name.substring(0, name.length() - 2));
            if (!file2.exists() || file2.delete()) {
                file.delete();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String replace(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            int iIndexOf = str3.indexOf(str);
            if (iIndexOf == -1) {
                sb.append(str3);
                return sb.toString();
            }
            sb.append(str3.substring(0, iIndexOf));
            sb.append(str2);
            str3 = str3.substring(str.length() + iIndexOf);
        }
    }

    public static native void setByte(Pointer pointer, long j9, long j10, byte b9);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setCallbackExceptionHandler(Callback$UncaughtExceptionHandler callback$UncaughtExceptionHandler) {
        if (callback$UncaughtExceptionHandler == null) {
            callback$UncaughtExceptionHandler = DEFAULT_HANDLER;
        }
        callbackExceptionHandler = callback$UncaughtExceptionHandler;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setCallbackThreadInitializer(Callback callback, CallbackThreadInitializer callbackThreadInitializer) {
        CallbackReference.setCallbackThreadInitializer(callback, callbackThreadInitializer);
    }

    public static native void setChar(Pointer pointer, long j9, long j10, char c);

    private static native void setDetachState(boolean z8, long j9);

    public static native void setDouble(Pointer pointer, long j9, long j10, double d);

    public static native void setFloat(Pointer pointer, long j9, long j10, float f8);

    public static native void setInt(Pointer pointer, long j9, long j10, int i9);

    public static native void setLastError(int i9);

    public static native void setLong(Pointer pointer, long j9, long j10, long j11);

    public static native void setMemory(Pointer pointer, long j9, long j10, long j11, byte b9);

    public static native void setPointer(Pointer pointer, long j9, long j10, long j11);

    public static native synchronized void setProtected(boolean z8);

    public static native void setShort(Pointer pointer, long j9, long j10, short s5);

    public static native void setWideString(Pointer pointer, long j9, long j10, String str);

    private static native int sizeof(int i9);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Library synchronizedLibrary(Library library) {
        Class<?> cls = library.getClass();
        if (!Proxy.isProxyClass(cls)) {
            i.k("Library must be a proxy class");
            return null;
        }
        InvocationHandler invocationHandler = Proxy.getInvocationHandler(library);
        if (invocationHandler instanceof Library$Handler) {
            return (Library) Proxy.newProxyInstance(cls.getClassLoader(), cls.getInterfaces(), new Native$3((Library$Handler) invocationHandler, library));
        }
        b.t(invocationHandler, "Unrecognized proxy handler: ");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static byte[] toByteArray(String str, Charset charset) {
        byte[] bytes = getBytes(str, charset);
        byte[] bArr = new byte[bytes.length + 1];
        System.arraycopy(bytes, 0, bArr, 0, bytes.length);
        return bArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static char[] toCharArray(String str) {
        char[] charArray = str.toCharArray();
        char[] cArr = new char[charArray.length + 1];
        System.arraycopy(charArray, 0, cArr, 0, charArray.length);
        return cArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static Object toNative(ToNativeConverter toNativeConverter, Object obj) {
        return toNativeConverter.toNative(obj, new ToNativeContext());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String toString(byte[] bArr, Charset charset) {
        int length = bArr.length;
        for (int i9 = 0; i9 < length; i9++) {
            if (bArr[i9] == 0) {
                length = i9;
                break;
            }
        }
        return length == 0 ? "" : new String(bArr, 0, length, charset);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static List<String> toStringList(char[] cArr, int i9, int i10) {
        ArrayList arrayList = new ArrayList();
        int i11 = i10 + i9;
        int i12 = i9;
        while (i9 < i11) {
            if (cArr[i9] == 0) {
                if (i12 == i9) {
                    return arrayList;
                }
                arrayList.add(new String(cArr, i12, i9 - i12));
                i12 = i9 + 1;
            }
            i9++;
        }
        if (i12 < i11) {
            arrayList.add(new String(cArr, i12, i11 - i12));
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void unregister(Class<?> cls) {
        Map<Class<?>, long[]> map = registeredClasses;
        synchronized (map) {
            try {
                long[] jArr = map.get(cls);
                if (jArr != null) {
                    unregister(cls, jArr);
                    map.remove(cls);
                    registeredLibraries.remove(cls);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static native void unregister(Class<?> cls, long[] jArr);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void unregisterAll() {
        Map<Class<?>, long[]> map = registeredClasses;
        synchronized (map) {
            try {
                for (Map$Entry<Class<?>, long[]> map$Entry : map.entrySet()) {
                    unregister(map$Entry.getKey(), map$Entry.getValue());
                }
                registeredClasses.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static native void write(Pointer pointer, long j9, long j10, byte[] bArr, int i9, int i10);

    public static native void write(Pointer pointer, long j9, long j10, char[] cArr, int i9, int i10);

    public static native void write(Pointer pointer, long j9, long j10, double[] dArr, int i9, int i10);

    public static native void write(Pointer pointer, long j9, long j10, float[] fArr, int i9, int i10);

    public static native void write(Pointer pointer, long j9, long j10, int[] iArr, int i9, int i10);

    public static native void write(Pointer pointer, long j9, long j10, long[] jArr, int i9, int i10);

    public static native void write(Pointer pointer, long j9, long j10, short[] sArr, int i9, int i10);

    public static byte[] getBytes(String str, String str2) {
        return getBytes(str, getCharset(str2));
    }

    public static byte[] getBytes(String str, Charset charset) {
        return str.getBytes(charset);
    }

    public static byte[] toByteArray(String str, String str2) {
        return toByteArray(str, getCharset(str2));
    }

    public static byte[] toByteArray(String str) {
        return toByteArray(str, getDefaultStringEncoding());
    }

    public static String getString(Pointer pointer, long j9) {
        return getString(pointer, j9, getDefaultStringEncoding());
    }

    private static NativeMapped fromNative(Class<?> cls, Object obj) {
        return (NativeMapped) NativeMappedConverter.getInstance(cls).fromNative(obj, new FromNativeContext(cls));
    }

    private static Object fromNative(FromNativeConverter fromNativeConverter, Object obj, Method method) {
        return fromNativeConverter.fromNative(obj, new MethodResultContext(method.getReturnType(), null, null, method));
    }

    public static String toString(byte[] bArr, String str) {
        return toString(bArr, getCharset(str));
    }

    public static String toString(byte[] bArr) {
        return toString(bArr, getDefaultStringEncoding());
    }

    public static String toString(char[] cArr) {
        int length = cArr.length;
        for (int i9 = 0; i9 < length; i9++) {
            if (cArr[i9] == 0) {
                length = i9;
                break;
            }
        }
        if (length == 0) {
            return "";
        }
        return new String(cArr, 0, length);
    }

    public static void unregister() {
        unregister(findDirectMappedClass(getCallingClass()));
    }

    public static List<String> toStringList(char[] cArr) {
        return toStringList(cArr, 0, cArr.length);
    }

    @Deprecated
    public static <T> T loadLibrary(Class<T> cls, Map<String, ?> map) {
        return (T) loadLibrary(null, cls, map);
    }

    @Deprecated
    public static <T> T loadLibrary(String str, Class<T> cls) {
        return (T) loadLibrary(str, cls, Collections.EMPTY_MAP);
    }

    public static <T extends Library> T load(Class<T> cls, Map<String, ?> map) {
        return (T) load(null, cls, map);
    }

    @Deprecated
    public static <T> T loadLibrary(Class<T> cls) {
        return (T) loadLibrary((String) null, cls);
    }

    public static <T extends Library> T load(String str, Class<T> cls) {
        return (T) load(str, cls, Collections.EMPTY_MAP);
    }

    public static <T extends Library> T load(Class<T> cls) {
        return (T) load((String) null, cls);
    }

    public static int getNativeSize(Class<?> cls, Object obj) {
        if (cls.isArray()) {
            int length = Array.getLength(obj);
            if (length > 0) {
                return getNativeSize(cls.getComponentType(), Array.get(obj, 0)) * length;
            }
            i.k(a.j(cls, "Arrays of length zero not allowed: "));
            return 0;
        }
        if (Structure.class.isAssignableFrom(cls) && !Structure$ByReference.class.isAssignableFrom(cls)) {
            return Structure.size(cls, (Structure) obj);
        }
        try {
            return getNativeSize(cls);
        } catch (IllegalArgumentException e) {
            b.y("The type \"", cls.getName(), "\" is not supported: ", e.getMessage());
            return 0;
        }
    }

    public static File extractFromResourcePath(String str) {
        return extractFromResourcePath(str, null);
    }

    public static void register(NativeLibrary nativeLibrary) {
        register(findDirectMappedClass(getCallingClass()), nativeLibrary);
    }

    public static void register(Class<?> cls, String str) {
        register(cls, NativeLibrary.getInstance(str, (Map<String, ?>) Collections.singletonMap(Library.OPTION_CLASSLOADER, cls.getClassLoader())));
    }

    public static void register(String str) {
        register(findDirectMappedClass(getCallingClass()), str);
    }
}
