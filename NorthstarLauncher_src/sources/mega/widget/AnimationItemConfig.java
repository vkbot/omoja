package mega.widget;

import com.android.launcher3.testing.TestProtocol;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AnimationItemConfig.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001f\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0011\"\u0004\b\u0016\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0011¨\u0006 "}, d2 = {"Lmega/widget/AnimationItemConfig;", "", TestProtocol.STATE_FIELD, "", "animationFilePath", "", "(ILjava/lang/String;)V", "animationDuration", "", "getAnimationDuration", "()J", "setAnimationDuration", "(J)V", "getAnimationFilePath", "()Ljava/lang/String;", "animationFrames", "getAnimationFrames", "()I", "setAnimationFrames", "(I)V", "layerIndex", "getLayerIndex", "setLayerIndex", "getState", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "system-sdk-ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class AnimationItemConfig {
    private long animationDuration;
    private final String animationFilePath;
    private int animationFrames;
    private int layerIndex;
    private final int state;

    public static /* synthetic */ AnimationItemConfig copy$default(AnimationItemConfig animationItemConfig, int i, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = animationItemConfig.state;
        }
        if ((i2 & 2) != 0) {
            str = animationItemConfig.animationFilePath;
        }
        return animationItemConfig.copy(i, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getState() {
        return this.state;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getAnimationFilePath() {
        return this.animationFilePath;
    }

    public final AnimationItemConfig copy(int state, String animationFilePath) {
        Intrinsics.checkNotNullParameter(animationFilePath, "animationFilePath");
        return new AnimationItemConfig(state, animationFilePath);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AnimationItemConfig)) {
            return false;
        }
        AnimationItemConfig animationItemConfig = (AnimationItemConfig) other;
        return this.state == animationItemConfig.state && Intrinsics.areEqual(this.animationFilePath, animationItemConfig.animationFilePath);
    }

    public final long getAnimationDuration() {
        return this.animationDuration;
    }

    public final String getAnimationFilePath() {
        return this.animationFilePath;
    }

    public final int getAnimationFrames() {
        return this.animationFrames;
    }

    public final int getLayerIndex() {
        return this.layerIndex;
    }

    public final int getState() {
        return this.state;
    }

    public int hashCode() {
        return (Integer.hashCode(this.state) * 31) + this.animationFilePath.hashCode();
    }

    public final void setAnimationDuration(long j) {
        this.animationDuration = j;
    }

    public final void setAnimationFrames(int i) {
        this.animationFrames = i;
    }

    public final void setLayerIndex(int i) {
        this.layerIndex = i;
    }

    public String toString() {
        return "AnimationItemConfig(state=" + this.state + ", animationFilePath=" + this.animationFilePath + ')';
    }

    public AnimationItemConfig(int i, String animationFilePath) {
        Intrinsics.checkNotNullParameter(animationFilePath, "animationFilePath");
        this.state = i;
        this.animationFilePath = animationFilePath;
        this.layerIndex = -1;
        this.animationDuration = -1L;
        this.animationFrames = -1;
    }
}
