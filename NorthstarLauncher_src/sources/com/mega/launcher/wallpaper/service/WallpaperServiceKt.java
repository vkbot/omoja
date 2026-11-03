package com.mega.launcher.wallpaper.service;

import android.os.IInterface;
import android.os.RemoteCallbackList;
import android.util.Log;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WallpaperService.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a.\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\u0006¨\u0006\u0007"}, d2 = {"broadcast", "", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/os/IInterface;", "Landroid/os/RemoteCallbackList;", "block", "Lkotlin/Function1;", "NorthstarLauncher_northstarRelease"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class WallpaperServiceKt {
    public static final synchronized <T extends IInterface> void broadcast(RemoteCallbackList<T> remoteCallbackList, Function1<? super T, Unit> block) {
        Object objM282constructorimpl;
        Intrinsics.checkNotNullParameter(remoteCallbackList, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        synchronized (remoteCallbackList) {
            try {
                int iBeginBroadcast = remoteCallbackList.beginBroadcast();
                for (int i = 0; i < iBeginBroadcast; i++) {
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        IInterface broadcastItem = remoteCallbackList.getBroadcastItem(i);
                        Intrinsics.checkNotNullExpressionValue(broadcastItem, "getBroadcastItem(i)");
                        block.invoke(broadcastItem);
                        objM282constructorimpl = Result.m282constructorimpl(Unit.INSTANCE);
                    } catch (Throwable th) {
                        Result.Companion companion2 = Result.INSTANCE;
                        objM282constructorimpl = Result.m282constructorimpl(ResultKt.createFailure(th));
                    }
                    try {
                        Throwable thM285exceptionOrNullimpl = Result.m285exceptionOrNullimpl(objM282constructorimpl);
                        if (thM285exceptionOrNullimpl != null) {
                            Log.e("RemoteCallbackList", "broadcast: " + remoteCallbackList.getBroadcastCookie(i), thM285exceptionOrNullimpl);
                        }
                    } catch (Throwable th2) {
                        remoteCallbackList.finishBroadcast();
                        throw th2;
                    }
                }
                remoteCallbackList.finishBroadcast();
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }
}
