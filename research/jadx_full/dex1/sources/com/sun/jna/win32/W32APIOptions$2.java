package com.sun.jna.win32;

import com.sun.jna.Library;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class W32APIOptions$2 extends HashMap<String, Object> {
    private static final long serialVersionUID = 1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public W32APIOptions$2() {
        put(Library.OPTION_TYPE_MAPPER, W32APITypeMapper.ASCII);
        put(Library.OPTION_FUNCTION_MAPPER, W32APIFunctionMapper.ASCII);
    }
}
