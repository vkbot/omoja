.class public final enum Lorg/apache/ftpserver/ipfilter/IpFilterType;
.super Ljava/lang/Enum;
.source "IpFilterType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/ftpserver/ipfilter/IpFilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ftpserver/ipfilter/IpFilterType;

.field public static final enum ALLOW:Lorg/apache/ftpserver/ipfilter/IpFilterType;

.field public static final enum DENY:Lorg/apache/ftpserver/ipfilter/IpFilterType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 34
    new-instance v0, Lorg/apache/ftpserver/ipfilter/IpFilterType;

    const-string v1, "ALLOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/ftpserver/ipfilter/IpFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ftpserver/ipfilter/IpFilterType;->ALLOW:Lorg/apache/ftpserver/ipfilter/IpFilterType;

    .line 40
    new-instance v0, Lorg/apache/ftpserver/ipfilter/IpFilterType;

    const-string v1, "DENY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/ftpserver/ipfilter/IpFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ftpserver/ipfilter/IpFilterType;->DENY:Lorg/apache/ftpserver/ipfilter/IpFilterType;

    .line 28
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/ftpserver/ipfilter/IpFilterType;

    sget-object v4, Lorg/apache/ftpserver/ipfilter/IpFilterType;->ALLOW:Lorg/apache/ftpserver/ipfilter/IpFilterType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lorg/apache/ftpserver/ipfilter/IpFilterType;->$VALUES:[Lorg/apache/ftpserver/ipfilter/IpFilterType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/ftpserver/ipfilter/IpFilterType;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .line 50
    invoke-static {}, Lorg/apache/ftpserver/ipfilter/IpFilterType;->values()[Lorg/apache/ftpserver/ipfilter/IpFilterType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 51
    .local v3, "type":Lorg/apache/ftpserver/ipfilter/IpFilterType;
    invoke-virtual {v3}, Lorg/apache/ftpserver/ipfilter/IpFilterType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    return-object v3

    .line 50
    .end local v3    # "type":Lorg/apache/ftpserver/ipfilter/IpFilterType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid IpFilterType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ftpserver/ipfilter/IpFilterType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 28
    const-class v0, Lorg/apache/ftpserver/ipfilter/IpFilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ftpserver/ipfilter/IpFilterType;

    return-object v0
.end method

.method public static values()[Lorg/apache/ftpserver/ipfilter/IpFilterType;
    .locals 1

    .line 28
    sget-object v0, Lorg/apache/ftpserver/ipfilter/IpFilterType;->$VALUES:[Lorg/apache/ftpserver/ipfilter/IpFilterType;

    invoke-virtual {v0}, [Lorg/apache/ftpserver/ipfilter/IpFilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ftpserver/ipfilter/IpFilterType;

    return-object v0
.end method
