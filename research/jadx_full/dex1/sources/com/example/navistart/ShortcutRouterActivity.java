package com.example.navistart;

import android.app.Activity;
import android.os.Bundle;
import e0.m;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import m0.c3;
import m0.n3;
import m0.v;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ShortcutRouterActivity extends Activity {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String className = getComponentName().getClassName();
        if (className.endsWith(m.h(new byte[]{110, 3, -85, -3, 44, -103, 55, 19, 100, 11, -78, -10, 14, -110, 38, 8, 84, 11, -86, -22}, new byte[]{34, 98, -34, -109, 79, -15, 82, 97}))) {
            W.t(this, c3.class, null);
        } else if (className.endsWith(m.h(new byte[]{111, -84, 9, -53, 48, -37, 100, -19, 112, -71, 19, -41, 54, -14, 98, -21, 74, -69, 21, -47, 42}, new byte[]{35, -51, 124, -91, 83, -77, 1, -97}))) {
            W.t(this, v.class, null);
        } else if (className.endsWith(m.h(new byte[]{113, 94, 99, 33, 42, -126, 108, ByteCompanionObject.MAX_VALUE, 107, 86, 114, 42, 38, -85, 106, 121, 84, 73, ByteCompanionObject.MAX_VALUE, 59, 48}, new byte[]{Base64.padSymbol, 63, 22, 79, 73, -22, 9, 13}))) {
            W.t(this, n3.class, null);
        }
        finish();
    }
}
