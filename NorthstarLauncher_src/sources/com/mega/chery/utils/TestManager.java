package com.mega.chery.utils;

import com.mega.nexus.os.MegaSystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class TestManager {
    public static final boolean DEBUG_MODE;

    static {
        DEBUG_MODE = MegaSystemProperties.getInt("com.mega.chery.debug", 0) == 1;
    }
}
