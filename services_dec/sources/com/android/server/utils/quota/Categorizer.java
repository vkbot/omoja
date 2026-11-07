package com.android.server.utils.quota;

/* JADX INFO: loaded from: classes2.dex */
public interface Categorizer {
    public static final Categorizer SINGLE_CATEGORIZER = new Categorizer() { // from class: com.android.server.utils.quota.-$$Lambda$Categorizer$7ez64bqBH_7ftnL6e10WcD6kHMA
        @Override // com.android.server.utils.quota.Categorizer
        public final Category getCategory(int i, String str, String str2) {
            return Category.SINGLE_CATEGORY;
        }
    };

    Category getCategory(int i, String str, String str2);
}
