package com.example.navistart;

import android.app.Activity;
import android.os.Bundle;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;
import p132m0.C2276c3;
import p132m0.C2331n3;
import p132m0.C2360v;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class ShortcutRouterActivity extends Activity {
    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String className = getComponentName().getClassName();
        if (className.endsWith(AbstractC1387m.m2421h(new byte[]{110, 3, -85, -3, 44, -103, 55, 19, 100, 11, -78, -10, 14, -110, 38, 8, 84, 11, -86, -22}, new byte[]{34, 98, -34, -109, 79, -15, 82, 97}))) {
            ActivityC1081W.m1609t(this, C2276c3.class, null);
        } else if (className.endsWith(AbstractC1387m.m2421h(new byte[]{111, -84, 9, -53, 48, -37, 100, -19, 112, -71, 19, -41, 54, -14, 98, -21, 74, -69, 21, -47, 42}, new byte[]{35, -51, 124, -91, 83, -77, 1, -97}))) {
            ActivityC1081W.m1609t(this, C2360v.class, null);
        } else if (className.endsWith(AbstractC1387m.m2421h(new byte[]{113, 94, 99, 33, 42, -126, 108, ByteCompanionObject.MAX_VALUE, 107, 86, 114, 42, 38, -85, 106, 121, 84, 73, ByteCompanionObject.MAX_VALUE, 59, 48}, new byte[]{Base64.padSymbol, 63, 22, 79, 73, -22, 9, 13}))) {
            ActivityC1081W.m1609t(this, C2331n3.class, null);
        }
        finish();
    }
}
