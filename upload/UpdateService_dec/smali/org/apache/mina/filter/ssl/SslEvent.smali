.class public final enum Lorg/apache/mina/filter/ssl/SslEvent;
.super Ljava/lang/Enum;
.source "SslEvent.java"

# interfaces
.implements Lorg/apache/mina/filter/FilterEvent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/mina/filter/ssl/SslEvent;",
        ">;",
        "Lorg/apache/mina/filter/FilterEvent;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/mina/filter/ssl/SslEvent;

.field public static final enum SECURED:Lorg/apache/mina/filter/ssl/SslEvent;

.field public static final enum UNSECURED:Lorg/apache/mina/filter/ssl/SslEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 30
    new-instance v0, Lorg/apache/mina/filter/ssl/SslEvent;

    const-string v1, "SECURED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/filter/ssl/SslEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/filter/ssl/SslEvent;->SECURED:Lorg/apache/mina/filter/ssl/SslEvent;

    .line 31
    new-instance v0, Lorg/apache/mina/filter/ssl/SslEvent;

    const-string v1, "UNSECURED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/mina/filter/ssl/SslEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/filter/ssl/SslEvent;->UNSECURED:Lorg/apache/mina/filter/ssl/SslEvent;

    .line 29
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/mina/filter/ssl/SslEvent;

    sget-object v4, Lorg/apache/mina/filter/ssl/SslEvent;->SECURED:Lorg/apache/mina/filter/ssl/SslEvent;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lorg/apache/mina/filter/ssl/SslEvent;->$VALUES:[Lorg/apache/mina/filter/ssl/SslEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/mina/filter/ssl/SslEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 29
    const-class v0, Lorg/apache/mina/filter/ssl/SslEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/ssl/SslEvent;

    return-object v0
.end method

.method public static values()[Lorg/apache/mina/filter/ssl/SslEvent;
    .locals 1

    .line 29
    sget-object v0, Lorg/apache/mina/filter/ssl/SslEvent;->$VALUES:[Lorg/apache/mina/filter/ssl/SslEvent;

    invoke-virtual {v0}, [Lorg/apache/mina/filter/ssl/SslEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/mina/filter/ssl/SslEvent;

    return-object v0
.end method
