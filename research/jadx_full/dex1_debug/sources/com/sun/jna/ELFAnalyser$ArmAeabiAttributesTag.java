package com.sun.jna;

import ai.onnxruntime.a;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ELFAnalyser$ArmAeabiAttributesTag {
    public static final ELFAnalyser$ArmAeabiAttributesTag ABI_FP_16bit_format;
    public static final ELFAnalyser$ArmAeabiAttributesTag ABI_FP_denormal;
    public static final ELFAnalyser$ArmAeabiAttributesTag ABI_FP_exceptions;
    public static final ELFAnalyser$ArmAeabiAttributesTag ABI_FP_number_model;
    public static final ELFAnalyser$ArmAeabiAttributesTag ABI_FP_optimization_goals;
    public static final ELFAnalyser$ArmAeabiAttributesTag ABI_FP_rounding;
    public static final ELFAnalyser$ArmAeabiAttributesTag ABI_FP_user_exceptions;
    public static final ELFAnalyser$ArmAeabiAttributesTag ABI_HardFP_use;
    public static final ELFAnalyser$ArmAeabiAttributesTag ABI_PCS_GOT_use;
    public static final ELFAnalyser$ArmAeabiAttributesTag ABI_PCS_R9_use;
    public static final ELFAnalyser$ArmAeabiAttributesTag ABI_PCS_RO_data;
    public static final ELFAnalyser$ArmAeabiAttributesTag ABI_PCS_RW_data;
    public static final ELFAnalyser$ArmAeabiAttributesTag ABI_PCS_wchar_t;
    public static final ELFAnalyser$ArmAeabiAttributesTag ABI_VFP_args;
    public static final ELFAnalyser$ArmAeabiAttributesTag ABI_WMMX_args;
    public static final ELFAnalyser$ArmAeabiAttributesTag ABI_align8_preserved;
    public static final ELFAnalyser$ArmAeabiAttributesTag ABI_align_needed;
    public static final ELFAnalyser$ArmAeabiAttributesTag ABI_enum_size;
    public static final ELFAnalyser$ArmAeabiAttributesTag ABI_optimization_goals;
    public static final ELFAnalyser$ArmAeabiAttributesTag ARM_ISA_use;
    public static final ELFAnalyser$ArmAeabiAttributesTag Advanced_SIMD_arch;
    public static final ELFAnalyser$ArmAeabiAttributesTag CPU_arch;
    public static final ELFAnalyser$ArmAeabiAttributesTag CPU_arch_profile;
    public static final ELFAnalyser$ArmAeabiAttributesTag CPU_name;
    public static final ELFAnalyser$ArmAeabiAttributesTag CPU_raw_name;
    public static final ELFAnalyser$ArmAeabiAttributesTag CPU_unaligned_access;
    public static final ELFAnalyser$ArmAeabiAttributesTag DIV_use;
    public static final ELFAnalyser$ArmAeabiAttributesTag FP_HP_extension;
    public static final ELFAnalyser$ArmAeabiAttributesTag FP_arch;
    public static final ELFAnalyser$ArmAeabiAttributesTag File;
    public static final ELFAnalyser$ArmAeabiAttributesTag MPextension_use;
    public static final ELFAnalyser$ArmAeabiAttributesTag MPextension_use2;
    public static final ELFAnalyser$ArmAeabiAttributesTag PCS_config;
    public static final ELFAnalyser$ArmAeabiAttributesTag Section;
    public static final ELFAnalyser$ArmAeabiAttributesTag Symbol;
    public static final ELFAnalyser$ArmAeabiAttributesTag T2EE_use;
    public static final ELFAnalyser$ArmAeabiAttributesTag THUMB_ISA_use;
    public static final ELFAnalyser$ArmAeabiAttributesTag Virtualization_use;
    public static final ELFAnalyser$ArmAeabiAttributesTag WMMX_arch;
    public static final ELFAnalyser$ArmAeabiAttributesTag also_compatible_with;
    public static final ELFAnalyser$ArmAeabiAttributesTag compatibility;
    public static final ELFAnalyser$ArmAeabiAttributesTag conformance;
    public static final ELFAnalyser$ArmAeabiAttributesTag nodefaults;
    private final String name;
    private final ELFAnalyser$ArmAeabiAttributesTag$ParameterType parameterType;
    private final int value;
    private static final List<ELFAnalyser$ArmAeabiAttributesTag> tags = new LinkedList();
    private static final Map<Integer, ELFAnalyser$ArmAeabiAttributesTag> valueMap = new HashMap();
    private static final Map<String, ELFAnalyser$ArmAeabiAttributesTag> nameMap = new HashMap();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        ELFAnalyser$ArmAeabiAttributesTag$ParameterType eLFAnalyser$ArmAeabiAttributesTag$ParameterType = ELFAnalyser$ArmAeabiAttributesTag$ParameterType.UINT32;
        File = addTag(1, "File", eLFAnalyser$ArmAeabiAttributesTag$ParameterType);
        Section = addTag(2, "Section", eLFAnalyser$ArmAeabiAttributesTag$ParameterType);
        Symbol = addTag(3, "Symbol", eLFAnalyser$ArmAeabiAttributesTag$ParameterType);
        ELFAnalyser$ArmAeabiAttributesTag$ParameterType eLFAnalyser$ArmAeabiAttributesTag$ParameterType2 = ELFAnalyser$ArmAeabiAttributesTag$ParameterType.NTBS;
        CPU_raw_name = addTag(4, "CPU_raw_name", eLFAnalyser$ArmAeabiAttributesTag$ParameterType2);
        CPU_name = addTag(5, "CPU_name", eLFAnalyser$ArmAeabiAttributesTag$ParameterType2);
        ELFAnalyser$ArmAeabiAttributesTag$ParameterType eLFAnalyser$ArmAeabiAttributesTag$ParameterType3 = ELFAnalyser$ArmAeabiAttributesTag$ParameterType.ULEB128;
        CPU_arch = addTag(6, "CPU_arch", eLFAnalyser$ArmAeabiAttributesTag$ParameterType3);
        CPU_arch_profile = addTag(7, "CPU_arch_profile", eLFAnalyser$ArmAeabiAttributesTag$ParameterType3);
        ARM_ISA_use = addTag(8, "ARM_ISA_use", eLFAnalyser$ArmAeabiAttributesTag$ParameterType3);
        THUMB_ISA_use = addTag(9, "THUMB_ISA_use", eLFAnalyser$ArmAeabiAttributesTag$ParameterType3);
        FP_arch = addTag(10, "FP_arch", eLFAnalyser$ArmAeabiAttributesTag$ParameterType3);
        WMMX_arch = addTag(11, "WMMX_arch", eLFAnalyser$ArmAeabiAttributesTag$ParameterType3);
        Advanced_SIMD_arch = addTag(12, "Advanced_SIMD_arch", eLFAnalyser$ArmAeabiAttributesTag$ParameterType3);
        PCS_config = addTag(13, "PCS_config", eLFAnalyser$ArmAeabiAttributesTag$ParameterType3);
        ABI_PCS_R9_use = addTag(14, "ABI_PCS_R9_use", eLFAnalyser$ArmAeabiAttributesTag$ParameterType3);
        ABI_PCS_RW_data = addTag(15, "ABI_PCS_RW_data", eLFAnalyser$ArmAeabiAttributesTag$ParameterType3);
        ABI_PCS_RO_data = addTag(16, "ABI_PCS_RO_data", eLFAnalyser$ArmAeabiAttributesTag$ParameterType3);
        ABI_PCS_GOT_use = addTag(17, "ABI_PCS_GOT_use", eLFAnalyser$ArmAeabiAttributesTag$ParameterType3);
        ABI_PCS_wchar_t = addTag(18, "ABI_PCS_wchar_t", eLFAnalyser$ArmAeabiAttributesTag$ParameterType3);
        ABI_FP_rounding = addTag(19, "ABI_FP_rounding", eLFAnalyser$ArmAeabiAttributesTag$ParameterType3);
        ABI_FP_denormal = addTag(20, "ABI_FP_denormal", eLFAnalyser$ArmAeabiAttributesTag$ParameterType3);
        ABI_FP_exceptions = addTag(21, "ABI_FP_exceptions", eLFAnalyser$ArmAeabiAttributesTag$ParameterType3);
        ABI_FP_user_exceptions = addTag(22, "ABI_FP_user_exceptions", eLFAnalyser$ArmAeabiAttributesTag$ParameterType3);
        ABI_FP_number_model = addTag(23, "ABI_FP_number_model", eLFAnalyser$ArmAeabiAttributesTag$ParameterType3);
        ABI_align_needed = addTag(24, "ABI_align_needed", eLFAnalyser$ArmAeabiAttributesTag$ParameterType3);
        ABI_align8_preserved = addTag(25, "ABI_align8_preserved", eLFAnalyser$ArmAeabiAttributesTag$ParameterType3);
        ABI_enum_size = addTag(26, "ABI_enum_size", eLFAnalyser$ArmAeabiAttributesTag$ParameterType3);
        ABI_HardFP_use = addTag(27, "ABI_HardFP_use", eLFAnalyser$ArmAeabiAttributesTag$ParameterType3);
        ABI_VFP_args = addTag(28, "ABI_VFP_args", eLFAnalyser$ArmAeabiAttributesTag$ParameterType3);
        ABI_WMMX_args = addTag(29, "ABI_WMMX_args", eLFAnalyser$ArmAeabiAttributesTag$ParameterType3);
        ABI_optimization_goals = addTag(30, "ABI_optimization_goals", eLFAnalyser$ArmAeabiAttributesTag$ParameterType3);
        ABI_FP_optimization_goals = addTag(31, "ABI_FP_optimization_goals", eLFAnalyser$ArmAeabiAttributesTag$ParameterType3);
        compatibility = addTag(32, "compatibility", eLFAnalyser$ArmAeabiAttributesTag$ParameterType2);
        CPU_unaligned_access = addTag(34, "CPU_unaligned_access", eLFAnalyser$ArmAeabiAttributesTag$ParameterType3);
        FP_HP_extension = addTag(36, "FP_HP_extension", eLFAnalyser$ArmAeabiAttributesTag$ParameterType3);
        ABI_FP_16bit_format = addTag(38, "ABI_FP_16bit_format", eLFAnalyser$ArmAeabiAttributesTag$ParameterType3);
        MPextension_use = addTag(42, "MPextension_use", eLFAnalyser$ArmAeabiAttributesTag$ParameterType3);
        DIV_use = addTag(44, "DIV_use", eLFAnalyser$ArmAeabiAttributesTag$ParameterType3);
        nodefaults = addTag(64, "nodefaults", eLFAnalyser$ArmAeabiAttributesTag$ParameterType3);
        also_compatible_with = addTag(65, "also_compatible_with", eLFAnalyser$ArmAeabiAttributesTag$ParameterType2);
        conformance = addTag(67, "conformance", eLFAnalyser$ArmAeabiAttributesTag$ParameterType2);
        T2EE_use = addTag(66, "T2EE_use", eLFAnalyser$ArmAeabiAttributesTag$ParameterType3);
        Virtualization_use = addTag(68, "Virtualization_use", eLFAnalyser$ArmAeabiAttributesTag$ParameterType3);
        MPextension_use2 = addTag(70, "MPextension_use", eLFAnalyser$ArmAeabiAttributesTag$ParameterType3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ELFAnalyser$ArmAeabiAttributesTag(int i9, String str, ELFAnalyser$ArmAeabiAttributesTag$ParameterType eLFAnalyser$ArmAeabiAttributesTag$ParameterType) {
        this.value = i9;
        this.name = str;
        this.parameterType = eLFAnalyser$ArmAeabiAttributesTag$ParameterType;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static ELFAnalyser$ArmAeabiAttributesTag addTag(int i9, String str, ELFAnalyser$ArmAeabiAttributesTag$ParameterType eLFAnalyser$ArmAeabiAttributesTag$ParameterType) {
        ELFAnalyser$ArmAeabiAttributesTag eLFAnalyser$ArmAeabiAttributesTag = new ELFAnalyser$ArmAeabiAttributesTag(i9, str, eLFAnalyser$ArmAeabiAttributesTag$ParameterType);
        Map<Integer, ELFAnalyser$ArmAeabiAttributesTag> map = valueMap;
        if (!map.containsKey(Integer.valueOf(eLFAnalyser$ArmAeabiAttributesTag.getValue()))) {
            map.put(Integer.valueOf(eLFAnalyser$ArmAeabiAttributesTag.getValue()), eLFAnalyser$ArmAeabiAttributesTag);
        }
        Map<String, ELFAnalyser$ArmAeabiAttributesTag> map2 = nameMap;
        if (!map2.containsKey(eLFAnalyser$ArmAeabiAttributesTag.getName())) {
            map2.put(eLFAnalyser$ArmAeabiAttributesTag.getName(), eLFAnalyser$ArmAeabiAttributesTag);
        }
        tags.add(eLFAnalyser$ArmAeabiAttributesTag);
        return eLFAnalyser$ArmAeabiAttributesTag;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ELFAnalyser$ArmAeabiAttributesTag getByName(String str) {
        return nameMap.get(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ELFAnalyser$ArmAeabiAttributesTag getByValue(int i9) {
        Map<Integer, ELFAnalyser$ArmAeabiAttributesTag> map = valueMap;
        return map.containsKey(Integer.valueOf(i9)) ? map.get(Integer.valueOf(i9)) : new ELFAnalyser$ArmAeabiAttributesTag(i9, a.e(i9, "Unknown "), getParameterType(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static ELFAnalyser$ArmAeabiAttributesTag$ParameterType getParameterType(int i9) {
        ELFAnalyser$ArmAeabiAttributesTag byValue = getByValue(i9);
        if (byValue == null) {
            return i9 % 2 == 0 ? ELFAnalyser$ArmAeabiAttributesTag$ParameterType.ULEB128 : ELFAnalyser$ArmAeabiAttributesTag$ParameterType.NTBS;
        }
        return byValue.getParameterType();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static List<ELFAnalyser$ArmAeabiAttributesTag> getTags() {
        return Collections.unmodifiableList(tags);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.value == ((ELFAnalyser$ArmAeabiAttributesTag) obj).value;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getName() {
        return this.name;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getValue() {
        return this.value;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        return 469 + this.value;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.name);
        sb.append(" (");
        return a.o(sb, ")", this.value);
    }

    public ELFAnalyser$ArmAeabiAttributesTag$ParameterType getParameterType() {
        return this.parameterType;
    }
}
