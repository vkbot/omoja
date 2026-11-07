package com.android.server.broadcastradio.hal2;

import android.hardware.broadcastradio.V2_0.AmFmBandRange;
import android.hardware.broadcastradio.V2_0.AmFmRegionConfig;
import android.hardware.broadcastradio.V2_0.DabTableEntry;
import android.hardware.broadcastradio.V2_0.Metadata;
import android.hardware.broadcastradio.V2_0.MetadataKey;
import android.hardware.broadcastradio.V2_0.ProgramFilter;
import android.hardware.broadcastradio.V2_0.ProgramIdentifier;
import android.hardware.broadcastradio.V2_0.ProgramInfo;
import android.hardware.broadcastradio.V2_0.ProgramListChunk;
import android.hardware.broadcastradio.V2_0.Properties;
import android.hardware.broadcastradio.V2_0.VendorKeyValue;
import android.hardware.radio.Announcement;
import android.hardware.radio.ProgramList;
import android.hardware.radio.ProgramSelector;
import android.hardware.radio.RadioManager;
import android.hardware.radio.RadioMetadata;
import android.os.ParcelableException;
import android.util.Slog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/* JADX INFO: loaded from: classes.dex */
class Convert {
    private static final String TAG = "BcRadio2Srv.convert";
    private static final Map<Integer, MetadataDef> metadataKeys;

    private enum MetadataType {
        INT,
        STRING
    }

    Convert() {
    }

    static void throwOnError(String action, int result) {
        switch (result) {
            case 0:
                return;
            case 1:
                throw new ParcelableException(new RuntimeException(action + ": UNKNOWN_ERROR"));
            case 2:
                throw new ParcelableException(new RuntimeException(action + ": INTERNAL_ERROR"));
            case 3:
                throw new IllegalArgumentException(action + ": INVALID_ARGUMENTS");
            case 4:
                throw new IllegalStateException(action + ": INVALID_STATE");
            case 5:
                throw new UnsupportedOperationException(action + ": NOT_SUPPORTED");
            case 6:
                throw new ParcelableException(new RuntimeException(action + ": TIMEOUT"));
            default:
                throw new ParcelableException(new RuntimeException(action + ": unknown error (" + result + ")"));
        }
    }

    static ArrayList<VendorKeyValue> vendorInfoToHal(Map<String, String> info) {
        if (info == null) {
            return new ArrayList<>();
        }
        ArrayList<VendorKeyValue> list = new ArrayList<>();
        for (Map.Entry<String, String> entry : info.entrySet()) {
            VendorKeyValue elem = new VendorKeyValue();
            elem.key = entry.getKey();
            elem.value = entry.getValue();
            if (elem.key == null || elem.value == null) {
                Slog.w(TAG, "VendorKeyValue contains null pointers");
            } else {
                list.add(elem);
            }
        }
        return list;
    }

    static Map<String, String> vendorInfoFromHal(List<VendorKeyValue> info) {
        if (info == null) {
            return Collections.emptyMap();
        }
        Map<String, String> map = new HashMap<>();
        for (VendorKeyValue kvp : info) {
            if (kvp.key == null || kvp.value == null) {
                Slog.w(TAG, "VendorKeyValue contains null pointers");
            } else {
                map.put(kvp.key, kvp.value);
            }
        }
        return map;
    }

    private static int identifierTypeToProgramType(int idType) {
        switch (idType) {
            case 1:
            case 2:
                return 2;
            case 3:
                return 4;
            case 4:
            case 11:
            default:
                if (idType >= 1000 && idType <= 1999) {
                    return idType;
                }
                return 0;
            case 5:
            case 6:
            case 7:
            case 8:
                return 5;
            case 9:
            case 10:
                return 6;
            case 12:
            case 13:
                return 7;
        }
    }

    private static int[] identifierTypesToProgramTypes(int[] idTypes) {
        Set<Integer> pTypes = new HashSet<>();
        for (int idType : idTypes) {
            int pType = identifierTypeToProgramType(idType);
            if (pType != 0) {
                pTypes.add(Integer.valueOf(pType));
                if (pType == 2) {
                    pTypes.add(1);
                }
                if (pType == 4) {
                    pTypes.add(3);
                }
            }
        }
        return pTypes.stream().mapToInt($$Lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw.INSTANCE).toArray();
    }

