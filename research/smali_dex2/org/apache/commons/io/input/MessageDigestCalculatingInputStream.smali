.class public Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream;
.super Lorg/apache/commons/io/input/ObservableInputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;,
        Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$MessageDigestMaintainingObserver;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_ALGORITHM:Ljava/lang/String; = "MD5"


# instance fields
.field private final messageDigest:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 20
    invoke-static {}, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream;->getDefaultMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 22
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$MessageDigestMaintainingObserver;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$MessageDigestMaintainingObserver;-><init>(Ljava/security/MessageDigest;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v1, v1, [Lorg/apache/commons/io/input/ObservableInputStream$Observer;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object v0, v1, v2

    .line 11
    .line 12
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/io/input/ObservableInputStream;-><init>(Ljava/io/InputStream;[Lorg/apache/commons/io/input/ObservableInputStream$Observer;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream;->messageDigest:Ljava/security/MessageDigest;

    .line 16
    .line 17
    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;)V
    .registers 2

    .line 18
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ObservableInputStream;-><init>(Lorg/apache/commons/io/input/ObservableInputStream$AbstractBuilder;)V

    .line 19
    # getter for: Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;->messageDigest:Ljava/security/MessageDigest;
    invoke-static {p1}, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;->access$100(Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream;->messageDigest:Ljava/security/MessageDigest;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$1;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream;-><init>(Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;
    .registers 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static getDefaultMessageDigest()Ljava/security/MessageDigest;
    .registers 1

    .line 1
    const-string v0, "MD5"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method


# virtual methods
.method public getMessageDigest()Ljava/security/MessageDigest;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream;->messageDigest:Ljava/security/MessageDigest;

    .line 2
    .line 3
    return-object v0
.end method
