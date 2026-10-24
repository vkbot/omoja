.class public Landroid/net/NetworkPolicyManager;
.super Ljava/lang/Object;
.source "NetworkPolicyManager.java"


# static fields
.field public static final EXTRA_NETWORK_TEMPLATE:Ljava/lang/String; = "android.net.NETWORK_TEMPLATE"

.field public static final FIREWALL_CHAIN_DOZABLE:I = 0x1

.field public static final FIREWALL_CHAIN_NAME_DOZABLE:Ljava/lang/String; = "dozable"

.field public static final FIREWALL_CHAIN_NAME_NONE:Ljava/lang/String; = "none"

.field public static final FIREWALL_CHAIN_NAME_POWERSAVE:Ljava/lang/String; = "powersave"

.field public static final FIREWALL_CHAIN_NAME_STANDBY:Ljava/lang/String; = "standby"

.field public static final FIREWALL_CHAIN_NONE:I = 0x0

.field public static final FIREWALL_CHAIN_POWERSAVE:I = 0x3

.field public static final FIREWALL_CHAIN_STANDBY:I = 0x2

.field public static final FIREWALL_RULE_ALLOW:I = 0x1

.field public static final FIREWALL_RULE_DEFAULT:I = 0x0

.field public static final FIREWALL_RULE_DENY:I = 0x2

.field public static final FIREWALL_TYPE_BLACKLIST:I = 0x1

.field public static final FIREWALL_TYPE_WHITELIST:I = 0x0

.field public static final MASK_ALL_NETWORKS:I = 0xf0

.field public static final MASK_METERED_NETWORKS:I = 0xf

.field public static final POLICY_ALLOW_METERED_BACKGROUND:I = 0x4

.field public static final POLICY_NONE:I = 0x0

.field public static final POLICY_REJECT_METERED_BACKGROUND:I = 0x1

.field public static final RULE_ALLOW_ALL:I = 0x20

.field public static final RULE_ALLOW_METERED:I = 0x1

.field public static final RULE_NONE:I = 0x0

.field public static final RULE_REJECT_ALL:I = 0x40

.field public static final RULE_REJECT_METERED:I = 0x4

.field public static final RULE_TEMPORARY_ALLOW_METERED:I = 0x2


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/INetworkPolicyManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/INetworkPolicyManager;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;
    .locals 2
    .param p0, "policy"    # Landroid/net/NetworkPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkPolicy;",
            ")",
            "Ljava/util/Iterator<",
            "Landroid/util/Pair<",
            "Ljava/time/ZonedDateTime;",
            "Ljava/time/ZonedDateTime;",
            ">;>;"
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 99
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z
    .locals 2
    .param p0, "procState"    # I

    .line 210
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isProcStateAllowedWhileOnRestrictBackground(I)Z
    .locals 2
    .param p0, "procState"    # I

    .line 218
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isUidValidForPolicy(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 188
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static resolveNetworkId(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 222
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static resolveNetworkId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "ssid"    # Ljava/lang/String;

    .line 226
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static uidPoliciesToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "uidPolicies"    # I

    .line 202
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static uidRulesToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "uidRules"    # I

    .line 195
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addUidPolicy(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .line 121
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public factoryReset(Ljava/lang/String;)V
    .locals 2
    .param p1, "subscriber"    # Ljava/lang/String;

    .line 174
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNetworkPolicies()[Landroid/net/NetworkPolicy;
    .locals 2

    .line 157
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRestrictBackground()Z
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUidPolicy(I)I
    .locals 2
    .param p1, "uid"    # I

    .line 137
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUidsWithPolicy(I)[I
    .locals 2
    .param p1, "policy"    # I

    .line 141
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerListener(Landroid/net/INetworkPolicyListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .line 145
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeUidPolicy(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .line 133
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .locals 2
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .line 153
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRestrictBackground(Z)V
    .locals 2
    .param p1, "restrictBackground"    # Z

    .line 161
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUidPolicy(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .line 109
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .line 149
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
