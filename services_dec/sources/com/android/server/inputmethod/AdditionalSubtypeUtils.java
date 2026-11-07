package com.android.server.inputmethod;

import android.os.Environment;
import android.os.FileUtils;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.AtomicFile;
import android.util.Slog;
import android.util.Xml;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodSubtype;
import com.android.internal.util.FastXmlSerializer;
import com.android.server.notification.SnoozeHelper;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
final class AdditionalSubtypeUtils {
    private static final String ADDITIONAL_SUBTYPES_FILE_NAME = "subtypes.xml";
    private static final String ATTR_ICON = "icon";
    private static final String ATTR_ID = "id";
    private static final String ATTR_IME_SUBTYPE_EXTRA_VALUE = "imeSubtypeExtraValue";
    private static final String ATTR_IME_SUBTYPE_ID = "subtypeId";
    private static final String ATTR_IME_SUBTYPE_LANGUAGE_TAG = "languageTag";
    private static final String ATTR_IME_SUBTYPE_LOCALE = "imeSubtypeLocale";
    private static final String ATTR_IME_SUBTYPE_MODE = "imeSubtypeMode";
    private static final String ATTR_IS_ASCII_CAPABLE = "isAsciiCapable";
    private static final String ATTR_IS_AUXILIARY = "isAuxiliary";
    private static final String ATTR_LABEL = "label";
    private static final String INPUT_METHOD_PATH = "inputmethod";
    private static final String NODE_IMI = "imi";
    private static final String NODE_SUBTYPE = "subtype";
    private static final String NODE_SUBTYPES = "subtypes";
    private static final String SYSTEM_PATH = "system";
    private static final String TAG = "AdditionalSubtypeUtils";

    private AdditionalSubtypeUtils() {
    }

    private static File getInputMethodDir(int userId) {
        File systemDir;
        if (userId == 0) {
            systemDir = new File(Environment.getDataDirectory(), SYSTEM_PATH);
        } else {
            systemDir = Environment.getUserSystemDirectory(userId);
        }
        return new File(systemDir, INPUT_METHOD_PATH);
    }

    private static AtomicFile getAdditionalSubtypeFile(File inputMethodDir) {
        File subtypeFile = new File(inputMethodDir, ADDITIONAL_SUBTYPES_FILE_NAME);
        return new AtomicFile(subtypeFile, "input-subtypes");
    }