    private static RadioManager.BandDescriptor[] amfmConfigToBands(AmFmRegionConfig config) {
        if (config == null) {
            return new RadioManager.BandDescriptor[0];
        }
        int len = config.ranges.size();
        List<RadioManager.BandDescriptor> bands = new ArrayList<>(len);
        for (AmFmBandRange range : config.ranges) {
            FrequencyBand bandType = Utils.getBand(range.lowerBound);
            if (bandType == FrequencyBand.UNKNOWN) {
                Slog.e(TAG, "Unknown frequency band at " + range.lowerBound + "kHz");
            } else if (bandType != FrequencyBand.FM) {
                bands.add(new RadioManager.AmBandDescriptor(0, 0, range.lowerBound, range.upperBound, range.spacing, true));
            } else {
                bands.add(new RadioManager.FmBandDescriptor(0, 1, range.lowerBound, range.upperBound, range.spacing, true, true, true, true, true));
            }
        }
        return (RadioManager.BandDescriptor[]) bands.toArray(new RadioManager.BandDescriptor[bands.size()]);
    }

    private static Map<String, Integer> dabConfigFromHal(List<DabTableEntry> config) {
        if (config == null) {
            return null;
        }
        return (Map) config.stream().collect(Collectors.toMap(new Function() { // from class: com.android.server.broadcastradio.hal2.-$$Lambda$Convert$0bmoVGH8L6ZLkm_awAwTERGOlZU
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((DabTableEntry) obj).label;
            }
        }, new Function() { // from class: com.android.server.broadcastradio.hal2.-$$Lambda$Convert$5i7ED5vyX8wi_iS2sa2DsapHYc0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Integer.valueOf(((DabTableEntry) obj).frequency);
            }
        }));
    }

    static RadioManager.ModuleProperties propertiesFromHal(int id, String serviceName, Properties prop, AmFmRegionConfig amfmConfig, List<DabTableEntry> dabConfig) {
        Objects.requireNonNull(serviceName);
        Objects.requireNonNull(prop);
        int[] supportedIdentifierTypes = prop.supportedIdentifierTypes.stream().mapToInt($$Lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw.INSTANCE).toArray();
        int[] supportedProgramTypes = identifierTypesToProgramTypes(supportedIdentifierTypes);
        return new RadioManager.ModuleProperties(id, serviceName, 0, prop.maker, prop.product, prop.version, prop.serial, 1, 1, false, false, amfmConfigToBands(amfmConfig), true, supportedProgramTypes, supportedIdentifierTypes, dabConfigFromHal(dabConfig), vendorInfoFromHal(prop.vendorInfo));
    }

    static void programIdentifierToHal(ProgramIdentifier hwId, ProgramSelector.Identifier id) {
        hwId.type = id.getType();
        hwId.value = id.getValue();
    }

    static ProgramIdentifier programIdentifierToHal(ProgramSelector.Identifier id) {
        ProgramIdentifier hwId = new ProgramIdentifier();
        programIdentifierToHal(hwId, id);
        return hwId;
    }

    static ProgramSelector.Identifier programIdentifierFromHal(ProgramIdentifier id) {
        if (id.type == 0) {
            return null;
        }
        return new ProgramSelector.Identifier(id.type, id.value);
    }

    static android.hardware.broadcastradio.V2_0.ProgramSelector programSelectorToHal(ProgramSelector sel) {
        android.hardware.broadcastradio.V2_0.ProgramSelector hwSel = new android.hardware.broadcastradio.V2_0.ProgramSelector();
        programIdentifierToHal(hwSel.primaryId, sel.getPrimaryId());
        Stream map = Arrays.stream(sel.getSecondaryIds()).map(new Function() { // from class: com.android.server.broadcastradio.hal2.-$$Lambda$Wd4_5eHLstX9rw-52AhlvWR6dfo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Convert.programIdentifierToHal((ProgramSelector.Identifier) obj);
            }
        });
        final ArrayList<ProgramIdentifier> arrayList = hwSel.secondaryIds;
        Objects.requireNonNull(arrayList);
        map.forEachOrdered(new Consumer() { // from class: com.android.server.broadcastradio.hal2.-$$Lambda$pxxBeAmtGFx0TmOA-6MMwqs_fi0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                arrayList.add((ProgramIdentifier) obj);
            }
        });
        return hwSel;
    }

    private static boolean isEmpty(android.hardware.broadcastradio.V2_0.ProgramSelector sel) {
        return sel.primaryId.type == 0 && sel.primaryId.value == 0 && sel.secondaryIds.size() == 0;
    }

    static ProgramSelector programSelectorFromHal(android.hardware.broadcastradio.V2_0.ProgramSelector sel) {
        if (isEmpty(sel)) {
            return null;
        }
        ProgramSelector.Identifier[] secondaryIds = (ProgramSelector.Identifier[]) sel.secondaryIds.stream().map(new Function() { // from class: com.android.server.broadcastradio.hal2.-$$Lambda$LWyJkMwbnlAczPrMYjWRbiucHI4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Convert.programIdentifierFromHal((ProgramIdentifier) obj);
            }
        }).map(new Function() { // from class: com.android.server.broadcastradio.hal2.-$$Lambda$orrX1qQ1nXd8k5pLkjug2DaCbzI
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ProgramSelector.Identifier identifier = (ProgramSelector.Identifier) obj;
                Objects.requireNonNull(identifier);
                return identifier;
            }
        }).toArray(new IntFunction() { // from class: com.android.server.broadcastradio.hal2.-$$Lambda$Convert$Dv81zZf4-dKkZJxVC6zm8CtQ2wE
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                return Convert.lambda$programSelectorFromHal$2(i);
            }
        });
        int iIdentifierTypeToProgramType = identifierTypeToProgramType(sel.primaryId.type);
        ProgramSelector.Identifier identifierProgramIdentifierFromHal = programIdentifierFromHal(sel.primaryId);
        Objects.requireNonNull(identifierProgramIdentifierFromHal);
        return new ProgramSelector(iIdentifierTypeToProgramType, identifierProgramIdentifierFromHal, secondaryIds, (long[]) null);
    }

    static /* synthetic */ ProgramSelector.Identifier[] lambda$programSelectorFromHal$2(int x$0) {
        return new ProgramSelector.Identifier[x$0];
    }

    private static class MetadataDef {
        private String key;
        private MetadataType type;

        private MetadataDef(MetadataType type, String key) {
            this.type = type;
            this.key = key;
        }
    }

    static {
        HashMap map = new HashMap();
        metadataKeys = map;
        map.put(1, new MetadataDef(MetadataType.STRING, "android.hardware.radio.metadata.RDS_PS"));
        metadataKeys.put(2, new MetadataDef(MetadataType.INT, "android.hardware.radio.metadata.RDS_PTY"));
        metadataKeys.put(3, new MetadataDef(MetadataType.INT, "android.hardware.radio.metadata.RBDS_PTY"));
        metadataKeys.put(4, new MetadataDef(MetadataType.STRING, "android.hardware.radio.metadata.RDS_RT"));
        metadataKeys.put(5, new MetadataDef(MetadataType.STRING, "android.hardware.radio.metadata.TITLE"));
        metadataKeys.put(6, new MetadataDef(MetadataType.STRING, "android.hardware.radio.metadata.ARTIST"));
        metadataKeys.put(7, new MetadataDef(MetadataType.STRING, "android.hardware.radio.metadata.ALBUM"));
        metadataKeys.put(8, new MetadataDef(MetadataType.INT, "android.hardware.radio.metadata.ICON"));
        metadataKeys.put(9, new MetadataDef(MetadataType.INT, "android.hardware.radio.metadata.ART"));
        metadataKeys.put(10, new MetadataDef(MetadataType.STRING, "android.hardware.radio.metadata.PROGRAM_NAME"));
        metadataKeys.put(11, new MetadataDef(MetadataType.STRING, "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME"));
        metadataKeys.put(12, new MetadataDef(MetadataType.STRING, "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME_SHORT"));
        metadataKeys.put(13, new MetadataDef(MetadataType.STRING, "android.hardware.radio.metadata.DAB_SERVICE_NAME"));
        metadataKeys.put(14, new MetadataDef(MetadataType.STRING, "android.hardware.radio.metadata.DAB_SERVICE_NAME_SHORT"));
        metadataKeys.put(15, new MetadataDef(MetadataType.STRING, "android.hardware.radio.metadata.DAB_COMPONENT_NAME"));
        metadataKeys.put(16, new MetadataDef(MetadataType.STRING, "android.hardware.radio.metadata.DAB_COMPONENT_NAME_SHORT"));
    }

    private static RadioMetadata metadataFromHal(ArrayList<Metadata> meta) {
        RadioMetadata.Builder builder = new RadioMetadata.Builder();
        for (Metadata entry : meta) {
            MetadataDef keyDef = metadataKeys.get(Integer.valueOf(entry.key));
            if (keyDef == null) {
                Slog.i(TAG, "Ignored unknown metadata entry: " + MetadataKey.toString(entry.key));
            } else if (keyDef.type == MetadataType.STRING) {
                builder.putString(keyDef.key, entry.stringValue);
            } else {
                builder.putInt(keyDef.key, (int) entry.intValue);
            }
        }
        return builder.build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RadioManager.ProgramInfo programInfoFromHal(ProgramInfo info) {
        Collection<ProgramSelector.Identifier> relatedContent = (Collection) info.relatedContent.stream().map(new Function() { // from class: com.android.server.broadcastradio.hal2.-$$Lambda$Convert$HR1t3HnLMLNA3jZqzjEAao66N98
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Convert.lambda$programInfoFromHal$3((ProgramIdentifier) obj);
            }
        }).collect(Collectors.toList());
        ProgramSelector programSelectorProgramSelectorFromHal = programSelectorFromHal(info.selector);
        Objects.requireNonNull(programSelectorProgramSelectorFromHal);
        return new RadioManager.ProgramInfo(programSelectorProgramSelectorFromHal, programIdentifierFromHal(info.logicallyTunedTo), programIdentifierFromHal(info.physicallyTunedTo), relatedContent, info.infoFlags, info.signalQuality, metadataFromHal(info.metadata), vendorInfoFromHal(info.vendorInfo));
    }

    static /* synthetic */ ProgramSelector.Identifier lambda$programInfoFromHal$3(ProgramIdentifier id) {
        ProgramSelector.Identifier identifierProgramIdentifierFromHal = programIdentifierFromHal(id);
        Objects.requireNonNull(identifierProgramIdentifierFromHal);
        return identifierProgramIdentifierFromHal;
    }

    static ProgramFilter programFilterToHal(ProgramList.Filter filter) {
        if (filter == null) {
            filter = new ProgramList.Filter();
        }
        final ProgramFilter hwFilter = new ProgramFilter();
        Stream stream = filter.getIdentifierTypes().stream();
        final ArrayList<Integer> arrayList = hwFilter.identifierTypes;
        Objects.requireNonNull(arrayList);
        stream.forEachOrdered(new Consumer() { // from class: com.android.server.broadcastradio.hal2.-$$Lambda$A5EcwDaVFNoKb_4sV0_1Yu9f7d4
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                arrayList.add((Integer) obj);
            }
        });
        filter.getIdentifiers().stream().forEachOrdered(new Consumer() { // from class: com.android.server.broadcastradio.hal2.-$$Lambda$Convert$4vXI6RX0Vlx-WE_lYnJTBSNvM-M
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                hwFilter.identifiers.add(Convert.programIdentifierToHal((ProgramSelector.Identifier) obj));
            }
        });
        hwFilter.includeCategories = filter.areCategoriesIncluded();
        hwFilter.excludeModifications = filter.areModificationsExcluded();
        return hwFilter;
    }

    static ProgramList.Chunk programListChunkFromHal(ProgramListChunk chunk) {
        Set<RadioManager.ProgramInfo> modified = (Set) chunk.modified.stream().map(new Function() { // from class: com.android.server.broadcastradio.hal2.-$$Lambda$Convert$P20z6nVni7Z0919gQ-M-2S9sxbM
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Convert.programInfoFromHal((ProgramInfo) obj);
            }
        }).collect(Collectors.toSet());
        Set<ProgramSelector.Identifier> removed = (Set) chunk.removed.stream().map(new Function() { // from class: com.android.server.broadcastradio.hal2.-$$Lambda$Convert$u-leEnQPvLcMEC_-sDr7j1Ka-T0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Convert.lambda$programListChunkFromHal$6((ProgramIdentifier) obj);
            }
        }).collect(Collectors.toSet());
        return new ProgramList.Chunk(chunk.purge, chunk.complete, modified, removed);
    }

    static /* synthetic */ ProgramSelector.Identifier lambda$programListChunkFromHal$6(ProgramIdentifier id) {
        ProgramSelector.Identifier identifierProgramIdentifierFromHal = programIdentifierFromHal(id);
        Objects.requireNonNull(identifierProgramIdentifierFromHal);
        return identifierProgramIdentifierFromHal;
    }

    public static Announcement announcementFromHal(android.hardware.broadcastradio.V2_0.Announcement hwAnnouncement) {
        ProgramSelector programSelectorProgramSelectorFromHal = programSelectorFromHal(hwAnnouncement.selector);
        Objects.requireNonNull(programSelectorProgramSelectorFromHal);
        return new Announcement(programSelectorProgramSelectorFromHal, hwAnnouncement.type, vendorInfoFromHal(hwAnnouncement.vendorInfo));
    }

    static <T> ArrayList<T> listToArrayList(List<T> list) {
        if (list == null) {
            return null;
        }
        return list instanceof ArrayList ? (ArrayList) list : new ArrayList<>(list);
    }
}
