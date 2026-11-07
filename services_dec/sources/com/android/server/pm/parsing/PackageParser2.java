package com.android.server.pm.parsing;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageParser;
import android.content.pm.parsing.ParsingPackage;
import android.content.pm.parsing.ParsingPackageUtils;
import android.content.pm.parsing.result.ParseInput;
import android.content.pm.parsing.result.ParseResult;
import android.content.pm.parsing.result.ParseTypeImpl;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.util.Slog;
import com.android.internal.compat.IPlatformCompat;
import com.android.server.pm.parsing.pkg.PackageImpl;
import com.android.server.pm.parsing.pkg.ParsedPackage;
import java.io.File;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes.dex */
public class PackageParser2 implements AutoCloseable {
    private static final boolean LOG_PARSE_TIMINGS = Build.IS_DEBUGGABLE;
    private static final int LOG_PARSE_TIMINGS_THRESHOLD_MS = 100;
    static final String TAG = "PackageParser2";
    protected PackageCacher mCacher;
    private ThreadLocal<ApplicationInfo> mSharedAppInfo = ThreadLocal.withInitial(new Supplier() { // from class: com.android.server.pm.parsing.-$$Lambda$PackageParser2$Svc6Ot6mP20gZxXqsV5RuSFu1Lk
        @Override // java.util.function.Supplier
        public final Object get() {
            return PackageParser2.lambda$new$0();
        }
    });
    private ThreadLocal<ParseTypeImpl> mSharedResult;
    private ParsingPackageUtils parsingUtils;

    public static PackageParser2 forParsingFileWithDefaults() {
        final IPlatformCompat platformCompat = IPlatformCompat.Stub.asInterface(ServiceManager.getService("platform_compat"));
        return new PackageParser2(null, false, null, null, new Callback() { // from class: com.android.server.pm.parsing.PackageParser2.1
            @Override // com.android.server.pm.parsing.PackageParser2.Callback
            public boolean isChangeEnabled(long changeId, ApplicationInfo appInfo) {
                try {
                    return platformCompat.isChangeEnabled(changeId, appInfo);
                } catch (Exception e) {
                    Slog.wtf("PackageParsing", "IPlatformCompat query failed", e);
                    return true;
                }
            }

            public boolean hasFeature(String feature) {
                return false;
            }
        });
    }

    static /* synthetic */ ApplicationInfo lambda$new$0() {
        ApplicationInfo appInfo = new ApplicationInfo();
        appInfo.uid = -1;
        return appInfo;
    }

    public PackageParser2(String[] separateProcesses, boolean onlyCoreApps, DisplayMetrics displayMetrics, File cacheDir, final Callback callback) {
        if (displayMetrics == null) {
            displayMetrics = new DisplayMetrics();
            displayMetrics.setToDefaults();
        }
        this.mCacher = cacheDir == null ? null : new PackageCacher(cacheDir);
        this.parsingUtils = new ParsingPackageUtils(onlyCoreApps, separateProcesses, displayMetrics, callback);
        final ParseInput.Callback enforcementCallback = new ParseInput.Callback() { // from class: com.android.server.pm.parsing.-$$Lambda$PackageParser2$Z1LNA-uFIqWWTxexnRn70YNNhRw
            public final boolean isChangeEnabled(long j, String str, int i) {
                return this.f$0.lambda$new$1$PackageParser2(callback, j, str, i);
            }
        };
        this.mSharedResult = ThreadLocal.withInitial(new Supplier() { // from class: com.android.server.pm.parsing.-$$Lambda$PackageParser2$_jLfb1ehczUk0X2MUB2Q0T-RBTI
            @Override // java.util.function.Supplier
            public final Object get() {
                return PackageParser2.lambda$new$2(enforcementCallback);
            }
        });
    }

    public /* synthetic */ boolean lambda$new$1$PackageParser2(Callback callback, long changeId, String packageName, int targetSdkVersion) {
        ApplicationInfo appInfo = this.mSharedAppInfo.get();
        appInfo.packageName = packageName;
        appInfo.targetSdkVersion = targetSdkVersion;
        return callback.isChangeEnabled(changeId, appInfo);
    }

    static /* synthetic */ ParseTypeImpl lambda$new$2(ParseInput.Callback enforcementCallback) {
        return new ParseTypeImpl(enforcementCallback);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: android.content.pm.PackageParser$PackageParserException */
    public ParsedPackage parsePackage(File packageFile, int flags, boolean useCaches) throws PackageParser.PackageParserException {
        PackageCacher packageCacher;
        ParsedPackage parsed;
        if (useCaches && (packageCacher = this.mCacher) != null && (parsed = packageCacher.getCachedResult(packageFile, flags)) != null) {
            return parsed;
        }
        long parseTime = LOG_PARSE_TIMINGS ? SystemClock.uptimeMillis() : 0L;
        ParseInput input = this.mSharedResult.get().reset();
        ParseResult<ParsingPackage> result = this.parsingUtils.parsePackage(input, packageFile, flags);
        if (result.isError()) {
            throw new PackageParser.PackageParserException(result.getErrorCode(), result.getErrorMessage(), result.getException());
        }
        ParsedPackage parsed2 = (ParsedPackage) ((ParsingPackage) result.getResult()).hideAsParsed();
        long cacheTime = LOG_PARSE_TIMINGS ? SystemClock.uptimeMillis() : 0L;
        PackageCacher packageCacher2 = this.mCacher;
        if (packageCacher2 != null) {
            packageCacher2.cacheResult(packageFile, flags, parsed2);
        }
        if (LOG_PARSE_TIMINGS) {
            long parseTime2 = cacheTime - parseTime;
            long cacheTime2 = SystemClock.uptimeMillis() - cacheTime;
            if (parseTime2 + cacheTime2 > 100) {
                Slog.i(TAG, "Parse times for '" + packageFile + "': parse=" + parseTime2 + "ms, update_cache=" + cacheTime2 + " ms");
            }
        }
        return parsed2;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.mSharedResult.remove();
        this.mSharedAppInfo.remove();
    }

    public static abstract class Callback implements ParsingPackageUtils.Callback {
        public abstract boolean isChangeEnabled(long j, ApplicationInfo applicationInfo);

        public final ParsingPackage startParsingPackage(String packageName, String baseCodePath, String codePath, TypedArray manifestArray, boolean isCoreApp) {
            return PackageImpl.forParsing(packageName, baseCodePath, codePath, manifestArray, isCoreApp);
        }
    }
}
