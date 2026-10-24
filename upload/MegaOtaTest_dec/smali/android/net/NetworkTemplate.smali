.class public Landroid/net/NetworkTemplate;
.super Ljava/lang/Object;
.source "NetworkTemplate.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkTemplate;",
            ">;"
        }
    .end annotation
.end field

.field public static final MATCH_BLUETOOTH:I = 0x8

.field public static final MATCH_ETHERNET:I = 0x5

.field public static final MATCH_MOBILE_3G_LOWER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MATCH_MOBILE_4G:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MATCH_MOBILE_ALL:I = 0x1

.field public static final MATCH_MOBILE_WILDCARD:I = 0x6

.field public static final MATCH_PROXY:I = 0x9

.field public static final MATCH_WIFI:I = 0x4

.field public static final MATCH_WIFI_WILDCARD:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 195
    new-instance v0, Landroid/net/NetworkTemplate$1;

    invoke-direct {v0}, Landroid/net/NetworkTemplate$1;-><init>()V

    sput-object v0, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "matchRule"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "networkId"    # Ljava/lang/String;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "matchRule"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "matchSubscriberIds"    # [Ljava/lang/String;
    .param p4, "networkId"    # Ljava/lang/String;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static buildTemplateBluetooth()Landroid/net/NetworkTemplate;
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static buildTemplateEthernet()Landroid/net/NetworkTemplate;
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 2
    .param p0, "subscriberId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 2
    .param p0, "subscriberId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 75
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 2
    .param p0, "subscriberId"    # Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static buildTemplateProxy()Landroid/net/NetworkTemplate;
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static buildTemplateWifi()Landroid/net/NetworkTemplate;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 96
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 2
    .param p0, "networkId"    # Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forceAllNetworkTypes()V
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getNetworkTemplateFromBackup(Ljava/io/DataInputStream;)Landroid/net/NetworkTemplate;
    .locals 2
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/BackupUtils$BadVersionException;
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 2
    .param p0, "template"    # Landroid/net/NetworkTemplate;
    .param p1, "merged"    # [Ljava/lang/String;

    .line 192
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBytesForBackup()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMatchRule()I
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNetworkId()Ljava/lang/String;
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isMatchRuleMobile()Z
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isPersistable()Z
    .locals 2

    .line 155
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public matches(Landroid/net/NetworkIdentity;)Z
    .locals 2
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .line 174
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public matchesSubscriberId(Ljava/lang/String;)Z
    .locals 2
    .param p1, "subscriberId"    # Ljava/lang/String;

    .line 178
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 142
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
