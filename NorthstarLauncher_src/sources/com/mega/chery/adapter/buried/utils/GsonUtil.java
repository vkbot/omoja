package com.mega.chery.adapter.buried.utils;

import com.google.gson.Gson;

/* JADX INFO: loaded from: classes2.dex */
public class GsonUtil {
    private final Gson mGson;

    private GsonUtil() {
        this.mGson = new Gson();
    }

    private static final class InstanceHolder {
        static final GsonUtil INSTANCE = new GsonUtil();

        private InstanceHolder() {
        }
    }

    public static GsonUtil getInstance() {
        return InstanceHolder.INSTANCE;
    }

    public String toJson(Object obj) {
        return this.mGson.toJson(obj);
    }
}
