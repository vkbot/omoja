package com.sun.jna;

import ai.onnxruntime.AbstractC0074a;
import java.io.File;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class Platform {
    public static final int AIX = 7;
    public static final int ANDROID = 8;
    public static final String ARCH;
    public static final String C_LIBRARY_NAME;
    public static final int FREEBSD = 4;
    public static final int GNU = 9;
    public static final boolean HAS_AWT;
    public static final boolean HAS_BUFFERS;
    public static final boolean HAS_DLL_CALLBACKS;
    public static final boolean HAS_JAWT;
    public static final int KFREEBSD = 10;
    public static final int LINUX = 1;
    public static final int MAC = 0;
    public static final String MATH_LIBRARY_NAME;
    public static final int NETBSD = 11;
    public static final int OPENBSD = 5;
    public static final String RESOURCE_PREFIX;
    public static final boolean RO_FIELDS;
    public static final int SOLARIS = 3;
    public static final int UNSPECIFIED = -1;
    public static final int WINDOWS = 2;
    public static final int WINDOWSCE = 6;
    private static final int osType;

    static {
        boolean z9;
        String str;
        String property = System.getProperty("os.name");
        boolean z10 = false;
        if (property.startsWith("Linux")) {
            if ("dalvik".equals(System.getProperty("java.vm.name").toLowerCase())) {
                osType = 8;
                System.setProperty("jna.nounpack", "true");
            } else {
                osType = 1;
            }
        } else if (property.startsWith("AIX")) {
            osType = 7;
        } else if (property.startsWith("Mac") || property.startsWith("Darwin")) {
            osType = 0;
        } else if (property.startsWith("Windows CE")) {
            osType = 6;
        } else if (property.startsWith("Windows")) {
            osType = 2;
        } else if (property.startsWith("Solaris") || property.startsWith("SunOS")) {
            osType = 3;
        } else if (property.startsWith("FreeBSD")) {
            osType = 4;
        } else if (property.startsWith("OpenBSD")) {
            osType = 5;
        } else if (property.equalsIgnoreCase("gnu")) {
            osType = 9;
        } else if (property.equalsIgnoreCase("gnu/kfreebsd")) {
            osType = 10;
        } else if (property.equalsIgnoreCase("netbsd")) {
            osType = 11;
        } else {
            osType = -1;
        }
        try {
            Class.forName("java.nio.Buffer");
            z9 = true;
        } catch (ClassNotFoundException unused) {
            z9 = false;
        }
        int i10 = osType;
        boolean z11 = (i10 == 6 || i10 == 8 || i10 == 7) ? false : true;
        HAS_AWT = z11;
        HAS_JAWT = z11 && i10 != 0;
        HAS_BUFFERS = z9;
        RO_FIELDS = i10 != 6;
        String str2 = "coredll";
        if (i10 == 2) {
            str = "msvcrt";
        } else {
            str = i10 == 6 ? "coredll" : "c";
        }
        C_LIBRARY_NAME = str;
        if (i10 == 2) {
            str2 = "msvcrt";
        } else if (i10 != 6) {
            str2 = "m";
        }
        MATH_LIBRARY_NAME = str2;
        String canonicalArchitecture = getCanonicalArchitecture(System.getProperty("os.arch"), i10);
        ARCH = canonicalArchitecture;
        if (i10 == 2 && !canonicalArchitecture.startsWith("aarch")) {
            z10 = true;
        }
        HAS_DLL_CALLBACKS = z10;
        RESOURCE_PREFIX = getNativeLibraryResourcePrefix();
    }

    private Platform() {
    }

    public static String getCanonicalArchitecture(String str, int i10) {
        String strTrim = str.toLowerCase().trim();
        if ("powerpc".equals(strTrim)) {
            strTrim = "ppc";
        } else if ("powerpc64".equals(strTrim)) {
            strTrim = "ppc64";
        } else if ("i386".equals(strTrim) || "i686".equals(strTrim)) {
            strTrim = "x86";
        } else if ("x86_64".equals(strTrim) || "amd64".equals(strTrim)) {
            strTrim = "x86-64";
        } else if ("zarch_64".equals(strTrim)) {
            strTrim = "s390x";
        }
        if ("ppc64".equals(strTrim) && "little".equals(System.getProperty("sun.cpu.endian"))) {
            strTrim = "ppc64le";
        }
        return ("arm".equals(strTrim) && i10 == 1 && isSoftFloat()) ? "armel" : strTrim;
    }

    public static String getNativeLibraryResourcePrefix(int i10, String str, String str2) {
        String canonicalArchitecture = getCanonicalArchitecture(str, i10);
        switch (i10) {
            case 0:
                return AbstractC0074a.m161l("darwin-", canonicalArchitecture);
            case 1:
                return AbstractC0074a.m161l("linux-", canonicalArchitecture);
            case 2:
                return AbstractC0074a.m161l("win32-", canonicalArchitecture);
            case 3:
                return AbstractC0074a.m161l("sunos-", canonicalArchitecture);
            case 4:
                return AbstractC0074a.m161l("freebsd-", canonicalArchitecture);
            case 5:
                return AbstractC0074a.m161l("openbsd-", canonicalArchitecture);
            case 6:
                return AbstractC0074a.m161l("w32ce-", canonicalArchitecture);
            case 7:
            case 9:
            default:
                String lowerCase = str2.toLowerCase();
                int iIndexOf = lowerCase.indexOf(" ");
                if (iIndexOf != -1) {
                    lowerCase = lowerCase.substring(0, iIndexOf);
                }
                return AbstractC0074a.m149D(lowerCase, "-", canonicalArchitecture);
            case 8:
                if (canonicalArchitecture.startsWith("arm")) {
                    canonicalArchitecture = "arm";
                }
                return "android-".concat(canonicalArchitecture);
            case 10:
                return AbstractC0074a.m161l("kfreebsd-", canonicalArchitecture);
            case 11:
                return AbstractC0074a.m161l("netbsd-", canonicalArchitecture);
        }
    }

    public static final int getOSType() {
        return osType;
    }

    public static final boolean hasRuntimeExec() {
        return (isWindowsCE() && "J9".equals(System.getProperty("java.vm.name"))) ? false : true;
    }

    public static final boolean is64Bit() {
        String property = System.getProperty("sun.arch.data.model", System.getProperty("com.ibm.vm.bitmode"));
        if (property != null) {
            return "64".equals(property);
        }
        String str = ARCH;
        return "x86-64".equals(str) || "ia64".equals(str) || "ppc64".equals(str) || "ppc64le".equals(str) || "sparcv9".equals(str) || "mips64".equals(str) || "mips64el".equals(str) || "loongarch64".equals(str) || "amd64".equals(str) || "aarch64".equals(str) || Native.POINTER_SIZE == 8;
    }

    public static final boolean isAIX() {
        return osType == 7;
    }

    public static final boolean isARM() {
        String str = ARCH;
        return str.startsWith("arm") || str.startsWith("aarch");
    }

    public static final boolean isAndroid() {
        return osType == 8;
    }

    public static final boolean isFreeBSD() {
        return osType == 4;
    }

    public static final boolean isGNU() {
        return osType == 9;
    }

    public static final boolean isIntel() {
        return ARCH.startsWith("x86");
    }

    public static final boolean isLinux() {
        return osType == 1;
    }

    public static final boolean isLoongArch() {
        return ARCH.startsWith("loongarch");
    }

    public static final boolean isMIPS() {
        String str = ARCH;
        return str.equals("mips") || str.equals("mips64") || str.equals("mipsel") || str.equals("mips64el");
    }

    public static final boolean isMac() {
        return osType == 0;
    }

    public static final boolean isNetBSD() {
        return osType == 11;
    }

    public static final boolean isOpenBSD() {
        return osType == 5;
    }

    public static final boolean isPPC() {
        return ARCH.startsWith("ppc");
    }

    public static final boolean isSPARC() {
        return ARCH.startsWith("sparc");
    }

    public static boolean isSoftFloat() {
        try {
            File file = new File("/proc/self/exe");
            if (file.exists()) {
                return !ELFAnalyser.analyse(file.getCanonicalPath()).isArmHardFloat();
            }
            return false;
        } catch (IOException e) {
            Logger.getLogger(Platform.class.getName()).log(Level.INFO, "Failed to read '/proc/self/exe' or the target binary.", (Throwable) e);
            return false;
        } catch (SecurityException e6) {
            Logger.getLogger(Platform.class.getName()).log(Level.INFO, "SecurityException while analysing '/proc/self/exe' or the target binary.", (Throwable) e6);
            return false;
        }
    }

    public static final boolean isSolaris() {
        return osType == 3;
    }

    public static final boolean isWindows() {
        int i10 = osType;
        return i10 == 2 || i10 == 6;
    }

    public static final boolean isWindowsCE() {
        return osType == 6;
    }

    public static final boolean isX11() {
        return (isWindows() || isMac()) ? false : true;
    }

    public static final boolean iskFreeBSD() {
        return osType == 10;
    }

    public static String getNativeLibraryResourcePrefix() {
        String property = System.getProperty("jna.prefix");
        return property != null ? property : getNativeLibraryResourcePrefix(getOSType(), System.getProperty("os.arch"), System.getProperty("os.name"));
    }
}
