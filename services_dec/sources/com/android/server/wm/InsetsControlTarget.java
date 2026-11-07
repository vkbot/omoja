package com.android.server.wm;

import android.view.InsetsState;

/* JADX INFO: loaded from: classes2.dex */
interface InsetsControlTarget {
    default void notifyInsetsControlChanged() {
    }

    default WindowState getWindow() {
        return null;
    }

    default boolean getImeRequestedVisibility(int type) {
        return InsetsState.getDefaultVisibility(type);
    }

    default InsetsState getRequestedInsetsState() {
        return InsetsState.EMPTY;
    }

    default void showInsets(int types, boolean fromIme) {
    }

    default void hideInsets(int types, boolean fromIme) {
    }

    default boolean canShowTransient() {
        return false;
    }

    static WindowState asWindowOrNull(InsetsControlTarget target) {
        if (target != null) {
            return target.getWindow();
        }
        return null;
    }
}
