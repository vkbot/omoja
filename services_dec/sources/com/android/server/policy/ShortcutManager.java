package com.android.server.policy;

import android.R;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.XmlResourceParser;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyCharacterMap;
import com.android.internal.util.XmlUtils;
import com.android.server.slice.SliceClientPermissions;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
class ShortcutManager {
    private static final String ATTRIBUTE_CATEGORY = "category";
    private static final String ATTRIBUTE_CLASS = "class";
    private static final String ATTRIBUTE_PACKAGE = "package";
    private static final String ATTRIBUTE_SHIFT = "shift";
    private static final String ATTRIBUTE_SHORTCUT = "shortcut";
    private static final String TAG = "ShortcutManager";
    private static final String TAG_BOOKMARK = "bookmark";
    private static final String TAG_BOOKMARKS = "bookmarks";
    private final Context mContext;
    private final SparseArray<ShortcutInfo> mShortcuts = new SparseArray<>();
    private final SparseArray<ShortcutInfo> mShiftShortcuts = new SparseArray<>();

    public ShortcutManager(Context context) {
        this.mContext = context;
        loadShortcuts();
    }

    public Intent getIntent(KeyCharacterMap kcm, int keyCode, int metaState) {
        int shortcutChar;
        ShortcutInfo shortcut = null;
        boolean isShiftOn = (metaState & 1) == 1;
        SparseArray<ShortcutInfo> shortcutMap = isShiftOn ? this.mShiftShortcuts : this.mShortcuts;
        int shortcutChar2 = kcm.get(keyCode, metaState);
        if (shortcutChar2 != 0) {
            ShortcutInfo shortcut2 = shortcutMap.get(shortcutChar2);
            shortcut = shortcut2;
        }
        if (shortcut == null && (shortcutChar = Character.toLowerCase(kcm.getDisplayLabel(keyCode))) != 0) {
            ShortcutInfo shortcut3 = shortcutMap.get(shortcutChar);
            shortcut = shortcut3;
        }
        if (shortcut != null) {
            return shortcut.intent;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0120 A[Catch: IOException -> 0x014c, XmlPullParserException -> 0x0151, TryCatch #4 {IOException -> 0x014c, XmlPullParserException -> 0x0151, blocks: (B:3:0x000c, B:4:0x001f, B:7:0x002b, B:10:0x0039, B:13:0x0068, B:14:0x0083, B:16:0x008b, B:24:0x00a0, B:26:0x00ae, B:33:0x00d4, B:39:0x0119, B:41:0x0120, B:42:0x0126, B:30:0x00b9, B:32:0x00cf, B:35:0x00ec, B:38:0x0112, B:44:0x012f), top: B:56:0x000c }] */
    /* JADX WARN: Code duplicated, block: B:42:0x0126 A[Catch: IOException -> 0x014c, XmlPullParserException -> 0x0151, TryCatch #4 {IOException -> 0x014c, XmlPullParserException -> 0x0151, blocks: (B:3:0x000c, B:4:0x001f, B:7:0x002b, B:10:0x0039, B:13:0x0068, B:14:0x0083, B:16:0x008b, B:24:0x00a0, B:26:0x00ae, B:33:0x00d4, B:39:0x0119, B:41:0x0120, B:42:0x0126, B:30:0x00b9, B:32:0x00cf, B:35:0x00ec, B:38:0x0112, B:44:0x012f), top: B:56:0x000c }] */
    private void loadShortcuts() {
        XmlResourceParser parser;
        Intent intent;
        String title;
        ShortcutInfo shortcut;
        ActivityInfo info;
        PackageManager packageManager = this.mContext.getPackageManager();
        try {
            XmlResourceParser parser2 = this.mContext.getResources().getXml(R.xml.bookmarks);
            XmlUtils.beginDocument(parser2, TAG_BOOKMARKS);
            while (true) {
                XmlUtils.nextElement(parser2);
                if (parser2.getEventType() != 1 && TAG_BOOKMARK.equals(parser2.getName())) {
                    String packageName = parser2.getAttributeValue(null, "package");
                    String className = parser2.getAttributeValue(null, ATTRIBUTE_CLASS);
                    String shortcutName = parser2.getAttributeValue(null, ATTRIBUTE_SHORTCUT);
                    String categoryName = parser2.getAttributeValue(null, ATTRIBUTE_CATEGORY);
                    String shiftName = parser2.getAttributeValue(null, ATTRIBUTE_SHIFT);
                    if (TextUtils.isEmpty(shortcutName)) {
                        Log.w(TAG, "Unable to get shortcut for: " + packageName + SliceClientPermissions.SliceAuthority.DELIMITER + className);
                    } else {
                        int shortcutChar = shortcutName.charAt(0);
                        boolean isShiftShortcut = shiftName != null && shiftName.equals("true");
                        if (packageName == null || className == null) {
                            parser = parser2;
                            if (categoryName != null) {
                                intent = Intent.makeMainSelectorActivity("android.intent.action.MAIN", categoryName);
                                title = "";
                                shortcut = new ShortcutInfo(title, intent);
                                if (isShiftShortcut) {
                                    this.mShiftShortcuts.put(shortcutChar, shortcut);
                                } else {
                                    this.mShortcuts.put(shortcutChar, shortcut);
                                }
                                parser2 = parser;
                            } else {
                                Log.w(TAG, "Unable to add bookmark for shortcut " + shortcutName + ": missing package/class or category attributes");
                                parser2 = parser;
                            }
                        } else {
                            parser = parser2;
                            ComponentName componentName = new ComponentName(packageName, className);
                            try {
                                info = packageManager.getActivityInfo(componentName, 794624);
                            } catch (PackageManager.NameNotFoundException e) {
                                String[] packages = packageManager.canonicalToCurrentPackageNames(new String[]{packageName});
                                componentName = new ComponentName(packages[0], className);
                                try {
                                    info = packageManager.getActivityInfo(componentName, 794624);
                                } catch (PackageManager.NameNotFoundException e2) {
                                    Log.w(TAG, "Unable to add bookmark: " + packageName + SliceClientPermissions.SliceAuthority.DELIMITER + className, e);
                                    parser2 = parser;
                                }
                            }
                            intent = new Intent("android.intent.action.MAIN");
                            intent.addCategory("android.intent.category.LAUNCHER");
                            intent.setComponent(componentName);
                            title = info.loadLabel(packageManager).toString();
                            shortcut = new ShortcutInfo(title, intent);
                            if (isShiftShortcut) {
                                this.mShiftShortcuts.put(shortcutChar, shortcut);
                            } else {
                                this.mShortcuts.put(shortcutChar, shortcut);
                            }
                            parser2 = parser;
                        }
                    }
                }
                return;
            }
        } catch (IOException e3) {
            Log.w(TAG, "Got exception parsing bookmarks.", e3);
        } catch (XmlPullParserException e4) {
            Log.w(TAG, "Got exception parsing bookmarks.", e4);
        }
    }

    private static final class ShortcutInfo {
        public final Intent intent;
        public final String title;

        public ShortcutInfo(String title, Intent intent) {
            this.title = title;
            this.intent = intent;
        }
    }
}
