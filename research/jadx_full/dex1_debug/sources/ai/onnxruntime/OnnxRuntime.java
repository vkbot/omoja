package ai.onnxruntime;

import j1.i;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Locale;
import java.util.Optional;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
final class OnnxRuntime {
    static final String ONNXRUNTIME_JNI_LIBRARY_NAME = "onnxruntime4j_jni";
    static final String ONNXRUNTIME_LIBRARY_CUDA_NAME = "onnxruntime_providers_cuda";
    static final String ONNXRUNTIME_LIBRARY_DNNL_NAME = "onnxruntime_providers_dnnl";
    static final String ONNXRUNTIME_LIBRARY_NAME = "onnxruntime";
    static final String ONNXRUNTIME_LIBRARY_OPENVINO_NAME = "onnxruntime_providers_openvino";
    static final String ONNXRUNTIME_LIBRARY_QNN_NAME = "onnxruntime_providers_qnn";
    static final String ONNXRUNTIME_LIBRARY_ROCM_NAME = "onnxruntime_providers_rocm";
    static final String ONNXRUNTIME_LIBRARY_SHARED_NAME = "onnxruntime_providers_shared";
    static final String ONNXRUNTIME_LIBRARY_TENSORRT_NAME = "onnxruntime_providers_tensorrt";
    static final String ONNXRUNTIME_LIBRARY_WEBGPU_DAWN_NAME = "webgpu_dawn";
    static final String ONNXRUNTIME_LIBRARY_WEBGPU_DXC_DXCOMPILER_NAME = "dxcompiler";
    static final String ONNXRUNTIME_LIBRARY_WEBGPU_DXC_DXIL_NAME = "dxil";
    static final String ONNXRUNTIME_NATIVE_PATH = "onnxruntime.native.path";
    private static final int ORT_API_VERSION_1 = 1;
    private static final int ORT_API_VERSION_11 = 11;
    private static final int ORT_API_VERSION_13 = 13;
    private static final int ORT_API_VERSION_14 = 14;
    private static final int ORT_API_VERSION_2 = 2;
    private static final int ORT_API_VERSION_23 = 23;
    private static final int ORT_API_VERSION_3 = 3;
    private static final int ORT_API_VERSION_7 = 7;
    private static final int ORT_API_VERSION_8 = 8;
    private static final int ORT_TRAINING_API_VERSION_1 = 1;
    private static String libraryDirPathProperty;
    static long ortApiHandle;
    static long ortCompileApiHandle;
    static long ortTrainingApiHandle;
    static EnumSet<OrtProvider> providers;
    private static Path tempDirectory;
    static boolean trainingEnabled;
    private static String version;
    private static final Logger logger = Logger.getLogger(OnnxRuntime.class.getName());
    private static final String OS_ARCH_STR = initOsArch();
    private static boolean loaded = false;
    private static final Set<String> extractedSharedProviders = new HashSet();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private OnnxRuntime() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void cleanUp(File file) {
        if (file.exists()) {
            logger.log(Level.FINE, "Deleting " + file + " on exit");
            file.deleteOnExit();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean extractCUDA() {
        return extractProviderLibrary(ONNXRUNTIME_LIBRARY_CUDA_NAME);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean extractDNNL() {
        return extractProviderLibrary(ONNXRUNTIME_LIBRARY_DNNL_NAME);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:45:0x00b6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private static Optional<File> extractFromResources(String str) {
        String strMapLibraryName = mapLibraryName(str);
        String str2 = "/ai/onnxruntime/native/" + OS_ARCH_STR + '/' + strMapLibraryName;
        File fileR = c.r(c.u(tempDirectory, strMapLibraryName));
        try {
            try {
                InputStream resourceAsStream = OnnxRuntime.class.getResourceAsStream(str2);
                try {
                    if (resourceAsStream == null) {
                        Optional<File> optionalEmpty = Optional.empty();
                        if (resourceAsStream != null) {
                            resourceAsStream.close();
                        }
                        cleanUp(fileR);
                        return optionalEmpty;
                    }
                    logger.log(Level.FINE, "Attempting to load native library '" + str + "' from resource path " + str2 + " copying to " + fileR);
                    byte[] bArr = new byte[4096];
                    FileOutputStream fileOutputStream = new FileOutputStream(fileR);
                    while (true) {
                        try {
                            int i9 = resourceAsStream.read(bArr);
                            if (i9 == -1) {
                                fileOutputStream.close();
                                logger.log(Level.FINE, "Extracted native library '" + str + "' from resource path");
                                Optional<File> optionalOf = Optional.of(fileR);
                                resourceAsStream.close();
                                cleanUp(fileR);
                                return optionalOf;
                            }
                            fileOutputStream.write(bArr, 0, i9);
                        } catch (Throwable th) {
                            try {
                                fileOutputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                        if (resourceAsStream != null) {
                            try {
                                resourceAsStream.close();
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th4) {
                    if (resourceAsStream != null) {
                        resourceAsStream.close();
                    }
                    throw th4;
                }
            } catch (IOException e) {
                logger.log(Level.WARNING, "Failed to extract library '" + str + "' from the resources", (Throwable) e);
                Optional<File> optionalEmpty2 = Optional.empty();
                cleanUp(fileR);
                return optionalEmpty2;
            }
        } catch (Throwable th5) {
            cleanUp(fileR);
            throw th5;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean extractOpenVINO() {
        return extractProviderLibrary(ONNXRUNTIME_LIBRARY_OPENVINO_NAME);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static synchronized boolean extractProviderLibrary(String str) {
        if (isAndroid()) {
            return false;
        }
        Set<String> set = extractedSharedProviders;
        if (set.contains(str)) {
            return true;
        }
        if (libraryDirPathProperty != null) {
            if (c.r(c.t(libraryDirPathProperty, new String[]{mapLibraryName(str)})).exists()) {
                set.add(str);
                return true;
            }
        }
        if (!extractFromResources(str).isPresent()) {
            return false;
        }
        set.add(str);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean extractQNN() {
        return extractProviderLibrary(ONNXRUNTIME_LIBRARY_QNN_NAME);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean extractROCM() {
        return extractProviderLibrary(ONNXRUNTIME_LIBRARY_ROCM_NAME);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean extractTensorRT() {
        return extractProviderLibrary(ONNXRUNTIME_LIBRARY_TENSORRT_NAME);
    }

    private static native String[] getAvailableProviders(long j9);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static synchronized void init() {
        if (loaded) {
            return;
        }
        tempDirectory = isAndroid() ? null : c.v(new FileAttribute[0]);
        try {
            libraryDirPathProperty = System.getProperty(ONNXRUNTIME_NATIVE_PATH);
            extractProviderLibrary(ONNXRUNTIME_LIBRARY_SHARED_NAME);
            extractProviderLibrary(ONNXRUNTIME_LIBRARY_WEBGPU_DAWN_NAME);
            extractProviderLibrary(ONNXRUNTIME_LIBRARY_WEBGPU_DXC_DXIL_NAME);
            extractProviderLibrary(ONNXRUNTIME_LIBRARY_WEBGPU_DXC_DXCOMPILER_NAME);
            if (!isAndroid()) {
                load(ONNXRUNTIME_LIBRARY_NAME);
            }
            load(ONNXRUNTIME_JNI_LIBRARY_NAME);
            long jInitialiseAPIBase = initialiseAPIBase(23);
            ortApiHandle = jInitialiseAPIBase;
            if (jInitialiseAPIBase == 0) {
                throw new IllegalStateException("There is a mismatch between the ORT class files and the ORT native library, and the native library could not be loaded");
            }
            ortTrainingApiHandle = initialiseTrainingAPIBase(jInitialiseAPIBase, 23);
            ortCompileApiHandle = initialiseCompileAPIBase(ortApiHandle);
            trainingEnabled = ortTrainingApiHandle != 0;
            providers = initialiseProviders(ortApiHandle);
            version = initialiseVersion();
            loaded = true;
            Path path = tempDirectory;
            if (path != null) {
                cleanUp(c.r(path));
            }
        } catch (Throwable th) {
            Path path2 = tempDirectory;
            if (path2 != null) {
                cleanUp(c.r(path2));
            }
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:26:0x006c A[PHI: r1
  0x006c: PHI (r1v12 java.lang.String) = (r1v6 java.lang.String), (r1v7 java.lang.String), (r1v8 java.lang.String), (r1v9 java.lang.String) binds: [B:25:0x006a, B:28:0x0074, B:31:0x007d, B:34:0x0086] A[DONT_GENERATE, DONT_INLINE]] */
    private static String initOsArch() {
        String str;
        String property = System.getProperty("os.name", "generic");
        Locale locale = Locale.ENGLISH;
        String lowerCase = property.toLowerCase(locale);
        if (lowerCase.contains("mac") || lowerCase.contains("darwin")) {
            str = "osx";
        } else {
            str = "win";
            if (!lowerCase.contains("win")) {
                if (lowerCase.contains("nux")) {
                    str = "linux";
                } else {
                    if (!isAndroid()) {
                        i.l("Unsupported os:".concat(lowerCase));
                        return null;
                    }
                    str = "android";
                }
            }
        }
        String lowerCase2 = System.getProperty("os.arch", "generic").toLowerCase(locale);
        if (lowerCase2.startsWith("amd64") || lowerCase2.startsWith("x86_64")) {
            lowerCase2 = "x64";
        } else {
            String str2 = "x86";
            if (lowerCase2.startsWith("x86")) {
                lowerCase2 = str2;
            } else {
                str2 = "aarch64";
                if (lowerCase2.startsWith("aarch64")) {
                    lowerCase2 = str2;
                } else {
                    str2 = "ppc64";
                    if (lowerCase2.startsWith("ppc64")) {
                        lowerCase2 = str2;
                    } else {
                        str2 = "loongarch64";
                        if (lowerCase2.startsWith("loongarch64")) {
                            lowerCase2 = str2;
                        } else if (!isAndroid()) {
                            i.l("Unsupported arch:".concat(lowerCase2));
                            return null;
                        }
                    }
                }
            }
        }
        return str + '-' + lowerCase2;
    }

    private static native long initialiseAPIBase(int i9);

    private static native long initialiseCompileAPIBase(long j9);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static EnumSet<OrtProvider> initialiseProviders(long j9) {
        String[] availableProviders = getAvailableProviders(j9);
        EnumSet<OrtProvider> enumSetNoneOf = EnumSet.noneOf(OrtProvider.class);
        for (String str : availableProviders) {
            enumSetNoneOf.add(OrtProvider.mapFromName(str));
        }
        return enumSetNoneOf;
    }

    private static native long initialiseTrainingAPIBase(long j9, int i9);

    private static native String initialiseVersion();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isAndroid() {
        return System.getProperty("java.vendor", "generic").equals("The Android Project");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void load(String str) throws IOException {
        if (isAndroid()) {
            System.loadLibrary(str);
            return;
        }
        if (Boolean.TRUE.toString().equalsIgnoreCase(System.getProperty("onnxruntime.native." + str + ".skip"))) {
            logger.log(Level.FINE, "Skipping load of native library '" + str + "'");
            return;
        }
        String strMapLibraryName = mapLibraryName(str);
        if (libraryDirPathProperty != null) {
            Logger logger2 = logger;
            Level level = Level.FINE;
            StringBuilder sbX = a.x("Attempting to load native library '", str, "' from specified path: ");
            sbX.append(libraryDirPathProperty);
            logger2.log(level, sbX.toString());
            File fileR = c.r(c.t(libraryDirPathProperty, new String[]{strMapLibraryName}));
            String absolutePath = fileR.getAbsolutePath();
            if (!fileR.exists()) {
                b.m("Native library '", str, "' not found at ", absolutePath);
                return;
            }
            System.load(absolutePath);
            logger2.log(level, "Loaded native library '" + str + "' from specified path");
            return;
        }
        String property = System.getProperty("onnxruntime.native." + str + ".path");
        if (property != null) {
            Logger logger3 = logger;
            Level level2 = Level.FINE;
            logger3.log(level2, "Attempting to load native library '" + str + "' from specified path: " + property);
            File file = new File(property);
            String absolutePath2 = file.getAbsolutePath();
            if (!file.exists()) {
                b.m("Native library '", str, "' not found at ", absolutePath2);
                return;
            }
            System.load(absolutePath2);
            logger3.log(level2, "Loaded native library '" + str + "' from specified path");
            return;
        }
        Optional<File> optionalExtractFromResources = extractFromResources(str);
        if (optionalExtractFromResources.isPresent()) {
            System.load(optionalExtractFromResources.get().getAbsolutePath());
            logger.log(Level.FINE, "Loaded native library '" + str + "' from resource path");
            return;
        }
        Logger logger4 = logger;
        Level level3 = Level.FINE;
        logger4.log(level3, "Attempting to load native library '" + str + "' from library path");
        System.loadLibrary(str);
        logger4.log(level3, "Loaded native library '" + str + "' from library path");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static String mapLibraryName(String str) {
        return System.mapLibraryName(str).replace("jnilib", "dylib");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String version() {
        return version;
    }
}
