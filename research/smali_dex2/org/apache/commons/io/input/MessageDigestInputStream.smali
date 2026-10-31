.class public final Lorg/apache/commons/io/input/MessageDigestInputStream;
.super Lorg/apache/commons/io/input/ObservableInputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;,
        Lorg/apache/commons/io/input/MessageDigestInputStream$MessageDigestMaintainingObserver;
    }
.end annotation


# instance fields
.field private final messageDigest:Ljava/security/MessageDigest;


# direct methods
.method private constructor <init>(Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ObservableInputStream;-><init>(Lorg/apache/commons/io/input/ObservableInputStream$AbstractBuilder;)V

    .line 2
    .line 3
    .line 4
    # getter for: Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;->messageDigest:Ljava/security/MessageDigest;
    invoke-static {p1}, Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;->access$100(Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;)Ljava/security/MessageDigest;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "builder.messageDigest"

    .line 9
    .line 10
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lorg/apache/commons/io/input/MessageDigestInputStream;->messageDigest:Ljava/security/MessageDigest;

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;Lorg/apache/commons/io/input/MessageDigestInputStream$1;)V
    .registers 3

    .line 16
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/MessageDigestInputStream;-><init>(Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;
    .registers 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public getMessageDigest()Ljava/security/MessageDigest;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/MessageDigestInputStream;->messageDigest:Ljava/security/MessageDigest;

    .line 2
    .line 3
    return-object v0
.end method
