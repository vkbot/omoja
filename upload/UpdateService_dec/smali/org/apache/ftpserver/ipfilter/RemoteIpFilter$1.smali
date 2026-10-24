.class synthetic Lorg/apache/ftpserver/ipfilter/RemoteIpFilter$1;
.super Ljava/lang/Object;
.source "RemoteIpFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$apache$ftpserver$ipfilter$IpFilterType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 170
    invoke-static {}, Lorg/apache/ftpserver/ipfilter/IpFilterType;->values()[Lorg/apache/ftpserver/ipfilter/IpFilterType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter$1;->$SwitchMap$org$apache$ftpserver$ipfilter$IpFilterType:[I

    :try_start_0
    sget-object v1, Lorg/apache/ftpserver/ipfilter/IpFilterType;->ALLOW:Lorg/apache/ftpserver/ipfilter/IpFilterType;

    invoke-virtual {v1}, Lorg/apache/ftpserver/ipfilter/IpFilterType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter$1;->$SwitchMap$org$apache$ftpserver$ipfilter$IpFilterType:[I

    sget-object v1, Lorg/apache/ftpserver/ipfilter/IpFilterType;->DENY:Lorg/apache/ftpserver/ipfilter/IpFilterType;

    invoke-virtual {v1}, Lorg/apache/ftpserver/ipfilter/IpFilterType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void
.end method
