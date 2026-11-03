package org.libpag;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.util.Log;
import com.android.launcher3.statemanager.StatefulActivity;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
class HardwareDecoder {
    private static final AtomicInteger f = new AtomicInteger();
    private MediaCodec b;
    private VideoSurface a = null;
    private boolean c = true;
    private MediaCodec.BufferInfo d = new MediaCodec.BufferInfo();
    private int e = -1;

    class a implements d.b {
        private MediaCodec a;
        private long b;
        final /* synthetic */ MediaFormat c;
        final /* synthetic */ VideoSurface d;
        final /* synthetic */ MediaCodec[] e;

        a(MediaFormat mediaFormat, VideoSurface videoSurface, MediaCodec[] mediaCodecArr) {
            this.c = mediaFormat;
            this.d = videoSurface;
            this.e = mediaCodecArr;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.b = SystemClock.uptimeMillis();
            try {
                MediaCodec mediaCodecCreateDecoderByType = MediaCodec.createDecoderByType(this.c.getString("mime"));
                this.a = mediaCodecCreateDecoderByType;
                mediaCodecCreateDecoderByType.configure(this.c, this.d.getInputSurface(), (MediaCrypto) null, 0);
                this.a.start();
            } catch (Exception unused) {
                Log.e("HardwareDecoder", "create and config hardware decoder have exception");
                MediaCodec mediaCodec = this.a;
                if (mediaCodec != null) {
                    mediaCodec.release();
                    this.a = null;
                    this.d.a();
                }
            }
        }

        @Override // org.libpag.d.b
        public void a(boolean z) {
            if (z && this.a != null) {
                long jUptimeMillis = SystemClock.uptimeMillis() - this.b;
                try {
                    this.a.stop();
                } catch (Exception unused) {
                }
                try {
                    this.a.release();
                } catch (Exception unused2) {
                }
                this.a = null;
                this.d.a();
                new RuntimeException("init decoder timeout. cost: " + jUptimeMillis + "ms").printStackTrace();
            }
            if (!z) {
                this.e[0] = this.a;
            }
            HardwareDecoder.f.getAndDecrement();
        }
    }

    HardwareDecoder() {
    }

    private static HardwareDecoder Create(MediaFormat mediaFormat) {
        VideoSurface videoSurfaceA;
        AtomicInteger atomicInteger = f;
        if (atomicInteger.get() >= 10 || (videoSurfaceA = VideoSurface.a(mediaFormat.getInteger("width"), mediaFormat.getInteger("height"))) == null) {
            return null;
        }
        atomicInteger.getAndIncrement();
        HandlerThread handlerThread = new HandlerThread("libpag_GPUDecoder_init_decoder");
        try {
            handlerThread.start();
            MediaCodec[] mediaCodecArr = {null};
            boolean zA = new d(handlerThread.getLooper()).a(new a(mediaFormat, videoSurfaceA, mediaCodecArr), StatefulActivity.HOME_ICON_DELAY);
            handlerThread.quitSafely();
            if (!zA) {
                return null;
            }
            HardwareDecoder hardwareDecoder = new HardwareDecoder();
            hardwareDecoder.a = videoSurfaceA;
            hardwareDecoder.b = mediaCodecArr[0];
            return hardwareDecoder;
        } catch (Error | Exception e) {
            e.printStackTrace();
            f.getAndDecrement();
            return null;
        }
    }

    private int dequeueInputBuffer() {
        try {
            return this.b.dequeueInputBuffer(1000L);
        } catch (Error | Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    private int dequeueOutputBuffer() {
        try {
            return this.b.dequeueOutputBuffer(this.d, 1000L);
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    private VideoSurface getVideoSurface() {
        return this.a;
    }

    private int onDecodeFrame() {
        releaseOutputBuffer();
        try {
            int iDequeueOutputBuffer = dequeueOutputBuffer();
            if ((this.d.flags & 4) == 0) {
                if (iDequeueOutputBuffer >= 0) {
                    this.e = iDequeueOutputBuffer;
                }
                return this.e != -1 ? 0 : -1;
            }
            if (iDequeueOutputBuffer < 0) {
                return -3;
            }
            this.e = iDequeueOutputBuffer;
            return -3;
        } catch (Exception e) {
            e.printStackTrace();
            return -2;
        }
    }

    private int onEndOfStream() {
        int iDequeueInputBuffer = dequeueInputBuffer();
        if (iDequeueInputBuffer >= 0) {
            return queueInputBuffer(iDequeueInputBuffer, 0, 0, 0L, 4);
        }
        return -1;
    }

    private int onSendBytes(ByteBuffer byteBuffer, long j) {
        int iDequeueInputBuffer = dequeueInputBuffer();
        if (iDequeueInputBuffer < 0) {
            return -1;
        }
        ByteBuffer inputBuffer = getInputBuffer(iDequeueInputBuffer);
        if (inputBuffer == null) {
            return -2;
        }
        inputBuffer.clear();
        byteBuffer.position(0);
        inputBuffer.put(byteBuffer);
        return queueInputBuffer(iDequeueInputBuffer, 0, byteBuffer.limit(), j, 0);
    }

    private long presentationTime() {
        return this.d.presentationTimeUs;
    }

    private int queueInputBuffer(int i, int i2, int i3, long j, int i4) {
        try {
            this.b.queueInputBuffer(i, i2, i3, j, i4);
            this.c = false;
            return 0;
        } catch (Error | Exception e) {
            e.printStackTrace();
            return -2;
        }
    }

    private ByteBuffer getInputBuffer(int i) {
        try {
            return this.b.getInputBuffer(i);
        } catch (Error | Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private boolean onRenderFrame() {
        int i = this.e;
        if (i == -1) {
            return false;
        }
        int iReleaseOutputBuffer = releaseOutputBuffer(i, true);
        this.e = -1;
        return iReleaseOutputBuffer == 0;
    }

    private void releaseOutputBuffer() {
        int i = this.e;
        if (i != -1) {
            releaseOutputBuffer(i, false);
            this.e = -1;
        }
    }

    private void onRelease() {
        if (this.b == null) {
            return;
        }
        releaseOutputBuffer();
        try {
            this.b.stop();
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            this.b.release();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        this.b = null;
        this.a.a();
    }

    private int releaseOutputBuffer(int i, boolean z) {
        try {
            this.b.releaseOutputBuffer(i, z);
            return 0;
        } catch (Error | Exception e) {
            e.printStackTrace();
            return -2;
        }
    }

    private void onFlush() {
        if (this.c) {
            return;
        }
        try {
            this.b.flush();
            this.d = new MediaCodec.BufferInfo();
            this.e = -1;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
