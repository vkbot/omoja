package com.android.server.pm;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ShortcutInfo;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.text.TextUtils;
import android.util.ArraySet;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import com.android.internal.R;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class ShortcutParser {
    private static final boolean DEBUG = false;
    static final String METADATA_KEY = "android.app.shortcuts";
    private static final String TAG = "ShortcutService";
    private static final String TAG_CATEGORIES = "categories";
    private static final String TAG_CATEGORY = "category";
    private static final String TAG_DATA = "data";
    private static final String TAG_INTENT = "intent";
    private static final String TAG_SHARE_TARGET = "share-target";
    private static final String TAG_SHORTCUT = "shortcut";
    private static final String TAG_SHORTCUTS = "shortcuts";

    public static List<ShortcutInfo> parseShortcuts(ShortcutService service, String packageName, int userId, List<ShareTargetInfo> outShareTargets) throws XmlPullParserException, IOException {
        List<ResolveInfo> activities = service.injectGetMainActivities(packageName, userId);
        if (activities == null || activities.size() == 0) {
            return null;
        }
        outShareTargets.clear();
        try {
            int size = activities.size();
            List<ShortcutInfo> result = null;
            for (int i = 0; i < size; i++) {
                try {
                    ActivityInfo activityInfoNoMetadata = activities.get(i).activityInfo;
                    if (activityInfoNoMetadata != null) {
                        try {
                            ActivityInfo activityInfoWithMetadata = service.getActivityInfoWithMetadata(activityInfoNoMetadata.getComponentName(), userId);
                            if (activityInfoWithMetadata != null) {
                                result = parseShortcutsOneFile(service, activityInfoWithMetadata, packageName, userId, result, outShareTargets);
                            } else {
                                continue;
                            }
                        } catch (RuntimeException e) {
                            e = e;
                            service.wtf("Exception caught while parsing shortcut XML for package=" + packageName, e);
                            return null;
                        }
                    }
                } catch (RuntimeException e2) {
                    e = e2;
                }
            }
            return result;
        } catch (RuntimeException e3) {
            e = e3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:105:0x0255 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:106:0x0257 A[Catch: all -> 0x0295, TryCatch #2 {all -> 0x0295, blocks: (B:102:0x0248, B:106:0x0257, B:108:0x025f, B:110:0x0273), top: B:203:0x0248 }] */
    /* JADX WARN: Code duplicated, block: B:108:0x025f A[Catch: all -> 0x0295, TryCatch #2 {all -> 0x0295, blocks: (B:102:0x0248, B:106:0x0257, B:108:0x025f, B:110:0x0273), top: B:203:0x0248 }] */
    /* JADX WARN: Code duplicated, block: B:112:0x027f A[LOOP:1: B:107:0x025d->B:112:0x027f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:131:0x02dd A[Catch: all -> 0x033b, TryCatch #7 {all -> 0x033b, blocks: (B:123:0x02b6, B:126:0x02c0, B:131:0x02dd, B:134:0x02e7, B:142:0x0334, B:137:0x02f0, B:139:0x0304, B:140:0x032b, B:148:0x0346, B:151:0x0350, B:154:0x0358, B:156:0x0362, B:158:0x0378, B:160:0x0381, B:163:0x0395, B:167:0x03a1, B:169:0x03ab, B:171:0x03c0, B:173:0x03c9, B:176:0x03dd, B:180:0x03e8, B:182:0x03ee, B:183:0x0403, B:184:0x0407), top: B:213:0x02b6 }] */
    /* JADX WARN: Code duplicated, block: B:148:0x0346 A[Catch: all -> 0x033b, TRY_ENTER, TryCatch #7 {all -> 0x033b, blocks: (B:123:0x02b6, B:126:0x02c0, B:131:0x02dd, B:134:0x02e7, B:142:0x0334, B:137:0x02f0, B:139:0x0304, B:140:0x032b, B:148:0x0346, B:151:0x0350, B:154:0x0358, B:156:0x0362, B:158:0x0378, B:160:0x0381, B:163:0x0395, B:167:0x03a1, B:169:0x03ab, B:171:0x03c0, B:173:0x03c9, B:176:0x03dd, B:180:0x03e8, B:182:0x03ee, B:183:0x0403, B:184:0x0407), top: B:213:0x02b6 }] */
    /* JADX WARN: Code duplicated, block: B:163:0x0395 A[Catch: all -> 0x033b, TryCatch #7 {all -> 0x033b, blocks: (B:123:0x02b6, B:126:0x02c0, B:131:0x02dd, B:134:0x02e7, B:142:0x0334, B:137:0x02f0, B:139:0x0304, B:140:0x032b, B:148:0x0346, B:151:0x0350, B:154:0x0358, B:156:0x0362, B:158:0x0378, B:160:0x0381, B:163:0x0395, B:167:0x03a1, B:169:0x03ab, B:171:0x03c0, B:173:0x03c9, B:176:0x03dd, B:180:0x03e8, B:182:0x03ee, B:183:0x0403, B:184:0x0407), top: B:213:0x02b6 }] */
    /* JADX WARN: Code duplicated, block: B:176:0x03dd A[Catch: all -> 0x033b, TryCatch #7 {all -> 0x033b, blocks: (B:123:0x02b6, B:126:0x02c0, B:131:0x02dd, B:134:0x02e7, B:142:0x0334, B:137:0x02f0, B:139:0x0304, B:140:0x032b, B:148:0x0346, B:151:0x0350, B:154:0x0358, B:156:0x0362, B:158:0x0378, B:160:0x0381, B:163:0x0395, B:167:0x03a1, B:169:0x03ab, B:171:0x03c0, B:173:0x03c9, B:176:0x03dd, B:180:0x03e8, B:182:0x03ee, B:183:0x0403, B:184:0x0407), top: B:213:0x02b6 }] */
    /* JADX WARN: Code duplicated, block: B:184:0x0407 A[Catch: all -> 0x033b, TRY_LEAVE, TryCatch #7 {all -> 0x033b, blocks: (B:123:0x02b6, B:126:0x02c0, B:131:0x02dd, B:134:0x02e7, B:142:0x0334, B:137:0x02f0, B:139:0x0304, B:140:0x032b, B:148:0x0346, B:151:0x0350, B:154:0x0358, B:156:0x0362, B:158:0x0378, B:160:0x0381, B:163:0x0395, B:167:0x03a1, B:169:0x03ab, B:171:0x03c0, B:173:0x03c9, B:176:0x03dd, B:180:0x03e8, B:182:0x03ee, B:183:0x0403, B:184:0x0407), top: B:213:0x02b6 }] */
    /* JADX WARN: Code duplicated, block: B:197:0x0454  */
    /* JADX WARN: Code duplicated, block: B:199:0x02ae A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:215:0x0230 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:243:0x0282 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:244:0x0282 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:245:0x02c0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:249:0x033f A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:254:0x0205 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:256:0x0236 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:257:0x02b4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:259:0x0392 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:265:0x03da A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:269:0x02d8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:270:0x02d8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:271:0x02bc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:272:0x02a4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:273:0x02a4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:274:0x024e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:275:0x0273 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x020f  */
    /* JADX WARN: Code duplicated, block: B:92:0x0212 A[Catch: all -> 0x0225, TRY_LEAVE, TryCatch #3 {all -> 0x0225, blocks: (B:77:0x01bc, B:92:0x0212), top: B:205:0x01bc }] */
    /* JADX WARN: Code duplicated, block: B:97:0x022d  */
    private static List<ShortcutInfo> parseShortcutsOneFile(ShortcutService service, ActivityInfo activityInfo, String packageName, int userId, List<ShortcutInfo> result, List<ShareTargetInfo> outShareTargets) throws Throwable {
        int depth;
        String tag;
        int numShortcuts;
        ShareTargetInfo currentShareTarget;
        Set<String> categories;
        ShortcutService shortcutService;
        int numShortcuts2;
        int depth2;
        ShareTargetInfo sti;
        List<ShortcutInfo> result2;
        ShortcutInfo si;
        int i;
        ShortcutService shortcutService2 = service;
        XmlResourceParser parser = null;
        try {
            XmlResourceParser parser2 = shortcutService2.injectXmlMetaData(activityInfo, METADATA_KEY);
            if (parser2 == null) {
                if (parser2 != null) {
                    parser2.close();
                }
                return result;
            }
            try {
                ComponentName activity = new ComponentName(packageName, activityInfo.name);
                AttributeSet attrs = Xml.asAttributeSet(parser2);
                int maxShortcuts = service.getMaxActivityShortcuts();
                ShareTargetInfo currentShareTarget2 = null;
                Set<String> categories2 = null;
                ArrayList<Intent> intents = new ArrayList<>();
                ArrayList<ShareTargetInfo.TargetData> dataList = new ArrayList<>();
                List<ShortcutInfo> result3 = result;
                int rank = 0;
                int numShortcuts3 = 0;
                ShortcutInfo currentShortcut = null;
                while (true) {
                    try {
                        int type = parser2.next();
                        if (type == 1) {
                            break;
                        }
                        if (type == 3 && parser2.getDepth() <= 0) {
                            break;
                        }
                        int depth3 = parser2.getDepth();
                        String tag2 = parser2.getName();
                        if (type == 3) {
                            depth = depth3;
                            if (depth == 2) {
                                tag = tag2;
                                try {
                                    if (TAG_SHORTCUT.equals(tag)) {
                                        if (currentShortcut != null) {
                                            ShortcutInfo si2 = currentShortcut;
                                            if (si2.isEnabled()) {
                                                if (intents.size() == 0) {
                                                    StringBuilder sb = new StringBuilder();
                                                    activity = activity;
                                                    sb.append("Shortcut ");
                                                    sb.append(si2.getId());
                                                    sb.append(" has no intent. Skipping it.");
                                                    Log.e(TAG, sb.toString());
                                                }
                                                shortcutService2 = service;
                                                currentShortcut = null;
                                                activity = activity;
                                            } else {
                                                intents.clear();
                                                intents.add(new Intent("android.intent.action.VIEW"));
                                            }
                                            if (numShortcuts3 >= maxShortcuts) {
                                                Log.e(TAG, "More than " + maxShortcuts + " shortcuts found for " + activityInfo.getComponentName() + ". Skipping the rest.");
                                                if (parser2 != null) {
                                                    parser2.close();
                                                }
                                                return result3;
                                            }
                                            intents.get(0).addFlags(268484608);
                                            try {
                                                si2.setIntents((Intent[]) intents.toArray(new Intent[intents.size()]));
                                                intents.clear();
                                                if (categories2 != null) {
                                                    si2.setCategories(categories2);
                                                    categories2 = null;
                                                }
                                                if (result3 == null) {
                                                    result3 = new ArrayList();
                                                }
                                                result3.add(si2);
                                                numShortcuts3++;
                                                rank++;
                                                shortcutService2 = service;
                                                currentShortcut = null;
                                                activity = activity;
                                            } catch (RuntimeException e) {
                                                Log.e(TAG, "Shortcut's extras contain un-persistable values. Skipping it.");
                                                shortcutService2 = service;
                                                currentShortcut = null;
                                                activity = activity;
                                            }
                                            th = th;
                                            parser = parser2;
                                            if (parser != null) {
                                                parser.close();
                                            }
                                            throw th;
                                        }
                                        numShortcuts = numShortcuts3;
                                        activity = activity;
                                        shortcutService2 = service;
                                        numShortcuts3 = numShortcuts;
                                        activity = activity;
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    parser = parser2;
                                }
                            } else {
                                tag = tag2;
                            }
                        } else {
                            depth = depth3;
                            tag = tag2;
                        }
                        numShortcuts = numShortcuts3;
                        if (type == 3 && depth == 2) {
                            try {
                                if (!TAG_SHARE_TARGET.equals(tag)) {
                                    currentShareTarget = currentShareTarget2;
                                    categories = categories2;
                                    if (type != 2) {
                                        shortcutService = service;
                                        numShortcuts2 = numShortcuts;
                                        activity = activity;
                                        result3 = result3;
                                    } else if (depth == 1) {
                                        if (depth == 2) {
                                            if (TAG_SHORTCUT.equals(tag)) {
                                                ComponentName componentName = activity;
                                                numShortcuts2 = numShortcuts;
                                                result2 = result3;
                                                si = parseShortcutAttributes(service, attrs, packageName, componentName, userId, rank);
                                                if (si == null) {
                                                    shortcutService = service;
                                                    result3 = result2;
                                                    activity = activity;
                                                } else {
                                                    if (result2 != null) {
                                                        i = result2.size() - 1;
                                                        while (true) {
                                                            if (i >= 0) {
                                                                if (si.getId().equals(result2.get(i).getId())) {
                                                                    Log.e(TAG, "Duplicate shortcut ID detected. Skipping it.");
                                                                    shortcutService = service;
                                                                    result3 = result2;
                                                                    activity = activity;
                                                                } else {
                                                                    i--;
                                                                }
                                                            }
                                                        }
                                                    }
                                                    currentShortcut = si;
                                                    categories2 = null;
                                                    shortcutService2 = service;
                                                    result3 = result2;
                                                    activity = activity;
                                                    currentShareTarget2 = currentShareTarget;
                                                    maxShortcuts = maxShortcuts;
                                                    numShortcuts3 = numShortcuts2;
                                                }
                                            }
                                        }
                                        numShortcuts2 = numShortcuts;
                                        depth2 = depth;
                                        result3 = result3;
                                        if (depth2 == 2) {
                                            if (TAG_SHARE_TARGET.equals(tag)) {
                                                shortcutService = service;
                                                sti = parseShareTargetAttributes(shortcutService, attrs);
                                                if (sti == null) {
                                                    activity = activity;
                                                } else {
                                                    currentShareTarget2 = sti;
                                                    categories2 = null;
                                                    dataList.clear();
                                                    shortcutService2 = shortcutService;
                                                    activity = activity;
                                                    maxShortcuts = maxShortcuts;
                                                    numShortcuts3 = numShortcuts2;
                                                }
                                            }
                                        }
                                        shortcutService = service;
                                        if (depth2 == 3) {
                                        }
                                        activity = activity;
                                        if (depth2 == 3) {
                                        }
                                        if (depth2 == 3) {
                                        }
                                        if (depth2 == 3) {
                                            Log.w(TAG, String.format("Invalid tag '%s' found at depth %d", tag, Integer.valueOf(depth2)));
                                        } else {
                                            Log.w(TAG, String.format("Invalid tag '%s' found at depth %d", tag, Integer.valueOf(depth2)));
                                        }
                                    } else {
                                        if (depth == 2) {
                                            if (TAG_SHORTCUT.equals(tag)) {
                                                ComponentName componentName2 = activity;
                                                numShortcuts2 = numShortcuts;
                                                result2 = result3;
                                                si = parseShortcutAttributes(service, attrs, packageName, componentName2, userId, rank);
                                                if (si == null) {
                                                    shortcutService = service;
                                                    result3 = result2;
                                                    activity = activity;
                                                } else {
                                                    if (result2 != null) {
                                                        i = result2.size() - 1;
                                                        while (true) {
                                                            if (i >= 0) {
                                                                if (si.getId().equals(result2.get(i).getId())) {
                                                                    Log.e(TAG, "Duplicate shortcut ID detected. Skipping it.");
                                                                    shortcutService = service;
                                                                    result3 = result2;
                                                                    activity = activity;
                                                                } else {
                                                                    i--;
                                                                }
                                                            }
                                                        }
                                                    }
                                                    currentShortcut = si;
                                                    categories2 = null;
                                                    shortcutService2 = service;
                                                    result3 = result2;
                                                    activity = activity;
                                                    currentShareTarget2 = currentShareTarget;
                                                    maxShortcuts = maxShortcuts;
                                                    numShortcuts3 = numShortcuts2;
                                                }
                                            }
                                        }
                                        numShortcuts2 = numShortcuts;
                                        depth2 = depth;
                                        result3 = result3;
                                        if (depth2 == 2) {
                                            if (TAG_SHARE_TARGET.equals(tag)) {
                                                shortcutService = service;
                                                sti = parseShareTargetAttributes(shortcutService, attrs);
                                                if (sti == null) {
                                                    activity = activity;
                                                } else {
                                                    currentShareTarget2 = sti;
                                                    categories2 = null;
                                                    dataList.clear();
                                                    shortcutService2 = shortcutService;
                                                    activity = activity;
                                                    maxShortcuts = maxShortcuts;
                                                    numShortcuts3 = numShortcuts2;
                                                }
                                            }
                                        }
                                        shortcutService = service;
                                        if (depth2 == 3) {
                                        }
                                        activity = activity;
                                        if (depth2 == 3) {
                                        }
                                        if (depth2 == 3) {
                                        }
                                        if (depth2 == 3) {
                                            Log.w(TAG, String.format("Invalid tag '%s' found at depth %d", tag, Integer.valueOf(depth2)));
                                        } else {
                                            Log.w(TAG, String.format("Invalid tag '%s' found at depth %d", tag, Integer.valueOf(depth2)));
                                        }
                                    }
                                    shortcutService2 = shortcutService;
                                    activity = activity;
                                    currentShareTarget2 = currentShareTarget;
                                    maxShortcuts = maxShortcuts;
                                    categories2 = categories;
                                    numShortcuts3 = numShortcuts2;
                                } else if (currentShareTarget2 == null) {
                                    shortcutService2 = service;
                                    numShortcuts3 = numShortcuts;
                                    activity = activity;
                                } else {
                                    ShareTargetInfo sti2 = currentShareTarget2;
                                    if (categories2 != null && !categories2.isEmpty()) {
                                        if (!dataList.isEmpty()) {
                                            currentShareTarget = null;
                                            result3 = result3;
                                            try {
                                                maxShortcuts = maxShortcuts;
                                                ShareTargetInfo newShareTarget = new ShareTargetInfo((ShareTargetInfo.TargetData[]) dataList.toArray(new ShareTargetInfo.TargetData[dataList.size()]), sti2.mTargetClass, (String[]) categories2.toArray(new String[categories2.size()]));
                                                try {
                                                    outShareTargets.add(newShareTarget);
                                                    dataList.clear();
                                                    categories = null;
                                                    if (type != 2) {
                                                        shortcutService = service;
                                                        numShortcuts2 = numShortcuts;
                                                        activity = activity;
                                                        result3 = result3;
                                                    } else if (depth == 1) {
                                                        if (depth == 2) {
                                                            if (TAG_SHORTCUT.equals(tag)) {
                                                                ComponentName componentName3 = activity;
                                                                numShortcuts2 = numShortcuts;
                                                                result2 = result3;
                                                                si = parseShortcutAttributes(service, attrs, packageName, componentName3, userId, rank);
                                                                if (si == null) {
                                                                    shortcutService = service;
                                                                    result3 = result2;
                                                                    activity = activity;
                                                                } else {
                                                                    if (result2 != null) {
                                                                        i = result2.size() - 1;
                                                                        while (true) {
                                                                            if (i >= 0) {
                                                                                if (si.getId().equals(result2.get(i).getId())) {
                                                                                    Log.e(TAG, "Duplicate shortcut ID detected. Skipping it.");
                                                                                    shortcutService = service;
                                                                                    result3 = result2;
                                                                                    activity = activity;
                                                                                } else {
                                                                                    i--;
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    currentShortcut = si;
                                                                    categories2 = null;
                                                                    shortcutService2 = service;
                                                                    result3 = result2;
                                                                    activity = activity;
                                                                    currentShareTarget2 = currentShareTarget;
                                                                    maxShortcuts = maxShortcuts;
                                                                    numShortcuts3 = numShortcuts2;
                                                                }
                                                            }
                                                        }
                                                        numShortcuts2 = numShortcuts;
                                                        depth2 = depth;
                                                        result3 = result3;
                                                        if (depth2 == 2) {
                                                            if (TAG_SHARE_TARGET.equals(tag)) {
                                                                shortcutService = service;
                                                                sti = parseShareTargetAttributes(shortcutService, attrs);
                                                                if (sti == null) {
                                                                    activity = activity;
                                                                } else {
                                                                    currentShareTarget2 = sti;
                                                                    categories2 = null;
                                                                    dataList.clear();
                                                                    shortcutService2 = shortcutService;
                                                                    activity = activity;
                                                                    maxShortcuts = maxShortcuts;
                                                                    numShortcuts3 = numShortcuts2;
                                                                }
                                                            }
                                                        }
                                                        shortcutService = service;
                                                        if (depth2 == 3) {
                                                        }
                                                        activity = activity;
                                                        if (depth2 == 3) {
                                                        }
                                                        if (depth2 == 3) {
                                                        }
                                                        if (depth2 == 3) {
                                                            Log.w(TAG, String.format("Invalid tag '%s' found at depth %d", tag, Integer.valueOf(depth2)));
                                                        } else {
                                                            Log.w(TAG, String.format("Invalid tag '%s' found at depth %d", tag, Integer.valueOf(depth2)));
                                                        }
                                                    } else {
                                                        if (depth == 2) {
                                                            if (TAG_SHORTCUT.equals(tag)) {
                                                                ComponentName componentName4 = activity;
                                                                numShortcuts2 = numShortcuts;
                                                                result2 = result3;
                                                                si = parseShortcutAttributes(service, attrs, packageName, componentName4, userId, rank);
                                                                if (si == null) {
                                                                    shortcutService = service;
                                                                    result3 = result2;
                                                                    activity = activity;
                                                                } else {
                                                                    if (result2 != null) {
                                                                        i = result2.size() - 1;
                                                                        while (true) {
                                                                            if (i >= 0) {
                                                                                if (si.getId().equals(result2.get(i).getId())) {
                                                                                    Log.e(TAG, "Duplicate shortcut ID detected. Skipping it.");
                                                                                    shortcutService = service;
                                                                                    result3 = result2;
                                                                                    activity = activity;
                                                                                } else {
                                                                                    i--;
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    currentShortcut = si;
                                                                    categories2 = null;
                                                                    shortcutService2 = service;
                                                                    result3 = result2;
                                                                    activity = activity;
                                                                    currentShareTarget2 = currentShareTarget;
                                                                    maxShortcuts = maxShortcuts;
                                                                    numShortcuts3 = numShortcuts2;
                                                                }
                                                            }
                                                        }
                                                        numShortcuts2 = numShortcuts;
                                                        depth2 = depth;
                                                        result3 = result3;
                                                        if (depth2 == 2) {
                                                            if (TAG_SHARE_TARGET.equals(tag)) {
                                                                shortcutService = service;
                                                                sti = parseShareTargetAttributes(shortcutService, attrs);
                                                                if (sti == null) {
                                                                    activity = activity;
                                                                } else {
                                                                    currentShareTarget2 = sti;
                                                                    categories2 = null;
                                                                    dataList.clear();
                                                                    shortcutService2 = shortcutService;
                                                                    activity = activity;
                                                                    maxShortcuts = maxShortcuts;
                                                                    numShortcuts3 = numShortcuts2;
                                                                }
                                                            }
                                                        }
                                                        shortcutService = service;
                                                        if (depth2 == 3) {
                                                        }
                                                        activity = activity;
                                                        if (depth2 == 3) {
                                                        }
                                                        if (depth2 == 3) {
                                                        }
                                                        if (depth2 == 3) {
                                                            Log.w(TAG, String.format("Invalid tag '%s' found at depth %d", tag, Integer.valueOf(depth2)));
                                                        } else {
                                                            Log.w(TAG, String.format("Invalid tag '%s' found at depth %d", tag, Integer.valueOf(depth2)));
                                                        }
                                                    }
                                                    shortcutService2 = shortcutService;
                                                    activity = activity;
                                                    currentShareTarget2 = currentShareTarget;
                                                    maxShortcuts = maxShortcuts;
                                                    categories2 = categories;
                                                    numShortcuts3 = numShortcuts2;
                                                } catch (Throwable th2) {
                                                    th = th2;
                                                    parser = parser2;
                                                }
                                            } catch (Throwable th3) {
                                                th = th3;
                                            }
                                        }
                                    }
                                    shortcutService2 = service;
                                    numShortcuts3 = numShortcuts;
                                    activity = activity;
                                    currentShareTarget2 = null;
                                    result3 = result3;
                                    maxShortcuts = maxShortcuts;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                parser = parser2;
                            }
                            if (parser != null) {
                                parser.close();
                            }
                            throw th;
                        }
                        currentShareTarget = currentShareTarget2;
                        categories = categories2;
                        if (type != 2) {
                            shortcutService = service;
                            numShortcuts2 = numShortcuts;
                            activity = activity;
                            result3 = result3;
                        } else if (depth == 1 || !TAG_SHORTCUTS.equals(tag)) {
                            if (depth == 2) {
                                try {
                                    if (TAG_SHORTCUT.equals(tag)) {
                                        ComponentName componentName5 = activity;
                                        numShortcuts2 = numShortcuts;
                                        result2 = result3;
                                        try {
                                            si = parseShortcutAttributes(service, attrs, packageName, componentName5, userId, rank);
                                            if (si == null) {
                                                shortcutService = service;
                                                result3 = result2;
                                                activity = activity;
                                            } else {
                                                if (result2 != null) {
                                                    i = result2.size() - 1;
                                                    while (true) {
                                                        if (i >= 0) {
                                                            if (si.getId().equals(result2.get(i).getId())) {
                                                                Log.e(TAG, "Duplicate shortcut ID detected. Skipping it.");
                                                                shortcutService = service;
                                                                result3 = result2;
                                                                activity = activity;
                                                            } else {
                                                                i--;
                                                            }
                                                        }
                                                    }
                                                }
                                                currentShortcut = si;
                                                categories2 = null;
                                                shortcutService2 = service;
                                                result3 = result2;
                                                activity = activity;
                                                currentShareTarget2 = currentShareTarget;
                                                maxShortcuts = maxShortcuts;
                                                numShortcuts3 = numShortcuts2;
                                            }
                                        } catch (Throwable th5) {
                                            th = th5;
                                            parser = parser2;
                                        }
                                    }
                                } catch (Throwable th6) {
                                    th = th6;
                                    parser = parser2;
                                }
                            }
                            numShortcuts2 = numShortcuts;
                            depth2 = depth;
                            result3 = result3;
                            if (depth2 == 2) {
                                try {
                                    if (TAG_SHARE_TARGET.equals(tag)) {
                                        shortcutService = service;
                                        try {
                                            sti = parseShareTargetAttributes(shortcutService, attrs);
                                            if (sti == null) {
                                                activity = activity;
                                            } else {
                                                currentShareTarget2 = sti;
                                                categories2 = null;
                                                dataList.clear();
                                                shortcutService2 = shortcutService;
                                                activity = activity;
                                                maxShortcuts = maxShortcuts;
                                                numShortcuts3 = numShortcuts2;
                                            }
                                        } catch (Throwable th7) {
                                            th = th7;
                                            parser = parser2;
                                        }
                                    }
                                } catch (Throwable th8) {
                                    th = th8;
                                    parser = parser2;
                                }
                            }
                            shortcutService = service;
                            if (depth2 == 3 || !TAG_INTENT.equals(tag)) {
                                activity = activity;
                                if (depth2 == 3 || !TAG_CATEGORIES.equals(tag)) {
                                    if (depth2 == 3 || !TAG_CATEGORY.equals(tag)) {
                                        if (depth2 == 3 || !"data".equals(tag)) {
                                            Log.w(TAG, String.format("Invalid tag '%s' found at depth %d", tag, Integer.valueOf(depth2)));
                                        } else if (currentShareTarget != null) {
                                            ShareTargetInfo.TargetData data = parseShareTargetData(shortcutService, attrs);
                                            if (data == null) {
                                                Log.e(TAG, "Invalid data tag found. activity=" + activity);
                                            } else {
                                                dataList.add(data);
                                            }
                                        }
                                    } else if (currentShareTarget != null) {
                                        String name = parseCategory(shortcutService, attrs);
                                        if (TextUtils.isEmpty(name)) {
                                            Log.e(TAG, "Empty category found. activity=" + activity);
                                        } else {
                                            categories2 = categories == null ? new ArraySet<>() : categories;
                                            categories2.add(name);
                                            shortcutService2 = shortcutService;
                                            activity = activity;
                                            currentShareTarget2 = currentShareTarget;
                                            maxShortcuts = maxShortcuts;
                                            numShortcuts3 = numShortcuts2;
                                        }
                                    }
                                } else if (currentShortcut != null && currentShortcut.getCategories() == null) {
                                    String name2 = parseCategories(shortcutService, attrs);
                                    if (TextUtils.isEmpty(name2)) {
                                        Log.e(TAG, "Empty category found. activity=" + activity);
                                    } else {
                                        categories2 = categories == null ? new ArraySet<>() : categories;
                                        categories2.add(name2);
                                        shortcutService2 = shortcutService;
                                        activity = activity;
                                        currentShareTarget2 = currentShareTarget;
                                        maxShortcuts = maxShortcuts;
                                        numShortcuts3 = numShortcuts2;
                                    }
                                }
                            } else if (currentShortcut == null || !currentShortcut.isEnabled()) {
                                Log.e(TAG, "Ignoring excessive intent tag.");
                            } else {
                                Intent intent = Intent.parseIntent(shortcutService.mContext.getResources(), parser2, attrs);
                                if (TextUtils.isEmpty(intent.getAction())) {
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append("Shortcut intent action must be provided. activity=");
                                    ComponentName activity2 = activity;
                                    sb2.append(activity2);
                                    Log.e(TAG, sb2.toString());
                                    currentShortcut = null;
                                    shortcutService2 = shortcutService;
                                    activity = activity2;
                                    currentShareTarget2 = currentShareTarget;
                                    maxShortcuts = maxShortcuts;
                                    categories2 = categories;
                                    numShortcuts3 = numShortcuts2;
                                } else {
                                    activity = activity;
                                    intents.add(intent);
                                }
                            }
                        } else {
                            shortcutService = service;
                            numShortcuts2 = numShortcuts;
                            activity = activity;
                            result3 = result3;
                        }
                        shortcutService2 = shortcutService;
                        activity = activity;
                        currentShareTarget2 = currentShareTarget;
                        maxShortcuts = maxShortcuts;
                        categories2 = categories;
                        numShortcuts3 = numShortcuts2;
                    } catch (Throwable th9) {
                        th = th9;
                        parser = parser2;
                    }
                }
                if (parser2 != null) {
                    parser2.close();
                }
                return result3;
            } catch (Throwable th10) {
                th = th10;
                parser = parser2;
            }
        } catch (Throwable th11) {
            th = th11;
        }
    }

    private static String parseCategories(ShortcutService service, AttributeSet attrs) {
        TypedArray sa = service.mContext.getResources().obtainAttributes(attrs, R.styleable.ShortcutCategories);
        try {
            if (sa.getType(0) == 3) {
                return sa.getNonResourceString(0);
            }
            Log.w(TAG, "android:name for shortcut category must be string literal.");
            return null;
        } finally {
            sa.recycle();
        }
    }

    private static ShortcutInfo parseShortcutAttributes(ShortcutService service, AttributeSet attrs, String packageName, ComponentName activity, int userId, int rank) {
        TypedArray sa = service.mContext.getResources().obtainAttributes(attrs, R.styleable.Shortcut);
        try {
            if (sa.getType(2) != 3) {
                Log.w(TAG, "android:shortcutId must be string literal. activity=" + activity);
                return null;
            }
            String id = sa.getNonResourceString(2);
            boolean enabled = sa.getBoolean(1, true);
            int iconResId = sa.getResourceId(0, 0);
            int titleResId = sa.getResourceId(3, 0);
            int textResId = sa.getResourceId(4, 0);
            int disabledMessageResId = sa.getResourceId(5, 0);
            if (TextUtils.isEmpty(id)) {
                Log.w(TAG, "android:shortcutId must be provided. activity=" + activity);
                return null;
            }
            if (titleResId != 0) {
                return createShortcutFromManifest(service, userId, id, packageName, activity, titleResId, textResId, disabledMessageResId, rank, iconResId, enabled);
            }
            Log.w(TAG, "android:shortcutShortLabel must be provided. activity=" + activity);
            return null;
        } finally {
            sa.recycle();
        }
    }

    private static ShortcutInfo createShortcutFromManifest(ShortcutService service, int userId, String id, String packageName, ComponentName activityComponent, int titleResId, int textResId, int disabledMessageResId, int rank, int iconResId, boolean enabled) {
        int disabledReason;
        int flags = (enabled ? 32 : 64) | 256 | (iconResId != 0 ? 4 : 0);
        if (enabled) {
            disabledReason = 0;
        } else {
            disabledReason = 1;
        }
        return new ShortcutInfo(userId, id, packageName, activityComponent, null, null, titleResId, null, null, textResId, null, null, disabledMessageResId, null, null, null, rank, null, service.injectCurrentTimeMillis(), flags, iconResId, null, null, null, disabledReason, null, null);
    }

    private static String parseCategory(ShortcutService service, AttributeSet attrs) {
        TypedArray sa = service.mContext.getResources().obtainAttributes(attrs, R.styleable.IntentCategory);
        try {
            if (sa.getType(0) != 3) {
                Log.w(TAG, "android:name must be string literal.");
                return null;
            }
            return sa.getString(0);
        } finally {
            sa.recycle();
        }
    }

    private static ShareTargetInfo parseShareTargetAttributes(ShortcutService service, AttributeSet attrs) {
        TypedArray sa = service.mContext.getResources().obtainAttributes(attrs, R.styleable.Intent);
        try {
            String targetClass = sa.getString(4);
            if (TextUtils.isEmpty(targetClass)) {
                Log.w(TAG, "android:targetClass must be provided.");
                return null;
            }
            return new ShareTargetInfo(null, targetClass, null);
        } finally {
            sa.recycle();
        }
    }

    private static ShareTargetInfo.TargetData parseShareTargetData(ShortcutService service, AttributeSet attrs) {
        TypedArray sa = service.mContext.getResources().obtainAttributes(attrs, R.styleable.AndroidManifestData);
        try {
            if (sa.getType(0) != 3) {
                Log.w(TAG, "android:mimeType must be string literal.");
                return null;
            }
            String scheme = sa.getString(1);
            String host = sa.getString(2);
            String port = sa.getString(3);
            String path = sa.getString(4);
            String pathPattern = sa.getString(6);
            String pathPrefix = sa.getString(5);
            String mimeType = sa.getString(0);
            return new ShareTargetInfo.TargetData(scheme, host, port, path, pathPattern, pathPrefix, mimeType);
        } finally {
            sa.recycle();
        }
    }
}
