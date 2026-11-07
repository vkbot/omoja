package com.android.server.pm;

import android.R;
import android.content.pm.UserInfo;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import android.util.ArrayMap;
import android.util.Slog;
import com.android.internal.util.XmlUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Objects;
import java.util.function.Consumer;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public final class UserTypeFactory {
    private static final String LOG_TAG = "UserTypeFactory";

    private UserTypeFactory() {
    }

    public static ArrayMap<String, UserTypeDetails> getUserTypes() {
        ArrayMap<String, UserTypeDetails.Builder> builders = new ArrayMap<>();
        builders.put("android.os.usertype.profile.MANAGED", getDefaultTypeProfileManaged());
        builders.put("android.os.usertype.full.SYSTEM", getDefaultTypeFullSystem());
        builders.put("android.os.usertype.full.SECONDARY", getDefaultTypeFullSecondary());
        builders.put("android.os.usertype.full.GUEST", getDefaultTypeFullGuest());
        builders.put("android.os.usertype.full.DEMO", getDefaultTypeFullDemo());
        builders.put("android.os.usertype.full.RESTRICTED", getDefaultTypeFullRestricted());
        builders.put("android.os.usertype.system.HEADLESS", getDefaultTypeSystemHeadless());
        XmlResourceParser parser = Resources.getSystem().getXml(R.xml.config_user_types);
        try {
            customizeBuilders(builders, parser);
            if (parser != null) {
                parser.close();
            }
            ArrayMap<String, UserTypeDetails> types = new ArrayMap<>(builders.size());
            for (int i = 0; i < builders.size(); i++) {
                types.put(builders.keyAt(i), builders.valueAt(i).createUserTypeDetails());
            }
            return types;
        } catch (Throwable th) {
            if (parser != null) {
                try {
                    parser.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    private static UserTypeDetails.Builder getDefaultTypeProfileManaged() {
        return new UserTypeDetails.Builder().setName("android.os.usertype.profile.MANAGED").setBaseType(4096).setDefaultUserInfoPropertyFlags(32).setMaxAllowedPerParent(1).setLabel(0).setIconBadge(R.drawable.ic_accessibility_hearing_aid_disconnected).setBadgePlain(R.drawable.ic_accessibility_color_inversion_foreground).setBadgeNoBackground(R.drawable.ic_accessibility_hearing_aid).setBadgeLabels(R.string.hearing_aids_feature_name, R.string.hearing_device_notification_settings_button, R.string.hearing_device_notification_switch_button).setBadgeColors(R.color.conversation_important_highlight, R.color.customColorBrandB, R.color.customColorBrandD).setDarkThemeBadgeColors(R.color.customColorBrandA, R.color.customColorBrandC, R.color.customColorClockHour).setDefaultRestrictions(null);
    }

    private static UserTypeDetails.Builder getDefaultTypeFullSecondary() {
        return new UserTypeDetails.Builder().setName("android.os.usertype.full.SECONDARY").setBaseType(1024).setMaxAllowed(-1).setDefaultRestrictions(getDefaultSecondaryUserRestrictions());
    }

    private static UserTypeDetails.Builder getDefaultTypeFullGuest() {
        boolean ephemeralGuests = Resources.getSystem().getBoolean(R.bool.config_cecQuerySadDst_userConfigurable);
        int flags = (ephemeralGuests ? 256 : 0) | 4;
        return new UserTypeDetails.Builder().setName("android.os.usertype.full.GUEST").setBaseType(1024).setDefaultUserInfoPropertyFlags(flags).setMaxAllowed(1).setDefaultRestrictions(getDefaultGuestUserRestrictions());
    }

    private static UserTypeDetails.Builder getDefaultTypeFullDemo() {
        return new UserTypeDetails.Builder().setName("android.os.usertype.full.DEMO").setBaseType(1024).setDefaultUserInfoPropertyFlags(512).setMaxAllowed(-1).setDefaultRestrictions(null);
    }

    private static UserTypeDetails.Builder getDefaultTypeFullRestricted() {
        return new UserTypeDetails.Builder().setName("android.os.usertype.full.RESTRICTED").setBaseType(1024).setDefaultUserInfoPropertyFlags(8).setMaxAllowed(-1).setDefaultRestrictions(null);
    }

    private static UserTypeDetails.Builder getDefaultTypeFullSystem() {
        return new UserTypeDetails.Builder().setName("android.os.usertype.full.SYSTEM").setBaseType(3072);
    }

    private static UserTypeDetails.Builder getDefaultTypeSystemHeadless() {
        return new UserTypeDetails.Builder().setName("android.os.usertype.system.HEADLESS").setBaseType(2048);
    }

    private static Bundle getDefaultSecondaryUserRestrictions() {
        Bundle restrictions = new Bundle();
        restrictions.putBoolean("no_outgoing_calls", true);
        restrictions.putBoolean("no_sms", true);
        return restrictions;
    }

    private static Bundle getDefaultGuestUserRestrictions() {
        Bundle restrictions = getDefaultSecondaryUserRestrictions();
        restrictions.putBoolean("no_config_wifi", true);
        restrictions.putBoolean("no_install_unknown_sources", true);
        return restrictions;
    }

    static void customizeBuilders(ArrayMap<String, UserTypeDetails.Builder> builders, XmlResourceParser parser) {
        boolean isProfile;
        final UserTypeDetails.Builder builder;
        try {
            XmlUtils.beginDocument(parser, "user-types");
            XmlUtils.nextElement(parser);
            while (true) {
                boolean isValid = true;
                if (parser.getEventType() != 1) {
                    String elementName = parser.getName();
                    if ("profile-type".equals(elementName)) {
                        isProfile = true;
                    } else {
                        if ("full-type".equals(elementName)) {
                            isProfile = false;
                        } else {
                            Slog.w(LOG_TAG, "Skipping unknown element " + elementName + " in " + parser.getPositionDescription());
                            XmlUtils.skipCurrentTag(parser);
                        }
                        XmlUtils.nextElement(parser);
                    }
                    String typeName = parser.getAttributeValue(null, Settings.ATTR_NAME);
                    if (typeName == null) {
                        Slog.w(LOG_TAG, "Skipping user type with no name in " + parser.getPositionDescription());
                        XmlUtils.skipCurrentTag(parser);
                    } else {
                        typeName.intern();
                        if (typeName.startsWith("android.")) {
                            Slog.i(LOG_TAG, "Customizing user type " + typeName);
                            builder = builders.get(typeName);
                            if (builder == null) {
                                throw new IllegalArgumentException("Illegal custom user type name " + typeName + ": Non-AOSP user types cannot start with 'android.'");
                            }
                            if ((!isProfile || builder.getBaseType() != 4096) && (isProfile || builder.getBaseType() != 1024)) {
                                isValid = false;
                            }
                            if (!isValid) {
                                throw new IllegalArgumentException("Wrong base type to customize user type (" + typeName + "), which is type " + UserInfo.flagsToString(builder.getBaseType()));
                            }
                        } else if (isProfile) {
                            Slog.i(LOG_TAG, "Creating custom user type " + typeName);
                            builder = new UserTypeDetails.Builder();
                            builder.setName(typeName);
                            builder.setBaseType(4096);
                            builders.put(typeName, builder);
                        } else {
                            throw new IllegalArgumentException("Creation of non-profile user type (" + typeName + ") is not currently supported.");
                        }
                        if (isProfile) {
                            Objects.requireNonNull(builder);
                            setIntAttribute(parser, "max-allowed-per-parent", new Consumer() { // from class: com.android.server.pm.-$$Lambda$CFSsMipQUq5_2T1_SDplRJCGzsQ
                                @Override // java.util.function.Consumer
                                public final void accept(Object obj) {
                                    builder.setMaxAllowedPerParent(((Integer) obj).intValue());
                                }
                            });
                            Objects.requireNonNull(builder);
                            setResAttribute(parser, "icon-badge", new Consumer() { // from class: com.android.server.pm.-$$Lambda$EvXtX9FEb_c87yAlCmxSfLtExqQ
                                @Override // java.util.function.Consumer
                                public final void accept(Object obj) {
                                    builder.setIconBadge(((Integer) obj).intValue());
                                }
                            });
                            Objects.requireNonNull(builder);
                            setResAttribute(parser, "badge-plain", new Consumer() { // from class: com.android.server.pm.-$$Lambda$aDS6mx4DkwptPe2nlJ1LiNnzsdA
                                @Override // java.util.function.Consumer
                                public final void accept(Object obj) {
                                    builder.setBadgePlain(((Integer) obj).intValue());
                                }
                            });
                            Objects.requireNonNull(builder);
                            setResAttribute(parser, "badge-no-background", new Consumer() { // from class: com.android.server.pm.-$$Lambda$RIrciDUAm_lS8CbvRCW_P-ee_-4
                                @Override // java.util.function.Consumer
                                public final void accept(Object obj) {
                                    builder.setBadgeNoBackground(((Integer) obj).intValue());
                                }
                            });
                        }
                        int depth = parser.getDepth();
                        while (XmlUtils.nextElementWithin(parser, depth)) {
                            String childName = parser.getName();
                            if ("default-restrictions".equals(childName)) {
                                Bundle restrictions = UserRestrictionsUtils.readRestrictions(parser);
                                builder.setDefaultRestrictions(restrictions);
                            } else if (isProfile && "badge-labels".equals(childName)) {
                                Objects.requireNonNull(builder);
                                setResAttributeArray(parser, new Consumer() { // from class: com.android.server.pm.-$$Lambda$XAnWXMIiLhuW-IgC6QMv9mUZKLs
                                    @Override // java.util.function.Consumer
                                    public final void accept(Object obj) {
                                        builder.setBadgeLabels((int[]) obj);
                                    }
                                });
                            } else if (isProfile && "badge-colors".equals(childName)) {
                                Objects.requireNonNull(builder);
                                setResAttributeArray(parser, new Consumer() { // from class: com.android.server.pm.-$$Lambda$lPF7xFSzcWOL7sNKaTqRz6Ju9JA
                                    @Override // java.util.function.Consumer
                                    public final void accept(Object obj) {
                                        builder.setBadgeColors((int[]) obj);
                                    }
                                });
                            } else if (isProfile && "badge-colors-dark".equals(childName)) {
                                Objects.requireNonNull(builder);
                                setResAttributeArray(parser, new Consumer() { // from class: com.android.server.pm.-$$Lambda$5lF336CUiUJtc8iHqnPzYtrbxbc
                                    @Override // java.util.function.Consumer
                                    public final void accept(Object obj) {
                                        builder.setDarkThemeBadgeColors((int[]) obj);
                                    }
                                });
                            } else {
                                Slog.w(LOG_TAG, "Unrecognized tag " + childName + " in " + parser.getPositionDescription());
                            }
                        }
                    }
                    XmlUtils.nextElement(parser);
                } else {
                    return;
                }
            }
        } catch (IOException | XmlPullParserException e) {
            Slog.w(LOG_TAG, "Cannot read user type configuration file.", e);
        }
    }

    private static void setIntAttribute(XmlResourceParser parser, String attributeName, Consumer<Integer> fcn) {
        String intValue = parser.getAttributeValue(null, attributeName);
        if (intValue == null) {
            return;
        }
        try {
            fcn.accept(Integer.valueOf(Integer.parseInt(intValue)));
        } catch (NumberFormatException e) {
            Slog.e(LOG_TAG, "Cannot parse value of '" + intValue + "' for " + attributeName + " in " + parser.getPositionDescription(), e);
            throw e;
        }
    }

    private static void setResAttribute(XmlResourceParser parser, String attributeName, Consumer<Integer> fcn) {
        if (parser.getAttributeValue(null, attributeName) != null) {
            int resId = parser.getAttributeResourceValue(null, attributeName, 0);
            fcn.accept(Integer.valueOf(resId));
        }
    }

    private static void setResAttributeArray(XmlResourceParser parser, Consumer<int[]> fcn) throws XmlPullParserException, IOException {
        ArrayList<Integer> resList = new ArrayList<>();
        int depth = parser.getDepth();
        while (XmlUtils.nextElementWithin(parser, depth)) {
            String elementName = parser.getName();
            if (!Settings.TAG_ITEM.equals(elementName)) {
                Slog.w(LOG_TAG, "Skipping unknown child element " + elementName + " in " + parser.getPositionDescription());
                XmlUtils.skipCurrentTag(parser);
            } else {
                int resId = parser.getAttributeResourceValue(null, "res", -1);
                if (resId != -1) {
                    resList.add(Integer.valueOf(resId));
                }
            }
        }
        int[] result = new int[resList.size()];
        for (int i = 0; i < resList.size(); i++) {
            result[i] = resList.get(i).intValue();
        }
        fcn.accept(result);
    }
}
