.class public final Lorg/apache/logging/log4j/core/net/ssl/LaxHostnameVerifier;
.super Ljava/lang/Object;
.source "LaxHostnameVerifier.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field public static final INSTANCE:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lorg/apache/logging/log4j/core/net/ssl/LaxHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/net/ssl/LaxHostnameVerifier;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/net/ssl/LaxHostnameVerifier;->INSTANCE:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "sslSession"    # Ljavax/net/ssl/SSLSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "s",
            "sslSession"
        }
    .end annotation

    .line 36
    const/4 v0, 0x1

    return v0
.end method
