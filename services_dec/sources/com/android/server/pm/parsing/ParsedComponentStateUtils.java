package com.android.server.pm.parsing;

import android.content.pm.parsing.component.ParsedComponent;
import android.util.Pair;
import com.android.server.pm.PackageSetting;

/* JADX INFO: loaded from: classes.dex */
public class ParsedComponentStateUtils {
    public static Pair<CharSequence, Integer> getNonLocalizedLabelAndIcon(ParsedComponent component, PackageSetting pkgSetting, int userId) {
        CharSequence label = component.getNonLocalizedLabel();
        int icon = component.getIcon();
        Pair<String, Integer> overrideLabelIcon = pkgSetting == null ? null : pkgSetting.readUserState(userId).getOverrideLabelIconForComponent(component.getComponentName());
        if (overrideLabelIcon != null) {
            if (overrideLabelIcon.first != null) {
                label = (CharSequence) overrideLabelIcon.first;
            }
            if (overrideLabelIcon.second != null) {
                icon = ((Integer) overrideLabelIcon.second).intValue();
            }
        }
        return Pair.create(label, Integer.valueOf(icon));
    }
}
