package com.android.server.notification;

import android.R;
import android.app.AppOpsManager;
import android.app.AutomaticZenRule;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.database.ContentObserver;
import android.graphics.drawable.Icon;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.hardware.tv.cec.V1_0.CecMessageType;
import android.media.AudioAttributes;
import android.media.AudioManagerInternal;
import android.media.VolumePolicy;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.os.UserHandle;
import android.provider.Settings;
import android.service.notification.Condition;
import android.service.notification.ZenModeConfig;
import android.service.notification.ZenPolicy;
import android.util.AndroidRuntimeException;
import android.util.ArrayMap;
import android.util.Log;
import android.util.Slog;
import android.util.SparseArray;
import android.util.StatsEvent;
import android.util.proto.ProtoOutputStream;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.notification.SystemNotificationChannels;
import com.android.server.LocalServices;
import com.android.server.pm.PackageManagerService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import libcore.io.IoUtils;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class ZenModeHelper {
    private static final int RULE_INSTANCE_GRACE_PERIOD = 259200000;
    static final int RULE_LIMIT_PER_PACKAGE = 100;
    public static final long SUPPRESSED_EFFECT_ALL = 3;
    public static final long SUPPRESSED_EFFECT_CALLS = 2;
    public static final long SUPPRESSED_EFFECT_NOTIFICATIONS = 1;
    private final AppOpsManager mAppOps;
    protected AudioManagerInternal mAudioManager;
    protected final ZenModeConditions mConditions;
    protected ZenModeConfig mConfig;
    protected NotificationManager.Policy mConsolidatedPolicy;
    private final Context mContext;
    protected ZenModeConfig mDefaultConfig;
    private final ZenModeFiltering mFiltering;
    private final H mHandler;
    protected boolean mIsBootComplete;
    private final Metrics mMetrics;
    protected final NotificationManager mNotificationManager;
    protected PackageManager mPm;
    private String[] mPriorityOnlyDndExemptPackages;
    private final ManagedServices.Config mServiceConfig;
    private final SettingsObserver mSettingsObserver;
    private final SysUiStatsEvent.BuilderFactory mStatsEventBuilderFactory;
    private long mSuppressedEffects;
    protected int mZenMode;
    static final String TAG = "ZenModeHelper";
    static final boolean DEBUG = Log.isLoggable(TAG, 3);
    private final ArrayList<Callback> mCallbacks = new ArrayList<>();
    protected final RingerModeDelegate mRingerModeDelegate = new RingerModeDelegate();
    final SparseArray<ZenModeConfig> mConfigs = new SparseArray<>();
    private int mUser = 0;

    public ZenModeHelper(Context context, Looper looper, ConditionProviders conditionProviders, SysUiStatsEvent.BuilderFactory statsEventBuilderFactory) {
        this.mMetrics = new Metrics();
        this.mContext = context;
        this.mHandler = new H(looper);
        addCallback(this.mMetrics);
        this.mAppOps = (AppOpsManager) context.getSystemService(AppOpsManager.class);
        this.mNotificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
        this.mDefaultConfig = readDefaultConfig(this.mContext.getResources());
        updateDefaultAutomaticRuleNames();
        ZenModeConfig zenModeConfigCopy = this.mDefaultConfig.copy();
        this.mConfig = zenModeConfigCopy;
        this.mConfigs.put(0, zenModeConfigCopy);
        this.mConsolidatedPolicy = this.mConfig.toNotificationPolicy();
        SettingsObserver settingsObserver = new SettingsObserver(this.mHandler);
        this.mSettingsObserver = settingsObserver;
        settingsObserver.observe();
        this.mFiltering = new ZenModeFiltering(this.mContext);
        this.mConditions = new ZenModeConditions(this, conditionProviders);
        this.mServiceConfig = conditionProviders.getConfig();
        this.mStatsEventBuilderFactory = statsEventBuilderFactory;
    }

    public Looper getLooper() {
        return this.mHandler.getLooper();
    }

    public String toString() {
        return TAG;
    }

    public boolean matchesCallFilter(UserHandle userHandle, Bundle extras, ValidateNotificationPeople validator, int contactsTimeoutMs, float timeoutAffinity) {
        boolean zMatchesCallFilter;
        synchronized (this.mConfig) {
            zMatchesCallFilter = ZenModeFiltering.matchesCallFilter(this.mContext, this.mZenMode, this.mConsolidatedPolicy, userHandle, extras, validator, contactsTimeoutMs, timeoutAffinity);
        }
        return zMatchesCallFilter;
    }

    public boolean isCall(NotificationRecord record) {
        return this.mFiltering.isCall(record);
    }

    public void recordCaller(NotificationRecord record) {
        this.mFiltering.recordCall(record);
    }

    public boolean shouldIntercept(NotificationRecord record) {
        boolean zShouldIntercept;
        synchronized (this.mConfig) {
            zShouldIntercept = this.mFiltering.shouldIntercept(this.mZenMode, this.mConsolidatedPolicy, record);
        }
        return zShouldIntercept;
    }

    public void addCallback(Callback callback) {
        this.mCallbacks.add(callback);
    }

    public void removeCallback(Callback callback) {
        this.mCallbacks.remove(callback);
    }

    public void initZenMode() {
        if (DEBUG) {
            Log.d(TAG, "initZenMode");
        }
        evaluateZenMode("init", true);
    }

    public void onSystemReady() {
        if (DEBUG) {
            Log.d(TAG, "onSystemReady");
        }
        AudioManagerInternal audioManagerInternal = (AudioManagerInternal) LocalServices.getService(AudioManagerInternal.class);
        this.mAudioManager = audioManagerInternal;
        if (audioManagerInternal != null) {
            audioManagerInternal.setRingerModeDelegate(this.mRingerModeDelegate);
        }
        this.mPm = this.mContext.getPackageManager();
        this.mHandler.postMetricsTimer();
        cleanUpZenRules();
        evaluateZenMode("onSystemReady", true);
        this.mIsBootComplete = true;
        showZenUpgradeNotification(this.mZenMode);
    }

    public void onUserSwitched(int user) {
        loadConfigForUser(user, "onUserSwitched");
    }

    public void onUserRemoved(int user) {
        if (user < 0) {
            return;
        }
        if (DEBUG) {
            Log.d(TAG, "onUserRemoved u=" + user);
        }
        this.mConfigs.remove(user);
    }

    public void onUserUnlocked(int user) {
        loadConfigForUser(user, "onUserUnlocked");
    }

    void setPriorityOnlyDndExemptPackages(String[] packages) {
        this.mPriorityOnlyDndExemptPackages = packages;
    }

    private void loadConfigForUser(int user, String reason) {
        if (this.mUser == user || user < 0) {
            return;
        }
        this.mUser = user;
        if (DEBUG) {
            Log.d(TAG, reason + " u=" + user);
        }
        ZenModeConfig config = this.mConfigs.get(user);
        if (config == null) {
            if (DEBUG) {
                Log.d(TAG, reason + " generating default config for user " + user);
            }
            config = this.mDefaultConfig.copy();
            config.user = user;
        }
        synchronized (this.mConfig) {
            setConfigLocked(config, null, reason);
        }
        cleanUpZenRules();
    }

    public int getZenModeListenerInterruptionFilter() {
        return NotificationManager.zenModeToInterruptionFilter(this.mZenMode);
    }

    public void requestFromListener(ComponentName name, int filter) {
        int newZen = NotificationManager.zenModeFromInterruptionFilter(filter, -1);
        if (newZen != -1) {
            String packageName = name != null ? name.getPackageName() : null;
            StringBuilder sb = new StringBuilder();
            sb.append("listener:");
            sb.append(name != null ? name.flattenToShortString() : null);
            setManualZenMode(newZen, null, packageName, sb.toString());
        }
    }

    public void setSuppressedEffects(long suppressedEffects) {
        if (this.mSuppressedEffects == suppressedEffects) {
            return;
        }
        this.mSuppressedEffects = suppressedEffects;
        applyRestrictions();
    }

    public long getSuppressedEffects() {
        return this.mSuppressedEffects;
    }

    public int getZenMode() {
        return this.mZenMode;
    }

    public List<ZenModeConfig.ZenRule> getZenRules() {
        List<ZenModeConfig.ZenRule> rules = new ArrayList<>();
        synchronized (this.mConfig) {
            if (this.mConfig == null) {
                return rules;
            }
            for (ZenModeConfig.ZenRule rule : this.mConfig.automaticRules.values()) {
                if (canManageAutomaticZenRule(rule)) {
                    rules.add(rule);
                }
            }
            return rules;
        }
    }

    public AutomaticZenRule getAutomaticZenRule(String id) {
        synchronized (this.mConfig) {
            if (this.mConfig == null) {
                return null;
            }
            ZenModeConfig.ZenRule rule = (ZenModeConfig.ZenRule) this.mConfig.automaticRules.get(id);
            if (rule != null && canManageAutomaticZenRule(rule)) {
                return createAutomaticZenRule(rule);
            }
            return null;
        }
    }

    public String addAutomaticZenRule(String pkg, AutomaticZenRule automaticZenRule, String reason) {
        String str;
        if (!PackageManagerService.PLATFORM_PACKAGE_NAME.equals(pkg)) {
            PackageItemInfo component = getServiceInfo(automaticZenRule.getOwner());
            if (component == null) {
                component = getActivityInfo(automaticZenRule.getConfigurationActivity());
            }
            if (component == null) {
                throw new IllegalArgumentException("Lacking enabled CPS or config activity");
            }
            int ruleInstanceLimit = -1;
            if (component.metaData != null) {
                ruleInstanceLimit = component.metaData.getInt("android.service.zen.automatic.ruleInstanceLimit", -1);
            }
            int newRuleInstanceCount = getCurrentInstanceCount(automaticZenRule.getOwner()) + getCurrentInstanceCount(automaticZenRule.getConfigurationActivity()) + 1;
            int newPackageRuleCount = getPackageRuleCount(pkg) + 1;
            if (newPackageRuleCount > 100 || (ruleInstanceLimit > 0 && ruleInstanceLimit < newRuleInstanceCount)) {
                throw new IllegalArgumentException("Rule instance limit exceeded");
            }
        }
        synchronized (this.mConfig) {
            if (this.mConfig == null) {
                throw new AndroidRuntimeException("Could not create rule");
            }
            if (DEBUG) {
                Log.d(TAG, "addAutomaticZenRule rule= " + automaticZenRule + " reason=" + reason);
            }
            ZenModeConfig newConfig = this.mConfig.copy();
            ZenModeConfig.ZenRule rule = new ZenModeConfig.ZenRule();
            populateZenRule(pkg, automaticZenRule, rule, true);
            newConfig.automaticRules.put(rule.id, rule);
            if (setConfigLocked(newConfig, reason, rule.component, true)) {
                str = rule.id;
            } else {
                throw new AndroidRuntimeException("Could not create rule");
            }
        }
        return str;
    }

    public boolean updateAutomaticZenRule(String ruleId, AutomaticZenRule automaticZenRule, String reason) {
        synchronized (this.mConfig) {
            if (this.mConfig == null) {
                return false;
            }
            if (DEBUG) {
                Log.d(TAG, "updateAutomaticZenRule zenRule=" + automaticZenRule + " reason=" + reason);
            }
            ZenModeConfig newConfig = this.mConfig.copy();
            if (ruleId == null) {
                throw new IllegalArgumentException("Rule doesn't exist");
            }
            ZenModeConfig.ZenRule rule = (ZenModeConfig.ZenRule) newConfig.automaticRules.get(ruleId);
            if (rule == null || !canManageAutomaticZenRule(rule)) {
                throw new SecurityException("Cannot update rules not owned by your condition provider");
            }
            if (rule.enabled != automaticZenRule.isEnabled()) {
                dispatchOnAutomaticRuleStatusChanged(this.mConfig.user, rule.pkg, ruleId, automaticZenRule.isEnabled() ? 1 : 2);
            }
            populateZenRule(rule.pkg, automaticZenRule, rule, false);
            return setConfigLocked(newConfig, reason, rule.component, true);
        }
    }

    public boolean removeAutomaticZenRule(String id, String reason) {
        synchronized (this.mConfig) {
            if (this.mConfig == null) {
                return false;
            }
            ZenModeConfig newConfig = this.mConfig.copy();
            ZenModeConfig.ZenRule rule = (ZenModeConfig.ZenRule) newConfig.automaticRules.get(id);
            if (rule == null) {
                return false;
            }
            if (canManageAutomaticZenRule(rule)) {
                newConfig.automaticRules.remove(id);
                if (DEBUG) {
                    Log.d(TAG, "removeZenRule zenRule=" + id + " reason=" + reason);
                }
                dispatchOnAutomaticRuleStatusChanged(this.mConfig.user, rule.pkg, id, 3);
                return setConfigLocked(newConfig, reason, null, true);
            }
            throw new SecurityException("Cannot delete rules not owned by your condition provider");
        }
    }

    public boolean removeAutomaticZenRules(String packageName, String reason) {
        synchronized (this.mConfig) {
            if (this.mConfig == null) {
                return false;
            }
            ZenModeConfig newConfig = this.mConfig.copy();
            int i = newConfig.automaticRules.size() - 1;
            while (true) {
                String pkg = null;
                if (i >= 0) {
                    ZenModeConfig.ZenRule rule = (ZenModeConfig.ZenRule) newConfig.automaticRules.get(newConfig.automaticRules.keyAt(i));
                    if (rule.pkg != null) {
                        pkg = rule.pkg;
                    } else if (rule.component != null) {
                        pkg = rule.component.getPackageName();
                    } else if (rule.configurationActivity != null) {
                        pkg = rule.configurationActivity.getPackageName();
                    }
                    if (Objects.equals(pkg, packageName) && canManageAutomaticZenRule(rule)) {
                        newConfig.automaticRules.removeAt(i);
                    }
                    i--;
                } else {
                    return setConfigLocked(newConfig, reason, null, true);
                }
            }
        }
    }

    public void setAutomaticZenRuleState(String id, Condition condition) {
        synchronized (this.mConfig) {
            if (this.mConfig == null) {
                return;
            }
            ZenModeConfig newConfig = this.mConfig.copy();
            setAutomaticZenRuleStateLocked(newConfig, (ZenModeConfig.ZenRule) newConfig.automaticRules.get(id), condition);
        }
    }

    public void setAutomaticZenRuleState(Uri ruleDefinition, Condition condition) {
        synchronized (this.mConfig) {
            if (this.mConfig == null) {
                return;
            }
            ZenModeConfig newConfig = this.mConfig.copy();
            setAutomaticZenRuleStateLocked(newConfig, findMatchingRule(newConfig, ruleDefinition, condition), condition);
        }
    }

    private void setAutomaticZenRuleStateLocked(ZenModeConfig config, ZenModeConfig.ZenRule rule, Condition condition) {
        if (rule == null) {
            return;
        }
        rule.condition = condition;
        updateSnoozing(rule);
        setConfigLocked(config, rule.component, "conditionChanged");
    }

    private ZenModeConfig.ZenRule findMatchingRule(ZenModeConfig config, Uri id, Condition condition) {
        if (ruleMatches(id, condition, config.manualRule)) {
            return config.manualRule;
        }
        for (ZenModeConfig.ZenRule automaticRule : config.automaticRules.values()) {
            if (ruleMatches(id, condition, automaticRule)) {
                return automaticRule;
            }
        }
        return null;
    }

    private boolean ruleMatches(Uri id, Condition condition, ZenModeConfig.ZenRule rule) {
        if (id == null || rule == null || rule.conditionId == null || !rule.conditionId.equals(id) || Objects.equals(condition, rule.condition)) {
            return false;
        }
        return true;
    }

    private boolean updateSnoozing(ZenModeConfig.ZenRule rule) {
        if (rule == null || !rule.snoozing || rule.isTrueOrUnknown()) {
            return false;
        }
        rule.snoozing = false;
        if (DEBUG) {
            Log.d(TAG, "Snoozing reset for " + rule.conditionId);
            return true;
        }
        return true;
    }

    public int getCurrentInstanceCount(ComponentName cn) {
        if (cn == null) {
            return 0;
        }
        int count = 0;
        synchronized (this.mConfig) {
            for (ZenModeConfig.ZenRule rule : this.mConfig.automaticRules.values()) {
                if (cn.equals(rule.component) || cn.equals(rule.configurationActivity)) {
                    count++;
                }
            }
        }
        return count;
    }

    private int getPackageRuleCount(String pkg) {
        if (pkg == null) {
            return 0;
        }
        int count = 0;
        synchronized (this.mConfig) {
            for (ZenModeConfig.ZenRule rule : this.mConfig.automaticRules.values()) {
                if (pkg.equals(rule.pkg)) {
                    count++;
                }
            }
        }
        return count;
    }

    public boolean canManageAutomaticZenRule(ZenModeConfig.ZenRule rule) {
        int callingUid = Binder.getCallingUid();
        if (callingUid == 0 || callingUid == 1000 || this.mContext.checkCallingPermission("android.permission.MANAGE_NOTIFICATIONS") == 0) {
            return true;
        }
        String[] packages = this.mPm.getPackagesForUid(Binder.getCallingUid());
        if (packages != null) {
            for (String str : packages) {
                if (str.equals(rule.pkg)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    protected void updateDefaultZenRules() {
        updateDefaultAutomaticRuleNames();
        for (ZenModeConfig.ZenRule defaultRule : this.mDefaultConfig.automaticRules.values()) {
            ZenModeConfig.ZenRule currRule = (ZenModeConfig.ZenRule) this.mConfig.automaticRules.get(defaultRule.id);
            if (currRule != null && !currRule.modified && !currRule.enabled && !defaultRule.name.equals(currRule.name) && canManageAutomaticZenRule(currRule)) {
                if (DEBUG) {
                    Slog.d(TAG, "Locale change - updating default zen rule name from " + currRule.name + " to " + defaultRule.name);
                }
                currRule.name = defaultRule.name;
                updateAutomaticZenRule(defaultRule.id, createAutomaticZenRule(currRule), "locale changed");
            }
        }
    }

    private ServiceInfo getServiceInfo(ComponentName owner) {
        Intent queryIntent = new Intent();
        queryIntent.setComponent(owner);
        List<ResolveInfo> installedServices = this.mPm.queryIntentServicesAsUser(queryIntent, CecMessageType.REPORT_PHYSICAL_ADDRESS, UserHandle.getCallingUserId());
        if (installedServices != null) {
            int count = installedServices.size();
            for (int i = 0; i < count; i++) {
                ResolveInfo resolveInfo = installedServices.get(i);
                ServiceInfo info = resolveInfo.serviceInfo;
                if (this.mServiceConfig.bindPermission.equals(info.permission)) {
                    return info;
                }
            }
            return null;
        }
        return null;
    }

    private ActivityInfo getActivityInfo(ComponentName configActivity) {
        Intent queryIntent = new Intent();
        queryIntent.setComponent(configActivity);
        List<ResolveInfo> installedComponents = this.mPm.queryIntentActivitiesAsUser(queryIntent, CecMessageType.ROUTING_INFORMATION, UserHandle.getCallingUserId());
        if (installedComponents != null) {
            int count = installedComponents.size();
            if (0 < count) {
                ResolveInfo resolveInfo = installedComponents.get(0);
                return resolveInfo.activityInfo;
            }
            return null;
        }
        return null;
    }

    private void populateZenRule(String pkg, AutomaticZenRule automaticZenRule, ZenModeConfig.ZenRule rule, boolean isNew) {
        if (isNew) {
            rule.id = ZenModeConfig.newRuleId();
            rule.creationTime = System.currentTimeMillis();
            rule.component = automaticZenRule.getOwner();
            rule.configurationActivity = automaticZenRule.getConfigurationActivity();
            rule.pkg = pkg;
        }
        if (rule.enabled != automaticZenRule.isEnabled()) {
            rule.snoozing = false;
        }
        rule.name = automaticZenRule.getName();
        rule.condition = null;
        rule.conditionId = automaticZenRule.getConditionId();
        rule.enabled = automaticZenRule.isEnabled();
        rule.modified = automaticZenRule.isModified();
        rule.zenPolicy = automaticZenRule.getZenPolicy();
        rule.zenMode = NotificationManager.zenModeFromInterruptionFilter(automaticZenRule.getInterruptionFilter(), 0);
    }

    protected AutomaticZenRule createAutomaticZenRule(ZenModeConfig.ZenRule rule) {
        AutomaticZenRule azr = new AutomaticZenRule(rule.name, rule.component, rule.configurationActivity, rule.conditionId, rule.zenPolicy, NotificationManager.zenModeToInterruptionFilter(rule.zenMode), rule.enabled, rule.creationTime);
        azr.setPackageName(rule.pkg);
        return azr;
    }

    public void setManualZenMode(int zenMode, Uri conditionId, String caller, String reason) {
        setManualZenMode(zenMode, conditionId, reason, caller, true);
        Settings.Secure.putInt(this.mContext.getContentResolver(), "show_zen_settings_suggestion", 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setManualZenMode(int zenMode, Uri conditionId, String reason, String caller, boolean setRingerMode) {
        synchronized (this.mConfig) {
            if (this.mConfig == null) {
                return;
            }
            if (Settings.Global.isValidZenMode(zenMode)) {
                if (DEBUG) {
                    Log.d(TAG, "setManualZenMode " + Settings.Global.zenModeToString(zenMode) + " conditionId=" + conditionId + " reason=" + reason + " setRingerMode=" + setRingerMode);
                }
                ZenModeConfig newConfig = this.mConfig.copy();
                if (zenMode == 0) {
                    newConfig.manualRule = null;
                    for (ZenModeConfig.ZenRule automaticRule : newConfig.automaticRules.values()) {
                        if (automaticRule.isAutomaticActive()) {
                            automaticRule.snoozing = true;
                        }
                    }
                } else {
                    ZenModeConfig.ZenRule newRule = new ZenModeConfig.ZenRule();
                    newRule.enabled = true;
                    newRule.zenMode = zenMode;
                    newRule.conditionId = conditionId;
                    newRule.enabler = caller;
                    newConfig.manualRule = newRule;
                }
                setConfigLocked(newConfig, reason, null, setRingerMode);
            }
        }
    }

    void dump(ProtoOutputStream proto) {
        proto.write(1159641169921L, this.mZenMode);
        synchronized (this.mConfig) {
            if (this.mConfig.manualRule != null) {
                this.mConfig.manualRule.dumpDebug(proto, 2246267895810L);
            }
            for (ZenModeConfig.ZenRule rule : this.mConfig.automaticRules.values()) {
                if (rule.enabled && rule.condition.state == 1 && !rule.snoozing) {
                    rule.dumpDebug(proto, 2246267895810L);
                }
            }
            this.mConfig.toNotificationPolicy().dumpDebug(proto, 1146756268037L);
            proto.write(1120986464259L, this.mSuppressedEffects);
        }
    }

    public void dump(PrintWriter pw, String prefix) {
        pw.print(prefix);
        pw.print("mZenMode=");
        pw.println(Settings.Global.zenModeToString(this.mZenMode));
        pw.print(prefix);
        pw.println("mConsolidatedPolicy=" + this.mConsolidatedPolicy.toString());
        int N = this.mConfigs.size();
        for (int i = 0; i < N; i++) {
            dump(pw, prefix, "mConfigs[u=" + this.mConfigs.keyAt(i) + "]", this.mConfigs.valueAt(i));
        }
        pw.print(prefix);
        pw.print("mUser=");
        pw.println(this.mUser);
        synchronized (this.mConfig) {
            dump(pw, prefix, "mConfig", this.mConfig);
        }
        pw.print(prefix);
        pw.print("mSuppressedEffects=");
        pw.println(this.mSuppressedEffects);
        this.mFiltering.dump(pw, prefix);
        this.mConditions.dump(pw, prefix);
    }

    private static void dump(PrintWriter pw, String prefix, String var, ZenModeConfig config) {
        pw.print(prefix);
        pw.print(var);
        pw.print('=');
        if (config == null) {
            pw.println(config);
            return;
        }
        pw.printf("allow(alarms=%b,media=%b,system=%b,calls=%b,callsFrom=%s,repeatCallers=%b,messages=%b,messagesFrom=%s,conversations=%b,conversationsFrom=%s,events=%b,reminders=%b)\n", Boolean.valueOf(config.allowAlarms), Boolean.valueOf(config.allowMedia), Boolean.valueOf(config.allowSystem), Boolean.valueOf(config.allowCalls), ZenModeConfig.sourceToString(config.allowCallsFrom), Boolean.valueOf(config.allowRepeatCallers), Boolean.valueOf(config.allowMessages), ZenModeConfig.sourceToString(config.allowMessagesFrom), Boolean.valueOf(config.allowConversations), ZenPolicy.conversationTypeToString(config.allowConversationsFrom), Boolean.valueOf(config.allowEvents), Boolean.valueOf(config.allowReminders));
        pw.print(prefix);
        pw.printf("  disallow(visualEffects=%s)\n", Integer.valueOf(config.suppressedVisualEffects));
        pw.print(prefix);
        pw.print("  manualRule=");
        pw.println(config.manualRule);
        if (config.automaticRules.isEmpty()) {
            return;
        }
        int N = config.automaticRules.size();
        int i = 0;
        while (i < N) {
            pw.print(prefix);
            pw.print(i == 0 ? "  automaticRules=" : "                 ");
            pw.println(config.automaticRules.valueAt(i));
            i++;
        }
    }

    public void readXml(XmlPullParser parser, boolean forRestore, int userId) throws XmlPullParserException, IOException {
        String reason;
        ZenModeConfig config = ZenModeConfig.readXml(parser);
        if (config != null) {
            if (forRestore) {
                config.user = userId;
                config.manualRule = null;
            }
            boolean allRulesDisabled = true;
            boolean hasDefaultRules = config.automaticRules.containsAll(ZenModeConfig.DEFAULT_RULE_IDS);
            long time = System.currentTimeMillis();
            if (config.automaticRules != null && config.automaticRules.size() > 0) {
                for (ZenModeConfig.ZenRule automaticRule : config.automaticRules.values()) {
                    if (forRestore) {
                        automaticRule.snoozing = false;
                        automaticRule.condition = null;
                        automaticRule.creationTime = time;
                    }
                    allRulesDisabled &= !automaticRule.enabled;
                }
            }
            if (hasDefaultRules || !allRulesDisabled || (!forRestore && config.version >= 8)) {
                reason = "readXml";
            } else {
                config.automaticRules = new ArrayMap();
                for (ZenModeConfig.ZenRule rule : this.mDefaultConfig.automaticRules.values()) {
                    config.automaticRules.put(rule.id, rule);
                }
                String reason2 = "readXml, reset to default rules";
                reason = reason2;
            }
            int userId2 = userId != -1 ? userId : 0;
            if (config.version < 8) {
                Settings.Secure.putIntForUser(this.mContext.getContentResolver(), "show_zen_upgrade_notification", 1, userId2);
            } else {
                Settings.Secure.putIntForUser(this.mContext.getContentResolver(), "zen_settings_updated", 1, userId2);
            }
            if (DEBUG) {
                Log.d(TAG, reason);
            }
            synchronized (this.mConfig) {
                setConfigLocked(config, null, reason);
            }
        }
    }

    public void writeXml(XmlSerializer out, boolean forBackup, Integer version, int userId) throws IOException {
        synchronized (this.mConfigs) {
            int n = this.mConfigs.size();
            for (int i = 0; i < n; i++) {
                if (!forBackup || this.mConfigs.keyAt(i) == userId) {
                    this.mConfigs.valueAt(i).writeXml(out, version);
                }
            }
        }
    }

    public NotificationManager.Policy getNotificationPolicy() {
        return getNotificationPolicy(this.mConfig);
    }

    private static NotificationManager.Policy getNotificationPolicy(ZenModeConfig config) {
        if (config == null) {
            return null;
        }
        return config.toNotificationPolicy();
    }

    public void setNotificationPolicy(NotificationManager.Policy policy) {
        ZenModeConfig zenModeConfig;
        if (policy == null || (zenModeConfig = this.mConfig) == null) {
            return;
        }
        synchronized (zenModeConfig) {
            ZenModeConfig newConfig = this.mConfig.copy();
            newConfig.applyNotificationPolicy(policy);
            setConfigLocked(newConfig, null, "setNotificationPolicy");
        }
    }

    private void cleanUpZenRules() {
        long currentTime = System.currentTimeMillis();
        synchronized (this.mConfig) {
            ZenModeConfig newConfig = this.mConfig.copy();
            if (newConfig.automaticRules != null) {
                for (int i = newConfig.automaticRules.size() - 1; i >= 0; i--) {
                    ZenModeConfig.ZenRule rule = (ZenModeConfig.ZenRule) newConfig.automaticRules.get(newConfig.automaticRules.keyAt(i));
                    if (259200000 < currentTime - rule.creationTime) {
                        try {
                            if (rule.pkg != null) {
                                this.mPm.getPackageInfo(rule.pkg, 4194304);
                            }
                        } catch (PackageManager.NameNotFoundException e) {
                            newConfig.automaticRules.removeAt(i);
                        }
                    }
                }
                setConfigLocked(newConfig, null, "cleanUpZenRules");
            } else {
                setConfigLocked(newConfig, null, "cleanUpZenRules");
            }
            throw th;
        }
    }

    public ZenModeConfig getConfig() {
        ZenModeConfig zenModeConfigCopy;
        synchronized (this.mConfig) {
            zenModeConfigCopy = this.mConfig.copy();
        }
        return zenModeConfigCopy;
    }

    public NotificationManager.Policy getConsolidatedNotificationPolicy() {
        return this.mConsolidatedPolicy.copy();
    }

    public boolean setConfigLocked(ZenModeConfig config, ComponentName triggeringComponent, String reason) {
        return setConfigLocked(config, reason, triggeringComponent, true);
    }

    public void setConfig(ZenModeConfig config, ComponentName triggeringComponent, String reason) {
        synchronized (this.mConfig) {
            setConfigLocked(config, triggeringComponent, reason);
        }
    }

    private boolean setConfigLocked(ZenModeConfig config, String reason, ComponentName triggeringComponent, boolean setRingerMode) {
        long identity = Binder.clearCallingIdentity();
        try {
            if (config != null) {
                if (config.isValid()) {
                    if (config.user != this.mUser) {
                        this.mConfigs.put(config.user, config);
                        if (DEBUG) {
                            Log.d(TAG, "setConfigLocked: store config for user " + config.user);
                        }
                        return true;
                    }
                    this.mConditions.evaluateConfig(config, null, false);
                    this.mConfigs.put(config.user, config);
                    if (DEBUG) {
                        Log.d(TAG, "setConfigLocked reason=" + reason, new Throwable());
                    }
                    ZenLog.traceConfig(reason, this.mConfig, config);
                    boolean policyChanged = !Objects.equals(getNotificationPolicy(this.mConfig), getNotificationPolicy(config));
                    if (!config.equals(this.mConfig)) {
                        dispatchOnConfigChanged();
                        updateConsolidatedPolicy(reason);
                    }
                    if (policyChanged) {
                        dispatchOnPolicyChanged();
                    }
                    this.mConfig = config;
                    this.mHandler.postApplyConfig(config, reason, triggeringComponent, setRingerMode);
                    return true;
                }
            }
            Log.w(TAG, "Invalid config in setConfigLocked; " + config);
            return false;
        } catch (SecurityException e) {
            Log.wtf(TAG, "Invalid rule in config", e);
            return false;
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyConfig(ZenModeConfig config, String reason, ComponentName triggeringComponent, boolean setRingerMode) {
        String val = Integer.toString(config.hashCode());
        Settings.Global.putString(this.mContext.getContentResolver(), "zen_mode_config_etag", val);
        evaluateZenMode(reason, setRingerMode);
        this.mConditions.evaluateConfig(config, triggeringComponent, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getZenModeSetting() {
        return Settings.Global.getInt(this.mContext.getContentResolver(), "zen_mode", 0);
    }

    protected void setZenModeSetting(int zen) {
        Settings.Global.putInt(this.mContext.getContentResolver(), "zen_mode", zen);
        showZenUpgradeNotification(zen);
    }

    private int getPreviousRingerModeSetting() {
        return Settings.Global.getInt(this.mContext.getContentResolver(), "zen_mode_ringer_level", 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPreviousRingerModeSetting(Integer previousRingerLevel) {
        Settings.Global.putString(this.mContext.getContentResolver(), "zen_mode_ringer_level", previousRingerLevel == null ? null : Integer.toString(previousRingerLevel.intValue()));
    }

    protected void evaluateZenMode(String reason, boolean setRingerMode) {
        if (DEBUG) {
            Log.d(TAG, "evaluateZenMode");
        }
        if (this.mConfig == null) {
            return;
        }
        NotificationManager.Policy policy = this.mConsolidatedPolicy;
        int policyHashBefore = policy == null ? 0 : policy.hashCode();
        int zenBefore = this.mZenMode;
        int zen = computeZenMode();
        ZenLog.traceSetZenMode(zen, reason);
        this.mZenMode = zen;
        setZenModeSetting(zen);
        updateConsolidatedPolicy(reason);
        updateRingerModeAffectedStreams();
        if (setRingerMode && (zen != zenBefore || (zen == 1 && policyHashBefore != this.mConsolidatedPolicy.hashCode()))) {
            applyZenToRingerMode();
        }
        applyRestrictions();
        if (zen == zenBefore) {
            return;
        }
        this.mHandler.postDispatchOnZenModeChanged();
    }

    private void updateRingerModeAffectedStreams() {
        AudioManagerInternal audioManagerInternal = this.mAudioManager;
        if (audioManagerInternal != null) {
            audioManagerInternal.updateRingerModeAffectedStreamsInternal();
        }
    }

    private int computeZenMode() {
        ZenModeConfig zenModeConfig = this.mConfig;
        if (zenModeConfig == null) {
            return 0;
        }
        synchronized (zenModeConfig) {
            if (this.mConfig.manualRule != null) {
                return this.mConfig.manualRule.zenMode;
            }
            int zen = 0;
            for (ZenModeConfig.ZenRule automaticRule : this.mConfig.automaticRules.values()) {
                if (automaticRule.isAutomaticActive() && zenSeverity(automaticRule.zenMode) > zenSeverity(zen)) {
                    if (Settings.Secure.getInt(this.mContext.getContentResolver(), "zen_settings_suggestion_viewed", 1) == 0) {
                        Settings.Secure.putInt(this.mContext.getContentResolver(), "show_zen_settings_suggestion", 1);
                    }
                    zen = automaticRule.zenMode;
                }
            }
            return zen;
        }
    }

    private void applyCustomPolicy(ZenPolicy policy, ZenModeConfig.ZenRule rule) {
        if (rule.zenMode == 2) {
            policy.apply(new ZenPolicy.Builder().disallowAllSounds().build());
        } else if (rule.zenMode == 3) {
            policy.apply(new ZenPolicy.Builder().disallowAllSounds().allowAlarms(true).allowMedia(true).build());
        } else {
            policy.apply(rule.zenPolicy);
        }
    }

    private void updateConsolidatedPolicy(String reason) {
        ZenModeConfig zenModeConfig = this.mConfig;
        if (zenModeConfig == null) {
            return;
        }
        synchronized (zenModeConfig) {
            ZenPolicy policy = new ZenPolicy();
            if (this.mConfig.manualRule != null) {
                applyCustomPolicy(policy, this.mConfig.manualRule);
            }
            for (ZenModeConfig.ZenRule automaticRule : this.mConfig.automaticRules.values()) {
                if (automaticRule.isAutomaticActive()) {
                    applyCustomPolicy(policy, automaticRule);
                }
            }
            NotificationManager.Policy newPolicy = this.mConfig.toNotificationPolicy(policy);
            if (!Objects.equals(this.mConsolidatedPolicy, newPolicy)) {
                this.mConsolidatedPolicy = newPolicy;
                dispatchOnConsolidatedPolicyChanged();
                ZenLog.traceSetConsolidatedZenPolicy(this.mConsolidatedPolicy, reason);
            }
        }
    }

    private void updateDefaultAutomaticRuleNames() {
        for (ZenModeConfig.ZenRule rule : this.mDefaultConfig.automaticRules.values()) {
            if ("EVENTS_DEFAULT_RULE".equals(rule.id)) {
                rule.name = this.mContext.getResources().getString(R.string.permlab_register_call_provider);
            } else if ("EVERY_NIGHT_DEFAULT_RULE".equals(rule.id)) {
                rule.name = this.mContext.getResources().getString(R.string.permlab_register_sim_subscription);
            }
        }
    }

    protected void applyRestrictions() {
        boolean muteEverything;
        boolean muteEverything2;
        boolean zenOn = this.mZenMode != 0;
        boolean zenPriorityOnly = this.mZenMode == 1;
        boolean zenSilence = this.mZenMode == 2;
        boolean zenAlarmsOnly = this.mZenMode == 3;
        boolean allowCalls = this.mConsolidatedPolicy.allowCalls() && this.mConsolidatedPolicy.allowCallsFrom() == 0;
        boolean allowRepeatCallers = this.mConsolidatedPolicy.allowRepeatCallers();
        boolean allowSystem = this.mConsolidatedPolicy.allowSystem();
        boolean allowMedia = this.mConsolidatedPolicy.allowMedia();
        boolean allowAlarms = this.mConsolidatedPolicy.allowAlarms();
        boolean muteNotifications = zenOn || (this.mSuppressedEffects & 1) != 0;
        boolean muteCalls = zenAlarmsOnly || !((!zenPriorityOnly || allowCalls || allowRepeatCallers) && (this.mSuppressedEffects & 2) == 0);
        boolean muteAlarms = zenPriorityOnly && !allowAlarms;
        boolean muteMedia = zenPriorityOnly && !allowMedia;
        boolean muteSystem = zenAlarmsOnly || (zenPriorityOnly && !allowSystem);
        boolean muteEverything3 = zenSilence || (zenPriorityOnly && ZenModeConfig.areAllZenBehaviorSoundsMuted(this.mConsolidatedPolicy));
        int[] iArr = AudioAttributes.SDK_USAGES;
        int length = iArr.length;
        boolean zenAlarmsOnly2 = muteEverything3;
        int i = 0;
        while (i < length) {
            int i2 = length;
            int usage = iArr[i];
            boolean zenSilence2 = zenSilence;
            int suppressionBehavior = AudioAttributes.SUPPRESSIBLE_USAGES.get(usage);
            int[] iArr2 = iArr;
            if (suppressionBehavior == 3) {
                muteEverything = zenAlarmsOnly2;
                muteEverything2 = zenAlarmsOnly;
                applyRestrictions(zenPriorityOnly, false, usage);
            } else {
                muteEverything = zenAlarmsOnly2;
                muteEverything2 = zenAlarmsOnly;
                boolean zenAlarmsOnly3 = true;
                if (suppressionBehavior == 1) {
                    if (!muteNotifications && !muteEverything) {
                        zenAlarmsOnly3 = false;
                    }
                    applyRestrictions(zenPriorityOnly, zenAlarmsOnly3, usage);
                } else if (suppressionBehavior == 2) {
                    applyRestrictions(zenPriorityOnly, muteCalls || muteEverything, usage);
                } else if (suppressionBehavior == 4) {
                    applyRestrictions(zenPriorityOnly, muteAlarms || muteEverything, usage);
                } else if (suppressionBehavior == 5) {
                    applyRestrictions(zenPriorityOnly, muteMedia || muteEverything, usage);
                } else if (suppressionBehavior != 6) {
                    applyRestrictions(zenPriorityOnly, muteEverything, usage);
                } else if (usage == 13) {
                    applyRestrictions(zenPriorityOnly, muteSystem || muteEverything, usage, 28);
                    applyRestrictions(zenPriorityOnly, false, usage, 3);
                } else {
                    applyRestrictions(zenPriorityOnly, muteSystem || muteEverything, usage);
                }
            }
            i++;
            zenAlarmsOnly = muteEverything2;
            length = i2;
            zenSilence = zenSilence2;
            muteNotifications = muteNotifications;
            zenAlarmsOnly2 = muteEverything;
            iArr = iArr2;
        }
    }

    protected void applyRestrictions(boolean z, boolean z2, int i, int i2) {
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            this.mAppOps.setRestriction(i2, i, z2 ? 1 : 0, z ? this.mPriorityOnlyDndExemptPackages : null);
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    protected void applyRestrictions(boolean zenPriorityOnly, boolean mute, int usage) {
        applyRestrictions(zenPriorityOnly, mute, usage, 3);
        applyRestrictions(zenPriorityOnly, mute, usage, 28);
    }

    protected void applyZenToRingerMode() {
        AudioManagerInternal audioManagerInternal = this.mAudioManager;
        if (audioManagerInternal == null) {
            return;
        }
        int ringerModeInternal = audioManagerInternal.getRingerModeInternal();
        int newRingerModeInternal = ringerModeInternal;
        int i = this.mZenMode;
        if (i != 0) {
            if ((i == 2 || i == 3) && ringerModeInternal != 0) {
                setPreviousRingerModeSetting(Integer.valueOf(ringerModeInternal));
                newRingerModeInternal = 0;
            }
        } else if (ringerModeInternal == 0) {
            newRingerModeInternal = getPreviousRingerModeSetting();
            setPreviousRingerModeSetting(null);
        }
        if (newRingerModeInternal != -1) {
            this.mAudioManager.setRingerModeInternal(newRingerModeInternal, TAG);
        }
    }

    private void dispatchOnConfigChanged() {
        for (Callback callback : this.mCallbacks) {
            callback.onConfigChanged();
        }
    }

    private void dispatchOnPolicyChanged() {
        for (Callback callback : this.mCallbacks) {
            callback.onPolicyChanged();
        }
    }

    private void dispatchOnConsolidatedPolicyChanged() {
        for (Callback callback : this.mCallbacks) {
            callback.onConsolidatedPolicyChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchOnZenModeChanged() {
        for (Callback callback : this.mCallbacks) {
            callback.onZenModeChanged();
        }
    }

    private void dispatchOnAutomaticRuleStatusChanged(int userId, String pkg, String id, int status) {
        for (Callback callback : this.mCallbacks) {
            callback.onAutomaticRuleStatusChanged(userId, pkg, id, status);
        }
    }

    private ZenModeConfig readDefaultConfig(Resources resources) {
        XmlResourceParser parser = null;
        try {
            parser = resources.getXml(R.xml.default_zen_mode_config);
            while (parser.next() != 1) {
                ZenModeConfig config = ZenModeConfig.readXml(parser);
                if (config != null) {
                    return config;
                }
            }
        } catch (Exception e) {
            Log.w(TAG, "Error reading default zen mode config from resource", e);
        } finally {
            IoUtils.closeQuietly(parser);
        }
        return new ZenModeConfig();
    }

    private static int zenSeverity(int zen) {
        if (zen == 1) {
            return 1;
        }
        if (zen != 2) {
            return zen != 3 ? 0 : 2;
        }
        return 3;
    }

    public void pullRules(List<StatsEvent> events) {
        synchronized (this.mConfig) {
            int numConfigs = this.mConfigs.size();
            for (int i = 0; i < numConfigs; i++) {
                int user = this.mConfigs.keyAt(i);
                ZenModeConfig config = this.mConfigs.valueAt(i);
                SysUiStatsEvent.Builder data = this.mStatsEventBuilderFactory.newBuilder().setAtomId(10084).writeInt(user).writeBoolean(config.manualRule != null).writeBoolean(config.areChannelsBypassingDnd).writeInt(-1).writeString("").writeInt(1000).addBooleanAnnotation((byte) 1, true).writeByteArray(config.toZenPolicy().toProto());
                events.add(data.build());
                if (config.manualRule != null && config.manualRule.enabler != null) {
                    ruleToProto(user, config.manualRule, events);
                }
                for (ZenModeConfig.ZenRule rule : config.automaticRules.values()) {
                    ruleToProto(user, rule, events);
                }
            }
        }
    }

    private void ruleToProto(int user, ZenModeConfig.ZenRule rule, List<StatsEvent> events) {
        String id = rule.id == null ? "" : rule.id;
        if (!ZenModeConfig.DEFAULT_RULE_IDS.contains(id)) {
            id = "";
        }
        String pkg = rule.pkg != null ? rule.pkg : "";
        if (rule.enabler != null) {
            pkg = rule.enabler;
            id = "MANUAL_RULE";
        }
        int uid = PackageManagerService.PLATFORM_PACKAGE_NAME.equals(pkg) ? 1000 : 0;
        SysUiStatsEvent.Builder data = this.mStatsEventBuilderFactory.newBuilder().setAtomId(10084).writeInt(user).writeBoolean(rule.enabled).writeBoolean(false).writeInt(rule.zenMode).writeString(id).writeInt(uid).addBooleanAnnotation((byte) 1, true);
        byte[] policyProto = new byte[0];
        if (rule.zenPolicy != null) {
            policyProto = rule.zenPolicy.toProto();
        }
        data.writeByteArray(policyProto);
        events.add(data.build());
    }

    protected final class RingerModeDelegate implements AudioManagerInternal.RingerModeDelegate {
        protected RingerModeDelegate() {
        }

        public String toString() {
            return ZenModeHelper.TAG;
        }

        /* JADX WARN: Code duplicated, block: B:40:0x0074  */
        public int onSetRingerModeInternal(int ringerModeOld, int ringerModeNew, String caller, int ringerModeExternal, VolumePolicy policy) {
            int newZen;
            boolean isChange = ringerModeOld != ringerModeNew;
            int ringerModeExternalOut = ringerModeNew;
            if (ZenModeHelper.this.mZenMode == 0 || (ZenModeHelper.this.mZenMode == 1 && !ZenModeConfig.areAllPriorityOnlyRingerSoundsMuted(ZenModeHelper.this.mConfig))) {
                ZenModeHelper.this.setPreviousRingerModeSetting(Integer.valueOf(ringerModeNew));
            }
            int newZen2 = -1;
            if (ringerModeNew != 0) {
                if (ringerModeNew == 1 || ringerModeNew == 2) {
                    if (isChange && ringerModeOld == 0 && (ZenModeHelper.this.mZenMode == 2 || ZenModeHelper.this.mZenMode == 3 || (ZenModeHelper.this.mZenMode == 1 && ZenModeConfig.areAllPriorityOnlyRingerSoundsMuted(ZenModeHelper.this.mConfig)))) {
                        newZen = 0;
                    } else if (ZenModeHelper.this.mZenMode != 0) {
                        ringerModeExternalOut = 0;
                        newZen = -1;
                    } else {
                        newZen = -1;
                    }
                } else {
                    newZen = -1;
                }
            } else if (isChange && policy.doNotDisturbWhenSilent) {
                if (ZenModeHelper.this.mZenMode == 0) {
                    newZen2 = 1;
                }
                ZenModeHelper.this.setPreviousRingerModeSetting(Integer.valueOf(ringerModeOld));
                newZen = newZen2;
            } else {
                newZen = -1;
            }
            if (newZen != -1) {
                ZenModeHelper.this.setManualZenMode(newZen, null, "ringerModeInternal", null, false);
            }
            if (isChange || newZen != -1 || ringerModeExternal != ringerModeExternalOut) {
                ZenLog.traceSetRingerModeInternal(ringerModeOld, ringerModeNew, caller, ringerModeExternal, ringerModeExternalOut);
            }
            return ringerModeExternalOut;
        }

        public int onSetRingerModeExternal(int ringerModeOld, int ringerModeNew, String caller, int ringerModeInternal, VolumePolicy policy) {
            int newZen;
            int ringerModeInternalOut = ringerModeNew;
            boolean isChange = ringerModeOld != ringerModeNew;
            boolean isVibrate = ringerModeInternal == 1;
            int newZen2 = -1;
            if (ringerModeNew == 0) {
                if (isChange) {
                    if (ZenModeHelper.this.mZenMode == 0) {
                        newZen2 = 1;
                    }
                    ringerModeInternalOut = isVibrate ? 1 : 0;
                    newZen = newZen2;
                } else {
                    ringerModeInternalOut = ringerModeInternal;
                    newZen = -1;
                }
            } else if ((ringerModeNew == 1 || ringerModeNew == 2) && ZenModeHelper.this.mZenMode != 0) {
                newZen = 0;
            } else {
                newZen = -1;
            }
            if (newZen != -1) {
                ZenModeHelper.this.setManualZenMode(newZen, null, "ringerModeExternal", caller, false);
            }
            ZenLog.traceSetRingerModeExternal(ringerModeOld, ringerModeNew, caller, ringerModeInternal, ringerModeInternalOut);
            return ringerModeInternalOut;
        }

        public boolean canVolumeDownEnterSilent() {
            return ZenModeHelper.this.mZenMode == 0;
        }

        public int getRingerModeAffectedStreams(int streams) {
            int streams2 = streams | 38;
            if (ZenModeHelper.this.mZenMode == 2) {
                return streams2 | 2072;
            }
            return streams2 & (-2073);
        }
    }

    private final class SettingsObserver extends ContentObserver {
        private final Uri ZEN_MODE;

        public SettingsObserver(Handler handler) {
            super(handler);
            this.ZEN_MODE = Settings.Global.getUriFor("zen_mode");
        }

        public void observe() {
            ContentResolver resolver = ZenModeHelper.this.mContext.getContentResolver();
            resolver.registerContentObserver(this.ZEN_MODE, false, this);
            update(null);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange, Uri uri) {
            update(uri);
        }

        public void update(Uri uri) {
            if (this.ZEN_MODE.equals(uri) && ZenModeHelper.this.mZenMode != ZenModeHelper.this.getZenModeSetting()) {
                if (ZenModeHelper.DEBUG) {
                    Log.d(ZenModeHelper.TAG, "Fixing zen mode setting");
                }
                ZenModeHelper zenModeHelper = ZenModeHelper.this;
                zenModeHelper.setZenModeSetting(zenModeHelper.mZenMode);
            }
        }
    }

    private void showZenUpgradeNotification(int zen) {
        boolean isWatch = this.mContext.getPackageManager().hasSystemFeature("android.hardware.type.watch");
        boolean showNotification = (!this.mIsBootComplete || zen == 0 || isWatch || Settings.Secure.getInt(this.mContext.getContentResolver(), "show_zen_upgrade_notification", 0) == 0 || Settings.Secure.getInt(this.mContext.getContentResolver(), "zen_settings_updated", 0) == 1) ? false : true;
        if (isWatch) {
            Settings.Secure.putInt(this.mContext.getContentResolver(), "show_zen_upgrade_notification", 0);
        }
        if (showNotification) {
            this.mNotificationManager.notify(TAG, 48, createZenUpgradeNotification());
            Settings.Secure.putInt(this.mContext.getContentResolver(), "show_zen_upgrade_notification", 0);
        }
    }

    protected Notification createZenUpgradeNotification() {
        Bundle extras = new Bundle();
        extras.putString("android.substName", this.mContext.getResources().getString(R.string.PERSOSUBSTATE_SIM_NETWORK_PUK_IN_PROGRESS));
        int title = R.string.permlab_scene_understanding_coarse;
        int content = R.string.permlab_runInBackground;
        int drawable = R.drawable.ic_menu_moreoverflow_holo_light;
        if (NotificationManager.Policy.areAllVisualEffectsSuppressed(getConsolidatedNotificationPolicy().suppressedVisualEffects)) {
            title = R.string.permlab_schedule_exact_alarm;
            content = R.string.permlab_scene_understanding_fine;
            drawable = R.drawable.ic_add_supervised_user;
        }
        Intent onboardingIntent = new Intent("android.settings.ZEN_MODE_ONBOARDING");
        onboardingIntent.addFlags(268468224);
        return new Notification.Builder(this.mContext, SystemNotificationChannels.DO_NOT_DISTURB).setAutoCancel(true).setSmallIcon(R.drawable.$progress_indeterminate_horizontal_material__12).setLargeIcon(Icon.createWithResource(this.mContext, drawable)).setContentTitle(this.mContext.getResources().getString(title)).setContentText(this.mContext.getResources().getString(content)).setContentIntent(PendingIntent.getActivity(this.mContext, 0, onboardingIntent, AudioFormat.DTS_HD)).setAutoCancel(true).setLocalOnly(true).addExtras(extras).setStyle(new Notification.BigTextStyle()).build();
    }

    private final class Metrics extends Callback {
        private static final String COUNTER_MODE_PREFIX = "dnd_mode_";
        private static final String COUNTER_RULE = "dnd_rule_count";
        private static final String COUNTER_TYPE_PREFIX = "dnd_type_";
        private static final int DND_OFF = 0;
        private static final int DND_ON_AUTOMATIC = 2;
        private static final int DND_ON_MANUAL = 1;
        private static final long MINIMUM_LOG_PERIOD_MS = 60000;
        private long mModeLogTimeMs;
        private int mNumZenRules;
        private int mPreviousZenMode;
        private int mPreviousZenType;
        private long mRuleCountLogTime;
        private long mTypeLogTimeMs;

        private Metrics() {
            this.mPreviousZenMode = -1;
            this.mModeLogTimeMs = 0L;
            this.mNumZenRules = -1;
            this.mRuleCountLogTime = 0L;
            this.mPreviousZenType = -1;
            this.mTypeLogTimeMs = 0L;
        }

        @Override // com.android.server.notification.ZenModeHelper.Callback
        void onZenModeChanged() {
            emit();
        }

        @Override // com.android.server.notification.ZenModeHelper.Callback
        void onConfigChanged() {
            emit();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void emit() {
            ZenModeHelper.this.mHandler.postMetricsTimer();
            emitZenMode();
            emitRules();
            emitDndType();
        }

        private void emitZenMode() {
            long now = SystemClock.elapsedRealtime();
            long since = now - this.mModeLogTimeMs;
            if (this.mPreviousZenMode != ZenModeHelper.this.mZenMode || since > 60000) {
                if (this.mPreviousZenMode != -1) {
                    MetricsLogger.count(ZenModeHelper.this.mContext, COUNTER_MODE_PREFIX + this.mPreviousZenMode, (int) since);
                }
                this.mPreviousZenMode = ZenModeHelper.this.mZenMode;
                this.mModeLogTimeMs = now;
            }
        }

        private void emitRules() {
            long now = SystemClock.elapsedRealtime();
            long since = now - this.mRuleCountLogTime;
            synchronized (ZenModeHelper.this.mConfig) {
                int numZenRules = ZenModeHelper.this.mConfig.automaticRules.size();
                if (this.mNumZenRules != numZenRules || since > 60000) {
                    if (this.mNumZenRules != -1) {
                        MetricsLogger.count(ZenModeHelper.this.mContext, COUNTER_RULE, numZenRules - this.mNumZenRules);
                    }
                    this.mNumZenRules = numZenRules;
                    this.mRuleCountLogTime = since;
                }
            }
        }

        private void emitDndType() {
            long now = SystemClock.elapsedRealtime();
            long since = now - this.mTypeLogTimeMs;
            synchronized (ZenModeHelper.this.mConfig) {
                int zenType = 1;
                boolean dndOn = ZenModeHelper.this.mZenMode != 0;
                if (!dndOn) {
                    zenType = 0;
                } else if (ZenModeHelper.this.mConfig.manualRule == null) {
                    zenType = 2;
                }
                if (zenType != this.mPreviousZenType || since > 60000) {
                    if (this.mPreviousZenType != -1) {
                        MetricsLogger.count(ZenModeHelper.this.mContext, COUNTER_TYPE_PREFIX + this.mPreviousZenType, (int) since);
                    }
                    this.mTypeLogTimeMs = now;
                    this.mPreviousZenType = zenType;
                }
            }
        }
    }

    private final class H extends Handler {
        private static final long METRICS_PERIOD_MS = 21600000;
        private static final int MSG_APPLY_CONFIG = 4;
        private static final int MSG_DISPATCH = 1;
        private static final int MSG_METRICS = 2;

        private final class ConfigMessageData {
            public final ZenModeConfig config;
            public final String reason;
            public final boolean setRingerMode;
            public ComponentName triggeringComponent;

            ConfigMessageData(ZenModeConfig config, String reason, ComponentName triggeringComponent, boolean setRingerMode) {
                this.config = config;
                this.reason = reason;
                this.setRingerMode = setRingerMode;
                this.triggeringComponent = triggeringComponent;
            }
        }

        private H(Looper looper) {
            super(looper);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void postDispatchOnZenModeChanged() {
            removeMessages(1);
            sendEmptyMessage(1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void postMetricsTimer() {
            removeMessages(2);
            sendEmptyMessageDelayed(2, METRICS_PERIOD_MS);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void postApplyConfig(ZenModeConfig config, String reason, ComponentName triggeringComponent, boolean setRingerMode) {
            sendMessage(obtainMessage(4, new ConfigMessageData(config, reason, triggeringComponent, setRingerMode)));
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int i = msg.what;
            if (i == 1) {
                ZenModeHelper.this.dispatchOnZenModeChanged();
                return;
            }
            if (i == 2) {
                ZenModeHelper.this.mMetrics.emit();
            } else if (i == 4) {
                ConfigMessageData applyConfigData = (ConfigMessageData) msg.obj;
                ZenModeHelper.this.applyConfig(applyConfigData.config, applyConfigData.reason, applyConfigData.triggeringComponent, applyConfigData.setRingerMode);
            }
        }
    }

    public static class Callback {
        void onConfigChanged() {
        }

        void onZenModeChanged() {
        }

        void onPolicyChanged() {
        }

        void onConsolidatedPolicyChanged() {
        }

        void onAutomaticRuleStatusChanged(int userId, String pkg, String id, int status) {
        }
    }
}
