package org.apache.commons.net.util;

import android.app.Notification$Builder;
import android.content.Context;
import android.content.IntentFilter;
import android.graphics.Bitmap$Config;
import android.graphics.BitmapFactory$Options;
import android.graphics.ColorSpace;
import android.graphics.ColorSpace$Named;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioFocusRequest$Builder;
import android.media.AudioManager;
import android.os.StrictMode$ThreadPolicy$Builder;
import android.widget.ProgressBar;
import b1.c;
import com.example.navistart.home.LauncherWindowService;
import com.h6ah4i.android.widget.verticalseekbar.VerticalSeekBar;
import java.time.Duration;
import java.time.Instant;
import java.time.LocalDateTime;
import java.util.Base64$Encoder;
import w0.e;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract /* synthetic */ class a {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int A(LocalDateTime localDateTime) {
        return localDateTime.getDayOfMonth();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void B(BitmapFactory$Options bitmapFactory$Options) {
        bitmapFactory$Options.outConfig = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int C(LocalDateTime localDateTime) {
        return localDateTime.getMonthValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int D(LocalDateTime localDateTime) {
        return localDateTime.getYear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int a(VerticalSeekBar verticalSeekBar) {
        return verticalSeekBar.getMin();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int b(Duration duration) {
        return duration.getNano();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int c(Instant instant) {
        return instant.getNano();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int d(LocalDateTime localDateTime) {
        return localDateTime.getHour();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ long e(Duration duration) {
        return duration.getSeconds();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ long f(Instant instant) {
        return instant.getEpochSecond();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Notification$Builder g(LauncherWindowService launcherWindowService, String str) {
        return new Notification$Builder(launcherWindowService, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Bitmap$Config h(BitmapFactory$Options bitmapFactory$Options) {
        return bitmapFactory$Options.outConfig;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ ColorSpace$Named i() {
        return ColorSpace$Named.DISPLAY_P3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ ColorSpace j(BitmapFactory$Options bitmapFactory$Options) {
        return bitmapFactory$Options.outColorSpace;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ AudioFocusRequest$Builder k(AudioFocusRequest$Builder audioFocusRequest$Builder, AudioAttributes audioAttributes) {
        return audioFocusRequest$Builder.setAudioAttributes(audioAttributes);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ AudioFocusRequest$Builder l(AudioFocusRequest$Builder audioFocusRequest$Builder, e eVar) {
        return audioFocusRequest$Builder.setOnAudioFocusChangeListener(eVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Duration m(long j, long j2) {
        return Duration.ofSeconds(j, j2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Instant n(long j, long j2) {
        return Instant.ofEpochSecond(j, j2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ LocalDateTime o() {
        return LocalDateTime.now();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Base64$Encoder p(int i, byte[] bArr) {
        return java.util.Base64.getMimeEncoder(i, bArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void q(Context context, c cVar, IntentFilter intentFilter) {
        context.registerReceiver(cVar, intentFilter, 4);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void r(BitmapFactory$Options bitmapFactory$Options) {
        bitmapFactory$Options.inPreferredColorSpace = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void s(BitmapFactory$Options bitmapFactory$Options, ColorSpace colorSpace) {
        bitmapFactory$Options.inPreferredColorSpace = colorSpace;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void t(AudioManager audioManager, AudioFocusRequest audioFocusRequest) {
        audioManager.abandonAudioFocusRequest(audioFocusRequest);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void u(StrictMode$ThreadPolicy$Builder strictMode$ThreadPolicy$Builder) {
        strictMode$ThreadPolicy$Builder.detectUnbufferedIo();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void v(ProgressBar progressBar) {
        progressBar.setMin(0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void w(VerticalSeekBar verticalSeekBar, int i) {
        verticalSeekBar.setMin(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean x(ColorSpace colorSpace) {
        return colorSpace.isWideGamut();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int y(LocalDateTime localDateTime) {
        return localDateTime.getMinute();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void z(BitmapFactory$Options bitmapFactory$Options) {
        bitmapFactory$Options.outColorSpace = null;
    }
}