    static void save(ArrayMap<String, List<InputMethodSubtype>> allSubtypes, ArrayMap<String, InputMethodInfo> methodMap, int userId) {
        ArrayMap<String, InputMethodInfo> arrayMap = methodMap;
        File inputMethodDir = getInputMethodDir(userId);
        if (allSubtypes.isEmpty()) {
            if (!inputMethodDir.exists()) {
                return;
            }
            AtomicFile subtypesFile = getAdditionalSubtypeFile(inputMethodDir);
            if (subtypesFile.exists()) {
                subtypesFile.delete();
            }
            if (FileUtils.listFilesOrEmpty(inputMethodDir).length == 0 && !inputMethodDir.delete()) {
                Slog.e(TAG, "Failed to delete the empty parent directory " + inputMethodDir);
                return;
            }
            return;
        }
        if (!inputMethodDir.exists() && !inputMethodDir.mkdirs()) {
            Slog.e(TAG, "Failed to create a parent directory " + inputMethodDir);
            return;
        }
        boolean isSetMethodMap = arrayMap != null && methodMap.size() > 0;
        FileOutputStream fos = null;
        AtomicFile subtypesFile2 = getAdditionalSubtypeFile(inputMethodDir);
        try {
            fos = subtypesFile2.startWrite();
            FastXmlSerializer fastXmlSerializer = new FastXmlSerializer();
            fastXmlSerializer.setOutput(fos, StandardCharsets.UTF_8.name());
            String str = null;
            fastXmlSerializer.startDocument(null, true);
            fastXmlSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
            fastXmlSerializer.startTag(null, NODE_SUBTYPES);
            for (String imiId : allSubtypes.keySet()) {
                if (isSetMethodMap) {
                    try {
                        if (!arrayMap.containsKey(imiId)) {
                            Slog.w(TAG, "IME uninstalled or not valid.: " + imiId);
                        }
                    } catch (IOException e) {
                        e = e;
                    }
                }
                fastXmlSerializer.startTag(str, NODE_IMI);
                fastXmlSerializer.attribute(str, ATTR_ID, imiId);
                List<InputMethodSubtype> subtypesList = allSubtypes.get(imiId);
                int numSubtypes = subtypesList.size();
                int i = 0;
                while (true) {
                    int numSubtypes2 = numSubtypes;
                    if (i >= numSubtypes2) {
                        break;
                    }
                    InputMethodSubtype subtype = subtypesList.get(i);
                    fastXmlSerializer.startTag(null, NODE_SUBTYPE);
                    if (subtype.hasSubtypeId()) {
                        try {
                            fastXmlSerializer.attribute(null, ATTR_IME_SUBTYPE_ID, String.valueOf(subtype.getSubtypeId()));
                        } catch (IOException e2) {
                            e = e2;
                        }
                    }
                    fastXmlSerializer.attribute(null, ATTR_ICON, String.valueOf(subtype.getIconResId()));
                    fastXmlSerializer.attribute(null, ATTR_LABEL, String.valueOf(subtype.getNameResId()));
                    fastXmlSerializer.attribute(null, ATTR_IME_SUBTYPE_LOCALE, subtype.getLocale());
                    fastXmlSerializer.attribute(null, ATTR_IME_SUBTYPE_LANGUAGE_TAG, subtype.getLanguageTag());
                    fastXmlSerializer.attribute(null, ATTR_IME_SUBTYPE_MODE, subtype.getMode());
                    fastXmlSerializer.attribute(null, ATTR_IME_SUBTYPE_EXTRA_VALUE, subtype.getExtraValue());
                    fastXmlSerializer.attribute(null, ATTR_IS_AUXILIARY, String.valueOf(subtype.isAuxiliary() ? 1 : 0));
                    fastXmlSerializer.attribute(null, ATTR_IS_ASCII_CAPABLE, String.valueOf(subtype.isAsciiCapable() ? 1 : 0));
                    fastXmlSerializer.endTag(null, NODE_SUBTYPE);
                    i++;
                    numSubtypes = numSubtypes2;
                    inputMethodDir = inputMethodDir;
                    Slog.w(TAG, "Error writing subtypes", e);
                    if (fos != null) {
                        subtypesFile2.failWrite(fos);
                        return;
                    }
                    return;
                }
                fastXmlSerializer.endTag(null, NODE_IMI);
                arrayMap = methodMap;
                inputMethodDir = inputMethodDir;
                str = null;
            }
            fastXmlSerializer.endTag(null, NODE_SUBTYPES);
            fastXmlSerializer.endDocument();
            subtypesFile2.finishWrite(fos);
        } catch (IOException e3) {
            e = e3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01bc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:102:0x0085 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:103:0x006a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:104:0x0092 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:107:0x00b5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:108:0x0098 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:22:0x0066 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:23:0x0068 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:25:0x0078 A[Catch: all -> 0x01dd, TRY_ENTER, TRY_LEAVE, TryCatch #5 {all -> 0x01dd, blocks: (B:6:0x001a, B:7:0x002b, B:10:0x0036, B:12:0x0043, B:13:0x0049, B:25:0x0078), top: B:89:0x001a }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00c0 A[Catch: all -> 0x01ba, TryCatch #4 {all -> 0x01ba, blocks: (B:38:0x00b7, B:40:0x00c0, B:44:0x00d6), top: B:87:0x00b7 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x0162 A[Catch: all -> 0x01da, TryCatch #3 {all -> 0x01da, blocks: (B:51:0x017d, B:46:0x00f7, B:48:0x0162, B:49:0x0169, B:62:0x01d2, B:63:0x01d9), top: B:86:0x0041 }] */
    /* JADX WARN: Code duplicated, block: B:98:0x01a0 A[SYNTHETIC] */
    static void load(ArrayMap<String, List<InputMethodSubtype>> allSubtypes, int userId) {
        Throwable th;
        int type;
        int i;
        int i2;
        String nodeName;
        InputMethodSubtype.InputMethodSubtypeBuilder builder;
        String subtypeIdString;
        String str = SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION;
        allSubtypes.clear();
        AtomicFile subtypesFile = getAdditionalSubtypeFile(getInputMethodDir(userId));
        if (subtypesFile.exists()) {
            try {
                try {
                    FileInputStream fis = subtypesFile.openRead();
                    try {
                        XmlPullParser parser = Xml.newPullParser();
                        parser.setInput(fis, StandardCharsets.UTF_8.name());
                        parser.getEventType();
                        do {
                            type = parser.next();
                            i = 1;
                            i2 = 2;
                            if (type == 2) {
                                break;
                            }
                        } while (type != 1);
                        String firstNodeName = parser.getName();
                        try {
                            if (!NODE_SUBTYPES.equals(firstNodeName)) {
                                throw new XmlPullParserException("Xml doesn't start with subtypes");
                            }
                            int depth = parser.getDepth();
                            String currentImiId = null;
                            ArrayList<InputMethodSubtype> tempSubtypesArray = null;
                            while (true) {
                                int next = parser.next();
                                int type2 = next;
                                if (next != 3) {
                                    if (type2 != i) {
                                        break;
                                        break;
                                    }
                                    if (type2 != i2) {
                                        str = str;
                                        subtypesFile = subtypesFile;
                                        type2 = type2;
                                        firstNodeName = firstNodeName;
                                        depth = depth;
                                    } else {
                                        nodeName = parser.getName();
                                        if (NODE_IMI.equals(nodeName)) {
                                            currentImiId = parser.getAttributeValue(null, ATTR_ID);
                                            if (TextUtils.isEmpty(currentImiId)) {
                                                Slog.w(TAG, "Invalid imi id found in subtypes.xml");
                                            } else {
                                                tempSubtypesArray = new ArrayList<>();
                                                allSubtypes.put(currentImiId, tempSubtypesArray);
                                            }
                                        } else if (!NODE_SUBTYPE.equals(nodeName)) {
                                            if (!TextUtils.isEmpty(currentImiId)) {
                                                int icon = Integer.parseInt(parser.getAttributeValue(null, ATTR_ICON));
                                                int label = Integer.parseInt(parser.getAttributeValue(null, ATTR_LABEL));
                                                String imeSubtypeLocale = parser.getAttributeValue(null, ATTR_IME_SUBTYPE_LOCALE);
                                                String languageTag = parser.getAttributeValue(null, ATTR_IME_SUBTYPE_LANGUAGE_TAG);
                                                String imeSubtypeMode = parser.getAttributeValue(null, ATTR_IME_SUBTYPE_MODE);
                                                String imeSubtypeExtraValue = parser.getAttributeValue(null, ATTR_IME_SUBTYPE_EXTRA_VALUE);
                                                boolean isAuxiliary = str.equals(String.valueOf(parser.getAttributeValue(null, ATTR_IS_AUXILIARY)));
                                                boolean isAsciiCapable = str.equals(String.valueOf(parser.getAttributeValue(null, ATTR_IS_ASCII_CAPABLE)));
                                                builder = new InputMethodSubtype.InputMethodSubtypeBuilder().setSubtypeNameResId(label).setSubtypeIconResId(icon).setSubtypeLocale(imeSubtypeLocale).setLanguageTag(languageTag).setSubtypeMode(imeSubtypeMode).setSubtypeExtraValue(imeSubtypeExtraValue).setIsAuxiliary(isAuxiliary).setIsAsciiCapable(isAsciiCapable);
                                                subtypeIdString = parser.getAttributeValue(null, ATTR_IME_SUBTYPE_ID);
                                                if (subtypeIdString != null) {
                                                    builder.setSubtypeId(Integer.parseInt(subtypeIdString));
                                                }
                                                tempSubtypesArray.add(builder.build());
                                            }
                                            Slog.w(TAG, "IME uninstalled or not valid.: " + currentImiId);
                                        }
                                        subtypesFile = subtypesFile;
                                        firstNodeName = firstNodeName;
                                        depth = depth;
                                        str = str;
                                        i = 1;
                                        i2 = 2;
                                    }
                                    subtypesFile = subtypesFile;
                                    firstNodeName = firstNodeName;
                                    depth = depth;
                                    str = str;
                                    i = 1;
                                    i2 = 2;
                                } else {
                                    try {
                                        if (parser.getDepth() <= depth) {
                                            break;
                                        }
                                        if (type2 != i) {
                                            break;
                                        }
                                        if (type2 != i2) {
                                            str = str;
                                            subtypesFile = subtypesFile;
                                            type2 = type2;
                                            firstNodeName = firstNodeName;
                                            depth = depth;
                                        } else {
                                            nodeName = parser.getName();
                                            if (NODE_IMI.equals(nodeName)) {
                                                currentImiId = parser.getAttributeValue(null, ATTR_ID);
                                                if (TextUtils.isEmpty(currentImiId)) {
                                                    Slog.w(TAG, "Invalid imi id found in subtypes.xml");
                                                } else {
                                                    tempSubtypesArray = new ArrayList<>();
                                                    try {
                                                        allSubtypes.put(currentImiId, tempSubtypesArray);
                                                    } catch (Throwable th2) {
                                                        th = th2;
                                                    }
                                                }
                                            } else {
                                                try {
                                                    if (!NODE_SUBTYPE.equals(nodeName)) {
                                                        if (!TextUtils.isEmpty(currentImiId) && tempSubtypesArray != null) {
                                                            int icon2 = Integer.parseInt(parser.getAttributeValue(null, ATTR_ICON));
                                                            int label2 = Integer.parseInt(parser.getAttributeValue(null, ATTR_LABEL));
                                                            String imeSubtypeLocale2 = parser.getAttributeValue(null, ATTR_IME_SUBTYPE_LOCALE);
                                                            String languageTag2 = parser.getAttributeValue(null, ATTR_IME_SUBTYPE_LANGUAGE_TAG);
                                                            String imeSubtypeMode2 = parser.getAttributeValue(null, ATTR_IME_SUBTYPE_MODE);
                                                            String imeSubtypeExtraValue2 = parser.getAttributeValue(null, ATTR_IME_SUBTYPE_EXTRA_VALUE);
                                                            boolean isAuxiliary2 = str.equals(String.valueOf(parser.getAttributeValue(null, ATTR_IS_AUXILIARY)));
                                                            boolean isAsciiCapable2 = str.equals(String.valueOf(parser.getAttributeValue(null, ATTR_IS_ASCII_CAPABLE)));
                                                            builder = new InputMethodSubtype.InputMethodSubtypeBuilder().setSubtypeNameResId(label2).setSubtypeIconResId(icon2).setSubtypeLocale(imeSubtypeLocale2).setLanguageTag(languageTag2).setSubtypeMode(imeSubtypeMode2).setSubtypeExtraValue(imeSubtypeExtraValue2).setIsAuxiliary(isAuxiliary2).setIsAsciiCapable(isAsciiCapable2);
                                                            subtypeIdString = parser.getAttributeValue(null, ATTR_IME_SUBTYPE_ID);
                                                            if (subtypeIdString != null) {
                                                                builder.setSubtypeId(Integer.parseInt(subtypeIdString));
                                                            }
                                                            tempSubtypesArray.add(builder.build());
                                                        }
                                                        Slog.w(TAG, "IME uninstalled or not valid.: " + currentImiId);
                                                    }
                                                } catch (Throwable th3) {
                                                    th = th3;
                                                }
                                            }
                                            subtypesFile = subtypesFile;
                                            firstNodeName = firstNodeName;
                                            depth = depth;
                                            str = str;
                                            i = 1;
                                            i2 = 2;
                                        }
                                        subtypesFile = subtypesFile;
                                        firstNodeName = firstNodeName;
                                        depth = depth;
                                        str = str;
                                        i = 1;
                                        i2 = 2;
                                    } catch (Throwable th4) {
                                        th = th4;
                                    }
                                }
                            }
                            if (fis != null) {
                                fis.close();
                                return;
                            }
                            return;
                        } catch (Throwable th5) {
                            th = th5;
                        }
                    } catch (Throwable th6) {
                        th = th6;
                    }
                    th = th;
                    if (fis == null) {
                        throw th;
                    }
                    try {
                        fis.close();
                        throw th;
                    } catch (Throwable th7) {
                        th.addSuppressed(th7);
                        throw th;
                    }
                } catch (IOException | NumberFormatException | XmlPullParserException e) {
                    e = e;
                    Slog.w(TAG, "Error reading subtypes", e);
                }
            } catch (IOException | NumberFormatException | XmlPullParserException e2) {
                e = e2;
                Slog.w(TAG, "Error reading subtypes", e);
            }
        }
    }
}
