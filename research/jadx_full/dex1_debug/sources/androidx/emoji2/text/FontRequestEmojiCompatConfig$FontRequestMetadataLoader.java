package androidx.emoji2.text;

import android.content.Context;
import android.content.pm.PackageManager$NameNotFoundException;
import android.database.ContentObserver;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Handler;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.WorkerThread;
import androidx.core.graphics.TypefaceCompatUtil;
import androidx.core.os.TraceCompat;
import androidx.core.provider.FontRequest;
import androidx.core.provider.FontsContractCompat$FontFamilyResult;
import androidx.core.provider.FontsContractCompat$FontInfo;
import androidx.core.util.Preconditions;
import java.nio.ByteBuffer;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FontRequestEmojiCompatConfig$FontRequestMetadataLoader implements EmojiCompat$MetadataRepoLoader {
    private static final String S_TRACE_BUILD_TYPEFACE = "EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface";

    @Nullable
    @GuardedBy("mLock")
    EmojiCompat$MetadataRepoLoaderCallback mCallback;

    @NonNull
    private final Context mContext;

    @Nullable
    @GuardedBy("mLock")
    private Executor mExecutor;

    @NonNull
    private final FontRequestEmojiCompatConfig$FontProviderHelper mFontProviderHelper;

    @NonNull
    private final Object mLock = new Object();

    @Nullable
    @GuardedBy("mLock")
    private Handler mMainHandler;

    @Nullable
    @GuardedBy("mLock")
    private Runnable mMainHandlerLoadCallback;

    @Nullable
    @GuardedBy("mLock")
    private ThreadPoolExecutor mMyThreadPoolExecutor;

    @Nullable
    @GuardedBy("mLock")
    private ContentObserver mObserver;

    @NonNull
    private final FontRequest mRequest;

    @Nullable
    @GuardedBy("mLock")
    private FontRequestEmojiCompatConfig$RetryPolicy mRetryPolicy;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FontRequestEmojiCompatConfig$FontRequestMetadataLoader(@NonNull Context context, @NonNull FontRequest fontRequest, @NonNull FontRequestEmojiCompatConfig$FontProviderHelper fontRequestEmojiCompatConfig$FontProviderHelper) {
        Preconditions.checkNotNull(context, "Context cannot be null");
        Preconditions.checkNotNull(fontRequest, "FontRequest cannot be null");
        this.mContext = context.getApplicationContext();
        this.mRequest = fontRequest;
        this.mFontProviderHelper = fontRequestEmojiCompatConfig$FontProviderHelper;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void cleanUp() {
        synchronized (this.mLock) {
            try {
                this.mCallback = null;
                ContentObserver contentObserver = this.mObserver;
                if (contentObserver != null) {
                    this.mFontProviderHelper.unregisterObserver(this.mContext, contentObserver);
                    this.mObserver = null;
                }
                Handler handler = this.mMainHandler;
                if (handler != null) {
                    handler.removeCallbacks(this.mMainHandlerLoadCallback);
                }
                this.mMainHandler = null;
                ThreadPoolExecutor threadPoolExecutor = this.mMyThreadPoolExecutor;
                if (threadPoolExecutor != null) {
                    threadPoolExecutor.shutdown();
                }
                this.mExecutor = null;
                this.mMyThreadPoolExecutor = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @WorkerThread
    private FontsContractCompat$FontInfo retrieveFontInfo() {
        try {
            FontsContractCompat$FontFamilyResult fontsContractCompat$FontFamilyResultFetchFonts = this.mFontProviderHelper.fetchFonts(this.mContext, this.mRequest);
            if (fontsContractCompat$FontFamilyResultFetchFonts.getStatusCode() != 0) {
                throw new RuntimeException("fetchFonts failed (" + fontsContractCompat$FontFamilyResultFetchFonts.getStatusCode() + ")");
            }
            FontsContractCompat$FontInfo[] fonts = fontsContractCompat$FontFamilyResultFetchFonts.getFonts();
            if (fonts != null && fonts.length != 0) {
                return fonts[0];
            }
            ai.onnxruntime.b.h("fetchFonts failed (empty result)");
            return null;
        } catch (PackageManager$NameNotFoundException e) {
            ai.onnxruntime.b.o("provider not found", e);
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(19)
    @WorkerThread
    private void scheduleRetry(Uri uri, long j9) {
        synchronized (this.mLock) {
            try {
                Handler handlerMainHandlerAsync = this.mMainHandler;
                if (handlerMainHandlerAsync == null) {
                    handlerMainHandlerAsync = ConcurrencyHelpers.mainHandlerAsync();
                    this.mMainHandler = handlerMainHandlerAsync;
                }
                if (this.mObserver == null) {
                    FontRequestEmojiCompatConfig$FontRequestMetadataLoader$1 fontRequestEmojiCompatConfig$FontRequestMetadataLoader$1 = new FontRequestEmojiCompatConfig$FontRequestMetadataLoader$1(this, handlerMainHandlerAsync);
                    this.mObserver = fontRequestEmojiCompatConfig$FontRequestMetadataLoader$1;
                    this.mFontProviderHelper.registerObserver(this.mContext, uri, fontRequestEmojiCompatConfig$FontRequestMetadataLoader$1);
                }
                if (this.mMainHandlerLoadCallback == null) {
                    this.mMainHandlerLoadCallback = new d(this, 1);
                }
                handlerMainHandlerAsync.postDelayed(this.mMainHandlerLoadCallback, j9);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(19)
    @WorkerThread
    public void createMetadata() {
        synchronized (this.mLock) {
            try {
                if (this.mCallback == null) {
                    return;
                }
                try {
                    FontsContractCompat$FontInfo fontsContractCompat$FontInfoRetrieveFontInfo = retrieveFontInfo();
                    int resultCode = fontsContractCompat$FontInfoRetrieveFontInfo.getResultCode();
                    if (resultCode == 2) {
                        synchronized (this.mLock) {
                            try {
                                FontRequestEmojiCompatConfig$RetryPolicy fontRequestEmojiCompatConfig$RetryPolicy = this.mRetryPolicy;
                                if (fontRequestEmojiCompatConfig$RetryPolicy != null) {
                                    long retryDelay = fontRequestEmojiCompatConfig$RetryPolicy.getRetryDelay();
                                    if (retryDelay >= 0) {
                                        scheduleRetry(fontsContractCompat$FontInfoRetrieveFontInfo.getUri(), retryDelay);
                                        return;
                                    }
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    if (resultCode != 0) {
                        throw new RuntimeException("fetchFonts result is not OK. (" + resultCode + ")");
                    }
                    try {
                        TraceCompat.beginSection(S_TRACE_BUILD_TYPEFACE);
                        Typeface typefaceBuildTypeface = this.mFontProviderHelper.buildTypeface(this.mContext, fontsContractCompat$FontInfoRetrieveFontInfo);
                        ByteBuffer byteBufferMmap = TypefaceCompatUtil.mmap(this.mContext, null, fontsContractCompat$FontInfoRetrieveFontInfo.getUri());
                        if (byteBufferMmap == null || typefaceBuildTypeface == null) {
                            throw new RuntimeException("Unable to open file.");
                        }
                        MetadataRepo metadataRepoCreate = MetadataRepo.create(typefaceBuildTypeface, byteBufferMmap);
                        TraceCompat.endSection();
                        synchronized (this.mLock) {
                            try {
                                EmojiCompat$MetadataRepoLoaderCallback emojiCompat$MetadataRepoLoaderCallback = this.mCallback;
                                if (emojiCompat$MetadataRepoLoaderCallback != null) {
                                    emojiCompat$MetadataRepoLoaderCallback.onLoaded(metadataRepoCreate);
                                }
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                        cleanUp();
                    } catch (Throwable th3) {
                        TraceCompat.endSection();
                        throw th3;
                    }
                } catch (Throwable th4) {
                    synchronized (this.mLock) {
                        try {
                            EmojiCompat$MetadataRepoLoaderCallback emojiCompat$MetadataRepoLoaderCallback2 = this.mCallback;
                            if (emojiCompat$MetadataRepoLoaderCallback2 != null) {
                                emojiCompat$MetadataRepoLoaderCallback2.onFailed(th4);
                            }
                            cleanUp();
                        } catch (Throwable th5) {
                            throw th5;
                        }
                    }
                }
            } catch (Throwable th6) {
                throw th6;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.EmojiCompat$MetadataRepoLoader
    @RequiresApi(19)
    public void load(@NonNull EmojiCompat$MetadataRepoLoaderCallback emojiCompat$MetadataRepoLoaderCallback) {
        Preconditions.checkNotNull(emojiCompat$MetadataRepoLoaderCallback, "LoaderCallback cannot be null");
        synchronized (this.mLock) {
            this.mCallback = emojiCompat$MetadataRepoLoaderCallback;
        }
        loadInternal();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(19)
    public void loadInternal() {
        synchronized (this.mLock) {
            try {
                if (this.mCallback == null) {
                    return;
                }
                if (this.mExecutor == null) {
                    ThreadPoolExecutor threadPoolExecutorCreateBackgroundPriorityExecutor = ConcurrencyHelpers.createBackgroundPriorityExecutor("emojiCompat");
                    this.mMyThreadPoolExecutor = threadPoolExecutorCreateBackgroundPriorityExecutor;
                    this.mExecutor = threadPoolExecutorCreateBackgroundPriorityExecutor;
                }
                this.mExecutor.execute(new d(this, 0));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setExecutor(@NonNull Executor executor) {
        synchronized (this.mLock) {
            this.mExecutor = executor;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRetryPolicy(@Nullable FontRequestEmojiCompatConfig$RetryPolicy fontRequestEmojiCompatConfig$RetryPolicy) {
        synchronized (this.mLock) {
            this.mRetryPolicy = fontRequestEmojiCompatConfig$RetryPolicy;
        }
    }
}
