package com.sun.jna;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Structure$LayoutInfo {
    private int alignType;
    private int alignment;
    private final Map<String, Structure$StructField> fields;
    private int size;
    private TypeMapper typeMapper;
    private boolean variable;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Structure$LayoutInfo() {
        this.size = -1;
        this.alignment = 1;
        this.fields = Collections.synchronizedMap(new LinkedHashMap());
        this.alignType = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean access$200(Structure$LayoutInfo structure$LayoutInfo) {
        return structure$LayoutInfo.variable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean access$202(Structure$LayoutInfo structure$LayoutInfo, boolean z8) {
        structure$LayoutInfo.variable = z8;
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$300(Structure$LayoutInfo structure$LayoutInfo) {
        return structure$LayoutInfo.size;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$302(Structure$LayoutInfo structure$LayoutInfo, int i9) {
        structure$LayoutInfo.size = i9;
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$400(Structure$LayoutInfo structure$LayoutInfo) {
        return structure$LayoutInfo.alignType;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$402(Structure$LayoutInfo structure$LayoutInfo, int i9) {
        structure$LayoutInfo.alignType = i9;
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ TypeMapper access$500(Structure$LayoutInfo structure$LayoutInfo) {
        return structure$LayoutInfo.typeMapper;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ TypeMapper access$502(Structure$LayoutInfo structure$LayoutInfo, TypeMapper typeMapper) {
        structure$LayoutInfo.typeMapper = typeMapper;
        return typeMapper;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$600(Structure$LayoutInfo structure$LayoutInfo) {
        return structure$LayoutInfo.alignment;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$602(Structure$LayoutInfo structure$LayoutInfo, int i9) {
        structure$LayoutInfo.alignment = i9;
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Map access$700(Structure$LayoutInfo structure$LayoutInfo) {
        return structure$LayoutInfo.fields;
    }

    public /* synthetic */ Structure$LayoutInfo(Structure$1 structure$1) {
        this();
    }
}
