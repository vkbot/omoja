package com.android.server.tv.tunerresourcemanager;

/* JADX INFO: loaded from: classes2.dex */
public final class LnbResource extends TunerResourceBasic {
    private LnbResource(Builder builder) {
        super(builder);
    }

    public String toString() {
        return "LnbResource[id=" + this.mId + ", isInUse=" + this.mIsInUse + ", ownerClientId=" + this.mOwnerClientId + "]";
    }

    public static class Builder extends TunerResourceBasic.Builder {
        Builder(int id) {
            super(id);
        }

        @Override // com.android.server.tv.tunerresourcemanager.TunerResourceBasic.Builder
        public LnbResource build() {
            LnbResource lnb = new LnbResource(this);
            return lnb;
        }
    }
}
