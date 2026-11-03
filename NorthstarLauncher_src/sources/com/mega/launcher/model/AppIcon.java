package com.mega.launcher.model;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import com.android.launcher3.util.Const;
import com.mega.chery.utils.CarConfigUtils;
import com.mega.launcher.widget.R;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Map;
import mega.log.MLog;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
public class AppIcon {
    private static final String TAG = "AppIcon";
    private static final String TAG_NAME = "icon";
    private static AppIcon sAppIcon;
    private Map<String, Integer> mIconMap = new HashMap();
    private Map<ComponentName, Integer> mIconMapByComponent = new HashMap();

    public static synchronized AppIcon getInstance() {
        if (sAppIcon == null) {
            sAppIcon = new AppIcon();
        }
        return sAppIcon;
    }

    private AppIcon() {
        initIconMap();
    }

    private void initIconMap() {
        this.mIconMap.clear();
        try {
            Application application = (Application) Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]).invoke(null, null);
            if (!CarConfigUtils.isMilan()) {
                parseIconsXml(application);
                if (AppUtils.isT19CFL1Int()) {
                    this.mIconMapByComponent.put(new ComponentName(Const.PACKAGE_AVM, "com.mega.apa.ApaMainActivity"), Integer.valueOf(R.mipmap.app_icon_apa_25));
                    this.mIconMapByComponent.put(new ComponentName(Const.PACKAGE_AVM, "com.mega.avm.AvmMainActivity"), Integer.valueOf(R.mipmap.app_icon_avm_25));
                }
            }
            this.mIconMap.put("com.mega.carplay", Integer.valueOf(R.mipmap.icon_carplay_disconnect));
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException(e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException(e3);
        } catch (InvocationTargetException e4) {
            throw new RuntimeException(e4);
        }
    }

    private void parseIconsXml(Context context) {
        int i;
        Resources resources = context.getResources();
        if (AppUtils.isT19CFL1Int()) {
            i = R.xml.app_icons_t19cfl_int;
        } else if (AppUtils.isT19CFL1Dom()) {
            i = R.xml.app_icons_t19cfl_dom;
        } else if (AppUtils.isT1GCDom() && AppUtils.isT1GCInt()) {
            i = R.xml.app_icons_t1gc;
        } else if (AppUtils.isT28() && AppUtils.is25My()) {
            i = R.xml.app_icons_25my;
        } else {
            i = R.xml.app_icons;
        }
        try {
            XmlResourceParser xml = resources.getXml(i);
            try {
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                int depth = xml.getDepth();
                while (true) {
                    int next = xml.next();
                    if ((next == 3 && xml.getDepth() <= depth) || next == 1) {
                        break;
                    }
                    if (next == 2 && "icon".equals(xml.getName())) {
                        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSetAsAttributeSet, R.styleable.IconRes);
                        String string = typedArrayObtainAttributes.getString(R.styleable.IconRes_packageName);
                        int resourceId = typedArrayObtainAttributes.getResourceId(R.styleable.IconRes_iconRes, -1);
                        typedArrayObtainAttributes.recycle();
                        MLog.d(TAG, "parseIconsXml: " + string + " icon = " + resourceId);
                        if (resourceId > 0) {
                            this.mIconMap.put(string, Integer.valueOf(resourceId));
                        }
                    }
                }
                if (xml != null) {
                    xml.close();
                }
            } catch (Throwable th) {
                if (xml != null) {
                    try {
                        xml.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (IOException | XmlPullParserException e) {
            Log.e(TAG, "Error parsing device profile", e);
        }
    }

    public Drawable getAppIcon(Context context, String str) {
        Integer num;
        if (!TextUtils.isEmpty(str) && this.mIconMap.containsKey(str) && (num = this.mIconMap.get(str)) != null && num.intValue() > 0) {
            return context.getResources().getDrawable(num.intValue(), null);
        }
        return null;
    }

    public Drawable getAppIcon(Context context, String str, String str2) {
        if (str2 == null) {
            str2 = "";
        }
        return getAppIcon(context, new ComponentName(str, str2));
    }

    public Drawable getAppIcon(Context context, ComponentName componentName) {
        Integer num;
        Integer num2;
        if (this.mIconMapByComponent.containsKey(componentName) && (num2 = this.mIconMapByComponent.get(componentName)) != null && num2.intValue() > 0) {
            return context.getResources().getDrawable(num2.intValue(), null);
        }
        String packageName = componentName.getPackageName();
        if (!this.mIconMap.containsKey(packageName) || (num = this.mIconMap.get(packageName)) == null || num.intValue() <= 0) {
            return null;
        }
        return context.getResources().getDrawable(num.intValue(), null);
    }

    public Drawable getCarPlayIcon(Context context, boolean z) {
        int identifier = context.getResources().getIdentifier(z ? "icon_carplay_connect" : "icon_carplay_disconnect", "mipmap", context.getPackageName());
        if (identifier > 0) {
            return context.getResources().getDrawable(identifier, null);
        }
        return null;
    }

    public Drawable getAndroidAutoIcon(Context context, boolean z) {
        MLog.d(TAG, "getAndroidAutoIcon: isConnect = " + z);
        if (z) {
            return context.getResources().getDrawable(R.mipmap.icon_android_auto_connect, null);
        }
        return context.getResources().getDrawable(R.mipmap.icon_android_auto_disconnect, null);
    }
}
